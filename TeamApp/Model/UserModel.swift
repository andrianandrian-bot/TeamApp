//
//  UserModel.swift
//  TeamApp
//
//  Created by user187279 on 1/8/21.
//

import RealmSwift

class User: Object {
    @objc dynamic var name: String?
    @objc dynamic var avatar: Data?
    @objc dynamic var email = ""
    @objc dynamic var password = ""
    
    convenience init(name: String?, avatar: Data?, email: String, password: String) {
        self.init()
        self.name = name
        self.avatar = avatar
        self.email = email
        self.password = password
    }
}
