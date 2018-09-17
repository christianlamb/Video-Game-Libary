//
//  Game.swift
//  Video Gaem Libary
//
//  Created by Christian Lamb on 9/10/18.
//  Copyright © 2018 Christian Lamb. All rights reserved.
//

import Foundation


class Game {//This the game class it stores all of the information about every game.
    let title: String
    let genre: String
    let devloper: String
    var checkedIn: Bool = true
    var dueDate: Date?
    
    init(title: String, genre: String, devloper: String) {
        self.title = title
        self.genre = genre
        self.devloper = devloper
        }
    
    
    
}
