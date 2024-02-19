//
//  MilluAppApp.swift
//  MilluApp
//
//  Created by Ellieanna Ross on 2/19/24.
//

import SwiftUI

@main
struct MilluApp: App {
    var body: some Scene {
        WindowGroup {
            let modelData = ModelCardData()
            ContentView(cards: modelData.cards)
                 .environment(modelData)
        }
    }
}
