//
//  RecommendedChannelView.swift
//  NutAfriUK
//
//  Created by Nene ogba on 04/08/2023.
//

import SwiftUI

struct RecommendedChannelView: View {
    var body: some View {
        VStack{
           Text("Recommended African Channels ")
                .font(.custom("Poppins-Medium", size: 18))
                .padding(.bottom)
                
            HStack{
                Text("Chef Nina Bmana")
                    .font(.custom("Poppins-Regular", size: 16))
                    .padding(.horizontal)
                Spacer()
            }
            Divider()
            HStack{
                Text("Mbeki Thani")
                    .font(.custom("Poppins-Regular", size: 16))
                    .padding(.horizontal)
                Spacer()
            }
            Divider()
            HStack{
                Text("Rose Okafor")
                    .font(.custom("Poppins-Regular", size: 16))
                    .padding(.horizontal)
                Spacer()
            }
            Divider()
         Spacer()
        }
    
    }
}

struct RecommendedChannelView_Previews: PreviewProvider {
    static var previews: some View {
        RecommendedChannelView()
    }
}
