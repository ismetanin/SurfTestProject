//
//  NumbersService.swift
//  SurfTestProject
//
//  Created by Ivan Smetanin on 09.09.16.
//  Copyright © 2016 Ivan Smetanin. All rights reserved.
//

import Foundation

class NumbersService: Service {
    
    // MARK: Constants
    
    private let dao: DAO
    private let maxNumberLength = 16
    
    // MARK: Initialization and deinitialization
    
    init(dao: DAO) {
        self.dao = dao
    }
    
    // MARK: Internal helpers
    
    func getNumbers(onSuccess sucessBlock: StringArrayBlock) {
        performInBackground { [weak self] in
            if let response = self?.dao.fetchAll() {
                self?.handleGetNumbersResponse(response, onSuccess: sucessBlock)
            }
        }
    }
    
    // MARK: Private helpers
    
    private func handleGetNumbersResponse(response: [AnyObject], onSuccess sucessBlock: StringArrayBlock) {
        if let items = response as? [Int] {
            var numbers = [String]()
            let filtredItems = filterNumbers(items)
            for item in filtredItems { numbers += [NumberConverter.convert(item)] }
            performOnMainThread{ sucessBlock(numbers) }
        }
    }
    
    private func filterNumbers(numbers: [Int]) -> [Int] {
        var filtredNumbers = [Int]()
        for number in numbers {
            if number.length() < maxNumberLength { filtredNumbers += [number] }
        }
        return filtredNumbers
    }
}