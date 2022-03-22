//
//  AccountView.swift
//  SocialNetwork
//
//  Created by Daniel Pustotin on 12.03.2022.
//

import SwiftUI

struct AccountView: View {
    @ObservedObject var account: Account
    @State var addFriendIsPresented: Bool = false
    
    var body: some View {
        ZStack {
            VStack {
                VStack {
                    ProfilePictureView()
                    
                    Text(account.name)
                        .font(.largeTitle)
                        .bold()
                        .padding(.bottom)
                    
                    HStack {
                        Text("\(account.friendsCount) friends")
                            .font(.title3)
                        
                        Text("|")
                            .font(.title3)
                        
                        AccountOnlineStatusView(account: account)
                    }
                }
                
                Divider()
                
                NavigationLink(destination: FriendsView(account: account)) {
                    Text("Show friends")
                }
                .SNButtonStyle()
                
                NavigationLink(destination: AddFriendView(account: account, isPresented: $addFriendIsPresented), isActive: $addFriendIsPresented) {
                    Text("Add friend")
                }
                .SNButtonStyle()
                
                Spacer()
                
                LogoutButton(account: account)
            }
            .navigationTitle("Account")
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView(account: .test)
    }
}

struct ProfilePictureView: View {
    var body: some View {
        Image("profile_pic")
            .resizable()
            .frame(width: .screenWidth / 5, height: .screenWidth / 5)
            .scaledToFit()
            .clipShape(Circle())
            .padding()
            .background {
                Color.black
            }
            .clipShape(Circle())
    }
}

struct AccountOnlineStatusView: View {
    @ObservedObject var account: Account
    
    var body: some View {
        HStack {
            Image(systemName: "globe.europe.africa.fill")
                .foregroundColor(account.online ? .green : .gray)
            
            Text("\(account.online ? "on" : "off")line")
        }
        .font(.title3)
    }
}

struct LogoutButton: View {
    @ObservedObject var account: Account
    
    var body: some View {
        Button {
            withAnimation(.SNSpring()) {
                account.online.toggle()
            }
        } label: {
            Text("Log\(account.online ? "out" : "in")")
        }
        .SNButtonStyle()
    }
}
