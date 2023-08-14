//
//  HealthySwapView.swift
//  NutAfriUK
//
//  Created by Nene ogba on 26/07/2023.
//

import SwiftUI

struct HealthySwapView: View {
    var body: some View {
        VStack{
            Text("African Food")
                .font(.custom("Poppins-Medium", size: 12))
                .padding(.bottom, 20)
                .padding(.top,10)
            Text("Alternatives to replace less healthy food choices in traditional African recipes")
                .font(.custom("Poppins-Regular", size: 16))
                .foregroundColor(.greyColor)
                .padding(.horizontal)
                Text("Beans")
                .padding(.top)
                .padding(.trailing,300)
            
            Divider()
                .padding(.horizontal)
            
            Spacer()
            
        }
        
    }
}

struct HealthySwapView_Previews: PreviewProvider {
    static var previews: some View {
        HealthySwapView()
    }
}
