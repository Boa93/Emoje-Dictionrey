//
//  EmojeDetals.swift
//  Emoje dic
//
//  Created by Boa on 14/05/2023.
//

import SwiftUI

struct EmojeDetals: View {
    var emoje1: Eemojes
    
    var body: some View {
        VStack {
            Text(emoje1.symbol)
                .font(.system(size: 300))
            Text(emoje1.devintion)
                .font(.title)
            Text(String(repeating: "⭐️", count: emoje1.rating))
                .font(.largeTitle)
        }
    }
}

struct EmojeDetals_Previews: PreviewProvider {
    static var previews: some View {
        EmojeDetals(emoje1: Eemojes(id: UUID(), symbol: "🏎️", devintion: "speed", rating: 3))
    }
}
