//
//  Account.swift
//  SocialNetwork
//
//  Created by Daniel Pustotin on 12.03.2022.
//

import Foundation

class Account: ObservableObject, Identifiable {
    var id = UUID()
    
    @Published var name: String
    @Published var friends: [Account]
    @Published var online: Bool = true
    
    var friendsCount: Int {
        friends.count
    }
    
    init(_ name: String) {
        self.name = name
        friends = []
        Account.add(self)
    }
    
    func addFriend(_ friend: Account) {
        friends.append(friend)
        friend.friends.append(self)
    }
}

extension Account {
    static var test: Account {
        let account = Account("Heartsker")
        account.addFriend(Account("Tony"))
        account.addFriend(Account("Peter"))
        account.addFriend(Account("Stephen"))
        account.addFriend(Account("Steve"))
        return account
    }
}

private extension Account {
    private static var allUsers: [Account] = []
    
    static func add(_ account: Account) {
        Account.allUsers.append(account)
    }
}

extension Account {
    static func contains(_ name: String) -> Bool {
        Account.allUsers.contains {
            $0.name == name
        }
    }
}
