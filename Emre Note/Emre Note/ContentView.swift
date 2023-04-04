//
//  ContentView.swift
//  Emre Note
//
//  Created by Emre Hoşer on 28.02.2023.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @EnvironmentObject var dateHolder: DateHolder
    
    var body: some View {
        NavigationView {
            VStack(spacing: 1){
                DateScrollerView()
                    .environmentObject(dateHolder)
                    .padding()
                dayOfWeekStack
                calendarGrid
            }
        }
    }
    
    var dayOfWeekStack: some View {
        HStack(spacing: 1) {
            Text("Sun").dayOfWeek()
            Text("Mon").dayOfWeek()
            Text("Tue").dayOfWeek()
            Text("Wed").dayOfWeek()
            Text("Thu").dayOfWeek()
            Text("Fri").dayOfWeek()
            Text("Sat").dayOfWeek()
        }
    }
    
    var calendarGrid: some View {
        VStack(spacing: 1) {
            
            let daysInMonth = CalenderHelper().daysInMonth(dateHolder.date)
            let firstDayOfMonth = CalenderHelper().firstOfMonth(dateHolder.date)
            let startingSpaces = CalenderHelper().weekDay(firstDayOfMonth)
            let prevMonth = CalenderHelper().minusMonth(dateHolder.date)
            let daysInPrevMonth = CalenderHelper().daysInMonth(prevMonth)
            
            ForEach(0..<6) {
                row in
                HStack(spacing: 1) {
                    ForEach(1..<8) {
                        column in
                        let count = column + (row * 7)
                        NavigationLink(destination: NoteView()) {
                            CalendarCell(count: count, startingSpaces: startingSpaces, daysInMonth: daysInMonth, daysInPrevMonth: daysInPrevMonth)
                                .environmentObject(dateHolder)
                        }
                    }
                }
            }
        }
        .frame(maxHeight: .infinity)
    }
}

private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension Text {
    func dayOfWeek() -> some View {
        self.frame(maxWidth: .infinity)
            .padding(.top, 1)
            .lineLimit(1)
    }
}
