//
//  DataEntryView.swift
//  FoodConnect
//
//  Created by Bhavik Ostwal on 10/02/24.
//

import SwiftUI

struct DataEntryView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Data Entry Screen")
                    .font(.title)

                // Add UI components for data entry
                // ...

                NavigationLink(destination: MapView()) {
                    Text("Continue to Map View")
                }
                .padding()
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(8)
            }
            .padding()
            .navigationTitle("Data Entry")
        }
    }
}

struct DataEntryView_Previews: PreviewProvider {
    static var previews: some View {
        DataEntryView()
    }
}
