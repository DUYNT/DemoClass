//
//  Bai4.swift
//  DemoClass
//
//  Created by ios25 on 9/16/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import UIKit

class Bai2: ConsoleScreen {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.khonglap()
        // Do any additional setup after loading the view.
    }
    func khonglap() {
        var intArr = [1,5,2,6,5,9,9,6,3,1,2]
        self.write("Nguyên bản dãy số \(intArr) đã được lọc : \n ")
        intArr.khonglap()
        for i in intArr {
            self.write("\(i), ")
        }
    }
}
