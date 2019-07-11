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
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touchesBegan")
        self.view.endEditing(true)
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard
            //条件
            let textFieldText = textField.text,
            let rangeOfTextToReplace = Range(range, in: textFieldText)
            //条件
            
            //条件不成立
            else {
                return false
            }
            //条件不成立
        
        //条件成立
        let substringToReplace = textFieldText[rangeOfTextToReplace]
        let count = textFieldText.count - substringToReplace.count + string.count
        
        print("tag:\(textField)")
        
        if textField.tag == 1{
            return count <= 5
        }
        else if textField.tag == 2{
            return count <= 7
        }
        return false
        //条件成立
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
