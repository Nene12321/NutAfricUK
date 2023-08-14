//
//  CommunityView.swift
//  NutAfriUK
//
//  Created by Nene ogba on 26/07/2023.
//

import SwiftUI

struct CommunityView: View {
    var body: some View {
        VStack{
          Text("Community")
                .font(.custom("Poppins-Medium", size: 16))
            Image("community")
                .resizable()
                .frame(width:312, height: 151)
            Text("Connect with fellow foodies for delightful African recipes, cooking tips, and inspiring ideas. Embrace the rich flavors of Africa, share your culinary creations, and experience a taste of togetherness! Also share, and celebrate 'Five a Day' progress together.")
                .font(.custom("Poppins-Medium", size: 10))
                .padding(.horizontal)
                .foregroundColor(.greyColor)
            HStack{
                Image("bowlfood")
                Text("Recipe Tips/ Food ideas")
                    
            }
            .padding(.trailing,70)
            HStack{
                Image("fruitbowl")
                Text("Celebrate Five a Day")
            }
            .padding(.trailing,70)
            Divider()
                .padding(.horizontal)
            Spacer()
            
        }
        
        .background(Color.grayColorTwo)
    }
}

struct CommunityView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityView()
    }
}
