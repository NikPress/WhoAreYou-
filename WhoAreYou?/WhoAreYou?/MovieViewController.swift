//
//  MovieViewController.swift
//  WhoAreYou?
//
//  Created by Nikolai Press on 4/15/19.
//  Copyright © 2019 Nikolai Press. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{
    
    @IBOutlet weak var movie: UIPickerView!
    @IBOutlet weak var movieVal: UILabel!
    
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return items.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return items[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selection = items[row]
        movieVal.text = "You enjoy watching " + selection + " Movies!"
        global.movieVar = selection
    }
    
    
    let items = ["Thriller", "Scary", "Action/Advernture", "Romance", "Comedy", "Documentary", "Fantasy"]
    var selection:String!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
         self.view.backgroundColor = UIColor(patternImage: UIImage(named: "movie.jpg")!)
        
        movie.delegate = self
        movie.dataSource = self
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
