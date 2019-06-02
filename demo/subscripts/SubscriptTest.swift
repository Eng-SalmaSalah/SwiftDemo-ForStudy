//
//  SubscriptTest.swift
//  demo
//
//  Created by Salma on 6/2/19.
//  Copyright © 2019 Salma. All rights reserved.
//

import Foundation
class Numbers {
    var numbersList : [Int] = [20,30,40,50]
    subscript (index:Int)->Int{
        get{
            return numbersList[index]
        }
        set{
            numbersList[index]=newValue
        }
    }

}
