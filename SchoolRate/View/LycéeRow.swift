/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
A single row to be displayed in a list of landmarks.
*/

import SwiftUI

struct LycéeRow: View {
    var lycée: Lycée

    var body: some View {
        VStack {
            lycée.image
                .resizable()
                .blur(radius: 30)
                .frame(width: 360, height: 210)
                .clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 30)))
                .scaledToFit()
            
            Text(lycée.name)
                .font(Font.custom("Bodoni 72", size: 30).bold())
                .foregroundColor(.white)
            
            Text(lycée.state)
                .font(.system(size: 16, weight: .medium, design: .rounded))
                .foregroundStyle(.secondary)
                .offset(x: -142, y: -250)
            
            lycée.image
                .resizable()
                .frame(width: 350, height: 150)
                .clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 30)))
                .offset(y: -230)
            
            Spacer()
        }
    }
}

#Preview {
    Group {
        LycéeRow(lycée: lycées[0])
    }
}
