//
//  NYTAPI.swift
//  HealthView
//
//  Created by Nicole Mellert on 7/7/21.
//

import Foundation
import Alamofire

class NYTAPI {
    let endpoint = "https://api.nytimes.com/svc/topstories/v2/health.json?api-key=eAfQI3BIAUG1Cja4EZvUg2j7K2Vm2jFS"
    
    func getBase(){
        AF.request("https://httpbin.org/get").responseJSON { response in
            print("Request: \(String(describing: response.request))")   // original url request
            print("Response: \(String(describing: response.response))") // http url response
            print("Result: \(response.result)")                         // response serialization result

//            if let json = response.result.value {
//                print("JSON: \(json)") // serialized json response
//            }
//
//            if let data = response.data, let utf8Text = String(data: data, encoding: .utf8) {
//                print("Data: \(utf8Text)") // original server data as UTF8 string
//            }
      }
        

    }
    
}


// does the info in this class go within the NYTAPI
/*
class Servive {
    fileprivate var baseUrl = ""
    
    init(baseUrl: String) {
        self.baseUrl = baseUrl
    }
    
    func getHealthArticlesFrom(endPoint:String) {
        AF.request(self.baseUrl + endPoint, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil, interceptor: nil).response {
            (responseData) in
            print("We got the response")
        }
    }
 }
*/

