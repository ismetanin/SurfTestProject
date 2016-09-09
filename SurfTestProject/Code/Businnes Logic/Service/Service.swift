//
//  Service.swift
//  SurfTestProject
//
//  Created by Ivan Smetanin on 09.09.16.
//  Copyright © 2016 Ivan Smetanin. All rights reserved.
//

import Foundation

protocol Service {
    
}

extension Service {
    func performInBackground(block: () -> ()) {
        NSOperationQueue().addOperationWithBlock { block() }
    }
    
    func performOnMainThread(block: () -> ()) {
        NSOperationQueue.mainQueue().addOperationWithBlock { block() }
    }
}