//
//  CommunityModel.swift
//  NutAfriUK
//
//  Created by Nene ogba on 25/08/2023.
//

import Foundation
import Firebase

struct CommunityModel:Identifiable{
    let title:String
    let image:String
    let id: String
}

struct CommunityMessageModel:Identifiable{
    let name:String
    let text:String
    let id: String
    let userid: String
    let time: Timestamp
}

