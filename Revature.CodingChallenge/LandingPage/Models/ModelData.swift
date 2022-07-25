//
//  ModelData.swift
//  Revature.CodingChallenge
//
//  Created by Vincent Salinas on 7/25/22.
//

import Foundation

class ModelData: Decodable, Identifiable {
    
    //    Sample json:[ {
    //    "id":"banjo-brewing-fayetteville",
    //    "name":"Banjo Brewing",
    //    "brewery_type":"planning",
    //    "street":null,
    //    "address_2":null,
    //    "address_3":null,
    //    "city":"Fayetteville",
    //    "state":"West Virginia",
    //    "county_province":null,
    //    "postal_code":"25840",
    //    "country":"United States",
    //    "longitude":null,
    //    "latitude":null,
    //    "phone":"3042164231",
    //    "website_url":null,
    //    "updated_at":"2021-10-23T02:24:55.243Z",
    //    "created_at":"2021-10-23T02:24:55.243Z"
    //    }]
    
    var id: String
    var name: String
    var brewer_type: String
    var street: String?
    var address_2: String?
    var address_3: String?
    var city: String
    var state: String
    var county_province: String?
    var postal_code: Int
    var country: String
    var longitude: Double?
    var latitude: Double?
    var phone: String
    var website_url: String?
    var updated_at: Date
    var created_at: Date
    
    init(id: String, name: String, brewer_type: String, street: String, address_2: String, address_3: String, city: String, state: String, county_provice: String, postal_code: Int, country: String, longitude: Double, latitude: Double, phone: String, website_url: String, updated_at: Date, created_at: Date) {
        
        self.id = id
        self.name = name
        self.brewer_type = brewer_type
        self.street = street
        self.address_2 = address_2
        self.address_3 = address_3
        self.city = city
        self.state = state
        self.county_province = county_province
        self.postal_code = postal_code
        self.country = country
        self.longitude = longitude
        self.latitude = latitude
        self.phone = phone
        self.website_url = website_url
        self.updated_at = updated_at
        self.created_at = created_at
        
    }
    
    
    
    
    
}
