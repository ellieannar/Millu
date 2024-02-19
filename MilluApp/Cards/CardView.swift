//
//  CardView.swift
//  Millu
//
//  Created by Ellieanna Ross on 2/3/24.
//

import SwiftUI

struct CardView: View {
    
    @Environment (ModelCardData.self) var modelData
    @State var card: Card
    
    var body: some View {
        VStack (alignment: .leading) {
            ZStack {
                CardImage(image: card.getImage())
                VStack (spacing: 125) {
                    HStack {
                        TagView(card: card, index: 0)
                            .padding(.leading, 15)
                            .padding(.top, 15)
                        Spacer()
                    }
                    
                    HStack {
                        Spacer()
                        HeartButton(isSet: $card.isFavorite)
                            .padding(.trailing, 5)
                    }
                }

            }
            
            Text(card.title)
                .font(.title)
                .padding(.bottom)
                .padding(.leading, 20)
            Text(card.question)
                .padding(.bottom)
                .padding(.leading, 20)
            
            Text(card.getAgeRange())
                .font(.caption)
                .padding(.leading, 20)
                .padding(.top, 60)
                .padding(.bottom, 20)
                
        }
        .frame(width: 2*UIScreen.main.bounds.width/3)
        .background()
        .clipShape(
            .rect (
            topLeadingRadius: 20,
            bottomLeadingRadius: 20,
            bottomTrailingRadius: 20, topTrailingRadius: 20
            )
        )
        .shadow(radius: 5)
        
    }
}

#Preview {
   let modelData = ModelCardData()
    return CardView(card: modelData.cards[0])
        .environment(modelData)
}
