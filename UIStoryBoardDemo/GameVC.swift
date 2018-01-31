//
//  GameVC.swift
//  UIStoryBoardDemo
//
//  Created by Liu Yang on 2018/1/27.
//  Copyright © 2018年 Liu Yang. All rights reserved.
//

import UIKit

class GameVC: UITableViewController {

    var games: [Game] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        games = Game.getData()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return games.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GameCell", for: indexPath) as! GameCell
        cell.game = games[indexPath.row]
        return cell
    }

}

// MARK: - IBActions
extension GameVC {
    
    @IBAction func cancelToGameVC(_ segue: UIStoryboardSegue) {
        
    }
    
    @IBAction func saveGameDetail(_ segue: UIStoryboardSegue) {
        guard let gameAddVC = segue.source as? GameAddVC,
            let game = gameAddVC.game else {
                return
        }
        print(game.name)
        games.append(game)
        let indexPath = IndexPath(row: games.count - 1, section: 0)
        tableView.insertRows(at: [indexPath], with: .automatic)
    }
}
