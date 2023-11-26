/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
A view showing a list of landmarks.
*/

import SwiftUI

struct LycéeList: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: -125) {
                    ForEach(lycées) { lycée in
                        NavigationLink(destination: LycéeDétail(lycée: lycée)) {
                            LycéeRow(lycée: lycée)
                        }
                    }
                }
                .padding(.horizontal, 8)
            }
            .navigationTitle("Lycées")
        }
    }
}


#Preview {
    LycéeList()
}
