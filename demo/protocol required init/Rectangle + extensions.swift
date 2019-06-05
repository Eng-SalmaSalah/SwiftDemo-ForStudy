//
//  Rectangle.swift
//  demo
//
//  Created by Salma on 5/30/19.
//  Copyright © 2019 Salma. All rights reserved.
//

import Foundation

class Rectangle {
    var length : Int
    var width : Int
    var array = [10,20,30,40]
    
    required init(){
        length=0
        width=0
    }
    func calcPerimeter(length:Int,width:Int) -> Int {
        return (length+width)*2
    }
}
extension Rectangle {
    func calcArea(length:Int , width:Int) -> Int {
        return length*width
    }
    
    
    subscript(index:Int)->Int{
        get{
            return array[index]
        }
    }
    
    var myArea : Int{
        get{
            return length*width
        }
    }
}

/*
 Extensions in Swift can:
 􀀹 Add computed instance properties and computed type
 properties
 􀀹 Define instance methods and type(static) methods
 􀀹 Provide new initializers
 􀀹 Define subscripts
 􀀹 Define and use new nested types
 􀀹 Make an existing type conform to a protocol
 
 
 no stored Properties
 */
