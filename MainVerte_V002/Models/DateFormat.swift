//
//  DateFormater.swift
//  MainVerte_V002
//
//  Created by Apprenant89 on 13/09/2024.
//

import Foundation

class DateFormat {
  
    func frenchToEnglishFormat(date : String) -> String {
        if date.count == 10 {
            let dateArray = date.components(separatedBy: "/")
            let newDate = dateArray[1] + dateArray[0] + dateArray[2]
            return newDate
        } else {
           return "Invalid Date"
        }
    }
}

