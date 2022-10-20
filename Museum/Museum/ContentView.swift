//
//  ContentView.swift
//  AcademyXi
//
//  Created by William Lumley on 6/9/2022.
//

import SwiftUI

struct ContentView: View {

    private let museums = [
        Museum(name: "Rome", imageName: "AncientRome", description: "Ancient Rome refers to Roman civilization from the founding of the city of Rome in the 8th century BC to the collapse of the Western Roman Empire in the 5th century AD. This exhibition will teach you about life in Ancient Rome. You will be lead through different activies where you will learn about Ancient Rome.  You can try making Roman coins, trying on Roman armour and learn about Roman Food"),

        Museum(name: "Greece", imageName: "GreekMythology", description: "This exhibition on ancient Greek pottery features a variety of ancient Greek pots and vases, dating back to the 8th century BCE. The exhibition highlights the different styles of pottery that were popular in ancient Greece, as well as the different techniques used to create these works of art - hand-painting, slip-painting, and incising."),

        Museum(name: "Pompeii", imageName: "Pompeii", description: " Pompeii, along with Herculaneum, was buried under 4-6m of volcanic ash and pumice in the eruption of Mount Vesuvius in AD 79.  The exhibition includes items found during the excavation of the city."),

        Museum(name: "Egypt", imageName: "Egypt", description: "The Mummification process in Egypt was an elaborate affair and steeped in ceremony.  This exhibition looks at the mummification process and tools that were used.  We also explore who was mummified and their journey to the afterlife."),
        
       // Museum(name: <#T##String#>, imageName: <#T##String#>, description: <#T##String#>)
    ]

    var body: some View {

        NavigationView {
            VStack{
                ZStack {
                    Image("EgyptMummy")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .ignoresSafeArea()
                    VStack {
                        Spacer()
                        Text("Museum of Antiquities")
                            .foregroundColor(Color.white)
                            .font(Font.custom("Papyrus", size:30))
                            .padding()
                    }
                }
                
                VStack(alignment: .leading) {
                    Text("Current Exhibitions")
                        .font(.system(size:20, design:.rounded))
                        .foregroundColor(Color.white)
                        .padding(10)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 1) {
                            ForEach(museums, id: \.self) { museum in
                                NavigationLink(destination: MuseumView(museum: museum)) {
                                    CardView(museum: museum)
                                        .frame(width: 180, height: 185)
                                }
                            }
                        }
                    }
                }
            }
            .background(LinearGradient(
                gradient: Gradient(colors: [Color.black, Color(red: 44/255, green:54/255, blue:57/255)]),
                startPoint: .top, endPoint: .bottom))
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
