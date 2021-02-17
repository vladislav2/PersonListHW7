//
//  DetailViewController.swift
//  PersonsListHW7
//
//  Created by user on 16.02.2021.
//

import UIKit

class DetailViewController: UIViewController {
  
  @IBOutlet weak var mailLabel: UILabel!
  @IBOutlet weak var phoneLabel: UILabel!
  
  var person: Person!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    mailLabel.text = person.mail
    phoneLabel.text = person.telepon
  }
}

