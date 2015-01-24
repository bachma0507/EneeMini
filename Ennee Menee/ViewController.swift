//
//  ViewController.swift
//  Ennee Menee
//
//  Created by Barry on 1/20/15.
//  Copyright (c) 2015 Barry C Julien. All rights reserved.
//

import UIKit

let kInfoTitle = "Info"
let kSubtitle = "This is a test."

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var field1: UITextField!
    
    @IBOutlet var field2: UITextField!
    
    @IBOutlet var resultLabel: UILabel!
    
    @IBOutlet var field3: UITextField!
    
    @IBOutlet var goButton: UIButton!
    
    @IBOutlet var arrowImage: UIImageView!
    
    
    @IBAction func feelingLuckyPressed(sender: AnyObject) {
        
        var randomNumber1 = arc4random_uniform(60)
        var randomNumber2 = arc4random_uniform(60)
        var randomNumber3 = arc4random_uniform(60)
        var randomNumber4 = arc4random_uniform(60)
        var randomNumber5 = arc4random_uniform(60)
        var randomNumber6 = arc4random_uniform(35)
        
        println("Your lucky numbers are: \(randomNumber1) \(randomNumber2) \(randomNumber3) \(randomNumber4) \(randomNumber5) \(randomNumber6)")
        
        let alert = UIAlertView()
        alert.title = "Your Lucky Numbers"
        alert.message = "\(randomNumber1) \(randomNumber2) \(randomNumber3) \(randomNumber4) \(randomNumber5) \(randomNumber6)"
        alert.addButtonWithTitle("Ok")
        alert.show()
        
    }
    
    @IBAction func buttonPress(sender: AnyObject) {
        
        if field1.text != "" && field2.text != "" && field3.text != "" {
            
            DismissKeyboard()
            
            arrowImage.hidden = false
            arrowImage.image = UIImage(named:"green_down_arrows")!
            
            let loadingNotification = MBProgressHUD.showHUDAddedTo(self.view, animated: true)
            loadingNotification.mode = MBProgressHUDModeIndeterminate
            loadingNotification.labelText = "Loading"
            
            
            
        var randomNumber = arc4random_uniform(3)
            
            println("Random number is: \(randomNumber)")
        
        if Int(randomNumber) == 0 {
            
            resultLabel.text = "'\(field3.text)' is the way to go!"
            
            println(field3.text)
            
        }
        
        if Int(randomNumber) == 1 {
            
            resultLabel.text = "'\(field1.text)' is the way to go!"
            
            println(field1.text)
            
        }
        
        if Int(randomNumber) == 2 {
            
            resultLabel.text = "'\(field2.text)' is the way to go!"
            
            println(field2.text)
            
        }
        
            
//            if Int(randomNumber) == 3 {
//                
//                resultLabel.text = "'\(field3.text)' is the way to go!"
//                
//            }
//
//            if Int(randomNumber) == 5 {
//                
//                resultLabel.text = "'\(field1.text)' is the way to go!"
//                
//            }
//            
//            if Int(randomNumber) == 6 {
//                
//                resultLabel.text = "'\(field2.text)' is the way to go!"
//                
//            }

        MBProgressHUD.hideAllHUDsForView(self.view, animated: true)
        }
        
        if field1.text == "" || field2.text == "" || field3.text == "" {
            
            
            let alert = UIAlertView()
            alert.title = "Oops!"
            alert.message = "Please complete all fields."
            alert.addButtonWithTitle("Ok")
            alert.show()
            
            //resultLabel.text = "Please complete all fields."
        
        //resultLabel.textColor == UIColor.redColor()
    }

    
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Looks for single or multiple taps.
        
//        let alert = UIAlertView()
//        alert.title = "Eenee Meenee"
//        alert.message = "Can't make up your mind: \n where to eat? \n what to wear? \n where to go? \n Enter your choices and let Eenee Meenee decide!"
//        alert.addButtonWithTitle("Ok")
//        alert.show()
        
        //SCLAlertView().showInfo(kInfoTitle, subTitle: kSubtitle)
            
        field1.delegate = self
        field2.delegate = self
        field3.delegate = self
        
        
        var tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "DismissKeyboard")
        view.addGestureRecognizer(tap)
        
        var randomButton = arc4random_uniform(4)
        
        if Int(randomButton) == 0 {
            
            goButton.setTitle("Please tell me, oh Swami", forState: UIControlState.Normal)
            
        }
        
        if Int(randomButton) == 1 {
            
            goButton.setTitle("Let's do this!", forState: UIControlState.Normal)
            
            
        }
        
        if Int(randomButton) == 2 {
            
            goButton.setTitle("Show me, I want to know!", forState: UIControlState.Normal)
            
            
        }
        
        if Int(randomButton) == 3 {
            
            goButton.setTitle("I don't know what to do, please help!", forState: UIControlState.Normal)
            
        }

        
    }
    
    override func canBecomeFirstResponder() -> Bool {
        return true
    }
    
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent) {
        if motion == .MotionShake {
            //self.resultLabel.text = "Shaken, not stirred"
            
            field1.text = nil
            field2.text = nil
            field3.text = nil
            resultLabel.text = nil
            arrowImage.hidden = true
            
            var randomButton = arc4random_uniform(4)
            
            if Int(randomButton) == 0 {
                
                goButton.setTitle("Please tell me, oh Swami", forState: UIControlState.Normal)
                
            }
            
            if Int(randomButton) == 1 {
                
                goButton.setTitle("Let's do this!", forState: UIControlState.Normal)
                
                
            }
            
            if Int(randomButton) == 2 {
                
                goButton.setTitle("Show me, I want to know!", forState: UIControlState.Normal)
                
                
            }
            
            if Int(randomButton) == 3 {
                
                goButton.setTitle("I don't know what to do, please help!", forState: UIControlState.Normal)
                
            }

        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func DismissKeyboard(){
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        var result = true
        let prospectiveText = (textField.text as NSString).stringByReplacingCharactersInRange(range, withString: string)
        
        if textField == field1 || textField == field2 || textField == field3 {
            if countElements(string) > 0 {
                let disallowedCharacterSet = NSCharacterSet(charactersInString: "*")/*.invertedSet*/
                let replacementStringIsLegal = string.rangeOfCharacterFromSet(disallowedCharacterSet) == nil
                
                let resultingStringLengthIsLegal = countElements(prospectiveText) <= 45
                
                result = replacementStringIsLegal &&
                resultingStringLengthIsLegal
            }
        }
        return result
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        self.view.endEditing(true);
        return false;
    }
    
    
}

