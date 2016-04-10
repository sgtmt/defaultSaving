//
//  ViewController.swift
//  defalutSaving
//
//  Created by 長沢　遼 on 2016/04/10.
//  Copyright © 2016年 Sgtmt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var textDataFiled: UITextField!
    @IBOutlet weak var textLabel: UILabel!

    @IBAction func loading(sender: AnyObject)
    {
      let userDefaults = NSUserDefaults.standardUserDefaults()
        let loadText:String! = userDefaults.stringForKey("saveText")
        textLabel.text = loadText
        
    }
    @IBAction func saving(sender: AnyObject)
    {
        let userDefaults = NSUserDefaults.standardUserDefaults()
        userDefaults.setObject(textDataFiled.text, forKey:"saveText")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

