//
//  ContentView.swift
//  Aula01-d2
//
//  Created by Student on 31/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("caminhao")
                .resizable(resizingMode: .stretch)
                .frame(width: 400, height: 270)
                .padding(.bottom, 8.0)
            ZStack {
                Image("caminhao")
                    .resizable(capInsets: EdgeInsets(), resizingMode: .stretch)
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 250, height: 270)
                    .clipShape(Circle())
                    .padding(.bottom, 20)
                Text("Hackatruck")
                    .fontWeight(.semibold)
                    .foregroundColor(Color.blue)
                    .font(.largeTitle)
                    .padding(.bottom, 150)
            }
            HStack {
                Text("Maker")
                    .font(.title)
                    .foregroundColor(Color.yellow)
                Text("Space")
                    .font(.title)
                    .foregroundColor(Color.red)
            }
                    .frame(width:250, height: 170)
                    .background(.black)
                    
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
