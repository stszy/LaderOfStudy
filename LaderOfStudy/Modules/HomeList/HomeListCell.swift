//
//  HomeListCell.swift
//  LaderOfStudy
//
//  Created by xiaoYu on 17/01/2018.
//  Copyright © 2018 XiaoYu. All rights reserved.
//

import UIKit

class HomeListCell: UITableViewCell {
    
    
    @IBOutlet weak var type: UILabel!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var detail: UILabel!
    @IBOutlet weak var imageDetail: UIImageView!

    var model: StudyModel {
        get {
            return self.studyModel!
        }
        set {
            studyModel = newValue
            self.type.text = (studyModel?.type).map { $0.rawValue }

            switch studyModel?.type {
            case .Swift?:
                self.type.textColor = UIColor.orange
                break
            case .OC?:
                self.type.textColor = UIColor.black
                break
            case .JavaScript?:
                self.type.textColor = UIColor.blue
                break
            case .Other?:
                self.type.textColor = UIColor.darkGray
                break
            default:
                break
            }
            
            self.title.text = studyModel?.title
            self.time.text = studyModel?.date
            self.detail.text = studyModel?.detail
            self.imageDetail.image = studyModel?.image
        }
    }
    
    var studyModel:StudyModel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.type.layer.borderWidth = 1
        self.type.layer.cornerRadius = self.type.bounds.width/2
        
    }
}
