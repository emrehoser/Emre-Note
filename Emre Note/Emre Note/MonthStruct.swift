//
//  MonthStruct.swift
//  Emre Note
//
//  Created by Emre Hoşer on 4.03.2023.
//

import Foundation

struct MonthStruct {
    var monthType: MonthType
    var dayInt: Int
    func day() -> String {
        return String(dayInt)
    }
}

enum MonthType {
    case Previous
    case Current
    case Next
}
