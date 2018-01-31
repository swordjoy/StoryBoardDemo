//
//  Game.swift
//  UIStoryBoardDemo
//
//  Created by Liu Yang on 2018/1/27.
//  Copyright © 2018年 Liu Yang. All rights reserved.
//

import Foundation

struct Game {
    
    let name: String
    let detail: String
    let pictureName: String
    
    static func getData() -> [Game] {
        return [Game(name: "绝地求生", detail: "神仙打架游戏", pictureName: "game_one.jpeg"),
                Game(name: "英雄联盟", detail: "《英雄联盟》(简称LOL)是由美国拳头游戏(Riot Games)开发、中国大陆地区腾讯游戏代理运营的英雄对战MOBA竞技网游。游戏里拥有数百个个性英雄，并拥有排位系统、符文系统等特色养成系统。《英雄联盟》还致力于推动全球电子竞技的发展，除了联动各赛区发展职业联赛、打造电竞体系之外，每年还会举办“季中冠军赛”“全球总决赛”“All Star全明星赛”三大世界级赛事，获得了亿万玩家的喜爱，形成了自己独有的电子竞技文化", pictureName: "game_two.jpeg")]
    }
}
