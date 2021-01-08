//
//  LectureModel.swift
//  TeamApp
//
//  Created by user187279 on 1/8/21.
//

import RealmSwift

class Lecture: Object {
    @objc dynamic var title = ""
    @objc dynamic var previewText: String?
    @objc dynamic var previewImage: Data?
    @objc dynamic var video: Data?
    @objc dynamic var text: String?
    @objc dynamic var category: LectureCategory!
    
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
