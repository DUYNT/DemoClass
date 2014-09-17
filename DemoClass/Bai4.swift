//
//  Bai2.swift
//  DemoClass
//
//  Created by ios25 on 9/16/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import UIKit

class Bai4: ConsoleScreen {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.chanle()
    }
    func chanle() {
        var intArr = [14,15,6,17,16,18,19,30,21]
        self.write("dãy số nguyên bản \(intArr) đã được lọc: \n")
        intArr.chanle()
        for i in intArr {
            self.write("\(i) ")
        }
    }
}
