//
//  CardImage.swift
//  Millu
//
//  Created by Ellieanna Ross on 2/3/24.
//

import SwiftUI

struct CardImage: View {
    
    var image: Image
    
    var body: some View {
        ZStack {
            image
                .resizable()
                .clipShape(
                    .rect (
                        topLeadingRadius: 20
                    )
                )
                .frame(width: 2*UIScreen.main.bounds.width/3, height: 200)
        }
    }
}

#Preview {
    CardImage(image: Image("photo1"))
}
