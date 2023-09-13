//
//  foodSwapView.swift
//  NutAfriUK
//
//  Created by Nene ogba on 25/07/2023.
//

import SwiftUI

struct HealthySwapDetailView: View {
    var food:HealthySwapModel?
    var body: some View {
        VStack{
            Text("Healthy Swaps")
                .font(.custom("Poppins-Medium", size: 18))
            HStack{
                Image(food?.itemimage ?? "")
                    .resizable()
                    .frame(width:140, height: 140)
                
                Spacer()
                Image(food?.alternativeimage ?? "")
                    .resizable()
                    .frame(width:140, height: 140)
                
            }
            .padding(.horizontal, 30)
            HStack{
                Text(food?.item ?? "")
                    .padding(.top)
                    .padding(.leading, 60)
                Spacer()
                Text(food?.alternative ?? "")
                    .padding(.trailing,70)
            }
            Text(food?.description ?? "")
                .padding()
                .foregroundColor(.greyColor)
            HStack{
                Text("Where can I get Lentils")
                    .padding(.leading)
                Spacer()
                    
            }
            Text(food?.stores ?? "")
                .foregroundColor(.greyColor)
                .padding()
            Spacer()
        }
    }
}

struct foodSwapView_Previews: PreviewProvider {
    static var previews: some View {
        HealthySwapDetailView()
    }
}
