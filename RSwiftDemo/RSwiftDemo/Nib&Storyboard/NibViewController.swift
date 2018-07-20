//
//  NibViewController.swift
//  RSwiftDemo
//
//  Created by quanjunt on 2018/7/20.
//  Copyright © 2018年 quanjunt. All rights reserved.
//

import UIKit

class NibViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    fileprivate var dataArr = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        /* 传统方式
         let cellNib = UINib(nibName: "NibTableViewCell", bundle: nil)
         tableView.register(cellNib, forCellReuseIdentifier: "NibTableViewCell")
        */
        
        //R.Swift方式
        tableView.register(R.nib.nibTableViewCell(), forCellReuseIdentifier: R.nib.nibTableViewCell.name)

        
        //添加数据
        for i in 0..<10 {
            let str = "这是第--\(i)--条数据"
            dataArr.append(str)
        }
        
        tableView.reloadData()
    }
}


extension NibViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "NibTableViewCell", for: indexPath)
         let cell = tableView.dequeueReusableCell(withIdentifier: R.nib.nibTableViewCell.name, for: indexPath) as? NibTableViewCell
        cell?.selectionStyle = .gray
        cell?.leftLabel.text = dataArr[indexPath.row]
         return cell ?? UITableViewCell()
    }
}
