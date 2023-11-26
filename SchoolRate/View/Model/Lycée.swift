/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
A representation of a single landmark.
*/

import Foundation
import SwiftUI
import CoreLocation

struct Lycée: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var category: String
    var state: String
    var description: String
    var city: String

    private var imageName: String
    var image: Image {
        Image(imageName)
    }

    private var coordonnées: Coordonnées
    var coordonnéesLieu: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordonnées.latitude,
            longitude: coordonnées.longitude)
    }

    struct Coordonnées: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
