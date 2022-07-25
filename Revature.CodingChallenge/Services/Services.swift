//
//  Services.swift
//  Revature.CodingChallenge
//
//  Created by Vincent Salinas on 7/25/22.
//

import Foundation

class Services: ObservableObject {
    @Published private(set) var breweries = [ModelData]()
    
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
            
            //            do {
            //                self.cities = try! decoder.decode([ModelData].self, from: responseData)
            //            } catch {
            //                print(error.localizedDescription)
            //            }
            guard let jsonData = try? decoder.decode([ModelData].self, from: responseData) else {
                fatalError("Could not decode data")
            }
            
            DispatchQueue.main.async {
                self.breweries = jsonData
                for x in self.breweries {
                    print(x.name)
                }
            }
        }
        
        task.resume()
    }
    
}
