//
//  DetailView.swift
//  navigation
//
//  Created by Carlos Erices mendez on 05-08-20.
//  Copyright © 2020 Carlos Erices mendez. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    var character: Character
    var body: some View {
        VStack{
            Image(character.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 300)
                .clipped()
            
            Text(character.name)
                .font(.system(.title, design: .rounded))
                .fontWeight(.black)
                .padding(10)
                Spacer()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(character: Character(name: "Calambrito Gato Feo Cochino Yellow", image: "cat"))
    }
}
