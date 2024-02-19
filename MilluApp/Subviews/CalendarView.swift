//
//  CalendarView.swift
//  Millu
//
//  Created by Ellieanna Ross on 2/9/24.
//

import SwiftUI

struct CalendarView: View {
    
    @State var selectedDate = Date()
    
    var body: some View {
        VStack() {
            DatePicker("Select Date", selection: $selectedDate, displayedComponents: [.date])
                    .padding(.horizontal)
                    .datePickerStyle(.graphical)
                    
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
    CalendarView()
}
