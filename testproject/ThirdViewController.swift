//
//  ThirdViewController.swift
//  testproject
//
//  Created by Refat E Ferdous on 12/6/23.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet var email : UITextView!
    @IBOutlet var name : UITextView!
    
    var emailValue = "No name Has been set"
    var nameValue = "No email Has been set"
    
    @IBAction func buttonFirst(){
        let vc = self.storyboard?.instantiateViewController(identifier: "ViewController") as! ViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func buttonSecond(){
        let vc = self.storyboard?.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        name.text = "Name is \(nameValue)"
        email.text = "Email is \(emailValue)"
    }
    

}
