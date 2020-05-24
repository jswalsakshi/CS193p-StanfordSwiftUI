//
//  ContentView.swift
//  CS193p-StanfordSwiftUI
//
//  Created by Sakshi Jaiswal on 24/05/20.
//  Copyright © 2020 Sakshi Jaiswal. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack() {
            ForEach(0..<4) { index in
                CardView(isFaceUp: true)
            }
        }
        .padding()
        .foregroundColor(.orange)
    }
}


struct CardView: View {
    var isFaceUp: Bool
    var body: some View {
        ZStack() {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill()
            } else {
                Text("👻")
                RoundedRectangle(cornerRadius: 10.0).stroke()
            }
        }
    }
}


























struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
