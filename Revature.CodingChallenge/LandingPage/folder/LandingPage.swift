//
//  LandingPage.swift
//  Revature.CodingChallenge
//
//  Created by Vincent Salinas on 7/25/22.
//

import SwiftUI

struct LandingPage: View {
    @EnvironmentObject var services: Services
    
    @State var showNextView = false
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    LazyVStack {
                        ForEach(services.breweries) { brewery in
                            Button(action: {
                                showNextView = true
                            }) {
                                DetailsComponent(breweryObj: brewery)
                            }
                        }
                    }
                }
                NavigationLink(destination: RandomBreweryPage().environmentObject(services), isActive: $showNextView) {
                    EmptyView()
                }
            }
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
