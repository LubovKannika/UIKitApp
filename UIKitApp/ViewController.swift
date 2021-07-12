//
//  ViewController.swift
//  UIKitApp
//
//  Created by Lubov Kannika on 12.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Label
        mainLabel.font = mainLabel.font.withSize(35)
        mainLabel.textAlignment = .center
        mainLabel.numberOfLines = 2
       
        
        // SegmentedControl
        segmentedControl.insertSegment(withTitle: "Third", at: 2, animated: false)
      
        // Slider
        slider.value = 1
        slider.minimumValue = 0
        slider.maximumValue = 1
        slider.minimumTrackTintColor = .yellow
        slider.maximumTrackTintColor = .red
        slider.thumbTintColor = .blue
        
        mainLabel.text = String(slider.value)
    }

   
    @IBAction func segmentedControlAction() {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            mainLabel.text = "The first segment is selected"
            mainLabel.textColor = .red
        case 1:
            mainLabel.text = "The second segment is selected"
            mainLabel.textColor = .blue
        default:
            mainLabel.text = "The third segment is selected"
            mainLabel.textColor = .yellow
        }
    }
    
    @IBAction func sliderAction() {
        mainLabel.text = String(slider.value)
        let sliderValue = CGFloat(slider.value)
        view.backgroundColor = view.backgroundColor?.withAlphaComponent(sliderValue)
    }
}
