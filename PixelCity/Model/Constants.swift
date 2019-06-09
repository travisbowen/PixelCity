//
//  Constants.swift
//  PixelCity
//
//  Created by Travis Bowen on 4/8/19.
//

import Foundation

let apiKey = "2f86957e94dbb70c93ec40932d55209e"

func flickerUrl(annotation: DroppablePin, numberOfPhotos: Int) -> String{
    return "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(apiKey)&lat=\(annotation.coordinate.latitude)&lon=\(annotation.coordinate.longitude)&radius=1&radius_units=mi&per_page=\(numberOfPhotos)&format=json&nojsoncallback=1"
}
