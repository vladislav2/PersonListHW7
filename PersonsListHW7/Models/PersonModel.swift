//
//  PersonModel.swift
//  PersonsListHW7
//
//  Created by user on 17.02.2021.
//

import Foundation

struct Person {
  var firstName: String
  var lastName: String
  var fullName: String {
    get{
      "\(firstName) \(lastName)"
    }
  }
  var mail: String
  var telepon: String
}
