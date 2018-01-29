//
//  HomeListTableViewController.swift
//  LaderOfStudy
//
//  Created by xiaoYu on 17/01/2018.
//  Copyright © 2018 XiaoYu. All rights reserved.
//

import UIKit


class HomeListTableViewController: UITableViewController {

    let recordList = RecordList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.tintColor = UIColor.orange
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension HomeListTableViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let model = recordList.data[indexPath.row]
        switch model.detailType {
        case .Web:
            let wkWebVC = WKWebViewController()
            wkWebVC.website = model.detailUrl!
            self.navigationController?.pushViewController(wkWebVC, animated: true)
            break
        case .Class:
            if let childVcType = model.detailPage as? UIViewController.Type {
                self.navigationController?.pushViewController(childVcType.init(), animated: true)
            }
            break
        default:
            
            break
        }

        
    }
}

extension HomeListTableViewController {
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recordList.data.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "homeListCell", for: indexPath) as! HomeListCell
        cell.model = recordList.data[indexPath.row]
        return cell
    }
}

extension HomeListTableViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
}


