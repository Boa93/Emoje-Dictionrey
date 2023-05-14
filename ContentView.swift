//
//  ContentView.swift
//  Emoje dic
//
//  Created by Boa on 14/05/2023.
//

import SwiftUI

struct ContentView: View {
    var emojeList = [Eemojes(id: UUID(), symbol: "😀",
                             devintion: "mew", rating: 3),
                     Eemojes(id: UUID(), symbol: "🤣",
                             devintion: "hhhh", rating: 1),
                     Eemojes(id: UUID(), symbol: "😌",
                             devintion: "mmm", rating: 5),
                     Eemojes(id: UUID(), symbol: "🏎️",
                            devintion: "fff", rating: 4)]
    
    var body: some View {
        NavigationView {
            
            List(emojeList) { i in
                NavigationLink(destination: EmojeDetals(emoje1: i)) {
                    Text(i.symbol)
                }
                
                
            }.navigationTitle("Emoje List - \(emojeList.count)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Eemojes: Identifiable {
    var id: UUID
    var symbol: String
    var devintion: String
    var rating: Int
}
