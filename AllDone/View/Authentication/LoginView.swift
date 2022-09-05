//
//  LoginView.swift
//  AllDone
//
//  Created by Todd James on 9/4/22.
//

import SwiftUI

struct LoginView: View {
  
  @State var email = ""
  @State var password = ""
  
  var body: some View {
    ZStack {
      BackgroundGradientView()
      
      VStack {
        LogoView()
          .padding(.bottom, 25)
        
        VStack(spacing: 20) {
          EmailTextField(text: $email)
           
          PasswordSecureField(text: $password)
        }
        .padding(.horizontal, 32)
        
        HStack {
          Spacer()
          
          Button {
            
          } label: {
              Text("Forgot Password")
                .foregroundColor(.white)
                .font(.system(size: 13, weight: .semibold))
                .padding(.top, 1)
                .padding(.trailing, 43)
          }
          
        }
        
        Button {
          // Sigin
        } label: {
          AuthenticateButtonView(text: "Sign In")
        }

        Spacer()
      }
    }
  }
}

struct LoginView_Previews: PreviewProvider {
  static var previews: some View {
    LoginView()
  }
}
