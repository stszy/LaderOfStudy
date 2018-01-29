//
//  XYLibViewController.swift
//  LaderOfStudy
//
//  Created by xiaoYu on 29/01/2018.
//  Copyright © 2018 XiaoYu. All rights reserved.
//

import UIKit
import LOSLib

class XYLibViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        
        let label = UILabel.init(frame: CGRect.init(x: 0, y: 64, width: view.frame.width, height: 200))
        label.textAlignment = .center
        label.textColor = .black
        label.text = "里面引用了一个码云上的私有库"
        view.addSubview(label)
        
        let button = UIButton.init(frame: CGRect.init(x: 0, y: 200, width: view.frame.width, height: 40))
        button.addTarget(self, action: #selector(jumpWeb), for: .touchUpInside)
        button.setTitle("简书链接", for: .normal)
        button.setTitleColor( .orange, for: .normal)
        view.addSubview(button)
        
        let person = Person()
        person.run()
    }
    
    @objc func jumpWeb() {
        let wkWebVC = WKWebViewController()
        wkWebVC.website = "https://www.jianshu.com/p/4e84fdedb734"
        self.navigationController?.pushViewController(wkWebVC, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
