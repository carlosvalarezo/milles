//
//  MillesView.swift
//  milles
//
//  Created by cv on 6/27/23.
//

import SwiftUI

struct MillesView: View {
    @State private var milles: String = ""
    @State private var gallons: String = ""
    @State private var relation: Double = 0.0
    
    var body: some View {
        VStack {
            TextField("Enter milles", text: $milles)
                     .textFieldStyle(RoundedBorderTextFieldStyle())
                     .padding(.bottom, 10.0)
            TextField("Enter gallons", text: $gallons)
                     .textFieldStyle(RoundedBorderTextFieldStyle())
                     .padding(.bottom, 10.0)
            Button {
                let millesDouble = Double(milles) ?? 0.0
                print("milles \(millesDouble)")
                let gallonsDouble = Double(gallons) ?? 0.0
                print("gallons \(gallonsDouble)")
                if gallonsDouble != 0 {
                    relation = Double(millesDouble / gallonsDouble)
                    print("relation: \(relation)")
                }
            } label: {
                Text("Get relationship")
            }.padding(.bottom, 10.0)
            Text("The relation milles/gallon for this tank is \(relation)")

        }
        .padding()
    }
}
