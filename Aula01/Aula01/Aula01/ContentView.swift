//
//  ContentView.swift
//  Aula01
//
//  Created by Student on 31/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("caminhao")
                .resizable()
                .frame(width: 350.0, height: 250.0)
                .padding(.bottom)
            
            Text("HackaTruck")
                .font(.title)
                .foregroundColor(Color.blue)
            HStack {
                Text("Maker")
                    .font(.title2)
                    .foregroundColor(Color.yellow)
                Text("Space")
                    .font(.title2)
                    .foregroundColor(Color.red)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
