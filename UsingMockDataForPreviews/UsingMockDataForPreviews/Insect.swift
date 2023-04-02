//
//  Insect.swift
//  UsingMockDataForPreviews
//
//  Created by ganeshrajugalla on 02/04/23.
//

import Foundation


struct Insect : Decodable, Identifiable{
    var id: Int
    var imageName:String
    var name:String
    var habitat:String
    var description:String
}

let testInsect = Insect(id: 1, imageName: "grasshopper", name: "grass", habitat: "rocks", description: "none")

