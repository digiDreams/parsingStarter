//
//  coworkDetailView.swift
//  parsingStarter
//
//  Created by Apprenant 16 on 26/09/2022.
//

import SwiftUI


struct coworkDetailView: View {
    @State private var selectDisplay = 0
    var body: some View {
        
        NavigationView {
            VStack {
                Picker("", selection: $selectDisplay) {
                    Text("Map").tag(0)
                    Text("List").tag(1)
                    
                }
                .pickerStyle(.segmented)
                
                if selectDisplay == 0 {
                    mapView()
                } else {
                    listView() // MapView()
                }
                
            }.navigationTitle("Coworking spaces")
        }
    }
}

struct coworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        coworkDetailView()
    }
}
