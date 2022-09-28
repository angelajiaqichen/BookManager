//
//  Book.swift
//  BookManager
//
//  Created by Angela Chen on 9/28/22.
//

import Foundation
struct Book: Identifiable, Comparable {
  var title: String
  var author: String
  var gender: String
  var displayed: Bool
  var id = UUID()    // To conform to Identifialbe protocol
  
  init(title: String, author: String, gender: String, displayed: Bool) {
       self.title = title
       self.author = author
       self.gender = gender
       self.displayed = displayed
     }
  
  static func ==(lhs: Book, rhs: Book) -> Bool {
         return lhs.title == rhs.title && lhs.author == rhs.author
  }
  
  static func <(lhs: Book, rhs: Book) -> Bool {
         return lhs.title < rhs.title
  }
}
