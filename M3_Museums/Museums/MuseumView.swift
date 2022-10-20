//
//  MuseumView.swift
//  AcademyXi
//
//  Created by William Lumley on 12/9/2022.
//

import SwiftUI

struct MuseumView: View {
    let museum: Museum

    var body: some View {

        ScrollView {
            VStack {
                Image(museum.imageName)
                    .resizable()
                    .scaledToFit()

                Text(museum.name)
                    .font(.largeTitle)

                Spacer()

                Text(museum.description)
                    .padding()
            }
        }

    }
}

struct MuseumView_Previews: PreviewProvider {
    static var previews: some View {
        MuseumView(museum: Museum(name: "Rome", imageName: "Rome", description: "test"))
    }
}
