//
//  ContentView.swift
//  MilluApp
//
//  Created by Ellieanna Ross on 2/19/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var cards: [Card]
    @State private var tab = 2
    
    var body: some View {
        TabView (selection: $tab) {
            ExploreView(cards: cards)
                .tabItem {
                    Label("Explore", systemImage: "magnifyingglass")
                }.tag(1)
            
            HomeView(cards: cards, firstName: "Ellieanna")
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }.tag(2)
           
            //TODO: Create a profile view here
            ScheduledActivityView()
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }.tag(3)
        }
        
    }
}

#Preview {
    let modelData = ModelCardData()
    return ContentView(cards: modelData.cards)
         .environment(modelData)
}
