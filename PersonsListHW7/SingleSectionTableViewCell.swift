//
//  SingleSectionTableViewCell.swift
//  PersonsListHW7
//
//  Created by user on 17.02.2021.
//

import UIKit

class SingleSectionTableViewCell: UITableViewCell {
  
  @IBOutlet weak var fullNameLabel: UILabel!
  
  func setData(person: Person) {
    fullNameLabel.text = person.fullName
  }
}
