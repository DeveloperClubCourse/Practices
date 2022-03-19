//
//  FriendsView.swift
//  SocialNetwork
//
//  Created by Daniel Pustotin on 13.03.2022.
//

import SwiftUI

struct FriendsView: View {
    @ObservedObject var account: Account
    
    var body: some View {
            List {
                ForEach(account.friends) { friend in
                    NavigationLink(destination: AccountView(account: friend)) {
                        HStack {
                            Text(friend.name)
                                .font(.title3)
                            Spacer()
                            AccountOnlineStatusView(account: friend)
                                .padding(.trailing)
                        }
                    }
                    
                }
            }
            .navigationTitle("\(account.name)'s friends")
    }
}

struct FriendsView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsView(account: .test)
    }
}
