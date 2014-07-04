//
//  ModelTests.swift
//  Desert Sands
//
//  Created by Yuri Karabatov on 04.07.14.
//  Copyright (c) 2014 Yuri Karabatov. All rights reserved.
//

import XCTest
import UIKit
import Desert_Sands

class ModelTests: XCTestCase {

    func testPlayerConvenienceInit() {
        let player = Player()
        let defaultPlayerName = NSLocalizedString("Player", comment: "Default player name")

        XCTAssert(player.name == defaultPlayerName, "Player should have a default localized name.")
        XCTAssert(player.score == 0, "Player initial score should be 0")
    }

    func testPlayerDesignatedInit() {
        let playerName = "Some random name"
        let player = Player(name: playerName)

        XCTAssert(player.name == playerName, "Player should have the same name as assigned on init.")
        XCTAssert(player.score == 0, "Player initial score should be 0")
    }

    func testComputerPlayerInit() {
        let computerPlayer = ComputerPlayer()
        let computerPlayerName = NSLocalizedString("Computer Player", comment: "Default name for computer player")

        XCTAssert(computerPlayer.name == computerPlayerName, "Computer player should have a default localized name.")
        XCTAssert(computerPlayer.score == 0, "Computer player initial score should be 0")
    }

    func testComputerPlayerInitWithName() {
        let computerPlayerName = "Some random name"
        // TODO: Find out why I can't reuse `Player` initializer
        let computerPlayer = ComputerPlayer()

        XCTAssert(computerPlayer.name == computerPlayerName, "Player should have the same name as assigned on init.")
        XCTAssert(computerPlayer.score == 0, "Player initial score should be 0")
    }

}
