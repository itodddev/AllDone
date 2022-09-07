//
//  TODO.swift
//  AllDone
//
//  Created by Todd James on 9/7/22.
//

import Foundation
import SwiftUI
import FirebaseFirestoreSwift

struct TODO: Identifiable, Decodable {
  
  @DocumentID var id: String? = UUID().uuidString
  let ownerID: String
  var title: String
  var description: String
  var TODOType: String
  var completed: Bool
  var documentID: String? = ""
  
  func getType() -> SelectedButton {
    switch (TODOType) {
      case "All": return .all
      case "Groceries": return .groceries
      case "Work": return .work
      case "School": return .school
      case "Home": return .home
      case "Personal": return .personal
      case "Extra": return .extra
      default: return .extra
    }
  }
}
