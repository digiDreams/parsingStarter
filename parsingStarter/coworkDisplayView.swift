//
//  coworkDisplayView.swift
//  parsingStarter
//
//  Created by Apprenant 16 on 26/09/2022.
//

import SwiftUI

struct coworkDisplayView: View {
    var body: some View {
        List {
            ForEach(places) { place in
                Text(place.name)
            }
        }.navigationTitle("CoworkPlaces")
    }
}

struct coworkDisplayView_Previews: PreviewProvider {
    static var previews: some View {
        coworkDisplayView()
    }
}
