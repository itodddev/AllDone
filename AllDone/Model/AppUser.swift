//
//  AppUser.swift
//  AllDone
//
//  Created by Todd James on 9/7/22.
//

import FirebaseFirestoreSwift

struct AppUser: Identifiable, Decodable {
  
  @DocumentID var id: String? // From Firebase
  let uid: String
  let firstName: String
  let lastName: String
  let email: String
  
  var isCurrentUser: Bool {
    return AuthViewModel.shared.userSession?.uid == id
  }
  
}
