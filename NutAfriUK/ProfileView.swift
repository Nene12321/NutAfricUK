//
//  ProfileView.swift
//  NutAfriUK
//
//  Created by Nene ogba on 04/08/2023.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack{
            Text("Profile")
                .font(.custom("Poppins-Medium", size: 17))
            Image("imagelady")
                .resizable()
                .frame(width:280, height: 283)
            Text("Nene Ogba")
                .font(.custom("Poppins-Regular", size: 25))
            Text("Food Blogger")
                .font(.custom("Poppins-Regular", size: 16))
                .foregroundColor(.greyColor)
            VStack{
                HStack{
                   Image("star")
                        .resizable()
                        .frame(width:22, height: 23)
                        .padding(.horizontal)
                    Text("Food events I can attend")
                        .font(.custom("Poppins-Regular", size: 17))
                    
                    Spacer()
                
                }
                Divider()
            }
            VStack{
                HStack{
                   Image("paper")
                        .resizable()
                        .frame(width:22, height: 23)
                        .padding(.horizontal)
                    Text("Learn to Cook")
                        .font(.custom("Poppins-Regular", size: 17))
                    
                    Spacer()
                }
                Divider()
            }
            VStack{
                HStack{
                   Image("logout")
                        .resizable()
                        .frame(width:22, height: 23)
                        .padding(.horizontal)
                    Text("Log Out")
                        .font(.custom("Poppins-Regular", size: 17))
                    
                    Spacer()
                }
                Divider()
                
            }
            
            
            Spacer()
            
        }
       
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
