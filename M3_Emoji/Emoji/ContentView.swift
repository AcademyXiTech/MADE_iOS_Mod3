//
//  ContentView.swift
//  AcademyXi
//
//  Created by William Lumley on 6/9/2022.
//

import SwiftUI

struct ContentView: View {

    enum Emotion {
        case happy
        case sad
        case angry
        case scared

        var title: String {
            switch self {
            case .happy:
                return "Happy"
            case .sad:
                return "Sad"
            case .angry:
                return "Angry"
            case .scared:
                return "Scared"
            }
        }

        var emoji: String {
            switch self {
            case .happy:
                return "😀"
            case .sad:
                return "😢"
            case .angry:
                return "😡"
            case .scared:
                return "😱"
            }
        }
    }

    var emotions: [Emotion] = [.happy, .sad, .angry, .scared]
    @State private var selectedEmotion: Emotion = .happy

    var body: some View {
        VStack {
            Picker("Please choose a color", selection: $selectedEmotion) {
                ForEach(emotions, id: \.self) { emotion in
                    Text(emotion.title)
                }
            }
            .pickerStyle(.wheel)

            Text(selectedEmotion.emoji)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
