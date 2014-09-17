//
//  Player.swift
//  DemoClass
//
//  Created by ios25 on 9/16/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import Foundation

class Player {
    var name: String
    var position: String
    init (name: String, position: String) {
        self.name = name
        self.position = position
    }
    var description: String {
        return "\(self.name) - \(self.position)"
    }
}