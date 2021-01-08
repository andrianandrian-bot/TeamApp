//
//  StorageManager.swift
//  TeamApp
//
//  Created by user187279 on 1/8/21.
//

import RealmSwift

let realmUser = try! Realm()

class StorageManager {
    static func addNewUser(_ user: User) {
        try! realmUser.write {
            realmUser.add(user)
        }
    }
    
    static func updatePass(_ newPass: User) {
        try! realmUser.write {
            // need some code
        }
    }
}
