//
//  RandomBreweryPage.swift
//  Revature.CodingChallenge
//
//  Created by Vincent Salinas on 7/25/22.
//

import SwiftUI

struct RandomBreweryPage: View {
    @StateObject var services = Services()
    
    var body: some View {
        VStack(spacing: 5) {
            NavigationBar()
            VStack {
                HStack {
                    Text(LocalizedStringKey("Name"))
                    Text(": \(services.randomBrewery.name)")
                    Spacer()
                }
                HStack {
                    Text(LocalizedStringKey("Address"))
                    Text(": \(services.randomBrewery.street ?? "N/A"), \(services.randomBrewery.city ?? "N/A"), \(services.randomBrewery.state)")
                    Spacer()
                }
                HStack {
                    Text(LocalizedStringKey("Phone"))
                    Text(": \(services.randomBrewery.phone ?? "N/A")")
                    Spacer()
                }
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
