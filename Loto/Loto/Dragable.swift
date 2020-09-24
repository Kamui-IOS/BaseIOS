//
//  Dragable.swift
//  Lucky
//
//  Created by Thuy Truong Quang on 9/16/20.
//  Copyright © 2020 Thuy Truong Quang. All rights reserved.
//

import Foundation
import UIKit

public enum DPDraggableButtonType {
  case rect
  case round
}

let kDPAutoDockingDuration: Double = 0.2
let kDPDoubleTapTimeInterval: Double = 0.36

open class DPDraggableButton: UIButton {
  
  open var draggable: Bool = true
  open var dragging: Bool = false
  open var autoDocking: Bool = true
  open var singleTapBeenCanceled: Bool = false
  open var draggableButtonType: DPDraggableButtonType = .rect
  
  open var beginLocation: CGPoint?
  open var longPressGestureRecognizer: UILongPressGestureRecognizer?
  
  open var tapBlock:(()->Void)? {
    set(tapBlock) {
      if let aTapBlock = tapBlock {
        self.tapBlockStored = aTapBlock
        self.addTarget(self, action: #selector(tapAction(_:)), for: .touchUpInside)
      }
    }
    get {
      return self.tapBlockStored!
    }
  }
  private var tapBlockStored:(()->Void)?
  
  open var doubleTapBlock:(()->Void)?
  open var longPressBlock:(()->Void)?
  open var draggingBlock:(()->Void)?
  open var dragDoneBlock:(()->Void)?
  open var autoDockingBlock:(()->Void)?
  open var autoDockingDoneBlock:(()->Void)?
  
  required public init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }
  
  override open func awakeFromNib() {
    translatesAutoresizingMaskIntoConstraints = true
    super.awakeFromNib()
    configDefaultSettingWithType(.rect)
  }

  public init(frame: CGRect,
              draggableButtonType: DPDraggableButtonType) {
    super.init(frame: frame)
    self.addButtonToKeyWindow()
    self.configDefaultSettingWithType(draggableButtonType)
  }
  
  public init(view: AnyObject, frame: CGRect, type: DPDraggableButtonType) {
    super.init(frame: frame)
    view.addSubview(self)
    configDefaultSettingWithType(type)
  }
  
  open func addButtonToKeyWindow() {
    if let keyWindow = UIApplication.shared.keyWindow {
      keyWindow.addSubview(self)
    } else {
      UIApplication.shared.windows.first?.addSubview(self)
    }
  }
  
  private func configDefaultSettingWithType(_ type: DPDraggableButtonType) {
    // type
    draggableButtonType = type
    
    // shape
    switch (type) {
    case .rect:
      break
    case .round:
      self.layer.cornerRadius = self.frame.size.height / 2.0
      self.layer.borderColor = UIColor.lightGray.cgColor
      self.layer.borderWidth = 0.5
      self.layer.masksToBounds = true
    }
    
    // gestures
    longPressGestureRecognizer = UILongPressGestureRecognizer()
    longPressGestureRecognizer?.addTarget(self, action:#selector(longPressHandler(_:)) )
    longPressGestureRecognizer?.allowableMovement = 0
    addGestureRecognizer(longPressGestureRecognizer!)
  }
  
  // MARK: Gestures Handler
  @objc func longPressHandler(_ gesture: UILongPressGestureRecognizer) {
    switch gesture.state {
    case .began:
      longPressBlock?()
      break
    default:
      break
    }
  }
  
  // MARK: Actions
  @objc func tapAction(_ sender: AnyObject) {
    let delayInSeconds: Double = (doubleTapBlock != nil ? kDPDoubleTapTimeInterval : 0)
    let popTime: DispatchTime = DispatchTime.now()
      + Double((Int64)(delayInSeconds * (Double)(NSEC_PER_SEC))) / Double(NSEC_PER_SEC)
    DispatchQueue.main.asyncAfter(deadline: popTime) { [weak self] in
      guard let strongSelf = self else { return }
      if let tapBlock = strongSelf.tapBlock,
        !strongSelf.singleTapBeenCanceled,
        !strongSelf.dragging {
        tapBlock()
      }
    }
  }
  
  // MARK: Touch
  open override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    self.dragging = false
    super.touchesBegan(touches, with: event)
    guard let touch = touches.randomElement() else { return }
    if touch.tapCount == 2 {
      doubleTapBlock?()
      singleTapBeenCanceled = true
    } else {
      singleTapBeenCanceled = false
    }
    beginLocation = touch.location(in: self)
  }
  
