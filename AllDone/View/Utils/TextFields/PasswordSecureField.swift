//
//  PasswordSecureField.swift
//  AllDone
//
//  Created by Todd James on 9/4/22.
//

import SwiftUI

struct PasswordSecureField: View {
  
  @Binding var text: String
  
    var body: some View {
      CustomSecureField(text: $text, placeholder: Text("Password"), imageName: "lock", foregroundColor: .white)
        .padding()
        .background(Color(.init(white: 1, alpha: 0.15)))
        .cornerRadius(10)
        .padding(.horizontal, 10)
    }
}

struct PasswordSecureField_Previews: PreviewProvider {
    static var previews: some View {
      
      ZStack {
        BackgroundGradientView()
        
        PasswordSecureField(text: .constant(""))
      }
    }
}
