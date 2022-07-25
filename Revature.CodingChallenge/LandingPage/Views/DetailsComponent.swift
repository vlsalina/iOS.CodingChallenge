//
//  DetailsComponent.swift
//  Revature.CodingChallenge
//
//  Created by Vincent Salinas on 7/25/22.
//

import SwiftUI

struct DetailsComponent: View {
    var breweryObj: ModelData
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(LocalizedStringKey("Name"))
                Text(": \(breweryObj.name)")
                Spacer()
            }
            HStack {
                Text(LocalizedStringKey("Address"))
                Text(": \(breweryObj.street ?? "N/A"), \(breweryObj.city ?? "N/A"), \(breweryObj.state)")
                    .font(.caption)
                Spacer()
            }
        }
    }
}

struct DetailsComponent_Previews: PreviewProvider {
    static var previews: some View {
        DetailsComponent(breweryObj: ModelData(id: "", name: "", brewery_type: "", street: "", address_2: "", address_3: "", city: "", state: "", county_province: "", postal_code: "", country: "", longitude: "", latitude: "", phone: "", website_url: "", updated_at: "", created_at: ""))
    }
}
