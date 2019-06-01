//
//  ViewController.swift
//  demo
//
//  Created by Salma on 5/11/19.
//  Copyright © 2019 Salma. All rights reserved.
// this is demo for video three in standford course

import UIKit

class ViewController: UIViewController {
    var items = [Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        items = [1,2,3]
        
        
        //range of ints
        for item in items{
            print(item)
        }
        //for generic types as float or string we make range by stride
        
        // differrence between to and through is to exclude last element but through include last element if it meets the condition (step)
        for i in stride(from: 0.1, to: 25.0, by: 0.4){
            print(i)
        }
        print ("----------------------")
        for i in stride(from: 0.1, through: 25.0, by: 0.4){
            print(i)
        }
        //--------------------------------------------------------------------------------------------------------
        //tuples : custom (defined) data type composed of many datatypes like struct in c
        let tuple : (value:Int,name:String,check:Bool) = (1,"salma",true)
        print (tuple.name)
        print (tuple.0)
        
        //another way
        let tuple2 : (Int,String,Bool)=(1,"salma",true)
        print(tuple2.0)
        let (value,name,check) = tuple2
        print(value)
        print(name)
        print(check)
        
        //tuple is useful to return multivalues
        // ex:
        print (getDimensions())
        let x = getDimensions()
        print (x.0)
        print (x.1)
        print (x.width)
        print (x.height)
        
        //to access tuple we can use indeces like 0 , 1 and name if values are named
        let myTuple : (width:Float,height:Float) = (25.5,30.5)
        print(myTuple.0)
        print(myTuple.width)
        //-------------------------------------------------------------------------------
        //computed property : its value is driven from another properties
        
        //those are stored properties
        var length = 10
        var width = 20
        
        //this is computed property
        var area : Int {
            get {
                return length*width
            }
            set{
                width = newValue
                length = newValue
            }//new value is the default parameter on the setter
        }
        
        //we can remove set from computed property to make it read only
        var getonlyarea : Int {
            get {
                return length*width
            }
            
        }
        //or write it as follows
        var areawithsimpleSyntax : Int {
            return length*width
        }
        
        print(area)
        print(getonlyarea)
        print(areawithsimpleSyntax)
        area=5 // this assign 5 to the newValue param in setter
        print(area)
   //-----------------------------------------------------------------------------
        //testing extension on rect class
        let rect = Rectangle()
        print(rect.calcPerimeter(length:10,width:20))
        print(rect.calcArea(length: 10, width: 20))
    //-----------------------------------------------------------------------------

        //enum
        enum menuItem {
            case hamburger(size : String)
            case drink(String , size : String)
            case fries (friesSize:friesSize)
            
            
              //enum may have methods and computed properties but not stored properties
            func isInOrder (number : Int)->Bool{
                switch self {
                case .hamburger:
                    return true
                default:
                    return false
                }
            }
            
            var calories:Int{
                return 100 //getter of computed properties
            }
            
            //mutating func (used in enum and struct) ->
            //we use them to modify values inside struct and enum as they are value typed(immutable) and we need to modify the same obj not create a new copy
            mutating func switchMySelf (){
                self = .fries(friesSize: friesSize.large)
            }
        }
        enum friesSize{
            case large
            case medium
        }
        
        let menuSelection : menuItem = menuItem.drink("cola", size: "large")
        print(menuSelection)
        //let menuSelection1 = .drink --> no type inference in both sides
        let menuSelection1 : menuItem = .drink("pepsi",size:"large")
        print(menuSelection1)
        let menuSelection2 = menuItem.drink("mrinda",size:"large")
        print(menuSelection2)
        //nb : we cannot change the associated vals (btt7d w ana b5tar l case w 5las)
        //to check the case of enum we use switch :
        
        switch menuSelection {
        case .drink:
            print("cola")
            print ("cold") //multilines allowed without {}
        case .hamburger:
            break //do nothing
        default:
            print("other")//ya ema a3ml handle l kolo ya ema a3ml default as handling l ba2e l cases
        }
        
        //to switch and get the associated data :
        switch menuSelection {
        case .drink(let brand,let size): //define 2 constants to recieve associated data w msh lazm nfs l name
            print(brand)
            print(size)
        default:
            print ("other")
        }
        
      var oldItem = menuItem.hamburger(size: "large") //must be var to use mutating func
        var oldCopy = oldItem
        print("old: \(oldItem)")
        oldItem.switchMySelf()
        print("new:\(oldItem)")
        print("oldCopy \(oldCopy)")
//-----------------------------------------------------------------------------

        //optional
        //?->to define optional
        //optional is enum of 2 cases 1)none 2)some(<T>) generic datatype add to optional type
        var myName : String?
        var myName2 : String? = "m7mden"
        var _ : String? = nil
        var _ : Optional<String> = .none
        var _ : Optional<String> = .some("ahmed")
        
        //unwraping
        // 1) !->forceunwrap
        //print(myName!)
        
        // 2) safe unwraping by assign
        //using if
        if var check = myName {
            print("has value",check)
        }
        else {print("no value")}
        //using guard
        guard let nameCheck = myName2 else{return} //lw et722 ynfz l t7t lw l2 yd5ol f else
        print(nameCheck)
        
        // 3) using default value
        var optionalWithDefault : Int?
        print(optionalWithDefault ?? 0) // if nil prints what is after ??
        optionalWithDefault = 10
        print(optionalWithDefault ?? 0)
        
        // 4)optional chaining
        var optionalInteger : Int?
        //var force = optionalInteger!.magnitude //force unwrap returns the type
        //print(force)
        var optional = optionalInteger?.magnitude // optional chaining returns optional (enum) of the type so it will not crash if the value is nil but all the chain fails gracefully bdon mshakl
        print(optional)
        
        //-----------------------------------------
        //dictionary :
        var dict = Dictionary<Int,String>()
        dict[1]="salma"
        //dict[1]="ahmed"
        dict[2]="salma"
        print(dict)
        
        //-------------------------------------------
        //closure
        var closureBody = {(name:String)->Void in
            print("hi\(name)")
            print("soso")
        }
        
        closureBody("meen")
        
        usingClosure(id: 1) { (name) in
            print(name)
            print("m7mden")
        }
        
        //another example :
        let number = usingClosureAgain(id: 1) { (name) -> Int in
            return 10
        }
        print (number)
        
        //using the singleton object
        print(SingletonUser.getSharedUser().id)
        
        //use the instance defined globally in appdelegate
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        print(appDelegate.sharedUser?.id ?? 0)
    }
    
    
    func usingClosure (id:Int,complitionHandler :(String)->Void){
        complitionHandler("salma")
    }
    
    func usingClosureAgain (id : Int,errorHandler:(String)->Int) -> Int{
        return errorHandler("salma")
    }
    
    
    func getDimensions()  -> (width:Float,height:Float){
        return (20.5,20.7)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

