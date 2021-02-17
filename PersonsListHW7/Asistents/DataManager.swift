//
//  DataManager.swift
//  PersonsListHW7
//
//  Created by user on 17.02.2021.
//

import Foundation

class DataManager {
  static let firstNameArray = ["Jack", "Oliver", "Harry", "Thomas", "Joshua", "William", "James", "Daniel", "Jacob", "Matthew"]
  static let lastNameArray = ["Smith", "Johnson", "Williams", "Jones", "Brown", "Davies", "Miller", "Wilson", "Moore", "Taylor"]
  static let mailArray = ["qqqq@gmail.com", "wwww@gmail.com", "eeee@gmail.com", "rrrr@gmail.com", "tttt@gmail.com", "yyyy@gmail.com", "uuuu@gmail.com", "iiii@gmail.com", "oooo@gmail.com", "pppp@gmail.com"]
  static let phoneNamberArray = ["1243455434", "98092384222", "3453453344", "23432342353", "8786623222", "09823427283", "48238092385", "79493895433", "59023102394", "69283940112"]
  
  static func getPersonsArray() -> [Person] {
    var personsArray:[Person] = []
    
    let names = firstNameArray.shuffled()
    let lastNames = lastNameArray.shuffled()
    let mails = mailArray.shuffled()
    let phones = phoneNamberArray.shuffled()
    
    for index in 0...mailArray.count - 1 {
      let person = Person(firstName: names[index], lastName: lastNames[index], mail: mails[index], telepon: phones[index])
      personsArray.append(person)
    }
    return personsArray
  }
}
