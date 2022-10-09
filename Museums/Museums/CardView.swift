//
//  CardView.swift
//  AcademyXi
//
//  Created by William Lumley on 11/9/2022.
//

import SwiftUI

struct CardView: View {
    let museum: Museum
    
    var body: some View {
        VStack {
            Image(museum.imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(25)
                .shadow(color: .black, radius: 5)

            Text(museum.name)
                .font(.title2)
                .foregroundColor(.black)
        }
        .padding()
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(museum: Museum(name: "Rome", imageName: "Sunset", description: "Testing"))
    }
}