  open override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
    guard let touch = touches.randomElement(),
      let beginLocation = beginLocation,
      let superviewFrame = self.superview?.frame,
      draggable else { return }
    
      dragging = true
      let currentLocation = touch.location(in: self)
      
      let offsetX = currentLocation.x - beginLocation.x
      let offsetY = currentLocation.y - beginLocation.y
      center = CGPoint(x: center.x + offsetX, y: center.y + offsetY)
      
      let frame: CGRect = self.frame
      let leftLimitX: CGFloat = frame.size.width / 2.0
      let rightLimitX: CGFloat = superviewFrame.size.width - leftLimitX
      let topLimitY: CGFloat = frame.size.height / 2.0
      let bottomLimitY: CGFloat = superviewFrame.size.height - topLimitY
      
      if center.x > rightLimitX {
        center = CGPoint(x: rightLimitX, y: center.y)
      } else if (center.x <= leftLimitX) {
        center = CGPoint(x: leftLimitX, y: center.y)
      }
      
      if center.y > bottomLimitY {
        center = CGPoint(x: center.x, y: bottomLimitY)
      } else if (center.y <= topLimitY) {
        center = CGPoint(x: center.x, y: topLimitY)
      }
      draggingBlock?()
  }
  
  open override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    super.touchesEnded(touches, with: event)
    
    if dragging, dragDoneBlock != nil {
      dragDoneBlock!()
      singleTapBeenCanceled = true
    }
    if dragging, autoDocking, let superviewFrame = self.superview?.frame {
      let frame: CGRect = self.frame
      let middleX = superviewFrame.size.width / 2.0
      
      if self.center.x >= middleX {
        UIView.animate(withDuration: kDPAutoDockingDuration,
                       animations: { [weak self] in
                        guard let strongSelf = self else { return }
                        strongSelf.center = CGPoint(x: superviewFrame.size.width - frame.size.width / 2.0,
                                                    y: strongSelf.center.y)
                        strongSelf.autoDockingBlock?()
        },
                       completion: {  [weak self] finished in
                        guard let strongSelf = self else { return }
                        strongSelf.autoDockingDoneBlock?()
        })
      } else {
        UIView.animate(withDuration: kDPAutoDockingDuration,
                       animations: { [weak self] in
                        guard let strongSelf = self else { return }
                        strongSelf.center = CGPoint(x: frame.size.width / 2, y: strongSelf.center.y)
                        strongSelf.autoDockingBlock?()
        },
                       completion: {  [weak self] finished in
                        guard let strongSelf = self else { return }
                        strongSelf.autoDockingDoneBlock?()
        })
      }
    }
    dragging = false
  }
  
  open override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
    dragging = false
    super.touchesCancelled(touches, with:event)
  }
  
  // MARK: Remove
  open class func removeAllFromKeyWindow() {
    guard let subviews = UIApplication.shared.keyWindow?.subviews else { return }
    for case let button as DPDraggableButton in subviews {
      button.removeFromSuperview()
    }
  }
  
  open class func removeAllFromView(_ superView : AnyObject) {
    guard let subviews = superView.subviews else { return }
    for case let button as DPDraggableButton in subviews {
      button.removeFromSuperview()
    }
  }
  
}
