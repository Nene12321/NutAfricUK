//
//  HealthyFoodView.swift
//  NutAfriUK
//
//  Created by Nene ogba on 23/07/2023.
//

import SwiftUI

struct AfricanFoodView: View {
    var body: some View {
        VStack{
            Text("African Food")
                .font(.custom("Poppins-Medium", size: 12))
                .padding(.bottom, 20)
                .padding(.top,10)
            Text("Hello Nene,")
                .font(.custom("Poppins-Medium", size: 23))
                .foregroundColor(.primaryColor)
                .padding(.bottom, 20)
                .padding(.top,10)
            HStack {
              Image("indomie")
                    .resizable()
                    .frame(width:78, height: 70)
                
                Text("indomie Noodles")
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: 83)
            .background(Color.white)
            .overlay {
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color.grayColor, lineWidth: 1)
            }
            
            Spacer()
            
        }
        
        .padding()
    
    }
    
}

struct HealthyFoodView_Previews: PreviewProvider {
    static var previews: some View {
        AfricanFoodView()
    }
}
