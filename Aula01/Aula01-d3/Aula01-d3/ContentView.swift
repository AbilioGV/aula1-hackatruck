//
//  ContentView.swift
//  Aula01-d3
//
//  Created by Student on 31/08/23.
//

import SwiftUI

struct ContentView: View {
    @State private var name = "nome"
    @State private var showingAlert = false
    var body: some View {
        ZStack {
            
            Image("caminhao")
                .resizable()
                .scaledToFill()
                .opacity(0.1)
            
            VStack{
                VStack{
                    Text("bem vindo, \(name)!")
                        .font(.largeTitle)
                    //  Spacer()
                    TextField("Digite seu nome", text: $name)
                        .multilineTextAlignment(.center)
                    //.padding(.leading, 160)
                    // .padding(.bottom, 250)
                }
                Spacer()
                
                VStack {
                    Spacer()
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 100)
                        .shadow(radius: 5)
                    Image("truck")
                        .resizable(resizingMode: .stretch)
                        .scaledToFit()
                        .frame(width: 200, height: 100)
                        .shadow(radius: 5)
                    Spacer()
                    }
                Button("Entrar") {
                    showingAlert = true
                }
                .alert("ALERTA!", isPresented: $showingAlert) {
                    Button("OK") {}
                } message: {
                    Text("iniciaremos o desafio agora")
                }
            }
        }
        // .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
