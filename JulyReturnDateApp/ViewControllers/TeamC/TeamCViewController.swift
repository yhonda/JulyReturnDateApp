//
//  TeamCViewController.swift
//  JulyReturnDateApp
//
//  Created by Jack Wong on 2018/07/13.
//  Copyright © 2018 Eiji Kushida. All rights reserved.
//

import UIKit

class TeamCViewController: UIViewController {

    @IBOutlet weak var teamCTableView: UITableView!
    private var memberList = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()

    }

    private func setupTableView() {
        memberList = ["本田","ジャック","宮下","中村"]
        teamCTableView.delegate = self
        teamCTableView.dataSource = self
        teamCTableView.tableFooterView = UIView()
    }
    
}

extension TeamCViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return memberList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TeamCTableViewCell else {
            fatalError()
        }
        cell.memberName = memberList[indexPath.row]
        return cell
    }
    
    
}

extension TeamCViewController: UITableViewDelegate {
    
}

