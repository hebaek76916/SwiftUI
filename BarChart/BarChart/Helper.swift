//
//  Helper.swift
//  BarChart
//
//  Created by Ganesh on 12/04/23.
//

import Foundation

extension Array where Element == Double{
    func  monthDataPoint () -> [MonthDataPoint]{
        zip(Month.allCases, self).map(MonthDataPoint.init)
    }
}
