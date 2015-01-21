//
//  ViewController.swift
//  Ennee Menee
//
//  Created by Barry on 1/20/15.
//  Copyright (c) 2015 Barry C Julien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var field1: UITextField!
    
    @IBOutlet var field2: UITextField!
    
    @IBOutlet var resultLabel: UILabel!
    
    @IBOutlet var field3: UITextField!
    
    @IBOutlet var goButton: UIButton!
    
    
    @IBAction func buttonPress(sender: AnyObject) {
        
        if !field1.text.isEmpty && !field2.text.isEmpty && !field3.text.isEmpty {
            
            
        var randomNumber = arc4random_uniform(8)
        
        if Int(randomNumber) == 0 {
            
            resultLabel.text = "'\(field3.text)' is the way to go!"
            
        }
        
        if Int(randomNumber) == 1 {
            
            resultLabel.text = "'\(field1.text)' is the way to go!"
            
        }
        
        if Int(randomNumber) == 2 {
            
            resultLabel.text = "'\(field2.text)' is the way to go!"
            
        }
        
        if Int(randomNumber) == 3 {
            
            resultLabel.text = "None of the above... those are fucking horrible choices. But try again if you insist."
            
        }
            
            if Int(randomNumber) == 4 {
                
                resultLabel.text = "'\(field3.text)' is the way to go!"
                
            }
            
            if Int(randomNumber) == 5 {
                
                resultLabel.text = "'\(field1.text)' is the way to go!"
                
            }
            
            if Int(randomNumber) == 6 {
                
                resultLabel.text = "'\(field2.text)' is the way to go!"
                
            }

        
        
        }
        
        else {
            
            
        resultLabel.text == "Are you some kind of imbecile, please enter something in the goddam fields, you jerk!"
        
        //resultLabel.textColor == UIColor.redColor()
    }

    
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        var randomButton = arc4random_uniform(4)
        
        if Int(randomButton) == 0 {
            
            goButton.setTitle("Please tell me, oh Swami", forState: UIControlState.Normal)
            
        }
        
        if Int(randomButton) == 1 {
            
            goButton.setTitle("Let's do this shit!", forState: UIControlState.Normal)
            
            
        }
        
        if Int(randomButton) == 2 {
            
            goButton.setTitle("Show me, you dick head!", forState: UIControlState.Normal)
            
            
        }
        
        if Int(randomButton) == 3 {
            
            goButton.setTitle("I am a hopeless idiot, please show me the way.", forState: UIControlState.Normal)
            
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
            
            var randomButton = arc4random_uniform(4)
            
            if Int(randomButton) == 0 {
                
                goButton.setTitle("Please tell me, oh Swami", forState: UIControlState.Normal)
                
            }
            
            if Int(randomButton) == 1 {
                
                goButton.setTitle("Let's do this shit!", forState: UIControlState.Normal)
                
                
            }
            
            if Int(randomButton) == 2 {
                
                goButton.setTitle("Show me, you dick head!", forState: UIControlState.Normal)
                
                
            }
            
            if Int(randomButton) == 3 {
                
                goButton.setTitle("I am a hopeless idiot, please show me the way.", forState: UIControlState.Normal)
                
            }

        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

