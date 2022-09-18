//
//  DashboardView.swift
//  AllDone
//
//  Created by Todd James on 9/7/22.
//

import SwiftUI

struct DashboardView: View {
  
  let user: AppUser
  
  @State var searchText: String = ""
  
  @ObservedObject var viewModel = TODOViewModel()
  
  
    var body: some View {
      ZStack {
        VStack {
          HStack {
            Spacer()
  
            Text("- AllDone -")
              .font(.system(size: 24))
              .fontWeight(.semibold)
            
            Spacer()
          }
          .overlay {
            HStack{
              Spacer()
              
              Button {
                AuthViewModel.shared.signout()
              } label: {
                Text("Logout")
                  .foregroundColor(Color(.systemGray))
              }
              .padding(.trailing)
            }
          }
          SearchBarView(searchText: $searchText)
            .padding()
          
          TODOButtonStack(viewModel: viewModel)
            .padding(.horizontal)
            .padding(.bottom)

          if viewModel.todosFiltered.isEmpty {
            AddTODOLogo()
              .padding(.top)
          }
        }
      }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView(user: appUser01)
    }
}
