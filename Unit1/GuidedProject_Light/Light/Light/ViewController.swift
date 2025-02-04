//
//  ViewController.swift
//  Light
//
//  Created by deniz onur demir on 2/3/25.
//

import UIKit

class ViewController: UIViewController {
    
    var lightOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

        // Method to update the UI based on the light state
        fileprivate func updateUI() {
            view.backgroundColor = lightOn ? .white : .black
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn.toggle()
        updateUI()
    }
    
}

