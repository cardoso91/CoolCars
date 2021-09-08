//
//  Car.swift
//  Cool_Cars
//
//  Created by Carlos Cardoso on 8/27/21.
//

import Foundation

struct Car {
    var image = String()
    var make = String()
    var year = String()
    var model = String()
    
    var yearAndModel: String {
        return "\(year) - \(model)"
    }
    
    var color = String()
    var transmition = String()
    var milage = String()
}
