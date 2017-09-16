//
//  ViewController.swift
//  SimpleNavigationSendParams
//
//  Created by Manuel Pérez on 9/9/17.
//  Copyright © 2017 Insoft Studio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: IBOutlets
    @IBOutlet weak var tfInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func unwindToStart(segue: UIStoryboardSegue){
        
        self.tfInput.text = nil
        
    }
    
    override func shouldPerformSegueWithIdentifier(identifier: String,
                                                   sender: AnyObject?) -> Bool {
        
        if self.tfInput.text!.isEmpty {
            
            //Mostrar una alerta
            
            return false
        } else  {
            return true
        }
        
    }

    override func prepareForSegue(segue: UIStoryboardSegue,
                                  sender: AnyObject?) {
        
//        if let destinationVC = segue.destinationViewController as? DetailViewController {
//            
//            destinationVC.strMessage = self.tfInput.text
//            
//        }

        if segue.identifier == "loginSegue" {
            
            let detailVC = segue.destinationViewController as! DetailViewController
            
            detailVC.strMessage = self.tfInput.text
            
        }
        
    }

}









