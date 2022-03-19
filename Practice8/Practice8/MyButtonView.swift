//
//  MyButtonView.swift
//  Practice8
//
//  Created by Daniel Pustotin on 28.02.2022.
//

import SwiftUI

struct MyButtonView: View {
    var body: some View {
        HStack {
            Text("Hello!")
                .padding()
                .background {
                    Color.orange
                }
                .padding()
                .background {
                    Color.green
                }
                .clipShape(RoundedRectangle(cornerRadius: 30))
            
            Button {
                print("Button pressed!")
            } label: {
                VStack {
                    Text("Play")
                        .padding()
                        .background {
                            Color.orange
                        }
                        .clipShape(RoundedRectangle(cornerRadius: 30))
                    
                    Image(systemName: "play")
                        .font(.largeTitle)
                }
                .foregroundColor(.black)
            }
            .padding()
            .background {
                Color.blue
            }
            .clipShape(RoundedRectangle(cornerRadius: 20))
        }
    }
}

struct MyButtonView_Previews: PreviewProvider {
    static var previews: some View {
        MyButtonView()
    }
}
