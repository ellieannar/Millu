//
//  Card.swift
//  Millu
//
//  Created by Ellieanna Ross on 2/3/24.
//

import Foundation
import SwiftUI

struct Card: Hashable, Codable {
    
    var title: String
    var question: String
    var isFavorite: Bool
    
    var tags: [Tag]
    var categories: [Category]
    
    
    var ageRange: AgeRange
    enum AgeRange: String, CaseIterable, Codable {
        case fivePlus = "fivePlus"
        case sevenPlus = "sevenPlus"
        case tenPlus = "tenPlus"
    }
    
    
    enum Tag: String, CaseIterable, Codable {
        case criticalThinking = "criticalThinking"
        case empathy = "empathy"
        case mindfulness = "mindfulness"
        case leadership = "leadership"
        case creativity = "creativity"
        case problemSolving = "problemSolving"
        
    }
    
    enum Category: String, CaseIterable, Codable {
        case mostPopular = "mostPopular"
        case recommended = "recommended"
    }
    
    func getTagType (index: Int) -> String {
        switch tags[index] {
        case .criticalThinking:
            return "Critical Thinking"
        case .empathy:
            return "Empathy"
        case .mindfulness:
            return "Mindfulness"
        case .leadership:
            return "Leadership"
        case .creativity:
            return "Creativity"
        case .problemSolving:
            return "Problem Solving"
        }
    }
    
    func getAgeRange () -> String {
        switch ageRange {
        case .fivePlus:
            return "Ages 5+"
        case .sevenPlus:
            return "Ages 7+"
        case .tenPlus:
            return "Ages 10+"
        }
    }
    
    var image: String
    func getImage () -> Image {
        return Image(image)
    }
}

