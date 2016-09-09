//
//  NumbersTableViewAdapter.swift
//  SurfTestProject
//
//  Created by Ivan Smetanin on 09.09.16.
//  Copyright © 2016 Ivan Smetanin. All rights reserved.
//

import UIKit

class NumbersTableViewAdapter: NSObject, UITableViewDelegate, UITableViewDataSource {
    
    // MARK: Constants

    private let cellNibName = "NumbersTableViewCell"
    private let reuseId = "NumbersTableViewCell"
    private let items: [String]
    
    // MARK: Initialization and deinitialization
    
    init(forTableView tableView: UITableView, items: [String]) {
        tableView.registerNib(UINib(nibName: cellNibName, bundle: nil), forCellReuseIdentifier: reuseId)
        self.items = items
    }
}

// MARK: UITableViewDataSource

extension NumbersTableViewAdapter {
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(reuseId, forIndexPath: indexPath) as! NumbersTableViewCell
        cell.contentTextLabel.text = items[indexPath.row]
        return cell
    }
}

// MARK: UITableViewDelegate

extension NumbersTableViewAdapter {
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
}