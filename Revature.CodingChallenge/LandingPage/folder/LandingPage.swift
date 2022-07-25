//
//  LandingPage.swift
//  Revature.CodingChallenge
//
//  Created by Vincent Salinas on 7/25/22.
//

import SwiftUI

struct LandingPage: View {
    @StateObject var services = Services()
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationBar()
                ScrollView {
                    LazyVStack(spacing: 15) {
                        ForEach(services.breweries) { brewery in
                            DetailsComponent(breweryObj: brewery)
                        }
                    }
                }
            }
            .padding(.horizontal)
            .navigationTitle("")
            .navigationBarHidden(true)
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
    }
}
