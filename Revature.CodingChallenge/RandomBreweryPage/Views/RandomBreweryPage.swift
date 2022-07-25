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
        VStack {
            NavigationBar()
            VStack(spacing: 8) {
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
            RandomBreweryPageViewModel.getRandomBrewery(services: services)
        }
        .refreshable {
            RandomBreweryPageViewModel.getRandomBrewery(services: services)
        }
    }
}

struct RandomBreweryPage_Previews: PreviewProvider {
    static var previews: some View {
        RandomBreweryPage()
            .environmentObject(Services())
    }
}
