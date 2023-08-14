//
//  foodSwapView.swift
//  NutAfriUK
//
//  Created by Nene ogba on 25/07/2023.
//

import SwiftUI

struct HealthySwapDetailView: View {
    var body: some View {
        VStack{
            Text("Healthy Swaps")
                .font(.custom("Poppins-Medium", size: 12))
            HStack{
                Image("brownbeans")
                    .resizable()
                    .frame(width:140, height: 140)
                
                Spacer()
                Image("Lentils")
                    .resizable()
                    .frame(width:140, height: 140)
                
            }
            .padding(.horizontal, 30)
            HStack{
                Text("Brown beans")
                    .padding(.top)
                    .padding(.leading, 60)
                Spacer()
                Text("Lentils")
                    .padding(.trailing,70)
            }
            Text("this is a curated list of African foods that makes you feel like you never leave home! very useful for new entrants!")
                .padding()
                .foregroundColor(.greyColor)
            HStack{
                Text("Where can I get Lentils")
                    .padding(.leading)
                Spacer()
                    
            }
            Text("Asda stores,zamzam stores,George stores stores,sainsbury,tesco,zamzam,Morrissons and the others")
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
