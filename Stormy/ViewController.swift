//
//  ViewController.swift
//  Stormy
//
//  Created by Pete Petrash on 11/17/14.
//  Copyright (c) 2014 Pete Petrash. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // set Forecast.io apikey constant
    private let apiKey = "8c4ca462befc88e8371c66495a8057a5"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let baseURL = NSURL(string: "https://api.forecast.io/forecast/\(apiKey)/")
        
        let forecastURL = NSURL(string: "37.576876,-122.267081", relativeToURL: baseURL)
        
        let weatherData = NSData(contentsOfURL: forecastURL!, options: nil, error: nil)
        
        println(weatherData)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

