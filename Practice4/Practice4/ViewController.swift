//
//  ViewController.swift
//  Practice4
//
//  Created by Daniel Pustotin on 14.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    private var counter: Int = 0 {
        didSet {
            label.text = String(counter)
            label.textColor = getCorrectColor(for: counter)
            setCorrectBackground(for: counter)
        }
    }

    @IBOutlet weak var label: UILabel!
    
    @IBAction func minusButton(_ sender: UIButton) {
        counter = correctValue(value: counter - 1)
    }
    
    @IBAction func plusButton(_ sender: UIButton) {
        counter = correctValue(value: counter + 1)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        label.text = String(counter)
        label.textColor = getCorrectColor(for: counter)
        label.backgroundColor = UIColor.systemBackground
    }
    
    private func correctValue(value: Int) -> Int {
        min(10, max(-10, value))
    }

    private func getCorrectColor(for value: Int) -> UIColor {
        switch value {
        case ..<(-5):
            return UIColor(named: "Cold") ?? .black
        case -5..<7:
            return UIColor(named: "OK") ?? .black
        default:
            return UIColor(named: "Hot") ?? .black
        }
    }
    
    private func setCorrectBackground(for value: Int) {
        if value == -10 {
            view.backgroundColor = .blue
        } else if value == 10 {
            view.backgroundColor = .red
        } else {
            view.backgroundColor = .black
        }
    }
}

