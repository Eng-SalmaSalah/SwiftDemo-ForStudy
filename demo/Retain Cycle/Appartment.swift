//
//  Appartment.swift
//  demo
//
//  Created by Salma on 6/1/19.
//  Copyright © 2019 Salma. All rights reserved.
//

import Foundation
class Appartment {
    var name : String
    weak var owner:Owner? //retain cycle solved by adding weak  //must be optional
    
    init(name : String) {
        self.name=name
        print("appartment initialized")
    }
    deinit {
        print("appartment deinitialized")
    }
}
