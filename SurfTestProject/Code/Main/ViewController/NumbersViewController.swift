//
//  NumbersViewController.swift
//  SurfTestProject
//
//  Created by Ivan Smetanin on 09.09.16.
//  Copyright © 2016 Ivan Smetanin. All rights reserved.
//

import UIKit

class NumbersViewController: UIViewController {

    // MARK: IBOutlets
    
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: Properties
    
    private var adapter: NumbersTableViewAdapter!

    // MARK: UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var myDict: NSDictionary?
        if let path = NSBundle.mainBundle().pathForResource("input", ofType: "plist") {
            myDict = NSDictionary(contentsOfFile: path)
        }
        var items = [String]()
        if let dict = myDict {
            for element in dict {
                let stringKey = element.key as! String
                items += [NumberConverter.convert(Int(stringKey)!)]
            }
        }
        debugPrint(items)
        adapter = NumbersTableViewAdapter(forTableView: tableView, items: items)
        tableView.delegate = adapter
        tableView.dataSource = adapter
        tableView.sizeToFit()
        tableView.tableFooterView = UIView()
        tableView.reloadData()
        tableView.estimatedRowHeight = 44.0
        tableView.rowHeight = UITableViewAutomaticDimension
    }

}
