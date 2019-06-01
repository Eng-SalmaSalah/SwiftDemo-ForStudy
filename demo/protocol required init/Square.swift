//
//  Square.swift
//  demo
//
//  Created by Salma on 6/1/19.
//  Copyright © 2019 Salma. All rights reserved.
//

import Foundation
class Square:Rectangle {
    var x : Int
    init(side:Int) {
        x=side
    }
    
    required init() {
        fatalError("init() has not been implemented")
    }
}
//if we have required init in parent, we should reimplement it in subclass
//lw ktbna ay init tnya hy3ml error w y5lene a7ot l required
