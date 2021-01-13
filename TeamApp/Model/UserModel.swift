//
//  UserModel.swift
//  TeamApp
//
//  Created by user187279 on 1/8/21.
//

import RealmSwift

@objcMembers
class User: Object {
    dynamic var name: String?
    dynamic var avatar: Data?
    dynamic var email = ""
    dynamic var password = ""
    
    convenience init(name: String?, avatar: Data?, email: String, password: String) {
        self.init()
        self.name = name
        self.avatar = avatar
        self.email = email
        self.password = password
    }
}
