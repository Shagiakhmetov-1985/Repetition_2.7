//
//  MainTabBarController.swift
//  Repetition_2.7
//
//  Created by Marat Shagiakhmetov on 24.09.2022.
//

import UIKit

class MainTabBarController: UITabBarController {
    let persons = Person.getPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers(persons: persons)
    }
    
    private func setupViewControllers(persons: [Person]) {
        let firstListVC = viewControllers?.first as! FirstListTableViewController
        let secondListVC = viewControllers?.last as! SecondListTableViewController
        
        firstListVC.personList = persons
        secondListVC.personList = persons
    }
}
