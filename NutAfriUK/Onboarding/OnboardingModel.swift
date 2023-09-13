//
//  OnboardingModel.swift
//  NutAfriUK
//
//  Created by Nene ogba on 10/09/2023.
//

import Foundation
struct OnboardingModel:Identifiable, Hashable{
    let image:String
    let id:Int
    let title:String
    let text:String
    let indicatorimage:String
}
func fiveADayList() -> [FiveADayModel]{
    return [
        FiveADayModel(item: "Why Five a Day?", id: 1),
        FiveADayModel(item: "Record My Progress", id: 2),
        FiveADayModel(item: "My Progress List", id: 3),
        FiveADayModel(item: "Learn More on NHS", id: 4)
    ]
}
func onboardingList() -> [OnboardingModel]{
    return [
    OnboardingModel(image: "discoverr", id: 1, title: "Discover", text: "Find Nigerian foods & healthy alternative available in the UK", indicatorimage: "splashdotone"),
    OnboardingModel(image: "sharerecipes", id: 2, title: "Share recipes", text: "Food Ideas and Recipe exchange with fellow africans in the UK.", indicatorimage: "splashdottwo"),
    OnboardingModel(image: "fruits", id: 3, title: "Five A Day", text: "Nourish your body, embrace  your Five a day every way ", indicatorimage: "splashdotthree")
    
    
    
    
    
    
    
    ]
    
    
    
    
    
}
