//
//  ViewController.swift
//  InterfaceBuilderBasics
//
//  Created by deniz onur demir on 2/1/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeTitle(_ sender: UIButton) {
        mainLabel.text = "This app rocks!"
    }
    
}

