//
//  ViewController.swift
//  TrafficLight
//
//  Created by Mikhail Bukhrashvili on 23.03.2021.
//

import UIKit

enum Colors {
    case red
    case yellow
    case green
}

class ViewController: UIViewController {

    @IBOutlet var redLightUIView: UIView!
    @IBOutlet var yellowLightIUView: UIView!
    @IBOutlet var greenLightUIView: UIView!
    @IBOutlet var startButton: UIButton!
    
    var someCollor = Colors.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 10
        redLightUIView.layer.cornerRadius = 60
        yellowLightIUView.layer.cornerRadius = 60
        greenLightUIView.layer.cornerRadius = 60
    }
    
    @IBAction func startButtonPressed() {
        startButton.setTitle("NEXT", for: .normal)
        greenLightUIView.alpha = 0.3
        redLightUIView.alpha = 0.3
        yellowLightIUView.alpha = 0.3
        
        switch someCollor {
        case .red:
            redLightUIView.alpha = 1
            someCollor = Colors.yellow
        case .yellow:
            yellowLightIUView.alpha = 1
            someCollor = Colors.green
        case .green:
            greenLightUIView.alpha = 1
            someCollor = Colors.red
        }
        
    }
    
}
