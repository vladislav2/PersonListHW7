//
//  TabBarController.swift
//  PersonsListHW7
//
//  Created by user on 16.02.2021.
//

import UIKit

class TabBarController: UITabBarController {
  
  var persons = DataManager.getPersonsArray()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    moveData()
  }
  
  // MARK: - Navigation
  
  private func moveData() {
    guard let firstNavigationController = self.viewControllers?.first as? UINavigationController else { return }
    guard let singleSectionVC = firstNavigationController.viewControllers.first as? SingleSectionViewController else { return }
    singleSectionVC.persons = persons
    guard let secondNavigationController = self.viewControllers?.last as? UINavigationController else { return }
    guard let sectionVC = secondNavigationController.viewControllers.first as? SectionTableViewController else { return }
    sectionVC.persons = persons
  }
}
