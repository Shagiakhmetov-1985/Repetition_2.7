//
//  SecondListTableViewController.swift
//  Repetition_2.7
//
//  Created by Marat Shagiakhmetov on 24.09.2022.
//

import UIKit

class SecondListTableViewController: UITableViewController {
    
    var personList: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 60
        tableView.sectionHeaderHeight = 20
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        personList.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        personList[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "secondList", for: indexPath)
        let person = personList[indexPath.section]
        
        var content = cell.defaultContentConfiguration()
        switch indexPath.row {
        case 0:
            content.text = person.phone
            content.image = UIImage(systemName: Image.phone.rawValue)
        default:
            content.text = person.email
            content.image = UIImage(systemName: Image.email.rawValue)
        }
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
