//
//  LazyDemo.swift
//  demo
//
//  Created by Salma on 6/3/19.
//  Copyright © 2019 Salma. All rights reserved.
//

import Foundation
class Employee {
    var name : String = ""
    var salary : Double = 10000
    lazy var bonus : Double = 0.5*10000
    var netSal : Double {
        get{
            return salary+bonus
        }
        set{
            self.netSal=newValue
        }
    }
    //lazy must be var
    //lazy is initialized and takes value only when it is accessed not with creating the object
    //lazy is used with stored properties only not computed
}
