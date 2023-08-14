//
//  SplashScreenView.swift
//  NutAfriUK
//
//  Created by Nene ogba on 08/08/2023.
//

import SwiftUI

struct SplashScreenView: View {
    var body: some View {
        VStack{
          Text("NUTAFRIKUK")
                .font(.custom("Poppins-Bold", size: 25))
            
                
            
            
            
        }
        
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.primaryColor)
       
        
        
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
