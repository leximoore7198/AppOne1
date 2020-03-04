//
//  ViewController.swift
//  myGame
//
//  Created by Moore, Alexis N on 2/17/20.
//  Copyright © 2020 Moore, Alexis N. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //variables
    
    var country:Int = 0
    var weather:Int = 0
    var score:Int = 0
    var chars:Int = Int(arc4random_uniform(10) + 2)
    var name:String = ""
    var counter:Int = 30
    var timer = Timer()
    var isTimerRunning:Bool = false
   
    

    
    //outlets
    
    @IBOutlet weak var myScore: UILabel!
    @IBOutlet weak var myName: UITextField!
    @IBOutlet weak var myGreeting: UILabel!
    @IBOutlet weak var myBudget: UILabel!
    
    @IBOutlet weak var myImage: UIImageView!
    
    
    //actions
    
    @IBAction func mySubmit(_ sender: Any)
    {  name = myName.text!
       chars = name.count
       myGreeting.text = "Welcome, \(name)"
       myName.resignFirstResponder()
    }
    
   
    
    @IBAction func weatherSwitch(_ sender: UISwitch) {
        
        if sender.isOn
        {
            weather = 4 //cold
         }
        else
        {
             weather = 5 //warm
         }
    }


    
    @IBAction func mySwitch(_ sender: UISwitch) {
        
        if sender.isOn {
            country = 6 //going out of country: europe or asia
         }
        else {
            country = 0 //cali
         }
        
        
    }
    
    
    
    
    
    @IBAction func mySlider(_ sender: UISlider)
    {
        let budget = Int(sender.value)
        myBudget.text = "Your Budget: \(budget)"
        
           
    }
    
  
  
    
    @IBAction func finalSubmit(_ sender: Any) {
        
        score = score + country + weather
        
        myScore.text = "Score: \(score)"
        
        if(score <= 5) {
                  myScore.text = "You're going to California! Whether you want cold or warm, California has it all!"
                  myImage.image = UIImage(named: "cali")
              }
              else if(score > 5 && score <= 11){
                  myScore.text = "You're going to Asia! Food, sights, cheap living and great beaches, relax and party in Asia."
                  myImage.image = UIImage(named: "thai")
              }
              else {
                  myScore.text = "You're going to Europe! With over 40 countries in Europe, you're sure to find something to spark your interest."
                  myImage.image = UIImage(named: "germ")
              }
        
    }
    
    
    @IBAction func myReset(_ sender: Any)
    {          score = 0
               myScore.text = "Score: \(score)"
             
         
              
           
       }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

