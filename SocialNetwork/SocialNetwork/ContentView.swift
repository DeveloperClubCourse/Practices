//
//  ContentView.swift
//  SocialNetwork
//
//  Created by Daniel Pustotin on 12.03.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            AccountView(account: .test)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
