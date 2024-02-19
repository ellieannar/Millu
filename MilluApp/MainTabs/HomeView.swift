//
//  HomeView.swift
//  Millu
//
//  Created by Ellieanna Ross on 2/9/24.
//

/*
 ["Jost-Regular", "JostRoman-Thin", "JostRoman-ExtraLight", "JostRoman-Light", "JostRoman-Medium", "JostRoman-SemiBold", "JostRoman-Bold", "JostRoman-ExtraBold", "JostRoman-Black"]
 */

import SwiftUI

struct HomeView: View {
    
    @State var cards: [Card]
    var firstName: String
    
    var body: some View {
        ScrollView {
            VStack (alignment: .leading) {
                Text("Good Morning")
                    .font(.custom("Jost-Regular", size: 15))
                
                Text(firstName)
                    .font(.custom("JostRoman-Bold", size: 30))
                
                QOTDCardView(card: cards[0])
                
                Text("Today's Activites")
                    .font(.custom("JostRoman-Bold", size: 30))
                
                ScheduledActivityView()
                
                ScheduledActivityView()
                
                ScheduledActivityView()
                
                Text("Your Calendar")
                    .font(.custom("JostRoman-Bold", size: 30))
                
                CalendarView()
            }
            .padding()
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    let modelData = ModelCardData()
    return HomeView(cards: modelData.cards, firstName: "Ellieanna")
         .environment(modelData)
}
