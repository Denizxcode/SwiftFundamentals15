//
//  ViewController.swift
//  Two Buttons
//
//  Created by deniz onur demir on 2/26/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var label: UILabel!
    
    @IBOutlet var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func setTextButtonTaped(_ sender: Any) {
        label.text = textField.text
    }
    @IBAction func clearTextButtonTapped(_ sender: Any) {
        textField.text = ""
            label.text = ""
    }
    

}

