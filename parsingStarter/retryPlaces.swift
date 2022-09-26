//
//  retryPlaces.swift
//  parsingStarter
//
//  Created by Apprenant 16 on 26/09/2022.
//
//
//import Foundation
//
//name
//long

import Foundation
// import SwiftUI

struct Place: Identifiable, Decodable {
    var id: Int
    var name: String
    var latitude: Double
    var longitude: Double
    var adress: String
    var type: shopType // créer enum derrière (me first intention: Array)
    var url: String
    var wifi: Bool
    
    enum shopType: String, Decodable {
        case coffeeWork = "coffee / coworking"
        case coworking = "coworking"
        case coffee = "coffee"
    }
}



//func getShopType(shop: shopType) -> String? {
//    switch weather {
//    case .coffeew:
//        return
//    case .wind(let speed) where speed < 10:
//        return "meh"
//    case .cloud, .wind:
//        return "dislike"
//    case .rain, .snow:
//        return "hate"
//    }
//}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
        do {
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        } catch {
            fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
        }
    }
    
    var coworkPlaces: [Coworkplaces] = load("places.json")
    var Coworkplaces : [String] = [""]
