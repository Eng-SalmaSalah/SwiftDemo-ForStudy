//
//  TestImpl.swift
//  demo
//
//  Created by Salma on 5/31/19.
//  Copyright © 2019 Salma. All rights reserved.
//

import Foundation
class testImpl : TestProtocol {

    var x: Int {
        get {
            return self.x
        }
        set {
            
        }
    }
    
    func sayHello() -> Int {
        return x
    }
    
    //lma bage a3rf parameter in method mmkn ashtrt eno ykon by conform aktr mn protocol
    //as follows : sayHello (name : Hello & bye) //hello and bye are protocols
   
}
