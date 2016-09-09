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
        initViews()
    }

    // MARK: Private helpers
    
    private func initViews() {
        initTableView()
        getNumbers { [weak self] items in self?.initAdapter(items) }
    }
    
    private func getNumbers(completion: StringArrayBlock) {
        ServiceLayer.serviceLayer.numbersService.getNumbers { items in completion(items) }
    }
    
    private func initAdapter(items: [String]) {
        adapter = NumbersTableViewAdapter(forTableView: tableView, items: items)
        tableView.delegate = adapter
        tableView.dataSource = adapter
        tableView.reloadData()
    }
    
    private func initTableView() {
        tableView.sizeToFit()
        tableView.tableFooterView = UIView()
        tableView.estimatedRowHeight = 44.0
        tableView.rowHeight = UITableViewAutomaticDimension
    }
}
