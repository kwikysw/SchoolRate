/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
A view showing the details for a landmark.
*/

import SwiftUI

struct LycéeDétail: View {
    var lycée: Lycée

    var body: some View {
        ScrollView {
            MapView(coordonnée: lycée.coordonnéesLieu)
                .frame(height: 300)

            CircleImage(image: lycée.image)
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                Text(lycée.name)
                    .font(.title)

                HStack {
                    Text("lycée.category")
                    Spacer()
                    Text(lycée.state)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)

                Divider()

                Text("À propos de  \(lycée.name)")
                    .font(.title2)
                Text(lycée.description)
            }
            .padding()
        }
        .navigationTitle(lycée.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    LycéeDétail(lycée: lycées[0])
}
