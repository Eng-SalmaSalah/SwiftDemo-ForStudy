//
//  User.swift
//  demo
//
//  Created by Salma on 6/1/19.
//  Copyright © 2019 Salma. All rights reserved.
//

import Foundation
class SingletonUser {
    let name : String
    let id : Int
    
    private init(name : String,id : Int){
        self.name=name
        self.id=id
    }
    
    private static var sharedUser : SingletonUser?
    
    static func getSharedUser() -> SingletonUser{
        if sharedUser==nil{
            sharedUser = SingletonUser(name: "salma", id: 5)
        }
        return sharedUser!
    }

}
