//
//  ViewController.swift
//  Example
//
//  Created by Mobile Jakarta Team on 11/03/18.
//  Copyright © 2018 moonshadow. All rights reserved.
//

import UIKit
import TemperatureConverter

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tempConverter = TemperatureConverter(from: .fahrenheit, value: 100)
        
        print(tempConverter.fahrenheit)
        print(tempConverter.celsius)
        print(tempConverter.kelvin)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

