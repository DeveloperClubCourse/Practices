//
//  TestView.swift
//  Practice8
//
//  Created by Daniel Pustotin on 28.02.2022.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        VStack {
            Text("Hello!")
                .padding()
            Text("How are you?")
                .padding()
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
