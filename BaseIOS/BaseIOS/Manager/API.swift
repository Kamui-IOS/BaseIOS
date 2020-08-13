//
//  API.swift
//  BaseIOS
//
//  Created by Hoàng Nam on 7/20/20.
//  Copyright © 2020 Hoàng Nam. All rights reserved.
//

import Foundation
import UIKit
import Alamofire

fileprivate let STATUS_OK = true
typealias CompletionHander = (_ success: Bool,_ data: Any?) -> ()

fileprivate enum HTTPMethod: String {
    case options = "OPTIONS"
    case get = "GET"
    case post = "POST"
    case head = "HEAD"
    case put = "PUT"
    case patch = "PATCH"
    case delete = "DELETE"
    case trace = "TRACE"
    case connect = "CONNECT"
}

fileprivate enum APIDefine: String {
    case message = "/messages"
    case weather = "http://api.weatherstack.com/forecast?access_key=7f93c7b4911420ab1d7d1ea92dfcb0a6&query=Hanoi&hourly=1"
    func url() -> String {
        let HOST = "cloud9.dinhvicameratot.com:3030"
        return HOST + self.rawValue
    }
}

class Connectivity {
    class func isConnectToInternet() -> Bool {
        return NetworkReachabilityManager()!.isReachable
    }
}

class GetHeader {
    class func header() -> Dictionary<String, String> {
        let headers: Dictionary = ["Content-Type": "application/json", "X-Requested-With": "XMLHttpRequest"]
        return headers
    }
}

class APIManager: NSObject {
    
    static let share: APIManager = APIManager()
    private let TIMEOUT_REQUEST = 60
    
    fileprivate func request(urlString: String, paramJSON: String, method: HTTPMethod, showLoading: Bool, completionHander: CompletionHander?) {
        
        if Connectivity.isConnectToInternet() {
            var request: URLRequest!
            if method == .get {
                if paramJSON != "" {
                    request = URLRequest(url: URL(string: "\(urlString)?\((paramJSON.data(using: .utf8))!)")!)
                }
                else {
                    request = URLRequest(url: URL(string:urlString)!)
                }
                request.allHTTPHeaderFields = GetHeader.header()
            }
            else if method == .post {
                request = URLRequest(url: URL(string:urlString)!)
                request.allHTTPHeaderFields = GetHeader.header()
                
                if paramJSON != "" {
                    request.httpBody = paramJSON.data(using: .utf8)
                }
            }
            else if method == .delete {
                request = URLRequest(url: URL(string:urlString)!)
                
                // content-type

                request.allHTTPHeaderFields = GetHeader.header()
                if paramJSON != "" {
                    request.httpBody = paramJSON.data(using: .utf8)
                }
            }
            
            request.timeoutInterval = TimeInterval(TIMEOUT_REQUEST)
            request.httpMethod = method.rawValue
            
            let task = URLSession.shared.dataTask(with: request) { data, reponse, error in
                
                
                // check for network error
                guard let data = data, error == nil else {
                    if let block = completionHander {
                        DispatchQueue.main.async {
                            block(false, error)
                        }
                    }
                    return
                }
                
                // check for http error
                if let httpStatus = reponse as? HTTPURLResponse, httpStatus.statusCode != 200, let res = reponse {
                    print("statusCode should be 200, but is \(httpStatus.statusCode)")
                    print("response = \(res)")
                }
                
                if let block = completionHander {
                    DispatchQueue.main.async {
                        if self.dataToJSON(data) != nil {
                            block(true, String(data: data, encoding: .utf8))
                        }
                        else if String(data: data, encoding: .utf8) != nil {
                            block(true, error)
                        }
                    }
                }
            }
            task.resume()
        }
        else {
            print("Error API")
        }
    }
    
    private func dataToJSON(_ data: Data) -> Any? {
        do {
            return try JSONSerialization.jsonObject(with: data, options: [])
        } catch let  myJSONError {
            print("convert to json error: \(myJSONError)")
        }
        return nil
    }
}

extension APIManager {
    func weather(completionHander: @escaping (Bool, ModelWeather) -> ()) {
        let url = APIDefine.weather.rawValue
        let paramJSON: String = ""
        
        request(urlString: url, paramJSON: paramJSON, method: .get, showLoading: false, completionHander: {(success, data) in
            if data == nil {
                completionHander(false, ModelWeather())
            }
            else {
                if data as? String == nil {
                    completionHander(false, ModelWeather())
                    return
                } else {
                    completionHander(success, ModelWeather(JSONString: data as! String)!)
                }
            }
        })
    }
    
    func getUser(completionHander: @escaping (Bool, BaseModel) -> ()) {
        
        let url = APIDefine.url(.message)
        let paramJSON: String = ""
        
        request(urlString: url(), paramJSON: paramJSON, method: .get, showLoading: false, completionHander: {(success, data) in
            if data == nil {
                completionHander(false, BaseModel())
            }
            else {
                if data as? String == nil {
                    completionHander(false, BaseModel())
                    return
                } else {
                    completionHander(success, BaseModel(JSONString: data as! String)!)
                }
            }
        })
        
    }
}
