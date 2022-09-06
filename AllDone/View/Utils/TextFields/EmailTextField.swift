//
//  EmailTextField.swift
//  AllDone
//
//  Created by Todd James on 9/4/22.
//

import SwiftUI

struct EmailTextField: View {
  
  @Binding var text: String
  let placeholder: String
  
  var body: some View {
    CustomTextField(text: $text, placeholder: Text(placeholder), imageName: "envelope", foregroundColor: .white)
      .padding()
      .background(Color(.init(white: 1, alpha: 0.15)))
      .cornerRadius(10)
      .padding(.horizontal, 10)
  }
}

struct EmailTextField_Previews: PreviewProvider {
  static var previews: some View {
    ZStack {
      BackgroundGradientView()
      
      EmailTextField(text: .constant(""), placeholder: "Email")
    }
  }
}
