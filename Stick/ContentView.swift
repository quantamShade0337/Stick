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

/// Basic stickman
struct StickMan: Shape {
    func path(in rect: CGRect) -> Path {
        var p = Path()

        // Head
        let headRadius: CGFloat = 30
        let headCentre = CGPoint(x: rect.midX, y: rect.minY + headRadius)
        p.addEllipse(in: CGRect(
            x: headCentre.x - headRadius,
            y: headCentre.y - headRadius,
            width: headRadius * 2,
            height: headRadius * 2))

        // Body line
        let neck = CGPoint(x: headCentre.x, y: headCentre.y + headRadius)
        let hip = CGPoint(x: headCentre.x, y: neck.y + 90)
        p.move(to: neck); p.addLine(to: hip)

        // Arms
        let leftHand  = CGPoint(x: neck.x - 60, y: neck.y + 40)
        let rightHand = CGPoint(x: neck.x + 60, y: neck.y + 40)
        p.move(to: CGPoint(x: neck.x, y: neck.y + 30))
        p.addLine(to: leftHand)
        p.move(to: CGPoint(x: neck.x, y: neck.y + 30))
        p.addLine(to: rightHand)

        // Legs
        let leftFoot  = CGPoint(x: hip.x - 45, y: hip.y + 90)
        let rightFoot = CGPoint(x: hip.x + 45, y: hip.y + 90)
        p.move(to: hip); p.addLine(to: leftFoot)
        p.move(to: hip); p.addLine(to: rightFoot)

        return p
    }
}

/// Reusable emoji decorator
struct EmojiView: View {
    let symbol: String
    let size: CGFloat
    let x: CGFloat
    let y: CGFloat
    var body: some View {
        Text(symbol)
            .font(.system(size: size))
            .offset(x: x, y: y)
    }
}


#Preview {
    ContentView()
}
