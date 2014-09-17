//
//  CodeCamp.swift
//  DemoClass
//
//  Created by ios25 on 9/16/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import UIKit

class Bai1: ConsoleScreen {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.giatritrungbinh()
        }
    
    func giatritrungbinh() {
        var intArr = [23, 44 , 10, 7, 66, 84, 100, 25, 45, 5, 7]
        var ketqua = intArr.arrayIntTrungBinh()
        self.write("Gia tri binh cua day so \(intArr) la: \n \(ketqua)")
    }
}
