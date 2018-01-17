//
//  StudyModel.swift
//  LaderOfStudy
//
//  Created by xiaoYu on 17/01/2018.
//  Copyright © 2018 XiaoYu. All rights reserved.
//

import UIKit

enum StudyType:String {
    case OC = "OC"
    case Swift = "Swift"
    case JavaScript = "JS"
    case Other = "Other"
}

class StudyModel {

    let type:StudyType
    let title:String
    let date:String
    var image:UIImage?
    var detail:String?
    
    var detailPage:String?
    
    init(type:StudyType, title:String, date:String, detail:String? = nil, imageName:String? = nil, detailPage:String? = nil) {
        self.type = type
        self.title = title
        self.date = date
        self.detail = detail
        guard let imageName = imageName else { return }
        self.image = UIImage.init(named: imageName)
    }
    
    convenience init() {
        self.init(type: StudyType.Other, title: "你忘了写标题了。。。", date: "时间去哪儿了？")
    }
}
