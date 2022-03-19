//
//  AddFriendView.swift
//  SocialNetwork
//
//  Created by Daniel Pustotin on 13.03.2022.
//

import SwiftUI

struct AddFriendView: View {
    @ObservedObject var account: Account
    
    @Binding var isPresented: Bool
    
    @State var newFriendName: String = ""
    var correctName: Bool {
        newFriendName != "" && !Account.contains(newFriendName)
    }
    
    var body: some View {
        VStack {
            TextField("Name", text: $newFriendName)
                .font(.title)
                .padding()
            
            Button {
                let friend = Account(newFriendName)
                account.addFriend(friend)
                isPresented = false
            } label: {
                Text("Add")
            }
            .foregroundColor(correctName ? .black : .gray)
            .disabled(!correctName)
            .SNButtonStyle()
        }
        .navigationTitle("New friend")
    }
}

struct AddFriendView_Previews: PreviewProvider {
    static var previews: some View {
        AddFriendView(account: .test, isPresented: .constant(true))
    }
}
