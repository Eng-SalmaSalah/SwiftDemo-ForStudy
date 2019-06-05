//
//  Parent.swift
//  demo
//
//  Created by Salma on 6/3/19.
//  Copyright © 2019 Salma. All rights reserved.
//

import Foundation
class Parent {
    var name : String = ""
    var age : Int = 0
    var months : [Int] = [1,2,3,4]

//    init() {
//        print("hello def init super")
//    }
    
    
    init(name:String){
        self.name=name
        print("name init of super")
    }
    
    subscript (index:Int)->Int{
        get{
            return months[index]
        }set{
            months[index]=newValue
        }
    }
    
    
    lazy var salary : Double = 0.0
    var netSalary : Double{
        get {
            return salary*2
        }
        set{
            salary = 10
        }
        
    }
    deinit {
        print("ended")
        //lazm ykon 3nde 1 deinitializer bs
        //mwgod f class not struct
        //takes no param(no parentheses)
        //called just before de allocation
    }

    }
    



class child : Parent{
    //var childName : String=""
    
    
//
//    override init(){
//        /* in case of init with no params
//         law mndhtsh l super -> by default hwa hynfz l sub b3dha yndh l super
//         law ana 3yza a force en l super ttndh l awl lazm aktb b ede super.init() fe l awl
//         */
//
//        //childName="koki"
//        //super.init()
//        print("hello child")
//        //super.salary=1100
//    }
    
    override init(name: String) {
        /* in case of init with params
         laaaaaazem andh l super w adeha l param
        */
        
        
        //childName="koki"
        super.init(name: name)

        print("hello child with name")
        //self.name.append("s")
    }
    override var name: String{
        willSet{
            print("name will be set \(newValue)") // adding observer to stored property
        }
    }
    override var age: Int{
        get{
            return self.age
        }
        set{
            salary = 10
        }
    }
    /*override var netSalary: Double{
     get{
     return salary*4
     }
     
     }*/
    override var netSalary: Double{
        willSet{
            print("salary will be set to \(newValue)")
        }
    }
    override var salary: Double{
        get{
            return self.salary
        }
        set{
            self.salary=newValue
        }
    }
    override subscript (index:Int)->Int{
        get{
            return months[index]+10
        }set{
            months[index]=10
        }
    
    /*override var salary: Double{
     willSet{
     print("salary is now \(newValue)")
     }
     }*/
    
    }}

//take care of these rules :
// 1) law 3ande stored property aadr a3mlha override
// a)w adeha observer   b)a5leha computed leha setter w getter

// 2) law 3nde computed property aadr a3mlha override
// a) law leha getter bas (read only )aadr azwdlha setter   b)lw hya leha setter w getter (mutable)m2drsh ashel l setter  c)azwdlha observer law leha setter(mutable) lw read only mynf3sh

//3) law 3ande lazy stored property aadr a3mlha override
//a) aadr azwdlha observer (in inheritance)
//b) a5leha computed with setter and getter
//aksr kwa3dha

//4)law 3nde subscript feh getter bs aadr a3mlo getter w setter f l override aw get bs lakn lw hwa fe set w get mynf3sh a3mlo get bs f l override (aft7 m2flsh)


//to prevent override ->Final

//init(){} is the default initialier it is called even if we don't write it and gives the params the initial values we define (ex:var name:String="")
//the init(){} that we write is customization for the default init we de l hattnfz lw ktbnaha msh l default
//if we wrote parametrized init we have to use it,lw get a3ml person() hy3trd , l default msh httndh , lazm aktb init(){} b ede (y3ne ykon 3dne 2 inits)
//when we don't override default init -> the parent's default init called
//when we override the default init-> we must call super.init()


//VI : law zwdt ay property f l subclass lazm gwa l init a3mlha initilize el awl b3dha andh l super init 3lshan a3ml initialize ll ba2e
//m2drsh a3dl gwa init l subclass f ay value inherited mn l super ela b3d ma andh super init

//designated initializers : lazm yde inital value l kol l stored properties swa2 f parent aw child
//convenience initializers : b3mlha 3shan usecase mo3yna , bm3na en f l run time ana 3ayz ade f l init value wa7da bs hya l thmne w 3ayz aseb l ba2e bl default bta3o f b3ml convenience init ya5od l para l m7tago da bs, gwa bndh self.init() w b3dha ade l param da ll property l gwa l object




/* 1) lw ana 3mlt override ll init:
 a)law init() with no params : msh shart andh l super,lw mndhthash hattnfz b3d code l sub w lw ndhtha hattnfz 7sb mknha gwa init l sub
 b)law init(param) laaaazm andh l super w adeha l params de
 
 2) law ana asln m3mltsh override ll init hwa hyndh bta3t l parent lw7do swa2 feha params aw l2
 */
