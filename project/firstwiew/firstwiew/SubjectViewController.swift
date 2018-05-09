//
//  SubjectTableViewCell.swift
//  firstwiew
//
//  Created by user139556 on 5/6/18.
//  Copyright © 2018 user139556. All rights reserved.
//

import UIKit

class SubjectViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var tasks: [Task] = []
    
    let cellIdentifier = "IDCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        
    }
    
    func setup() {
        
        tasks = [
        Task(title: "Subject 1", description: "homeWork"),
        Task(title: "Subject 2", description: "homeWork")
        ]
    }
}

extension SubjectViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count;
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "IDCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? TaskTableViewCell
        let task = tasks[indexPath.row]
        
        
        cell?.textLabel?.text = task.title
        cell?.descriptionText?.text = task.description
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let taskViewController = self.storyboard?.instantiateViewController(withIdentifier: "TaskViewController") as? TaskViewController else {
            return
        }
        
        let task = tasks[indexPath.row]
        
        taskViewController.task = task
        
        self.navigationController?.pushViewController(taskViewController, animated: true)
    }
    
    
    
    
    
}
