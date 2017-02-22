//
//  weatherController.swift
//  Conducify
//
//  Created by David Vasquez on 2/15/17.
//  Copyright © 2017 David Vasquez. All rights reserved.
//

import UIKit
import Alamofire

class weatherController: UIViewController {
    
    //City Variable
    var weatherCity = "\\London"

    override func viewDidLoad() {
        super.viewDidLoad()
        //LOAD WEATHER DATA
        requestData();

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // FUNCTIONS
    func requestData () {
        Alamofire.request("api.openweathermap.org/data/2.5/weather?q=London&APPID=2296dcb24c4cef56720c70bda1db5b15").responseJSON(completionHandler: { response  in
            print(response.request) //original url request
            print(response.response) // HTTP Url response
            print(response.data) //server data
            print(response.result) //result of response serialization
            
            if let JSON = response.result.value {
                print("JSON: \(JSON)")
            }
        })
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
