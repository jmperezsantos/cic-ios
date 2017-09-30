//
//  GameViewController.swift
//  ConstraintsExample
//
//  Created by Manuel Pérez on 9/30/17.
//  Copyright © 2017 Insoft Studio. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    @IBOutlet weak var lcHorizontal: NSLayoutConstraint!
    @IBOutlet weak var lcVertical: NSLayoutConstraint!
    
    @IBAction func didTapLeft(_ sender: Any) {
        
        UIView.animate(withDuration: 1) {
            self.lcHorizontal.constant = self.lcHorizontal.constant - 50
            self.view.layoutIfNeeded()
        }
        
    }
    
    @IBAction func didTapUp(_ sender: Any) {
        
        UIView.animate(withDuration: 1) {
            self.lcVertical.constant = self.lcVertical.constant - 50
            self.view.layoutIfNeeded()
        }
        
    }
    
    @IBAction func didTapRight(_ sender: Any) {
        
        UIView.animate(withDuration: 1) {
            self.lcHorizontal.constant = self.lcHorizontal.constant + 50
            self.view.layoutIfNeeded()
        }
        
    }
    
    @IBAction func didTapDown(_ sender: Any) {
        
        UIView.animate(withDuration: 1) {
            self.lcVertical.constant = self.lcVertical.constant + 50
            self.view.layoutIfNeeded()
        }
        
    }
}
