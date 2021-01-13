//
//  LectureModel.swift
//  TeamApp
//
//  Created by user187279 on 1/8/21.
//

import RealmSwift

@objcMembers
class Lecture: Object {
    dynamic var title = ""
    dynamic var previewText: String?
    dynamic var previewImage: Data?
    dynamic var video: Data?
    dynamic var text: String?
    dynamic var category: LectureCategory!
    
    convenience init(title: String, previewText: String?, previewImage: Data?, video: Data?, text: String?, category: LectureCategory) {
        self.init()
        self.title = title
        self.previewText = previewText
        self.previewImage = previewImage
        self.video = video
        self.text = text
        self.category = category
    }
}
