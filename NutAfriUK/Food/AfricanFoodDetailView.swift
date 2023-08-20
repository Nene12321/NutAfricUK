//
//  HealthyFoodView2.swift
//  NutAfriUK
//
//  Created by Nene ogba on 24/07/2023.
//

import SwiftUI

struct AfricanFoodDetailView: View {
    var food:FoodModel?
    var body: some View {
        VStack{
            Text(food?.name ?? "")
                .font(.custom("Poppins-Medium", size: 18))
                .padding(.bottom, 20)
                .padding(.top,10)
            Image(food?.image ?? "")
                .resizable()
                .frame(width:160, height: 204)
                .padding(.bottom)
    
            Text(food?.description ?? "")
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
            Text(food?.stores ?? "")
                .foregroundColor(.greyColor)
                .padding(.horizontal)
                 Spacer()
                 
                 
        }
    }
}

struct AfricanFoodDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AfricanFoodDetailView()
    }
}
