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
//we use keyword required 3lshan a force el subclass eno ywrs l init
//if we have required init in parent, we should reimplement it in subclass
//lw ktbna ay init tnya hy3ml error w y5lene a7ot l required


/*
 Delegation is a design pattern that enables a
 class or structure to hand off (or delegate) some
 of its responsibilities to an instance of another
 type.
 • This design pattern is implemented by defining a
 protocol that encapsulates the delegated
 responsibilities, such that a conforming type
 (known as a delegate) is guaranteed to provide
 the functionality that has been delegated.
 
 elfkra b e5tsar en msln apple developer kan 3aml class ll UITableViewController hwa l feh
 el methods l btrg3le 3dd mo3yn mn l rows aw l sections w feha listenr 3l actions
 e7na b3d kda e7tagna nst5dm l methods d bs fe elclass bta3e
 lzalk b3ml class w a5leh y conform UITableViewDelegate w b l tale aadr ashof l methods
 de fe my own class
 */
