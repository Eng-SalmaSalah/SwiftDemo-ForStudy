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
}
