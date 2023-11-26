/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
A single row to be displayed in a list of landmarks.
*/

import SwiftUI

struct LycéeRow: View {
    var lycée: Lycée

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            ZStack(alignment: .topLeading) {
                // MARK: Background image with blur effect
                lycée.image
                    .resizable()
                    .blur(radius: 30)
                    .frame(width: 360, height: 210)
                    .clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 30)))
                    .scaledToFit()
                
                VStack(alignment: .leading, spacing: 4) {
                    // MARK: Text elements
                    Text(lycée.state)
                        .font(.system(size: 14, weight: .medium, design: .rounded))
                        .foregroundColor(.secondary)
                        .padding(.leading, 16)
                        .padding(.top, 14)
                    
                    Text(lycée.name)
                        .font(Font.custom("Bodoni 72", size: 24).bold())
                        .foregroundColor(.white)
                        .padding(.leading, 16)
                }
                .padding(.bottom, 8)
            }
            
            Spacer()
            
            // MARK: Foreground image
            lycée.image
                .resizable()
                .frame(width: 350, height: 140)
                .clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 30)))
                .offset(x: 5, y: -151) // -105
        }
        .frame(width: 360, height: 340)
        .clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 30)))
    }
}

#Preview {
    Group {
        LycéeRow(lycée: lycées[1])
    }
}
