//
//  VacationViewController.swift
//  WhoAreYou?
//
//  Created by Nikolai Press on 4/15/19.
//  Copyright © 2019 Nikolai Press. All rights reserved.
//

import UIKit

class VacationViewController: UIViewController {
    
    var beach:Int = 0
    var mountains:Int = 0
    var country:Int = 0
    var total:Int = 0
    
    @IBOutlet weak var vacationVal: UILabel!
    
    @IBAction func vacationSubmit(_ sender: Any) {
        total = beach + mountains + country
        if(total == 1) {
            vacationVal.text = "You love going to the beach!"
            
            
        }
        else if(total == 3){
            vacationVal.text = "You enjoy a trip up to the mountains!"
            
            
        }
        else if( total == 11) {
            vacationVal.text = "You would rather go to another country!"
            
            }
        else if(total == 4){
            vacationVal.text = "You love going to both the beach and the mountains!"
            
            
        }
        
        else if(total == 12){
            vacationVal.text = "You prefer going to the beach and another country!"
            
            
        }
        
        else if(total == 14){
            vacationVal.text = "You a trip to the mountains and another country!"
            
            
        }
        else if(total == 15){
            vacationVal.text = "You love going to all places, the beach, the mountains and another country!"
            
    

        }
        global.vacationVar = vacationVal.text!

        
    }
    
    
    
    @IBAction func selectBeach(_ sender: UISwitch) {
        if sender.isOn {
            beach = 1
        }
        else {
            beach = 0
        }
        
    }
    
    
    @IBAction func selectMountains(_ sender: UISwitch) {
        if sender.isOn {
            mountains = 3
        }
        else {
            mountains = 0
        }
        
    }
    
    
   
    
    
    @IBAction func selectCountry(_ sender: UISwitch) {
        if sender.isOn {
            country = 11
        }
        else {
            country = 0
        }
    }

    
    

    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
         self.view.backgroundColor = UIColor(patternImage: UIImage(named: "Mountain.jpg")!)

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
