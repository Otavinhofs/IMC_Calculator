//
//  SecondViewController.swift
//  IMCApp
//
//  Created by Otávio da Silva on 10/11/22.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var happyOrNot: UILabel!
    @IBOutlet weak var classification: UILabel!
    @IBOutlet weak var imc: UILabel!
    var value: String?
    var classifi: String?
    var backGround: UIColor?
    var happy: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imc.text = value
        classification.text = classifi
        happyOrNot.text = happy
        view.backgroundColor = backGround
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    @IBAction func backTap(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
}
