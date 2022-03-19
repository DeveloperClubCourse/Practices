//
//  MyCardView.swift
//  Practice10
//
//  Created by Daniel Pustotin on 10.03.2022.
//

import SwiftUI

let screen = UIScreen.main.bounds.size

struct MyCardView: View {
    
    @State var backgroundColor: Color = .red
    
    @Binding var isPresented: Bool
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            VStack {
                HStack {
                    Spacer()
                    Button {
                        isPresented = false
                    } label: {
                        Image(systemName: "plus")
                            .rotationEffect(Angle(degrees: 45))
                            .font(.largeTitle)
                            .foregroundColor(.black)
                    }
                }
                Spacer()
                
                MyButtonView(colorToChange: $backgroundColor)
            }
            .padding()
        }
        .frame(width: screen.width * 2 / 3, height: screen.height / 2)
        .clipShape(RoundedRectangle(cornerRadius: 30))
        .shadow(color: backgroundColor, radius: 15, x: 0, y: 15)
    }
}

struct MyCardView_Previews: PreviewProvider {
    static var previews: some View {
        MyCardView(isPresented: .constant(true))
    }
}
