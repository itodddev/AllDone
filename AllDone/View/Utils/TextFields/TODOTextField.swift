//
//  TODOTextField.swift
//  AllDone
//
//  Created by Todd James on 9/18/22.
//

import SwiftUI

struct TODOTextField: View {
  
  @Binding var text: String
  let placeholder: String
  
    var body: some View {
      CustomTextField(text: $text, placeholder: Text(placeholder), imageName: "checkmark.square", foregroundColor: .gray)
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(10)
    }
}

struct TODOTextField_Previews: PreviewProvider {
    static var previews: some View {
      TODOTextField(text: .constant(""), placeholder: "Title")
    }
}
