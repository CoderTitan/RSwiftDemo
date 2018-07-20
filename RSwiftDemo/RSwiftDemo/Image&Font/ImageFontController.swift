//
//  ImageFontController.swift
//  RSwiftDemo
//
//  Created by quanjunt on 2018/7/17.
//  Copyright © 2018年 quanjunt. All rights reserved.
//

import UIKit

class ImageFontController: UIViewController {

    @IBOutlet weak var oldLabel: UILabel!
    @IBOutlet weak var oldImageView: UIImageView!
    
    @IBOutlet weak var newLabel: UILabel!
    
    @IBOutlet weak var newImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        //原始方式
        oldLabel.text = "这是系统默认的设置方式"
        oldLabel.font = UIFont(name: "Acme-Light", size: 16)
        
        let oldImage = UIImage(named: "yellow-image")
        oldImageView.image = oldImage
        
        
        //R.Swift方式
        newLabel.text = "这是R.Swift的设置方式"
        
        let newImage = R.image.yellowImage()
        newImageView.image = newImage
        
        
        //数据文件处理
        /// 原来方式处理
        let jsonData = Bundle.main.path(forResource: "menuList", ofType: "json")
        print("oldData: " + (jsonData ?? "") + "\n")
        
        //R.Swift方式
        let jsonData2 = R.file.menuListJson.path()
        print("newData: " + (jsonData2 ?? "") + "\n")
        
        //获取URL方式
        let jsonUrl1 = Bundle.main.url(forResource: "menuList", withExtension: "json")
        print(jsonUrl1!)
        
        let newUrl = R.file.menuListJson()
        print(newUrl!)
    }
}
