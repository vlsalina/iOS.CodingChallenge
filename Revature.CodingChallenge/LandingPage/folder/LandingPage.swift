//
//  LandingPage.swift
//  Revature.CodingChallenge
//
//  Created by Vincent Salinas on 7/25/22.
//

import SwiftUI

struct LandingPage: View {
    @EnvironmentObject var services: Services
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    LazyVStack(spacing: 15) {
                        ForEach(services.breweries) { brewery in
                            DetailsComponent(breweryObj: brewery)
                        }
                    }
                }
            }
            .padding(.horizontal)
            .onAppear() {
                services.getData()
            }
            .refreshable {
                services.getData()
            }
            
        }
    }
}

struct LandingPage_Previews: PreviewProvider {
    static var previews: some View {
        LandingPage()
            .environmentObject(Services())
    }
}
