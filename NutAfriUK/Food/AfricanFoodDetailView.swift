//
//  HealthyFoodView2.swift
//  NutAfriUK
//
//  Created by Nene ogba on 24/07/2023.
//

import SwiftUI

struct HealthyFoodView2: View {
    var body: some View {
        VStack{
            Text("African Food")
                .font(.custom("Poppins-Medium", size: 12))
                .padding(.bottom, 20)
                .padding(.top,10)
            Image("palmoil")
                .resizable()
                .frame(width:155, height: 204)
                .padding(.bottom)
    
            Text("This is a curated list of African foods that makes you feel like you never left home! very helpful to new entrants!")
                .foregroundColor(.greyColor)
                .padding(.horizontal)
                .padding(.bottom,50)
            HStack{
                
                Text("Where can I get it?")
                    .padding(.horizontal)
                    .foregroundColor(.darkGreyColor)
                    .padding(.bottom)
                Spacer()
            }
            Text("Asda Superstore, Kumasi Shopping Market,Zamzam stores etc")
                .foregroundColor(.greyColor)
                .padding(.horizontal)
                 Spacer()
                 
                 
        }
    }
}

struct HealthyFoodView2_Previews: PreviewProvider {
    static var previews: some View {
        HealthyFoodView2()
    }
}
