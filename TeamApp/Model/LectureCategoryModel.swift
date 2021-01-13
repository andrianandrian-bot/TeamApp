//
//  LectureCategoryModel.swift
//  TeamApp
//
//  Created by user187279 on 1/8/21.
//

import RealmSwift

@objcMembers
class LectureCategory: Object {
    dynamic var title = ""
    
    convenience init(title: String) {
        self.init()
        self.title = title
    }
}
