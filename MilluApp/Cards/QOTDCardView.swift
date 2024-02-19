//
//  QOTDCard.swift
//  Millu
//
//  Created by Ellieanna Ross on 2/8/24.
//

import SwiftUI

struct QOTDCardView: View {
    
    @State var card: Card
    var body: some View {

        HStack {
            card.getImage()
                .resizable()
                .frame(width: 100, height: 135)
                
            VStack (alignment: .leading) {
                HStack {
                    Text("Question of the Day ·")
                    Text(Date.now, format: .dateTime.day().month(.wide))
                }
                .font(.caption)
                
                Text(card.question)
                    .font(.title)
                    .padding(.trailing)

                HStack {
                    HeartButton(isSet: $card.isFavorite)
                        .scaleEffect(0.75)
                    ForEach (0...card.tags.count-1, id: \.self) { i in
                        TagView(card: card, index: i)
                            
                    }
                }
            }
            .frame(maxHeight: 100)
            .padding()
        }
        .background()
        .clipShape(
            .rect (
            topLeadingRadius: 20,
            bottomLeadingRadius: 20,
            bottomTrailingRadius: 20,
            topTrailingRadius: 20
            )
        )
        .shadow(radius: 5)
        
    }
}

#Preview {
    let modelData = ModelCardData()
     return QOTDCardView(card: modelData.cards[0])
         .environment(modelData)
}
