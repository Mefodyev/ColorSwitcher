//
//  ViewController.swift
//  ColorSwitcher
//
//  Created by Alexey Mefodyev on 22.05.2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var colourfulView: UIView!
    
    @IBOutlet weak var redNumberLabel: UILabel!
    @IBOutlet weak var greenNumberLabel: UILabel!
    @IBOutlet weak var blueNumberLabel: UILabel!
    @IBOutlet weak var alphaNumberLabel: UILabel!
    
    @IBOutlet weak var redColorSlider: UISlider!
    @IBOutlet weak var greenColorSlider: UISlider!
    @IBOutlet weak var blueColorSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redNumberLabel.text = "0.5"
        greenNumberLabel.text = "0.5"
        blueNumberLabel.text = "0.5"
        alphaNumberLabel.text = "1"


        
        colourfulView.layer.cornerRadius = view.frame.size.height/25

    }
    
    override func viewWillLayoutSubviews() {
        colourfulView.backgroundColor = UIColor(red: CGFloat(redColorSlider.value), green: CGFloat( greenColorSlider.value), blue: CGFloat(blueColorSlider.value), alpha: CGFloat(alphaSlider.value))
        
    }

    @IBAction func redSliderValueChanged(_ sender: Any) {
        
        redNumberLabel.text = String(format: "%.1f", redColorSlider.value)
        
    }
    
    @IBAction func greenSliderValueChanged(_ sender: Any) {
        
        greenNumberLabel.text = String(format: "%.1f", greenColorSlider.value)

    }
    
    @IBAction func blueSliderValueChanged(_ sender: Any) {
        
        blueNumberLabel.text = String(format: "%.1f", blueColorSlider.value)

    }
    
    @IBAction func alphaSliderValueChanged(_ sender: Any) {
        alphaNumberLabel.text = String(format: "%.1f", alphaSlider.value)
    }
    
    
}

