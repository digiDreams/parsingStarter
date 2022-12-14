//
//  listView.swift
//  parsingStarter
//
//  Created by Apprenant 16 on 26/09/2022.
//

import SwiftUI

struct listView: View {
    var body: some View {
        

            List(places){
                place in
                NavigationLink(destination: coworkDisplayView(place: place)) {
                    VStack(alignment: .leading){
                        Text(place.name.uppercased()) //.sorted()
                            .bold()
                        Text(place.address)
//                        Text("Type d'√©tablissement: \(place.type.rawValue)")
                    } //.navigationTitle(place.name)
                }
                
            }
        
        
    }
}

struct listView_Previews: PreviewProvider {
    static var previews: some View {
        listView()
    }
}
