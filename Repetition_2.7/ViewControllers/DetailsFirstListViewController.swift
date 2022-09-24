//
//  DetailsFirstListViewController.swift
//  Repetition_2.7
//
//  Created by Marat Shagiakhmetov on 24.09.2022.
//

import UIKit

class DetailsFirstListViewController: UIViewController {
    
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = person.fullName
        labelOne.text = person.phone
        labelTwo.text = person.email
    }
}
