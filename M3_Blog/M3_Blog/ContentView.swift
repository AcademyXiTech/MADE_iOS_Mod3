//
//  ContentView.swift
//  M3_Blog
//
//  Created on 14/9/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("TRAVEL GUIDE").font(.title)
                    .fontWeight(.heavy)
                    .padding(.top)
                ZStack {
                    Image("Russia1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    Text("Moscow, Russia")
                        .fontWeight(.heavy)
                        .font(.system(size: 25, design: .rounded))
                        .padding()
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                        .opacity(0.8)
                }
                .frame(width: 350, height: 300)
                .cornerRadius(15)
                .overlay( RoundedRectangle(cornerRadius: 15)
                .stroke(Color.gray))
                .padding(5)
            
                ZStack {
                    Image("Russia2")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    Text("St Petersburg, Russia")
                        .fontWeight(.heavy)
                        .font(.system(size: 25, design: .rounded))
                        .padding()
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                        .opacity(0.8)
                }
                .frame(width: 350, height: 300)
                .cornerRadius(15)
                .overlay( RoundedRectangle(cornerRadius: 15)
                .stroke(Color.gray))
                .padding(5)
            
                ZStack {
                    Image("Baltics")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    Text("Estonia")
                        .fontWeight(.heavy)
                        .font(.system(size: 25, design: .rounded))
                        .padding()
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                        .opacity(0.8)
                }
                .frame(width: 350, height: 300)
                .cornerRadius(15)
                .overlay( RoundedRectangle(cornerRadius: 15)
                .stroke(Color.gray))
                .padding(5)

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
