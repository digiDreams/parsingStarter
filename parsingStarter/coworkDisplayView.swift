//
//  coworkDisplayView.swift
//  parsingStarter
//
//  Created by Apprenant 16 on 26/09/2022.
//

import SwiftUI

struct coworkDisplayView: View {
    let place: Place
    var body: some View {
        
            Text(place.name)
            .navigationTitle(Text(place.name))
      
    }
}

struct coworkDisplayView_Previews: PreviewProvider {
    static var previews: some View {
        coworkDisplayView(place: places[0])
    }
}
