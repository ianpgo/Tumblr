//
//  LoginViewController.swift
//  Tumblr
//
//  Created by Go, Ian on 10/12/16.
//  Copyright © 2016 Go, Ian. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!

    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var cancelButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailTextField.becomeFirstResponder()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didTouchUpCancel(_ sender: UIButton) {
        dismiss(animated: true) { 
            //completion
        }
    }

    @IBAction func didTouchDownCancel(_ sender: UIButton) {
        sender.backgroundColor = UIColor(colorLiteralRed: 43.0/255.0, green: 255.0, blue: 161.0/255.0, alpha: 0.2)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
