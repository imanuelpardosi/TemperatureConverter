//
//  TemperatureConverter.swift
//  TemperatureConverter
//
//  Created by Mobile Jakarta Team on 11/03/18.
//  Copyright © 2018 moonshadow. All rights reserved.
//

enum TYPE {
    case fahrenheit
    case celsius
    case kelvin
}

import Foundation
import UIKit

public class TemperatureConverter {
    func convert(from: TYPE, to: TYPE, value: Double) -> Double {
        var newValue = value
        if from == .fahrenheit {
            if to == .celsius {
                newValue = (value - 32) * 5/9
            } else if to == .kelvin {
                newValue = (value - 32) * 5/9 + 273.15
            }
        } else if from == .celsius {
            if to == .fahrenheit {
                newValue = (value * 9/5) + 32
            } else if to == .kelvin {
                newValue = value + 273.15
            }
        } else if from == .kelvin {
            if to == .fahrenheit {
                newValue = (value - 273.15) * 9/5 + 32
            } else if to == .celsius {
                newValue = value - 273.15
            }
        }
        return newValue
    }
}
