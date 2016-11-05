//
//  EpisodeViewTableViewCell.swift
//  RocketCast
//
//  Created by Admin on 2016-09-24.
//  Copyright © 2016 UBCLaunchPad. All rights reserved.
//

import UIKit

protocol EpisodeViewTableViewCellDelegate{
 //   func updateAnimation()
}

class EpisodeViewTableViewCell: UITableViewCell {
    @IBOutlet weak var episodeHeader: UILabel!
    @IBOutlet weak var downloadAnimation: UIActivityIndicatorView!
    
    @IBOutlet weak var downloadStatus: UILabel!
    var delegate: EpisodeViewTableViewCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setEpisodeHeaderText(_ setHeader: NSMutableString) {
        episodeHeader.text = setHeader as String
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        if !selected {
            episodeHeader.textColor = UIColor.black
        } else {
            episodeHeader.textColor = UIColor.red
        }
        
    }
}


