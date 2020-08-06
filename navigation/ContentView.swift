//
//  ContentView.swift
//  navigation
//
//  Created by Carlos Erices mendez on 05-08-20.
//  Copyright © 2020 Carlos Erices mendez. All rights reserved.
//

import SwiftUI
struct ContentView: View {
    
    var characters = [
        Character(name: "Iron Man", image: "ironman"),
        Character(name: "Cat", image: "cat"),
        Character(name: "Capitana Marvel", image: "capitanamarvel"),
        Character(name: "Spiderman", image: "spiderman"),
        Character(name: "Thanos", image: "thanos")
    ]
    
    var body: some View {
        NavigationView{
            List(characters.indices){ idx in
                NavigationLink(destination: DetailView(character: self.characters[idx])){
                    Image(self.characters[idx].image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 50, height: 50)
                        .clipped()
                        .cornerRadius(50)
                    Text(self.characters[idx].image)
                }
                
            }.navigationBarTitle("Lista de contactos", displayMode: .inline)
//            .navigationBarTitle("Lista de contactos")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct Character: Identifiable {
    var id = UUID()
    var name: String
    var image: String
}
