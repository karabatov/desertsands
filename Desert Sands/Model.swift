//
//  GemBag.swift
//  Desert Sands
//
//  Created by Yuri Karabatov on 27.06.14.
//  Copyright (c) 2014 Yuri Karabatov. All rights reserved.
//

import Foundation

class Player {
    var name: String
    var score = 0

    init(name: String) {
        self.name = name
    }

    convenience init() {
        self.init(name: "Player")
    }
}

class ComputerPlayer {
    init() {
        super.init()
        name = "Computer Player"
    }
}

class Gem {
    enum Color {
        case Red, Yellow, Green, Purple
    }
    let color: Color

    init(color: Color) {
        self.color = color
    }
}

class GemBag {
    var bag: Gem[]
}

class Game {
    var gemBag = GemBag()
    var players: Player[] = [Player(), ComputerPlayer()]
}