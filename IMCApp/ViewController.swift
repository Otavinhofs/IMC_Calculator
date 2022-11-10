//
//  ViewController.swift
//  IMCApp
//
//  Created by Otávio da Silva on 09/11/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var outlatSliderHeight: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var outlatSliderWeight: UISlider!
    @IBOutlet weak var weightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func weightSlider(_ sender: UISlider) {
        var showWeight = Int(sender.value)
        outlatSliderWeight.minimumValue = 0
        outlatSliderWeight.maximumValue = 300
        weightLabel.text = "\(showWeight) kg"
        
    }
    
    @IBAction func heightSlider(_ sender: UISlider) {
        var showHeight = Int(sender.value)
        outlatSliderHeight.minimumValue = 50
        outlatSliderHeight.maximumValue = 300
        heightLabel.text = "\(showHeight) cm"
    }
    
}

