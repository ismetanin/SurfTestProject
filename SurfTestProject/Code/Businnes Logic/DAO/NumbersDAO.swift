//
//  DAO.swift
//  SurfTestProject
//
//  Created by Ivan Smetanin on 09.09.16.
//  Copyright © 2016 Ivan Smetanin. All rights reserved.
//

import Foundation

class NumbersDAO: DAO {
    func fetchAll() -> [AnyObject] {
        var items = [Int]()
        if let path = NSBundle.mainBundle().pathForResource("input", ofType: "plist") {
            let dictionary = fetchFromResource(path)
            if let dict = dictionary {
                for element in dict {
                    if let stringKey = element.key as? String {
                        if let intKey = Int(stringKey) {
                            items += [intKey]
                        }
                    }
                }
            }
            return items
        } else {
            return items
        }
    }
}