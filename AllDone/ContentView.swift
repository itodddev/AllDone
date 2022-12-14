//
//  ContentView.swift
//  AllDone
//
//  Created by Todd James on 9/4/22.
//

import SwiftUI

struct ContentView: View {
  
  @EnvironmentObject var viewModel: AuthViewModel
  
  var body: some View {
    Group {
      if viewModel.userSession == nil {
        LoginView()
      } else {
        if let user = viewModel.currentUser {
          DashboardView(user: user)
        }
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
