//
//  PersonalityViewController.swift
//  WhoAreYou?
//
//  Created by Nikolai Press on 4/15/19.
//  Copyright © 2019 Nikolai Press. All rights reserved.
//

import UIKit

class PersonalityViewController: UIViewController {
    
    var friends:Int = 2
    var alone:Int = 2
    var quiet:Int = 2
    var think:Int = 2
    var total:Int = 2

    @IBOutlet weak var personalityVal: UILabel!
    @IBOutlet weak var personalityImage: UIImageView!
    
    @IBAction func personalitySubmit(_ sender: Any) {
        total = friends + alone + quiet + think
        if(total <= 5) {
            personalityVal.text = "You are Introverted!"
            personalityImage.image = UIImage(named: "introverted")
            
        }
        else if(total > 5 && total <= 8){
            personalityVal.text = "You are a mix of Introverted and Extroverted!"
            personalityImage.image = UIImage(named: "introvertedandextroverted")
            
        }
        else {
            personalityVal.text = "You are Extroverted!"
            personalityImage.image = UIImage(named: "extroverted")
            
        }
        global.personalityVar = personalityVal.text!

    }
        
    @IBAction func fewerSlider(_ sender: UISlider) {
        friends = Int(sender.value)
        
    }
    
    @IBAction func aloneSlider(_ sender: UISlider) {
        alone = Int(sender.value)
    }
    
    
    @IBAction func quietSlider(_ sender: UISlider) {
        quiet = Int(sender.value)
        
    }
    
    @IBAction func thinkSlider(_ sender: UISlider) {
        think = Int(sender.value)
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         self.view.backgroundColor = UIColor(patternImage: UIImage(named: "personality.jpg")!)
        
        
        // Do any additional setup after loading the view.
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
