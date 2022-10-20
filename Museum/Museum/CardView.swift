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
       
        ZStack {
            VStack {
                Image(museum.imageName)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(15)
                    
                    Text(museum.name)
                        .foregroundColor(.white)
                        .font(.system(size:20, design:.rounded))
            }
            .padding(.bottom)
        }
        .background(Color(red:63/255, green:78/255, blue:79/255))
        .cornerRadius(15)
        .padding(10)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        //this is a preview - it displays in the preview pane but won't be seen when you run the app
        CardView(museum: Museum(name: "Rome", imageName: "Sunset", description: "Testing"))
    }
}
