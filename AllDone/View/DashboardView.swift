//
//  DashboardView.swift
//  AllDone
//
//  Created by Todd James on 9/7/22.
//

import SwiftUI

struct DashboardView: View {
  
  let user: AppUser
  //@EnvironmentObject var viewModel: AuthViewModel // either works for signout
  
    var body: some View {
      VStack {
        Text("Dashboard View")
        
        Button {
          AuthViewModel.shared.signout()
        } label: {
          Text("Logout")
        }
        .padding()
      }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView(user: appUser01)
    }
}
