//
//  ViewController.swift
//  AlertProject
//
//  Created by Sena Küçükerdoğan on 28.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var password2Text: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signupClicked(_ sender: Any) {
     /*
        let alert = UIAlertController(title: "Error!", message: "Username not found", preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
            //button clicked
            print("button clicked")
        }
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
     */
        if usernameText.text == "" {
          /*  let alert = UIAlertController(title: "Error", message: "Username not found", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)*/
            
            makeAlert(titleInput: "Error", messageInput: "Username not found")
        }
        
        else if passwordText.text == "" {
           /* let alert =  UIAlertController(title: "Error", message: "Password not found", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)*/
            
            makeAlert(titleInput: "Error", messageInput: "Password not found")
        }
        
        else if passwordText.text != password2Text.text {
            /*let alert = UIAlertController(title: "Error", message: "Passwords do not match", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)*/
            
            makeAlert(titleInput: "Error", messageInput: "Passwords do not match")
        }
        else{
            /*let alert = UIAlertController(title: "Success", message: "User OK", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)*/
            
            makeAlert(titleInput: "Success", messageInput: "User OK")
        }
    }
    
    func makeAlert(titleInput: String, messageInput: String) {
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
    
}

