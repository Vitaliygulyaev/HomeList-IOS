//
//  TaskViewController.swift
//  firstwiew
//
//  Created by user139556 on 5/7/18.
//  Copyright © 2018 user139556. All rights reserved.
//

import UIKit

struct Task {
    let title: String
    let description: String
}


class TaskViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionText: UITextField!
    
    
    public var task: Task?
    
    
    
    
    
        override func viewDidLoad() {
        super.viewDidLoad()
            setupViewController()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        loadTask()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
}
    
    func setupViewController() {
        
        if task == nil {
            
            task = Task(
                title: "subject",
                description: "homework")
            
        }
    
    
    }
    
    func loadTask() {
        
        guard let task = task else {
            print("<TaskViewController: loadTask> ERROR task is nil")
            return
        }
        
        title = task.title
        titleLabel.text = task.title
        descriptionText.text = task.description
    }
    

}
