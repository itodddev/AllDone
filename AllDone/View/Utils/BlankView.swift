//
//  BlankView.swift
//  AllDone
//
//  Created by Todd James on 9/18/22.
//

import SwiftUI

struct BlankView: View {
    var body: some View {
      VStack {
        Spacer()
      }
      .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
      .background(Color(.black).opacity(0.5))
      .edgesIgnoringSafeArea(.all)
      .onTapGesture {
         // prevents clicking on background
      }
    }
}

struct BlankView_Previews: PreviewProvider {
    static var previews: some View {
        BlankView()
    }
}
