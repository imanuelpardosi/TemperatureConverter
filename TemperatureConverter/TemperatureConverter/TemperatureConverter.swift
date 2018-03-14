//
//  TemperatureConverter.swift
//  TemperatureConverter
//
//  Created by Mobile Jakarta Team on 11/03/18.
//  Copyright © 2018 moonshadow. All rights reserved.
//

public enum TYPE {
    case fahrenheit
    case celsius
    case kelvin
}

import Foundation
import UIKit

public class TemperatureConverter {
    
    var _from: TYPE!
    var _value: Double!
    var _fahrenheit: Double!
    var _celsius: Double!
    var _kelvin: Double!
    
    public init() {
        
    }
    
    public init(from: TYPE, value: Double) {
        _from = from
        _value = value
    }
    
    public var fahrenheit: Double {
        if _from == .celsius {
            return ((_value * 9/5) + 32).rounded(toPlaces: 2)
        } else if _from == .kelvin {
            return ((_value - 273.15) * 9/5 + 32).rounded(toPlaces: 2)
        } else {
            return _value.rounded(toPlaces: 2)
        }
    }
    
    public var celsius: Double {
        if _from == .fahrenheit {
            return ((_value - 32) * 5/9).rounded(toPlaces: 2)
        } else if _from == .kelvin {
            return (_value - 273.15).rounded(toPlaces: 2)
        } else {
            return _value.rounded(toPlaces: 2)
        }
    }
    
    public var kelvin: Double {
        if _from == .fahrenheit {
            return ((_value - 32) * 5/9 + 273.15).rounded(toPlaces: 2)
        } else if _from == .celsius {
            return (_value + 273.15).rounded(toPlaces: 2)
        } else {
            return _value.rounded(toPlaces: 2)
        }
    }
    
    public func convert(from: TYPE, to: TYPE, value: Double) -> Double {
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
        return newValue.rounded(toPlaces: 2)
    }
}

extension Double {
    func rounded(toPlaces places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}
