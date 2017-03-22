//
//  TableViewController.swift
//  DynamicHeightDemo
//
//  Created by Xiaodan Wang on 3/21/17.
//  Copyright © 2017 Xiaodan Wang. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    let textAry = [
    "Dynamic Long Text 1: Everything you love is now even better with iOS 10, our biggest release yet. Express yourself in bold",
    
    "Dynamic Long Text 2: Relive memories like never before in Photos. And use the power of Siri in more apps than ever. There’s so much to say about iOS 10 — here are just a few of our favorite things.",
    
    "Dynamic Long Text 3: There’s so much to say about iOS 10 — here are just a few of our favorite things.",
    
    "Dynamic Long Text 4: Everything you love is now even better with iOS 10, our biggest release yet. Express yourself in bold new ways in Messages. Find your route with beautifully redesigned Maps. Relive memories like never before in Photos. And use the power of Siri in more apps than ever. There’s so much to say about iOS 10 — here are just a few of our favorite things."
    ]
    
    @IBOutlet weak var headerView: UIView!
    
    @IBOutlet weak var headerDescLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.estimatedRowHeight = 150
        tableView.rowHeight = UITableViewAutomaticDimension
        
        tableView.tableFooterView = UIView()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        headerDescLabel.text = "I am the long text header View\n ----header view------ ------header view------ ---------header view-------- ------header view---- ------header view------- -----header view---- ----header view------- ---header view---- ------header view------- ---------header view---------end"
        
        let size = headerView.systemLayoutSizeFitting(UILayoutFittingCompressedSize)
        headerView.frame.size = size
        tableView.tableHeaderView = headerView
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return textAry.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "custCell", for: indexPath) as! CustTableViewCell
        
        cell.descLabel.text = textAry[indexPath.row]
        
        return cell
    }
 

    

}
