//
//  ContentCell.swift
//  HFCopyLabel
//
//  Created by HF on 2019/1/22.
//  Copyright © 2019 com. All rights reserved.
//

import UIKit

class ContentCell: UITableViewCell {

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
        textLabel?.numberOfLines = 0
        textLabel?.isCopyEnable = true
        textLabel?.textColor = UIColor.darkGray
        detailTextLabel?.numberOfLines = 0
        detailTextLabel?.isCopyEnable = true
        detailTextLabel?.textColor = UIColor.gray
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
