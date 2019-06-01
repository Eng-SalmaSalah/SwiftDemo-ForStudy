//
//  Dog.swift
//  demo
//
//  Created by Salma on 6/1/19.
//  Copyright © 2019 Salma. All rights reserved.
//

import Foundation
struct Dog : Hashable,Equatable {
    var id : String
    
    public var hashValue: Int {
        return id.hashValue //string , ints ... has hashvalue (unique)
    }
    public static func == (lhs: Dog, rhs: Dog) -> Bool{
        return lhs.id == rhs.id
    }
    
}

var dogSet = Set<Dog>() //this is not allowed if dog doesn't confrom hashable
var dogDict = Dictionary <Dog,String>() // this is also not allowed bec key doesn't conform hashable


//hashable : responsible for generating unique instance of the struct or class
//if two instances are equal they have the same hashvalue
//hashable inherits from equatable so any thing that conform hashable must conform equatable
//equatable :3lshan a3rf beha lw fe 2 instances = wla la2 (== implementation)
