//
//  LectureCategoryModel.swift
//  TeamApp
//
//  Created by user187279 on 1/8/21.
//

import RealmSwift

class LectureCategory: Object {
    @objc dynamic var title = ""
    
    convenience init(title: String) {
        self.init()
        self.title = title
    }
}
