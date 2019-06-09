//
//  DroppablePin.swift
//  PixelCity
//
//  Created by Travis Bowen on 4/8/19.
//

import UIKit
import MapKit


class DroppablePin: NSObject, MKAnnotation{
    
    dynamic var coordinate: CLLocationCoordinate2D
    var identifier: String
    
    init(coordinate: CLLocationCoordinate2D, identifier: String) {
        self.coordinate = coordinate
        self.identifier = identifier
        super.init()
    }
}
