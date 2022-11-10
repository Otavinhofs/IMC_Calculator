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
    @IBOutlet weak var segmentOutlat: UISegmentedControl!
    @IBOutlet weak var outlatSliderWeight: UISlider!
    @IBOutlet weak var weightLabel: UILabel!
    var classValue: String?
    var background: UIColor?
    var happy: String?
    var sex: Sex?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        segmentOutlat.selectedSegmentIndex = 0
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        let showSom = Int(sender.value)
        outlatSliderWeight.minimumValue = 0
        outlatSliderWeight.maximumValue = 300
        weightLabel.text = "\(showSom) kg"
        
    }
    
    @IBAction func heightSlider(_ sender: UISlider) {
        let showSom = Int(sender.value)
        outlatSliderHeight.minimumValue = 50
        outlatSliderHeight.maximumValue = 300
        heightLabel.text = "\(showSom) cm"
    }
    
    @IBAction func calcTap(_ sender: UIButton) {
        switchSex()
        screenChange()
        
    }
    
    func calcFunc() -> Float{
        let height = outlatSliderHeight.value / 100
        let weight = outlatSliderWeight.value
        let imc:Float = (weight / (pow(height, 2)))
        return imc
    }
    
    @IBAction func sex(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            sex = .masculino
        } else {
            sex = .feminino
        }
    }
    func screenChange() {
        let storyBoard: UIStoryboard = UIStoryboard(name: "nextScreem", bundle: nil)
        
        let secondViewScreem = storyBoard.instantiateViewController(withIdentifier: "secondView") as! SecondViewController
        secondViewScreem.value = String(calcFunc())
        secondViewScreem.classifi = classValue
        secondViewScreem.backGround = background
        secondViewScreem.happy = happy
        secondViewScreem.modalPresentationStyle = .overFullScreen
        
        self.present(secondViewScreem, animated: true)
    }
    func switchSex() {
        if sex == .masculino {
                switch calcFunc() {
                case 0...20.7:
                    classValue = "Abaixo do peso"
                    background = .green
                    happy = "Parabens"
                case 20.8...26.4:
                    classValue = "Peso ideal"
                    background = .green
                    happy = "Parabens"
                case 26.5...27.8:
                    classValue = "Pouco acima do peso"
                    background = .yellow
                    happy = "Cuidado"
                case 27.9...31.1:
                    classValue = "Acima do peso"
                    background = .yellow
                    happy = "Cuidado"
                case 31.2...:
                    classValue = "Obesidade"
                    background = .red
                    happy = ""
                default:
                    print("deu ruim")
                }

        } else {
                switch calcFunc() {
                case 0...19.1:
                    classValue = "Abaixo do peso"
                    background = .green
                    happy = "Parabens"
                case 19.2...25.8:
                    classValue = "Peso ideal"
                    background = .green
                    happy = "Parabens"
                case 25.9...27.3:
                    classValue = "Pouco acima do peso"
                    background = .yellow
                    happy = "Cuidado"
                case 27.4...32.3:
                    classValue = "Acima do peso"
                    background = .yellow
                    happy = "Cuidado"
                case 32.4...:
                    classValue = "Obesidade"
                    background = .red
                    happy = ""
                    
                default:
                    print("deu ruim")
                }
        }

    }
        
    }
    
    

