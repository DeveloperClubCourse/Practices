//
//  ContentView.swift
//  Practice8
//
//  Created by Daniel Pustotin on 28.02.2022.
//

import SwiftUI

struct ContentView: View {
    
    var colors: [Color] = [.red, .black, .white, .orange]
    
    @State var currentColor: Color = .red
    
    var body: some View {
        ZStack {
            currentColor.ignoresSafeArea()
            HStack {
                Spacer()
                
                VStack {
                    
                    TestView()
                        .background {
                            Color.blue
                        }
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    
                    TestView()
                        .background {
                            Color.red
                        }
                        .clipShape(RoundedRectangle(cornerRadius: 40))
                    
                    Button {
                        currentColor = colors.randomElement()!
                    } label: {
                        Text("Change color!")
                    }

                    
//                    MyButtonView()
                    
                }
                
                Spacer()
                Image(systemName: "person")
                    .foregroundColor(.red)
                Text("Great!")
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
