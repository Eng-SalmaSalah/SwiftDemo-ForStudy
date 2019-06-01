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
    func sayHello () -> Int
    @objc optional func optionalFunc ()
}
//we used @objc here to allow optional methods to implement as this is allowed in objective c only not swift
//protocols can have only computed properties (we must decide get only or get set and apply this in the implementation)
//and methods declaration

