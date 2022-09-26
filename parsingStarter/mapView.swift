//
//  mapView.swift
//  parsingStarter
//
//  Created by Apprenant 16 on 26/09/2022.
//

import SwiftUI
import MapKit





struct mapView: View {
    
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 48.85571241521854, longitude: 2.351696387064438),
                                                      span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    var body: some View {
        
    
            Map(coordinateRegion: $mapRegion, annotationItems: places) { place in
                MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: place.lat, longitude: place.lon)) {
                    NavigationLink {
                        Text(place.name)
                        
                    } label: {
                        
                        Image(systemName: "network")
                            .bold()
                            .foregroundColor(.red)
                       
                    }      //    .navigationTitle(place.name)
                    
                }
            }.ignoresSafeArea()
        
        
        
    }
    
}


struct mapView_Previews: PreviewProvider {
    static var previews: some View {
        mapView()
    }
}
