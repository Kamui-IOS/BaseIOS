//
//  CircleImage.swift
//  DemoSwiftUI
//
//  Created by Nam Hoang Van on 8/5/20.
//  Copyright © 2020 Nam Hoang Van. All rights reserved.
//

import Foundation
import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .frame(width: 100, height: 100, alignment: .center)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.gray, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
