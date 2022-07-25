//
//  NavigationBar.swift
//  Revature.CodingChallenge
//
//  Created by Vincent Salinas on 7/25/22.
//

import SwiftUI

struct NavigationBar: View {
    
    
    var body: some View {
        HStack {
            NavigationLink(destination: LandingPage().navigationTitle("").navigationBarHidden(true)) {
                HStack {
                    Spacer()
                    Text(LocalizedStringKey("Breweries"))
                    Spacer()
                }
                .padding()
            }
            NavigationLink(destination: RandomBreweryPage().navigationTitle("").navigationBarHidden(true)) {
                HStack {
                    Spacer()
                    Text(LocalizedStringKey("Random Brewery"))
                    Spacer()
                }
                .padding()
            }
        }
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar()
    }
}
