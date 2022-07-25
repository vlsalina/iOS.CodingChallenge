//
//  Services.swift
//  Revature.CodingChallenge
//
//  Created by Vincent Salinas on 7/25/22.
//

import Foundation

class Services: ObservableObject {
    @Published private(set) var breweries = [ModelData]()
    @Published private(set) var randomBrewery = ModelData(id: "", name: "", brewery_type: "", street: "", address_2: "", address_3: "", city: "", state: "", county_province: "", postal_code: "", country: "", longitude: "", latitude: "", phone: "", website_url: "", updated_at: "", created_at: "")
    
    func getData() {
        let url = "https://mocki.io/v1/214223dc-c8f4-4a2f-9749-8ce2f355d04f"
        let session = URLSession.shared
        let decoder = JSONDecoder()
        guard let jsonURL = URL(string: url) else {
            fatalError("Invalid URL")
        }
        
        let task = session.dataTask(with: jsonURL) { data, response, error in
            if let error = error {
                fatalError(error.localizedDescription)
            }
            
            guard let responseData = try? Data(contentsOf: jsonURL) else {
                fatalError("Could not retrieve data")
            }
            
            guard let jsonData = try? decoder.decode([ModelData].self, from: responseData) else {
                fatalError("Could not decode data")
            }
            
            DispatchQueue.main.async {
                self.breweries = jsonData
            }
        }
        
        task.resume()
    }
    
    func getRandomBrewery() {
        let url = "https://api.openbrewerydb.org/breweries/random"
        let session = URLSession.shared
        let decoder = JSONDecoder()
        guard let jsonURL = URL(string: url) else {
            fatalError("Invalid URL")
        }
        
        let task = session.dataTask(with: jsonURL) { data, response, error in
            if let error = error {
                fatalError(error.localizedDescription)
            }
            
            guard let responseData = try? Data(contentsOf: jsonURL) else {
                fatalError("Could not retrieve data")
            }
            
            guard let jsonData = try? decoder.decode(ModelData.self, from: responseData) else {
                fatalError("Could not decode data")
            }
            
            DispatchQueue.main.async {
                self.randomBrewery = jsonData
            }
        }
        
        task.resume()
    }
    
}
