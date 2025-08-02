//
//  ContentView.swift
//  stick-figure
//
//  Created by YJ Soon on 1/8/25.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            StickMan()
                .stroke(lineWidth: 4)
                .foregroundColor(.black)

            // Add more EmojiViews to decorate your Bobby
            EmojiView(symbol: "😏", size: 100, x: 0,  y: -140)
            EmojiView(symbol:"💵", size: 100, x: 100, y: -50)
            EmojiView(symbol:"🔫", size: 100, x: -100, y: -50)
            EmojiView(symbol:"👕", size: 120, x: -0, y: -40)
            EmojiView(symbol:"🧢", size: 130, x: -20, y: -180)
            EmojiView(symbol:"👖", size: 200, x: 0, y: 100)
            EmojiView(symbol:"👟", size: 130, x: -20, y: 180)
            EmojiView(symbol:"👟", size: 130, x: 20, y: 180)
            
        }
        .frame(width: 200, height: 320)
    }
}


/// Reusable emoji decorator

#Preview {
    ContentView()
}
