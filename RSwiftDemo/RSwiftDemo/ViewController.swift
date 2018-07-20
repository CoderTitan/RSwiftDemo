//
//  ViewController.swift
//  RSwiftDemo
//
//  Created by quanjunt on 2018/7/17.
//  Copyright © 2018年 quanjunt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    fileprivate var dataArr = ["Image&Font", "Nib&Storyboard"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}


extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        }
        cell?.textLabel?.text = dataArr[indexPath.row]
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //传统方式
        let nibVC1 = UIStoryboard(name: "NibHome", bundle: nil).instantiateInitialViewController() ?? UIViewController()
        
        //R.Swift方式
        let nibVC = R.storyboard.nibHome().instantiateInitialViewController()
        let vcs = [ImageFontController(), nibVC!]
        navigationController?.pushViewController(vcs[indexPath.row], animated: true)
    }
}
