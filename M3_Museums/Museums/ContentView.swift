//
//  ContentView.swift
//  AcademyXi
//
//  Created by William Lumley on 6/9/2022.
//

import SwiftUI

struct ContentView: View {

    private let museums = [
        Museum(name: "Rome", imageName: "Rome", description: "In modern historiography, ancient Rome refers to Roman civilization from the founding of the city of Rome in the 8th century BC to the collapse of the Western Roman Empire in the 5th century AD. It encompasses the Roman Kingdom (753–509 BC), Roman Republic (509–27 BC) and Roman Empire (27 BC–476 AD) until the fall of the western empire."),

        Museum(name: "Egypt", imageName: "Egypt", description: "Ancient Egypt was a civilization in ancient Northeast Africa, situated in the Egyptian Nile Valley in the country Egypt. Ancient Egyptian civilization followed prehistoric Egypt and coalesced around 3100 BC (according to conventional Egyptian chronology)[1] with the political unification of Upper and Lower Egypt under Menes (often identified with Narmer).["),

        Museum(name: "Pompeii", imageName: "Pompeii", description: "Pompeii was an ancient city located in what is now the comune of Pompei near Naples in the Campania region of Italy. Pompeii, along with Herculaneum and many villas in the surrounding area (e.g. at Boscoreale, Stabiae), was buried under 4 to 6 m (13 to 20 ft) of volcanic ash and pumice in the eruption of Mount Vesuvius in AD 79."),

        Museum(name: "Greece", imageName: "Greece", description: "Ancient Greece was a northeastern Mediterranean civilization, existing from the Greek Dark Ages of the 12th–9th centuries BC to the end of classical antiquity (c. AD 600), that comprised a loose collection of culturally and linguistically related city-states and other territories."),
    ]

    var body: some View {

        NavigationView {
                        
            VStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16) {
                        ForEach(museums, id: \.self) { museum in
                            NavigationLink(destination: MuseumView(museum: museum)) {
                                CardView(museum: museum)
                                    .frame(width: 300, height: 300)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Browse Museums")
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
