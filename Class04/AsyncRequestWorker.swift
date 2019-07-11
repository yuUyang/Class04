//
//  AsyncRequestWorker.swift
//  Class04
//
//  Created by iMAC on 2019/7/11.
//  Copyright © 2019 iMACbrave. All rights reserved.
//

import Foundation
import UIKit

protocol AsyncReponseDelegate {
    func receviedReponse(_ sender: AsyncRequestWorker, responseString : String, tag : Int) -> Void
}

class AsyncRequestWorker {
    
    var reponseDelegate : AsyncReponseDelegate?
    
    func getResponse(from:String, tag:Int) -> Void {
        //赋予url网址
        let url = URL(string: from)!
        //url请求发动连接请求
        let request = URLRequest(url: url)
        //URL会话配置连接
        let config = URLSessionConfiguration.default
        //建立URL会话
        let session = URLSession(configuration: config)
        //开始会话
        let task = session.dataTask(with: request, completionHandler: { (data, response, error) in
            
            let httpResponse = response as! HTTPURLResponse
            
            let statusCode = httpResponse.statusCode
            
            if( 200 == statusCode){
                
                let dataString = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
                let responseString = String( dataString! )
                
                NotificationCenter.default.post(name: NSNotification.Name(rawValue: "response.received"), object: self, userInfo: ["response": responseString])
                
                
                
                self.reponseDelegate?.receviedReponse(self, responseString: responseString, tag: tag)
            }
        })
        task.resume()
    }
}


