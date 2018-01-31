//
//  GameCell.swift
//  UIStoryBoardDemo
//
//  Created by Liu Yang on 2018/1/27.
//  Copyright © 2018年 Liu Yang. All rights reserved.
//

import UIKit

class GameCell: UITableViewCell {
    
    var game: Game! {
        didSet {
            gameNameLabel.text = game.name
            gameDetailLabel.text = game.detail
            gameImageView.image = UIImage(named: game.pictureName)
        }
    }
    
    @IBOutlet weak var gameImageView: UIImageView!
    @IBOutlet weak var gameNameLabel: UILabel!
    @IBOutlet weak var gameDetailLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

}
