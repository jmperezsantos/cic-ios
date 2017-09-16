//
//  DetailViewController.swift
//  SimpleNavigationSendParams
//
//  Created by Manuel Pérez on 9/9/17.
//  Copyright © 2017 Insoft Studio. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    // MARK: IBOutlets
    
    @IBOutlet weak var lbMessage: UILabel!
    
    // MARK: Properties
   
    var strMessage : String?

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.lbMessage.text = self.strMessage
    }
    
    @IBAction func unwindToDetailViewController(segue: UIStoryboardSegue){
        
        self.performSelector(#selector(self.ponerAlerta),
                             withObject: nil,
                             afterDelay: 2)
        
    }
    
    @objc private func ponerAlerta(){
        
        let alertController = UIAlertController(title: "Alerta",
                                                message: "Hola Mundo!",
                                                preferredStyle: .Alert)
        
        let alertAction = UIAlertAction(title: "Default",
                                        style: .Default) { (alertAction) in
                                            
                                            self.lbMessage.text = "Hola Mundo!!!"
                                            
        }
        
        let alertAction2 = UIAlertAction(title: "Cancel",
                                        style: .Cancel,
                                        handler: {(alertAction) in
        
                                            self.lbMessage.text = "Canceló!"
                                            
        })
        
        let alertAction3 = UIAlertAction(title: "Destructive",
                                        style: .Destructive,
                                        handler: nil)
        
        alertController.addAction(alertAction)
        alertController.addAction(alertAction2)
        alertController.addAction(alertAction3)
        
        self.presentViewController(alertController,
                                   animated: true,
                                   completion: nil)
    }

}




