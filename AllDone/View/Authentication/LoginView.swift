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
    
    NavigationView {
      ZStack {
        BackgroundGradientView()
        
        VStack {
          LogoView()
            .padding(.bottom, 25)
          
          VStack(spacing: 20) {
            EmailTextField(text: $email, placeholder: "Email")
             
            PasswordSecureField(text: $password, placeholder: "Password")
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
              .padding()
          }

          Spacer()
          
          NavigationLink {
            SignupView()
              .navigationBarHidden(true)
          } label: {
            HStack {
              Text("Don't have an account?")
                .font(.system(size: 14))
              Text("Sign Up")
                .font(.system(size: 14, weight: .semibold))
            }
            .foregroundColor(.white)
          }
          .padding(.bottom, 16)

        }
        .padding(.top, -44)
      }
    }
  }
}

struct LoginView_Previews: PreviewProvider {
  static var previews: some View {
    LoginView()
  }
}
