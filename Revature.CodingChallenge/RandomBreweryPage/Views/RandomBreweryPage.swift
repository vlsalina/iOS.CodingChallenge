//
//  RandomBreweryPage.swift
//  Revature.CodingChallenge
//
//  Created by Vincent Salinas on 7/25/22.
//

import SwiftUI

struct RandomBreweryPage: View {
    @StateObject var services = Services()
    
    @State var randomBrewery = ModelData(id: "", name: "", brewery_type: "", street: "", address_2: "", address_3: "", city: "", state: "", county_province: "", postal_code: "", country: "", longitude: "", latitude: "", phone: "", website_url: "", updated_at: "", created_at: "")
    
    var body: some View {
        VStack {
            Text(randomBrewery.name)
            Text("Address: \(randomBrewery.street ?? "N/A"), \(randomBrewery.city ?? "N/A"), \(randomBrewery.state)")
            Text("Phone: \(randomBrewery.phone ?? "N/A")")
        }
        .onAppear() {
            services.getRandomBrewery()
        }
        .refreshable {
            services.getRandomBrewery()
        }
    }
}

struct RandomBreweryPage_Previews: PreviewProvider {
    static var previews: some View {
        RandomBreweryPage()
            .environmentObject(Services())
    }
}
