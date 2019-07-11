//
//  ViewController.swift
//  Class04
//
//  Created by iMAC on 2019/7/10.
//  Copyright © 2019 iMACbrave. All rights reserved.
//

import UIKit

class ViewController: UIViewController,AsyncReponseDelegate{
    func receviedReponse(_ sender: AsyncRequestWorker, responseString: String, tag: Int) {
        
        print(responseString)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let worker:AsyncRequestWorker = AsyncRequestWorker()
        worker.reponseDelegate = self
        worker.getResponse(from: "https://google.csom", tag: 1)
        
//        NotificationCenter.default.addObserver(self, selector:#selector(keyboardWillShow(notification:)) , name: NSNotification.Name("response.received"), object: nil)
        
    }
    // .tencent.com
    @objc func keyboardWillShow(notification: NSNotification) {
        let idontknow : String = notification.userInfo!["response"] as! String
        print(idontknow)
    }


}

