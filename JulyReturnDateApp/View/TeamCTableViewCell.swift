//
//  TeamCTableViewCell.swift
//  JulyReturnDateApp
//
//  Created by Jack Wong on 2018/07/13.
//  Copyright © 2018 Eiji Kushida. All rights reserved.
//

import UIKit

class TeamCTableViewCell: UITableViewCell {

    @IBOutlet weak var teamMemberNameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
  
    }
    
    var memberName: String? {
        didSet {
            teamMemberNameLabel.text = memberName
        }
    }
}
