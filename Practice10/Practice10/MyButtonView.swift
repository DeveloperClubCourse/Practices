//
//  MyButtonView.swift
//  Practice10
//
//  Created by Daniel Pustotin on 10.03.2022.
//

import SwiftUI

struct MyButtonView: View {
    
    @Binding var colorToChange: Color
    
    var body: some View {
        VStack {
            Button {
                switch colorToChange {
                case .red:
                    colorToChange = .yellow
                default:
                    colorToChange = .red
                }
            } label: {
                HStack {
                    Image(systemName: "play.fill")
                    Text("Button")
                        
                }
            }
        }
        .myStyle()
    }
}

struct MyButtonView_Previews: PreviewProvider {
    static var previews: some View {
        MyButtonView(colorToChange: .constant(.red))
    }
}
