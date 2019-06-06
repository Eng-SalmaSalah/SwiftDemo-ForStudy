//
//  ViewController.swift
//  demo
//
//  Created by Salma on 5/11/19.
//  Copyright © 2019 Salma. All rights reserved.
// this is demo for video three in standford course

import UIKit
import CoreData
import Foundation

class ViewController: UIViewController {
    var items = [Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //type alias
        typealias m7mden = Int
        var numX:m7mden = 0
        print(numX)
        //-------------------------------------------------------------------
        //arrays
        var array = [String]()
        var definedArray = [String](repeatElement("soso", count: 5))
        //definedArray[3...4]=["koki"]
       

        print(definedArray)
        var array1 : [String]?
        
        
        // dictionary
        var dictTest = [String:Int]()
        
        //-------------------------------------------------------------------
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
//        let rect = Rectangle()
   //     print(rect.calcPerimeter(length:10,width:20))
     //   print(rect.calcArea(length: 10, width: 20))
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
        
        
        var size = Size.xLarge.rawValue
        print("size is \(size)")
//-----------------------------------------------------------------------------

        //optional
        //?->to define optional
        //optional is enum of 2 cases 1)none 2)some(<T>) generic datatype add to optional type
        var myName : String?
        var myName2 : String? = "m7mden"
        var _ : String? = nil
        var _ : Optional<String> = .none
        var _ : Optional<String> = .some("ahmed")
        
        var implicitlyUnwrapped:String! = "salma"//lw 7tet ! bdl ? w ana b3rf l optional da kda esmo implicitly unwrapped msh b7tag a3ml unwrapping w ana bst5dmo
        print(implicitlyUnwrapped)
        
        //unwraping
        // 1) !->forceunwrap
        //print(myName!)
        
        // 2) safe unwraping by assign (optional binding)
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
        
        usingClosure { (name) in
            print(name)
        }
        var x2 = testClosures { (name) -> Int in
            return 10
        }
        print(x2)
        
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
        let appDelegate1 = UIApplication.shared.delegate as! AppDelegate
        print(appDelegate1.sharedUser?.id ?? 0)
        
        //slides example
        var names = ["ahmed","salma","sahar","nouran"]
//        var result = names.sorted { (name1:String  , name2:String) -> Bool in
//            return name1<name2
//        }
        
        //remove data types of params
//        var result = names.sorted { (s1, s2) -> Bool in
//            return s1>s2
//        }
        
        //remove the return
//        var result = names.sorted { (s1, s2)  in
//            //return s1>s2
//            s1>s2
//        }
        
        //remove the params and use $ index of param ($ indicates order of params)
        //also as it is single line of code we can remove return
        var result = names.sorted {
            $0 > $1
        }
        print("res is:\(result)")
        
        //---------------------------------------------------------------------
        
        //test retain cycle:
        var salma : Owner?
        var buildingA : Appartment?
        salma = Owner(name: "salma")
        print(salma?.prettyPrint())
        buildingA = Appartment(name: "buildingA")
        salma!.appartment=buildingA
        buildingA!.owner=salma
        salma=nil
        buildingA=nil

        /*
         explanation: if we did so only initializers are called,no deallocation took place
         so retain cycle happend .. why ?
         the instance -> Owner(name : "salma") has RC = 2 because:
            1) salma has strong ref to it
            2) [(Appartment(name :"buildingA").owner] has strong ref to it
         
         also, the instance Appartment(name : "buildingA") has RC = 2 because :
            1) buildingA has strong refrence to it
            2) [Owner(name : "salma").appartment] has strong refrence to it
         
         so: although salma is nil and buildingA is nil rc of both is still 1 so they are not deallocated
         
         solution : is to make weak refrences in one of the two classes
         how it was solved ?
         
         we added weak in appartment to its refrence to the owner so
         Owner(name: "salma") has RC = 1 (due to salma pointing to it)
         when salma = nil -> Owner(name: "salma") has rc=0 and deallocated
         
         Appartment(name : "buildingA") had RC = 2 due to buildingA and [(Owner(name: "salma")].Appartment
         Owner(name: "salma") is now nil //Appartment(name : "buildingA")  RC = 1
         when buildingA = nil //Appartment(name : "buildingA")  RC = 0
         
         so //Appartment(name : "buildingA")  is deallocated
         
         weak and unowned are almost the same
         but if we used weak -> we have to define the refrence as optional
         but unowned not but should be initialized in init
         we use unowned if the two classes are dependent on each other so optional is not valid
         for example : the relation between employee and id
         use unowned lw damn en l 7aga l bshawr 3leha d 3omrha ma htkon b nil
         */
        //---------------------------------------------------------
        //func with default value in parameters may be called without this param

        //test neglecting external name
        sayHello("ali")
        
        //function type as params
        let mathFunc : (Int,Int)->Int = addTwoInts(a:b:)
        receiveFuncType(mathFunction: mathFunc, num1: 10, num2: 20)
        
        //test variadic func
        variadicTest(numbers: 5.5,6.5,7.5)
        
        //inout test
        var var1 : Int = 6
        var var2 : Int = 60
        swap(num1: &var1, num2: &var2)
        print(var1)
        print(var2)
        
        //-------------------------------------------------------------
        //subscripts: Used to access elements in sequence or list inside class,class,enum
        var numbers = Numbers()
        print(numbers[1])
        numbers[1]=300
        print(numbers[1])
        //-------------------------------------------------------------
        //test Lazy : Lazy is initialized in memory on its first usage not with obj creation
        var employee = Employee()
        print(employee)
        print(employee.netSal)


        //by debug:
        /*
         name    String    ""
         salary    Int    10000
         bonus.storage    Double?    nil    none (nil because it is lazy not used)
         */
        
        //-----------------------------------------------------------------
        //property observers : detect changing in property
        //we can use (willSet : called just before the property is set) or
        //(didSet : called just after the property is set)
        //we can use didSet only or willSet only or both
        
        /*
         
        You can add property observers to any stored properties you define, except for lazy stored properties. You can also add property observers to any inherited property (whether stored or computed) by overriding the property within a subclass. You don’t need to define property observers for nonoverridden computed properties, because you can observe and respond to changes to their value in the computed property’s setter. 
         
         */
        
        
        
        //stored property with observer
        var changingVar : Int = 5{
            willSet{
                print("property will be set to \(newValue)") // newValue is the assigned new value to the property and can be used only in willSet
            }
            didSet{
                print("property was changed from \(oldValue) to \(changingVar) ")//old value is the old value before assigning new value and it is used only in didSet
            }
        }
        
        changingVar = 8
        

        
        /*
         hint to mySelf :
         Stored property:
            var x : Int = 5
         
         computedProperty:
            var x : Int{
            get{
                return x*10
            }
            set{
         
            }
         }
         
         property with Observer:
         var x:Int=10{
         willSet{}
         didSet{}
         }
         
         */
        
        //-----------------------------------------------------------------
        //test inheritance of init
       // var parent1 = Parent()
       // var child0 = child()
        var child1 = child(name: "soso")
//----------------------------------------------------------------
        
        
        
//COREDATA:
//never forget to add coredata framework from general in settings or with the project start
//never forget to import CoreData
//adding Data:

        //step1:get appDelegate
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        //step2:get managedContext (NSManagedObjectContext)
        let managedContext = appDelegate.persistentContainer.viewContext
        
        //step3:Define entity(NSEntityDescription)
        let entity = NSEntityDescription.entity(forEntityName: "Movie", in: managedContext)
        
        //step4:Define NSManagedobject(NSManagedObject)
        let movie = NSManagedObject(entity: entity!, insertInto: managedContext)
        
        //step5:Set values of NSManaged object
        movie.setValue(1, forKey: "id")
        movie.setValue("annabelle", forKey: "name")
        
        //step6:Save
        do{
            try managedContext.save()
        }catch let error as NSError {
            print(error)
        }
        
 //fetching data
        //step 1 and 2 the same as storing data : appDelegate and from it viewContext
        
        //step3: FetchRequest(NSFetchRequest)
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Movie")
        
        //step4:(optional)->adding predicate (select where)
        let predicate = NSPredicate(format: "id==%@",1)
        fetchRequest.predicate=predicate
        
        //step5:fetch
        
        do{
            let retrievedMovies = try managedContext.fetch(fetchRequest) //returns array of nsmanaged obj
            print(retrievedMovies.count)
            let id = retrievedMovies[0].value(forKey: "id")
            print(id)
            let name = retrievedMovies[0].value(forKey: "name")
            print(name)
        }catch let error as NSError{
            print(error)
        }
        
//delete data
        //step 1 and 2 are the same
        //step(3) : delete using NSManagedobject
        
        //managedContext.delete(<#T##object: NSManagedObject##NSManagedObject#>) //takes NSManagedObject

        //step4:save
        do{
            try managedContext.save()
        }catch let error as NSError{
            print(error)
        }
        
        
        
        
        
        
    }
    //-------variadic params-----------
    func variadicTest (numbers:Double ...){
        var sum:Double=0.0
        for number in numbers{
            sum+=number
        }
        print(sum)
    }
    //-------------inout test--------------
    func swap (num1: inout Int,num2: inout Int){
        var temp:Int = 0
        temp = num1
        num1 = num2
        num2 = temp
    }
    
    //-----------neglect external name-------
    
    func sayHello (_ to:String){
        print("hello \(to)")
    }
    //-----------------function type as params----------------
    func addTwoInts (a:Int,b:Int)->Int{
        return a+b
    }
    
    func receiveFuncType (mathFunction : (Int,Int)->Int , num1: Int,num2:Int) {
       print(mathFunction(num1,num2))
    }
    //-----------------------end----------------------------
    //-----------------------closuresTest--------------------
    func usingClosure (id:Int=0,complitionHandler :(String)->Void){
        complitionHandler("salma")
    }
    
    func usingClosureAgain (id : Int,errorHandler:(String)->Int) -> Int{
        return errorHandler("salma")
    }
    
    func testClosures (complitionHandler : (String)->Int) -> Int{
        return complitionHandler("salma")
    }
    
   
    //-------------------------end---------------------
    
    func getDimensions()  -> (width:Float,height:Float){
        return (20.5,20.7)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

