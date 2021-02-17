//
//  SingleSectionViewController.swift
//  PersonsListHW7
//
//  Created by user on 16.02.2021.
//

import UIKit

class SingleSectionViewController: UIViewController {
  
  @IBOutlet weak var tableView: UITableView!
  
  var persons: [Person] = []
  
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.delegate = self
    tableView.dataSource = self
  }
  
  // MARK: - Navigation
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    guard let detailViewController = segue.destination as? DetailViewController else { return }
    guard let index = tableView.indexPathForSelectedRow?.row else { return }
    detailViewController.navigationItem.backButtonTitle = persons[index].fullName
    detailViewController.person = persons[index]
  }
}

extension SingleSectionViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    persons.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? SingleSectionTableViewCell else { return UITableViewCell() }
    cell.setData(person: persons[indexPath.row])
    return cell
  }
}

extension SingleSectionViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: true)
  }
}
