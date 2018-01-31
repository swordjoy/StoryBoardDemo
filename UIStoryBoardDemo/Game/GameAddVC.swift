//
//  GameAddVC.swift
//  UIStoryBoardDemo
//
//  Created by Liu Yang on 2018/1/29.
//  Copyright © 2018年 Liu Yang. All rights reserved.
//

import UIKit

class GameAddVC: UITableViewController {

    @IBOutlet weak var gameNameTextField: UITextField!
    @IBOutlet weak var gameDetailTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
var game: Game?

override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "GameAddDetail", let name = gameNameTextField.text {
        game = Game(name: name,
             detail: gameDetailTextView.text!,
             pictureName: "game_default")
        print(game?.name ?? "啦啦啦")
    }
}
}
