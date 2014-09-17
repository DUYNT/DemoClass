//
//  ExtendArray.swift
//  DemoClass
//
//  Created by techmaster on 9/12/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import Foundation
extension Array {
    //reverse() -> [T]
    
    //Đảo mảng trả về một mảng mới
    func daoMang() -> [T] {
        let n = self.count
//http://www.programmingsimplified.com/c-program-reverse-array
        //var tempArr: [T] = [T](count: n, repeatedValue: self[0])
        //Gán tempArr bằng self iOS sẽ copy luôn mảng self ra một mảng mới tempArr
        var tempArr =  self
        for var c = n - 1, d = 0; c >= d; c--, d++ {
            tempArr[d] = self[c]
            tempArr[c] = self[d]
        }
        return tempArr
        
    }
    //Đảo mảng trên chính mảng đó
    mutating func daoMang2() {
        let n = self.count
        //http://www.programmingsimplified.com/c-program-reverse-array
        for var c = n - 1, d = 0; c >= d; c--, d++ {
            let temp = self[c]
            self[c] = self[d]
            self[d] = temp
        }        
    }
    
    func arrayIntTrungBinh() -> Double {
        let n = self.count
        var tong = 0
        for var i = 0 ; i < n ; ++i {
            tong += (self[i] as Int)
        }
        return (Double(tong) / Double(n))
    }
    
    
    mutating func chanle() {
        let n = self.count
        for var i = 0; i < n - 1; i++ {
            if (self[i] as Int % 2 != 0) {
            for var j = i + 1; j < n - 1; j++ {
                if (self[j] as Int % 2 == 0) {
                    let temp = self[j]
                    self[j] = self[i]
                    self[i] = temp
                    }
                }
            }
        }
    }
    
     mutating func khonglap(){
        var n = self.count
        for var i = 0 ; i < n - 1 ; i++ {
            for var j = i + 1 ; j < n - 1 ; j++ {
                if ((self[i] as Int) == (self[j] as Int)) {
                    self.removeAtIndex(j)
                    n = n - 1
                }
            }
        }
    }
    func selectTM() -> [T] {
        var mainPlayerArr = self
        while(mainPlayerArr.count > 1) {
            let index = Int(arc4random_uniform(UInt32(mainPlayerArr.count)))
            mainPlayerArr.removeAtIndex(index)
        }
        return mainPlayerArr
    }
    
    func selectHV() -> [T] {
        var mainPlayerArr = self
        while(mainPlayerArr.count > 5) {
            let index = Int(arc4random_uniform(UInt32(mainPlayerArr.count)))
            mainPlayerArr.removeAtIndex(index)
        }
        return mainPlayerArr
    }
    
    func selectTV() -> [T] {
        var mainPlayerArr = self
        while(mainPlayerArr.count > 4) {
            let index = Int(arc4random_uniform(UInt32(mainPlayerArr.count)))
            mainPlayerArr.removeAtIndex(index)
        }
        return mainPlayerArr
    }
    
    func selectTD() -> [T] {
        var mainPlayerArr = self
        while(mainPlayerArr.count > 1) {
            let index = Int(arc4random_uniform(UInt32(mainPlayerArr.count)))
            mainPlayerArr.removeAtIndex(index)
        }
        return mainPlayerArr
    }
    
    func complex() -> Complex {
        var n = self.count
        var tg1: Double = 0.0
        var tg2: Double = 0.0
        for var i = 0 ; i < n - 1 ; i++ {
            tg1 += (self[i] as Complex).real
            tg2 += (self[i] as Complex).imagine
        }
        var real = tg1 / Double(n)
        var imgaine = tg2 / Double(n)
        return Complex (real: real,imagine: imgaine)
    }
}