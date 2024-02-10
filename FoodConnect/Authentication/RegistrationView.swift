//
//  RegistrationView.swift
//  FoodConnect
//
//  Created by Bhavik Ostwal on 10/02/24.
//

import SwiftUI

struct RegistrationView: View {
    @State private var hotelName = ""
    @State private var contactPerson = ""
    @State private var email = ""
    @State private var password = ""

    var body: some View {
        VStack {
            Text("Hotel Registration")

            TextField("Hotel Name", text: $hotelName)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())

            TextField("Contact Person", text: $contactPerson)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())

            TextField("Email", text: $email)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.emailAddress)

            SecureField("Password", text: $password)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())

            Button(action: {
                // Add code to handle registration, such as sending data to a server
                // You might want to implement user authentication here
                // For simplicity, let's print the registration details for now
                print("Hotel Name: \(hotelName)")
                print("Contact Person: \(contactPerson)")
                print("Email: \(email)")
            }) {
                Text("Register")
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(8)
            
            NavigationLink(destination: DataEntryView()) {
                Text("Continue to Data Entry")
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(8)
        }
        .padding()
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
    
}

