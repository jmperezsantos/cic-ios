//
//  SecondViewController.swift
//  SimpleNavigationExample
//
//  Created by Manuel Pérez on 9/9/17.
//  Copyright © 2017 Insoft Studio. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func volverAlAmarillo(segue: UIStoryboardSegue){
        print("Volviendo al amarillo")
        
    }
    
    @IBAction func unwindRegresar(segue: UIStoryboardSegue){
        print("Ya regresé")
    }


}





