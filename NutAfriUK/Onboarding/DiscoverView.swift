//
//  DiscoverView.swift
//  NutAfriUK
//
//  Created by Nene ogba on 04/08/2023.
//

import SwiftUI

struct DiscoverView: View {
    var body: some View {
        VStack{
          Image("discoverr")
                .resizable()
                .frame(width:280, height: 283)
                .padding(.top,100)
            Text("Discover")
                .font(.custom("Poppins-SemiBold", size: 25))
                .padding(.bottom, 1)
               
            Text("Find African foods & ")
                .font(.custom("Poppins-Regular", size: 17))
                .foregroundColor(.greyColor)
                
            Text("healthy alternative available in the UK")
                .font(.custom("Poppins-Regular", size: 17))
                .foregroundColor(.greyColor)
              
            Spacer()
                
            HStack{
                Button {
                    
                } label: {
                    Text("SKIP")
                        .font(.custom("Poppins-Regular", size: 12))
                        .foregroundColor(.black)
                        
                }
                Spacer()
                Image("splashdotone")
                    .resizable()
                    .frame(width: 50,height: 10)
                Spacer()
                
                Button {
                    
                } label: {
                    Text("NEXT")
                        .font(.custom("Poppins-Regular", size: 12))
                        .foregroundColor(.black)
                        
                }

            }
            .padding(.horizontal)
        }
        
    }
}

struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
    }
}
