//
//  StudyModel.swift
//  LaderOfStudy
//
//  Created by xiaoYu on 17/01/2018.
//  Copyright © 2018 XiaoYu. All rights reserved.
//

import UIKit

enum StudyType:String {
    case Other = "Other"
    case OC = "OC"
    case Swift = "Swift"
    case JavaScript = "JS"
}
enum DetailType:String {
    case None = "None"
    case Web = "Web"
    case Class = "Class"
    case sbSegue = "sbSegue"
}

class StudyModel {

    let studyType:StudyType
    let detailType:DetailType
    let title:String
    let date:String
    var image:UIImage?
    var detail:String?
    var detailUrl:String?
    var detailPage:AnyClass?
    
    init(studyType:StudyType, title:String, date:String, detail:String? = nil,detailType:DetailType, detailUrl:String? = nil, imageName:String? = nil, detailPage:AnyClass? = nil) {
        self.studyType = studyType
        self.detailType = detailType
        self.title = title
        self.date = date
        self.detail = detail
        self.detailUrl = detailUrl
        self.detailPage = detailPage
        guard let imageName = imageName else { return }
        self.image = UIImage.init(named: imageName)
    }
    
    convenience init() {
        self.init(studyType: .Other, title: "你忘了写标题了。。。", date: "时间去哪儿了？",detailType:.Web)
    }
}
