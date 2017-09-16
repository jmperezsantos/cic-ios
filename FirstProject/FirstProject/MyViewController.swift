//
//  MyViewController.swift
//  FirstProject
//
//  Created by Manuel Pérez on 9/2/17.
//  Copyright © 2017 Insoft Studio. All rights reserved.
//

import UIKit

class MyViewController: UIViewController {
    
    // MARK: IBOutlets
    
    @IBOutlet weak var lbEtiqueta: UILabel!
    @IBOutlet weak var tfCampoTexto: UITextField!
    @IBOutlet weak var btnPresiona: UIButton!
    @IBOutlet weak var btnOtro: UIButton!
    
    // MARK: IBActions
    
    
    @IBAction func didTapPresiona(sender: UIButton) {
        
        print("DidTapPresiona")
        
    }
    
    @IBAction func didTapClear(sender: UIButton) {
        
        print("DidTapClear")
        
    }
    
    func didTapOtro(sender: UIButton) {
        
        let alerta = UIAlertController(title: "Alerta",
                                       message: "Esto es una alerta",
                                       preferredStyle: .Alert)
        
        let actionDefault = UIAlertAction(title: "Default",
                                        style: .Default,
                                        handler: nil)
        
        let actionCancel = UIAlertAction(title: "Cancel",
                                        style: .Cancel,
                                        handler: nil)
        
        let actionDestructive = UIAlertAction(title: "Destructive",
                                        style: .Destructive,
                                        handler: nil)
        
        alerta.addAction(actionCancel)
        alerta.addAction(actionDestructive)
        alerta.addAction(actionDefault)
        
        self.presentViewController(alerta,
                                   animated: true,
                                   completion: nil)
        
    }
    
    // MARK: LiveCycle

    override func viewDidLoad() {
        super.viewDidLoad()
        print("La vista ya se cargó")
        
        self.lbEtiqueta.text = "Hola Mundo!"
        self.lbEtiqueta.backgroundColor = UIColor.cyanColor()
        
        self.tfCampoTexto.placeholder = "Escribe:"
        self.tfCampoTexto.backgroundColor =
            UIColor(red: 255.0/255.0,
                green: 114.0/255.0,
                blue: 52.0/255.0,
                alpha: 1.0)
        
        self.btnPresiona.setTitle("Tap",
                                  forState: UIControlState.Normal)
        
        self.btnOtro.addTarget(self,
                               action: #selector(self.didTapOtro(_:)),
                               forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        print("La vista se va a mostrar")
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        print("La vista ya se mostró")
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        print("La vista se va a quitar")
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        print("La vista ya se quitó")
    }
    

}









