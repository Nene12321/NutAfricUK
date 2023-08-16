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
                .font(.custom("Poppins-Medium", size: 18))
            Image("community")
                .resizable()
                .frame(width:312, height: 151)
            Text("Connect with fellow foodies for delightful African recipes, cooking tips, and inspiring ideas. Embrace the rich flavors of Africa, share your culinary creations, and experience a taste of togetherness! Also share, and celebrate 'Five a Day' progress together.")
                .font(.custom("Poppins-Medium", size: 10))
                .padding(.horizontal, 30)
                .foregroundColor(.greyColor)
                .padding(.bottom)
//            Image("fruitbowl")
//            Text("Celebrate Five a Day")
            HStack{
                    VStack{
                        Image("bowlfood")
                            .resizable()
                            .frame(width: 24, height: 24)
                        
                    }
                    .frame(width: 44, height: 44)
                    .background(Color.lightprimaryColor)
                    .cornerRadius(10)
                    .padding(.leading)
                    
                    
                    Text("Recipe Tips/ Food ideas")
                    .padding(.leading)
                    
                    Spacer()
            }
            .frame(maxWidth: .infinity)
            .padding(.vertical)
            .background(Color.white)
            .cornerRadius(10)
            .padding(.horizontal,30)
        
            
            HStack{
                    VStack{
                        Image("fruitbowl")
                            .resizable()
                            .frame(width: 24, height: 24)
                        
                    }
                    .frame(width: 44, height: 44)
                    .background(Color.lightprimaryColor)
                    .cornerRadius(10)
                    .padding(.leading)
                    
                    
                    Text("Celebrate Five a Day")
                    .padding(.leading)
                    
                    Spacer()
                
               
            }
            .frame(maxWidth: .infinity)
            .padding(.vertical)
            .background(Color.white)
            .cornerRadius(10)
            .padding(.horizontal,30)
            .padding(.top, 10)
          
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
