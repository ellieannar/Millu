//
//  ExploreView.swift
//  Millu
//
//  Created by Ellieanna Ross on 2/13/24.
//

import SwiftUI

struct ExploreView: View {
    
    @State var cards: [Card]

    var body: some View {
        ScrollView (.vertical) {
            LazyVStack (alignment: .leading){
                
                Text("Recommended")
                    .font(.custom("JostRoman-Bold", size: 30))
                
                Text("Cards tailored to your child")
                    .font(.custom("Jost-Regular", size: 15))
                
                ScrollView (.horizontal) {
                    LazyHStack {
                        ForEach (cards, id: \.self){ card in
                            if card.categories[0] == .recommended {
                                CardView(card: card)
                            }
                        }
                    }
                    .padding(.top)
                    .padding(.bottom)
                }
                .scrollIndicators(.hidden)
                
                Text("Most Popular")
                    .font(.custom("JostRoman-Bold", size: 30))
                
                Text("What other families are talking about")
                    .font(.custom("Jost-Regular", size: 15))
                
                ScrollView (.horizontal) {
                    LazyHStack {
                        ForEach (cards, id: \.self){ card in
                            if card.categories[0] == .mostPopular {
                                CardView(card: card)
                            }
                        }
                    }
                    .padding(.top)
                    .padding(.bottom)
                }
            }
            .padding()
        }
    }
}

#Preview {
    let modelData = ModelCardData()
    return ExploreView(cards: modelData.cards)
         .environment(modelData)
}
