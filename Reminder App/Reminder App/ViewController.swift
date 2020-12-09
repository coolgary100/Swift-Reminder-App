//
//  ViewController.swift
//  Reminder App
//
//  Created by Gary Jiang on 2020-11-30.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let dailyTasks = [
        "Check all windows",
        "Check all doors",
        "Is the boiler fuled?",
        "Check the mailbox",
        "Empty trash containers",
        "If freezing, check water pipes",
        "Documnet \"strong and unusual\" occurrences"
    ]
    
    let weeklyTasks = [
        "Check inside all cabins",
        "Flush all lavatories in cabins",
        "Walk the perimeter of property"
    ]
    
    let monthlyTasks = [
        "Test security alartm",
        "Test motion detectors",
        "Test smoke alarms"
    ]
    
    // Table View Date Source Methods
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return dailyTasks.count
        case 1:
            return weeklyTasks.count
        case 2:
            return monthlyTasks.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "normalCell", for: indexPath)
        
        switch indexPath.section {
        case 0:
            cell.textLabel?.text = dailyTasks[indexPath.row]
            cell.imageView?.image = UIImage(named: "clock")
            cell.accessoryType = .disclosureIndicator
            cell.detailTextLabel?.text = "This is some text"
        case 1:
            cell.textLabel?.text = weeklyTasks[indexPath.row]
        case 2:
            cell.textLabel?.text = monthlyTasks[indexPath.row]
        default:
            cell.textLabel?.text = "This shouldn't happen"
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Daily Tasks"
        case 1:
            return "Weekly Tasks"
        case 2:
            return "Monthly Tasks"
        default:
            return nil
        }
    }
    
    // Table View Delegate Methods
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You selected row \(indexPath.row) in section \(indexPath.section)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

