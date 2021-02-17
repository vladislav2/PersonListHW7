//
//  SectionTableViewController.swift
//  PersonsListHW7
//
//  Created by user on 16.02.2021.
//

import UIKit

class SectionTableViewController: UITableViewController {
  
  var persons: [Person] = []
  
  // MARK: - Table view data source
  
  override func numberOfSections(in tableView: UITableView) -> Int {
    persons.count
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    2
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cellInSections", for: indexPath) as? SectionTableViewCell
    cell?.setData(person: persons[indexPath.section], indexPath: indexPath)
    return cell ?? UITableViewCell()
  }
  override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    persons[section].fullName
  }
  
  // MARK: - Table view delegate
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: true)
  }
}
