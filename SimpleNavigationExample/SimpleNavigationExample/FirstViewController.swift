//
//  FirstViewController.swift
//  SimpleNavigationExample
//
//  Created by Manuel Pérez on 9/9/17.
//  Copyright © 2017 Insoft Studio. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func unwindRegresar(segue: UIStoryboardSegue){
        print("Ya regresé")
    }

}








