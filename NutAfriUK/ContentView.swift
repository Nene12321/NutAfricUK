//
//  ContentView.swift
//  NutAfriUK
//
//  Created by Nene ogba on 23/07/2023.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("applicationstate") var applicationstate: String = "onboarding"
    var body: some View {
        NavigationStack {
        if applicationstate == "login"{
            LoginView()
        }else if applicationstate == "register"{
            SignUpView()
        }else if applicationstate == "home"{
            MainTab()
        }else if applicationstate == "onboarding"{
            DiscoverView()
        }
      
           
        }
    }
}
 
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
