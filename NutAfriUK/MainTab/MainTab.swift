//
//  MainTab.swift
//  NutAfriUK
//
//  Created by Nene ogba on 09/09/2023.
//

import SwiftUI

struct MainTab: View {
    @ObservedObject var viewModel:ProfileViewModel = ProfileViewModel()
    @AppStorage("profile")
    private var profileData:Data = Data()

    var body: some View {
        TabView {
            
            AfricanFoodView()
                .tabItem {
                    Image(systemName: "fork.knife.circle.fill")
                    Text("Foods")
                }
            
            HealthySwapView()
                .tabItem {
                    Image(systemName: "takeoutbag.and.cup.and.straw.fill")
                    Text("HealthySwaps")
                }
            
            CommunityView()
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Community")
                }
            
            
            
            FiveADayView()
                .tabItem {
                    Image(systemName: "carrot.fill")
                    Text("FiveADay")
                }
            
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
        }
        
    }
}

struct MainTab_Previews: PreviewProvider {
    static var previews: some View {
        MainTab()
    }
}
