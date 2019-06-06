//
//  NetworkViewController.swift
//  demo
//
//  Created by Salma on 6/5/19.
//  Copyright © 2019 Salma. All rights reserved.
//

import UIKit

class NetworkViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //steps:
        //1) define URL obj with the string of url
        let url = URL(fileURLWithPath: "https://www.pexels.com/photo/grey-and-white-short-fur-cat-104827/")
        //2)define request with the url
        let request = URLRequest(url: url)
        
        //3)get the shared session obj
        let session = URLSession.shared //returns shared singleton session obj
        
        //4)define the task(here data task)with the request and complition handler
        let task = session.dataTask(with: request) { (data, response, error) in
            if error == nil{
                print("done")
                DispatchQueue.main.async{
                    //Logic modifying UI
                }
                
            }
        }
        //5)resume task
        task.resume()
        
        
        //activity indicator (loading)
        //1)awl no3:ele bykon fo2 so8yr
        //set it to true to appear or false to disappear
        UIApplication.shared.isNetworkActivityIndicatorVisible=true
        
        //2)tany no3:customized
        let activityIndicator = UIActivityIndicatorView(activityIndicatorStyle:UIActivityIndicatorViewStyle.gray)
        activityIndicator.center=view.center
        activityIndicator.startAnimating()
        view.addSubview(activityIndicator)
        
        //to stop :.stopAnimating()
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

/*
 My Study :
 1) we use http (hyper text transfer protocol)to get data through network->imgs audio video txt etc ...
 2) https : is the same as http but with layer of security added ,
 App Transport Security(ATS):de 7aga apple 3mlaha 3lshan tdmn l security bta3t l apps
 mn dmn shrotha ene ast5dm https not http to guarantee the security (law est5dmt http bydrb exception)
 BUT we are still able to use HTTP
 a) go to info.plist
 b) add item to dictionary :  App Transport Security Settings
 c) change the arrow beside App Transport Security Settings to be down
 d) add Allow Arbitrary Loads and make it YES
 
 
 //network APIS :
 1)NSURLConnection : kant feha shwyt 7agat n2sa 3mlolha improvment fe
 2)URLSession : does the same as NSURLConection but + some improvments
    1)Background uploads and downloads
        You can start a download of a large image or file,
        close the app and the download will continue until it completes.
    2)Ability to pause and resume networking operations.
    3)Uploads and downloads through the file system.
    4)Improved authentication handling.
    5)Configurable container
        􀀹URLSessionConfiguration is the first class you’ll probably work with in the URLSession API.
        􀀹 It is a class that allows you to do exactly what itsname suggests: configure your URLSession with connection/HTTP policies, caching behavior,maximum number of connections, custom headers,etc.
 
 
 
 
 */













