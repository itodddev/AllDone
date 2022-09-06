//
//  UserTextField.swift
//  AllDone
//
//  Created by Todd James on 9/5/22.
//

import SwiftUI

struct UserTextField: View {
  
  @Binding var text: String
  let placeholder: String
  
    var body: some View {
      CustomTextField(text: $text, placeholder: Text(placeholder), imageName: "person" , foregroundColor: .white)
        .padding()
        .background(Color(.init(white: 1, alpha: 0.15)))
        .cornerRadius(10)
        .padding(.horizontal, 10)
    }
}

struct UserTextField_Previews: PreviewProvider {
    static var previews: some View {
      ZStack {
        
        BackgroundGradientView()
        
        UserTextField(text: .constant(""), placeholder: "First Name")
      }
    }
}
