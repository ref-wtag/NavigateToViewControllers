//
//  ViewController.swift
//  testproject
//
//  Created by Refat E Ferdous on 12/6/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var emailText : UITextField!
    @IBOutlet var nametext : UITextField!
    
    
    @IBAction func buttonSecond(){
        let vc = self.storyboard?.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
       // vc.nameValue = nametext.text ?? ""
       // vc.emailValue = emailText.text ?? ""
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func buttonThird(){
        let vc = self.storyboard?.instantiateViewController(identifier: "ThirdViewController") as! ThirdViewController
       // vc.nameValue = nametext.text ?? ""
       // vc.emailValue = emailText.text ?? ""
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func buttonSubmit(){
        let vc2 = self.storyboard?.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        let vc3 = self.storyboard?.instantiateViewController(identifier: "ThirdViewController") as! ThirdViewController
        
        vc2.nameValue = nametext.text ?? "default"
        vc2.emailValue = emailText.text ?? "default"
        
        vc3.nameValue = nametext.text ?? "default"
        vc3.emailValue = emailText.text ?? "default"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

