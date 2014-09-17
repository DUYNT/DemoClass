//
//  Bai3.swift
//  DemoClass
//
//  Created by ios25 on 9/16/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import UIKit

class Bai3: ConsoleScreen {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.selectPlayer()
        
    }
    
    func selectPlayer() {
        var tmArr: [Player] = [
            Player(name: "Casillas Fernandez", position: "Thu Mon"),
            Player(name: "Adan Garrido", position: "Thu Mon"),
            Player(name: "Henry Dudek", position: "Thu Mon"),
        ]
        var hvArr: [Player] = [
            Player(name: "Carvalho Silveira", position: "Hau Ve"),
            Player(name: "Ferreira, Pepe", position: "Hau Ve"),
            Player(name: "Ramos Garcia", position: "Hau Ve"),
            Player(name: "Silva Junior", position: "Hau Ve"),
            Player(name: "Arbeloa Coca", position: "Hau Ve"),
            Player(name: "Marcelo Garay", position: "Hau Ve"),
            Player(name: "Fernandez Iglesias", position: "Hau Ve"),
            Player(name: "Jorge Casado", position: "Hau Ve"),
        ]
        var tvArr: [Player] = [
            Player(name: "Ruben Gago", position: "Tien Ve"),
            Player(name: "Leite Kaka", position: "Tien Ve"),
            Player(name: "Diarra", position: "Tien Ve"),
            Player(name: "Granero Molina", position: "Tien Ve"),
            Player(name: "Xabi Alonso", position: "Tien Ve"),
            Player(name: "Canales Madrazo", position: "Tien Ve"),
            Player(name: "Fabian Di Maria", position: "Tien Ve"),
            Player(name: "Mesut Ozil", position: "Tien Ve"),
            Player(name: "Sami Khedira", position: "Tien Ve"),
            Player(name: "Fernandez Alex", position: "Tien Ve"),
        ]
        var tdArr: [Player] = [
            Player(name: "Cristiano Ronaldo", position: "Tien Dao"),
            Player(name: "Karim Benzema", position: "Tien Dao"),
            Player(name: "Gonzalo Higuain", position: "Tien Dao"),
            Player(name: "Fernandez Iglesias", position: "Tien Dao"),
        ]
        var mainTMArr = tmArr.selectTM()
        var mainHVArr = hvArr.selectHV()
        var mainTVArr = tvArr.selectTV()
        var mainTDArr = tdArr.selectTD()
        var mainPlayerArr = mainTMArr + mainHVArr + mainTVArr + mainTDArr
        
        for player in mainPlayerArr {
            self.writeln("\(player.description)")
        }
    }
}
