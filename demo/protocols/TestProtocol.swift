//
//  TestProtocol.swift
//  demo
//
//  Created by Salma on 5/31/19.
//  Copyright © 2019 Salma. All rights reserved.
//

import Foundation
@objc protocol TestProtocol {
    var x : Int {get set}
    var y : Int {get set}
    var z : Int {get}
    func sayHello () -> Int
    @objc optional func optionalFunc ()
}
//we used @objc here to allow optional methods to implement as this is allowed in objective c only not swift
//If a protocol requires a property to be gettable and settable, -> that property requirement can’t be fulfilled by a 1) constant stored property or a 2) read-only computed property. If the protocol only requires a property to be gettable, the requirement can be satisfied by any kind of property, and it’s valid for the property to be also settable if this is useful for your own code.


/*
 briefly : if property get set -> cannot be read only computed property
 but : if property get -> aadr a3ml feha ay 7aga
 
 */
//and methods declaration

