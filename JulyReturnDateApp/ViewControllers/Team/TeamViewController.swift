//
//  TeamViewController.swift
//  JulyReturnDateApp
//
//  Created by Eiji Kushida on 2018/07/05.
//  Copyright © 2018年 Eiji Kushida. All rights reserved.
//

import UIKit

final class TeamViewController: UITableViewController {
    /// チーム一覧
    let teams = Team.fetchTeams()
    
    //MARK : - LifeCycle Method
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.tableFooterView = UIView()
    }
}

// MARK: - UITableViewDataSource & UITableViewDelegate
extension TeamViewController {
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        return teams.count
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier",
                                                 for: indexPath)
        cell.textLabel?.text = teams[indexPath.row].name
        return cell
    }
    
    override func tableView(_ tableView: UITableView,
                            didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        self.perform(Selector(teams[indexPath.row].method))
    }
}

// MARK: - private
extension TeamViewController {
        
    @objc private func transitTeamAViewController() {
        //TODO  : チームA
    }
    
    @objc private func transitTeamBViewController() {
        //TODO  : チームB
    }

    @objc private func transitTeamCViewController() {
        //TODO  : チームC
    }
}
