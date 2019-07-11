//
//  LoginViewController.swift
//  Class04
//
//  Created by iMAC on 2019/7/11.
//  Copyright © 2019 iMACbrave. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate{
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard
            let textFieldText = textField.text,
            let rangeOfTextToReplace = Range(range, in: textFieldText)
            else {
                return false
            }
        let substringToReplace = textFieldText[rangeOfTextToReplace]
        let count = textFieldText.count - substringToReplace.count + string.count
        return count <= 10
        }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
