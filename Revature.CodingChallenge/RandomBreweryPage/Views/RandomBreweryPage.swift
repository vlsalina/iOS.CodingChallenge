//
//  RandomBreweryPage.swift
//  Revature.CodingChallenge
//
//  Created by Vincent Salinas on 7/25/22.
//

import SwiftUI

struct RandomBreweryPage: View {
    @StateObject var services = Services()
    
    //    @State var randomBrewery = ModelData(id: "", name: "", brewery_type: "", street: "", address_2: "", address_3: "", city: "", state: "", county_province: "", postal_code: "", country: "", longitude: "", latitude: "", phone: "", website_url: "", updated_at: "", created_at: "")
    
    var body: some View {
        VStack(spacing: 5) {
            NavigationBar()
            VStack(alignment: .leading) {
                Text(services.randomBrewery.name)
                Text("Address: \(services.randomBrewery.street ?? "N/A"), \(services.randomBrewery.city ?? "N/A"), \(services.randomBrewery.state)")
                Text("Phone: \(services.randomBrewery.phone ?? "N/A")")
            }
            Spacer()
        }
        .padding(.horizontal)
        .navigationTitle("")
        .navigationBarHidden(true)
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
