//
//  API.swift
//  Loto
//
//  Created by Nam Hoang Van on 9/14/20.
//  Copyright © 2020 Nam Hoang Van. All rights reserved.
//

import Foundation
import UIKit

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
    case sxmbToday = "https://lotto.lotusapi.com/lottery-results/public?date="
    
    func url() -> String {
        let HOST = ""
        return HOST + self.rawValue
    }
}

class Connecttivity {
    class func isConnectToInternet() -> Bool {
        if Reachability.isConnectedToNetwork(){
            print("Internet Connection Available!")
            return true
        }else{
            print("Internet Connection not Available!")
            return false
        }
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
    private let TIMEOUT_REQUEST = 60.0
    
    fileprivate func request(urlString: String, paramJSON: String, headerString: Dictionary<String, String>, method: HTTPMethod, completionHander: CompletionHander?) {
        
        if Connecttivity.isConnectToInternet() {
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
            else if method == .put {
                request = URLRequest(url: URL(string: urlString)!)
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
    func getXSMB(date: String ,completionHander: @escaping ([Jackport]?) -> ()) {
        let url = APIDefine.sxmbToday.url() + "\(date)"
        let paramJSON: String = ""
        var result = [Jackport]()
        request(urlString: url, paramJSON: paramJSON, headerString: GetHeader.header(), method: .get, completionHander: {(status, data) in
            if data == nil {
                completionHander(nil)
                return
            }
            guard let dataDic = (data as? String) else { return }
            let datas = dataDic.data(using: .utf8)!
            do {
                if let jsonArray = try JSONSerialization.jsonObject(with: datas, options : .allowFragments) as? [Dictionary<String,Any>]
                {
                    for item in jsonArray {
                        if let jackport = Jackport(JSON: item) {
                            result.append(jackport)
                        }
                    }
                } else {
                    print("1235")
                }
            } catch let error as NSError {
                print(error)
            }
            completionHander(result)
        })
        
    }
}
