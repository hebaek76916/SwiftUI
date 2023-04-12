//
//  Model.swift
//  BarChart
//
//  Created by Ganesh on 12/04/23.
//

struct MonthDataPoint:Identifiable{
    var id:String {month.rawValue}
    let month: Month
    var value:Double
    var name:String{
        month.rawValue.capitalized
    }
}


struct DataSet{
    static let dublin = [0.65,0.50,0.55,0.55,0.60,0.65,0.55,0.75,0.60,0.80].monthDataPoint()
    static let milan  = [0.65,0.65,0.80,0.80,0.95,0.65,0.70,1.00,1.00,0.60].monthDataPoint()
    static let london = [0.55,0.40,0.40,0.45,0.50,0.45,0.45,0.50,0.50,0.70].monthDataPoint()
}
