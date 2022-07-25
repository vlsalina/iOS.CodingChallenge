//
//  ModelData.swift
//  Revature.CodingChallenge
//
//  Created by Vincent Salinas on 7/25/22.
//

import Foundation

struct ModelData: Decodable, Identifiable {
    
    var id: String
    var name: String
    var brewery_type: String
    var street: String?
    var address_2: String?
    var address_3: String?
    var city: String?
    var state: String
    var county_province: String?
    var postal_code: String
    var country: String
    var longitude: String?
    var latitude: String?
    var phone: String?
    var website_url: String?
    var updated_at: String
    var created_at: String
    
}
