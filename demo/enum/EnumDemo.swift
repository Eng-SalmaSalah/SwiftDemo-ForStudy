//
//  EnumDemo.swift
//  demo
//
//  Created by Salma on 6/4/19.
//  Copyright © 2019 Salma. All rights reserved.
//

import Foundation
enum Size : String{ //naming convension : Capital letter and singular
    //when we give type to the enum to get the raw values , we cannot give it attached value()
    case small
    case medium
    case large
    case xSmall,xLarge="XLARGE"
    
    func getSize (number:Int)->Size{
        switch number {
        case 10:
            return .small
        default:
            return .large
        }
    }
    var z : Int {
        get{
            return self.z
        }
    }
    //var x = 10 //enum doesn't contain stored properties
    //enum contains only computed properties and methods beside cases
    
    //raw values : if enum of type Int (0,1,2 ...) or starting from the value i mentioned for the first 1 , or i insert raw vals
    //if string : takes the same value (default) or the value i inserted
}
