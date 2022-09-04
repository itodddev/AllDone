//
//  BackgroundGradientView.swift
//  AllDone
//
//  Created by Todd James on 9/4/22.
//

import SwiftUI

struct BackgroundGradientView: View {
    var body: some View {
      LinearGradient(colors: [.blue, .blue.opacity(0.5)], startPoint: .top, endPoint: .bottom)
          .ignoresSafeArea()
    }
}

struct BackgroundGradientView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundGradientView()
    }
}
