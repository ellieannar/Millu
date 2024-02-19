//
//  Tag.swift
//  Millu
//
//  Created by Ellieanna Ross on 2/3/24.
//

import SwiftUI

struct TagView: View {
    
    var card: Card
    var index: Int

    var body: some View {
        Text("\(card.getTagType(index: index))")
            .padding(5)
            .background(getColor(tag: card.tags[index]))
            .cornerRadius(30)
            .foregroundColor(.white)
            .font(.caption)
    }
    
    //TODO: Move this into a separate file
    func getColor(tag: Card.Tag) -> Color {
        switch tag {
        case .criticalThinking:
            return Color.red
        case .creativity:
            return Color.green
        case .mindfulness:
            return Color.blue
        case .leadership:
            return Color.purple
        case .empathy:
            return Color.yellow
        case .problemSolving:
            return Color.orange
        }
    }
}

#Preview {
    let modelData = ModelCardData()
    return TagView(card: modelData.cards[0], index: 0)
         .environment(modelData)
}


