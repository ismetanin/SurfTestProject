//
//  DAO.swift
//  SurfTestProject
//
//  Created by Ivan Smetanin on 09.09.16.
//  Copyright © 2016 Ivan Smetanin. All rights reserved.
//

import Foundation

protocol DAO {
    func fetchAll() -> [AnyObject]
}

extension DAO {
    func fetchFromResource(path: String) -> NSDictionary? { return NSDictionary(contentsOfFile: path) }
}