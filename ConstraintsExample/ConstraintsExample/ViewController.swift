//
//  ViewController.swift
//  ConstraintsExample
//
//  Created by Manuel Pérez on 9/30/17.
//  Copyright © 2017 Insoft Studio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lcOrangeButton: NSLayoutConstraint!

    @IBAction func didTapPinkButton(_ sender: Any) {
        
        UIView.animate(withDuration: 2) {
            self.lcOrangeButton.constant = self.lcOrangeButton.constant + 100
            self.view.layoutIfNeeded()
        }
        
    }
    
    @IBAction func didTapBlueButton(_ sender: Any) {
        
        UIView.animate(withDuration: 2) {
            self.lcOrangeButton.constant = self.lcOrangeButton.constant - 100
            self.view.layoutIfNeeded()
        }
        
    }
}

