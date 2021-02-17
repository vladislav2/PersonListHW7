//
//  SectionTableViewCell.swift
//  PersonsListHW7
//
//  Created by user on 17.02.2021.
//

import UIKit

class SectionTableViewCell: UITableViewCell {

  func setData(person: Person, indexPath: IndexPath) {
    var content = self.defaultContentConfiguration()
    content.text = indexPath.row == 0 ? person.telepon : person.mail
    content.image = UIImage(systemName: indexPath.row == 0 ? "phone" : "tray")
    self.contentConfiguration = content
  }
}
