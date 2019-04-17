//
//  ViewController.swift
//  WhoAreYou?
//
//  Created by Nikolai Press on 4/15/19.
//  Copyright © 2019 Nikolai Press. All rights reserved.
//

import UIKit

class Global {
    var nameVar = String()
    var personalityVar = String()
    var movieVar = String()
    var vacationVar = String()
    
}

let global = Global()

class ViewController: UIViewController {
    
    
    @IBOutlet weak var theName: UILabel!
    @IBOutlet weak var yourName: UITextField!
    @IBOutlet weak var navView: UIView!
    
    
    @IBAction func clickMenu(_ sender: UIBarButtonItem) {
        if(navView.isHidden) {
            navView.isHidden = false
        }
        else {
            navView.isHidden = true
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navView.isHidden = true
    }
    
    
    
    
    @IBOutlet weak var thePersonality: UILabel!
    @IBOutlet weak var theMovie: UILabel!
    @IBOutlet weak var theVacation: UILabel!
    
    
    @IBAction func mybutton(_ sender: Any) {
        global.nameVar = yourName.text!
        theName.text = "Hello " + global.nameVar + "!"
        yourName.resignFirstResponder()
    }
    
   
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "vacation.jpg")!)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool){
        theName.text = "Hello \(global.nameVar)!"
        
        thePersonality.text = "Your Personality Indicates That \(global.personalityVar)"
        
        theMovie.text = "It Appears You Enjoy \(global.movieVar) Movies!"
        
        theVacation.text = "For Vacation \(global.vacationVar)"
        
    
    }

}

