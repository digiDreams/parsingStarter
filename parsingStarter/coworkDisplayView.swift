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
        
        VStack {
            Text(place.name.uppercased())
                .bold()
                .padding()
            // AsyncImage API random
//             AsyncImage(url: URL(string: "https://example.com/icon.png"))
               
            
             AsyncImage(url: URL(string: "https://simplon.co/images/logo.svg")) { image in
                 image.resizable()
             .scaledToFit()
             .frame(width: 200, height: 200)
             } placeholder: {
                 ProgressView()
             }
             .frame(width: 50, height: 50)
             
            Text(place.address.uppercased())
                .padding()
            HStack {
                Text("Site:")
                    .bold()
                Text(place.url)
            }.padding()
            Text("WiFi")
            
        }.navigationTitle(Text(place.name))
      
    }
}

struct coworkDisplayView_Previews: PreviewProvider {
    static var previews: some View {
        coworkDisplayView(place: places[0])
    }
}
