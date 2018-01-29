//
//  StudyList.swift
//  LaderOfStudy
//
//  Created by xiaoYu on 17/01/2018.
//  Copyright © 2018 XiaoYu. All rights reserved.
//

import UIKit

class RecordList {
    
    let data = [
        
        StudyModel.init(studyType: .Other,
                        title: "CocoaPods管理远程私有库",
                        date: "2018.01.29",
                        detail: "相关 命令\n$ pod repo \n$ pod repo add MySpec MyLib@MyLib.git\n$ pod lib create MyLib$ pod lib lint\n$ pod spec lint\n$ pod repo push MySpec MyLib.podspec",
                        detailType: .Class,
                        detailUrl: "https://www.jianshu.com/p/4e84fdedb734",
                        imageName: nil,
                        detailPage: XYLibViewController.self),
        StudyModel.init(studyType: .Swift,
                        title: "第一次创建",
                        date: "2018.01.17",
                        detail: "用Swift语言创建了一个记录学习知识的App",
                        detailType: .None),
    ]
}

