//
//  FoodModel.swift
//  NutAfriUK
//
//  Created by Nene ogba on 20/08/2023.
//

import Foundation

struct FoodModel:Identifiable, Codable{
    let name:String
    let description:String
    let stores:String
    let image:String
    let id:String
}
