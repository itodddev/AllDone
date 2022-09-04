//
//  LoginView.swift
//  AllDone
//
//  Created by Todd James on 9/4/22.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
      ZStack {
        BackgroundGradientView()
        
        LogoView()
      }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
