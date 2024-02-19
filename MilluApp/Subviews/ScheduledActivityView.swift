//
//  ScheduledActivityView.swift
//  Millu
//
//  Created by Ellieanna Ross on 2/9/24.
//

import SwiftUI

struct ScheduledActivityView: View {
    var body: some View {
        HStack {
            Image(systemName: "dice")
                .font(.largeTitle)
                .padding(10)
                .foregroundStyle(.blue) //change color
                .background(.blue)  //change color
                .clipShape(
                    .rect (
                    topLeadingRadius: 20,
                    bottomLeadingRadius: 20,
                    bottomTrailingRadius: 20,
                    topTrailingRadius: 20
                    )
                )
            
            VStack (alignment: .leading) {
                Text("Activity")
                    .font(.title)
                
                Text("4 pm to 4:15 pm")
                    .font(.caption)
            }
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Image(systemName: "ellipsis")
                    .rotationEffect(.degrees(90))
                    .font(.title)
            })
        }
        .padding()
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
    ScheduledActivityView()
}
