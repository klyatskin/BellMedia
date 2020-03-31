//
//  Question1.swift
//  BellMedia
//
//  Created by Konstantin Klyatskin on 2020-03-30.
//  Copyright © 2020 Konstantin Klyatskin. All rights reserved.
//

import Foundation


func day(S: String, K: Int) -> String {
    let days = ["Mon","Tue","Wed","Thu","Fri","Sat","Sun"]
    var returnDay = ""
    for (i, day) in days.enumerated() {
        if (day.capitalized == S.capitalized) {
            let index = (i+K) % days.count
            returnDay = days[index]
        }
    }
    return returnDay
}
