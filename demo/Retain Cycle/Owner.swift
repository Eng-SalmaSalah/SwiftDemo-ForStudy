//
//  Owner.swift
//  demo
//
//  Created by Salma on 6/1/19.
//  Copyright © 2019 Salma. All rights reserved.
//

import Foundation
class Owner {
    var name : String
    var appartment : Appartment?
    lazy var prettyPrint : ()->String = {
        [weak self] in return (self?.name)! //we added the capture list [weak self] means every where i refer to self in the closure it will be a weak refrence to avoid retain cycle because self has strong ref to closure
    }
    
    init(name : String) {
        self.name = name
        print("owner initialized")
    }
    deinit {
        print("owner deinitialized")
    }
}
//strong refrence : when var or let has refrence on an instance it increases the instances's RC by 1 and causes it to stay alife
//weak refrence : when var or let has refrence on an instance , it doesn't increase the instance's RC and doesn't keep it alife but it can access this instance

