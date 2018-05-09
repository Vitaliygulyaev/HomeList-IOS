//
//  ViewController.swift
//  firstwiew
//
//  Created by user139556 on 4/28/18.
//  Copyright © 2018 user139556. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var MainView: UILabel!
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    
    
    @IBAction func NewAcccount(_ sender: UIButton) {
        
    }
    
    
    
    @IBAction func NewPassword(_ sender: UIButton) {
    }
    
    
    @IBAction func Login(_ sender: UIButton) {
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

