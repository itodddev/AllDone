//
//  CustomSecureField.swift
//  AllDone
//
//  Created by Todd James on 9/4/22.
//

import SwiftUI

struct CustomSecureField: View {
  @Binding var text: String
  let placeholder: Text
  let imageName: String
  var foregroundColor: Color?
  
  var body: some View {
    ZStack(alignment: .leading) {
      if text.isEmpty {
        placeholder
          .foregroundColor(foregroundColor ?? Color(.init(white: 1, alpha: 0.8)))
          .padding(.leading, 40)
      }
      
      HStack {
        Image(systemName: imageName)
          .resizable()
          .scaledToFit()
          .frame(width: 20, height: 20)
          .foregroundColor(foregroundColor ?? Color(.init(white: 1, alpha: 0.8)))
        
        SecureField("", text: $text)
          .autocapitalization(.none)
          .foregroundColor(foregroundColor ?? Color(.init(white: 1, alpha: 0.8)))
      }
    }
  }
}

struct CustomSecureField_Previews: PreviewProvider {
    static var previews: some View {
      ZStack {
        BackgroundGradientView()
        
        CustomSecureField(text: .constant(""), placeholder: Text("Password"), imageName: "lock")
      }
    }
}
