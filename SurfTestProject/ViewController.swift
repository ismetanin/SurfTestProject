//
//  ViewController.swift
//  SurfTestProject
//
//  Created by Ivan Smetanin on 08.09.16.
//  Copyright © 2016 Ivan Smetanin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var myDict: NSDictionary?
        if let path = NSBundle.mainBundle().pathForResource("input", ofType: "plist") {
            myDict = NSDictionary(contentsOfFile: path)
        }
        if let dict = myDict {
            for element in dict {
                let stringKey = element.key as! String
                debugPrint(Int(stringKey)!)
                debugPrint(NumberConverter.convert(Int(stringKey)!))
//                NumberConverter.convert(Int(stringKey)!)
            }
        }
    }

}

