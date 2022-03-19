//
//  ContentView.swift
//  Practice10
//
//  Created by Daniel Pustotin on 10.03.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var cardIsPresented: Bool = false
    
    var body: some View {
        ZStack {
            VStack {
                Text("My card")
                    .font(.largeTitle)
                    .underline()
                    .bold()
                
                Spacer()
                
                Button {
                    cardIsPresented.toggle()
                } label: {
                    HStack {
                        Image(systemName: "creditcard")
                        Text("Show card!")
                    }
                }
                .disabled(cardIsPresented)
//                .font(.title2)
//                .foregroundColor(.white)
//                .padding()
//                .background(content: { cardIsPresented ? Color.gray : Color.black })
//                .clipShape(RoundedRectangle(cornerRadius: 15))
                .myStyle()
            }
            
            MyCardView(isPresented: $cardIsPresented)
                .offset(x: 0, y: cardIsPresented ? 0 : screen.height)
                .animation(.spring(response: 0.5, dampingFraction: 0.8, blendDuration: 0.3))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
