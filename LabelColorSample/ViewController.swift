//
//  ViewController.swift
//  LabelColorSample
//
//  Created by Munesada Yohei on 2018/03/06.
//  Copyright © 2018年 Munesada Yohei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myLabel1: UILabel!
    @IBOutlet weak var myLabel2: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let attrText = NSMutableAttributedString(string: myLabel1.text!)
        attrText.addAttribute(.foregroundColor, value: UIColor.red, range: NSMakeRange(3, 3))
        myLabel1.attributedText = attrText

        let attrText2 = NSMutableAttributedString(string: myLabel2.text!)
        attrText2.addAttributes([
                .foregroundColor: UIColor.blue,
                .font: UIFont.boldSystemFont(ofSize: 24)
            ], range: NSMakeRange(3, 3))
        myLabel2.attributedText = attrText2
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

