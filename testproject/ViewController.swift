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
    
    var vc2 : SecondViewController!
    var vc3 : ThirdViewController!
    
    
    var nameVal = ""
    var emailVal = ""
    
    @IBAction func buttonSecond(){
        
       //vc.nameValue = nametext.text ?? ""
       //vc.emailValue = emailText.text ?? ""
        self.navigationController?.pushViewController(vc2, animated: true)
    }
    
    @IBAction func buttonThird(){
       
        //vc.nameValue = nametext.text ?? ""
       // vc.emailValue = emailText.text ?? ""
        self.navigationController?.pushViewController(vc3, animated: true)
    }
    
    @IBAction func buttonSubmit(){
        // vc2 = self.storyboard?.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        // vc3 = self.storyboard?.instantiateViewController(identifier: "ThirdViewController") as! ThirdViewController
        
        vc2.nameValue = nametext.text ?? "default2Name"
        vc2.emailValue = emailText.text ?? "default2email"
        
        vc3.nameValue = nametext.text ?? "default3email"
        vc3.emailValue = emailText.text ?? "default3name"
       // self.nameVal = nametext.text ?? ""
       // self.emailVal = emailText.text ?? ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        vc3 = self.storyboard?.instantiateViewController(identifier: "ThirdViewController") as? ThirdViewController
        vc2 = self.storyboard?.instantiateViewController(identifier: "SecondViewController") as? SecondViewController
    }


}

