//
//  HeartButton.swift
//  Millu
//
//  Created by Ellieanna Ross on 2/3/24.
//

import SwiftUI

struct HeartButton: View {
    
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "heart.fill" : "heart")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .red : .gray)
        }
        .font(.title)
    }
}

#Preview {
    HeartButton(isSet: .constant(true))
}
