//
//  ViewController.swift
//  Lesson1Task1
//
//  Created by Николай Ларьков on 18.08.2021.
//

import UIKit

class ViewController: UIViewController {
    
    enum TrafficLights: String {
        case redColor;
        case yellowColor;
        case greenColor;
        case none;
    }

    @IBOutlet weak var redColor: UIView!
    @IBOutlet weak var yellowColor: UIView!
    @IBOutlet weak var greenColor: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    var workLight: TrafficLights = .none
    override func viewDidLoad() {
        super.viewDidLoad()
        redColor.layer.cornerRadius = 50
        yellowColor.layer.cornerRadius = 50
        greenColor.layer.cornerRadius = 50
        startButton.layer.cornerRadius = 10

        redColor.backgroundColor = .red
        yellowColor.backgroundColor = .yellow
        greenColor.backgroundColor = .green
        
        redColor.alpha = 0.3
        yellowColor.alpha = 0.3
        greenColor.alpha = 0.3
    }


    @IBAction func nextColor(_ sender: Any) {
        if workLight != .none{
            switch workLight {
            case .redColor:
                redColor.alpha = 0.3
                yellowColor.alpha = 1
                workLight = .yellowColor
            case .yellowColor:
                yellowColor.alpha = 0.3
                greenColor.alpha = 1
                workLight = .greenColor
            case .greenColor:
                redColor.alpha = 1
                greenColor.alpha = 0.3
                workLight = .redColor
            default:
               break
            }
            
        } else {
            startButton.setTitle("NEXT", for: .normal)
            redColor.alpha = 1
            workLight = .redColor
        }
    }
    
}

