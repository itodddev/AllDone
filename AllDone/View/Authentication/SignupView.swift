//
//  SignupView.swift
//  AllDone
//
//  Created by Todd James on 9/4/22.
//

import SwiftUI

struct SignupView: View {
  
  @State var firstName = ""
  @State var lastName = ""
  @State var email = ""
  @State var password = ""
  @State var confirmPassword = ""
  
  @Environment(\.presentationMode) var mode
  
  var body: some View {
    
    ZStack {
      
      BackgroundGradientView()
      
      VStack {
        LogoView()
          .padding(.bottom, 25)
        
        VStack(spacing: 20) {
          UserTextField(text: $firstName, placeholder: "First Name")
          UserTextField(text: $lastName, placeholder: "Last Name")
          EmailTextField(text: $email, placeholder: "Email")
          PasswordSecureField(text: $password, placeholder: "Password")
          PasswordSecureField(text: $confirmPassword, placeholder: "Confirm Password")
        }
        .padding(.horizontal, 32)
        
        Button {
          // Sign Up Action
          
        } label: {
          AuthenticateButtonView(text: "Sign Up")
            .padding()
        }
        
        Spacer()

      }
    } //: ZStack
  }
}

struct SignupView_Previews: PreviewProvider {
  static var previews: some View {
    SignupView()
  }
}
