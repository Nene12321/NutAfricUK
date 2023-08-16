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
                .font(.custom("Poppins-Medium", size: 18))
            Image("imagelady")
                .resizable()
                .frame(width:160, height: 160)
                .cornerRadius(80)
            
            Text("Nene Ogba")
                .font(.custom("Poppins-Regular", size: 25))
            Text("Food Blogger")
                .font(.custom("Poppins-Regular", size: 16))
                .foregroundColor(.greyColor)
                .padding(.bottom, 30)
            
            VStack{
                HStack{
                    VStack{
                        Image("star")
                            .resizable()
                            .frame(width:22, height: 23)
                            .padding(.horizontal)
                    }
                    .frame(width: 48, height: 48)
                    .background(Color.lightprimaryColor)
                    .cornerRadius(10)
                    .padding(.leading)
                    Text("Food events I can attend")
                        .font(.custom("Poppins-Regular", size: 17))
                        .padding(.leading)
                       
                    
                    Spacer()
                
                }
                .padding(.bottom, 10)
                .padding(.top, 10)
                Divider()
            }
            
            VStack{
                HStack{
                    VStack{
                        Image("paper")
                            .resizable()
                            .frame(width:22, height: 23)
                            .padding(.horizontal)
                    }
                    .frame(width: 48, height: 48)
                    .background(Color.lightprimaryColor)
                    .cornerRadius(10)
                    .padding(.leading)
                    Text("Learn to Cook")
                        .font(.custom("Poppins-Regular", size: 17))
                        .padding(.leading)
                    
                    Spacer()
                }
                .padding(.bottom, 10)
                .padding(.top, 10)
                Divider()
            }
            VStack{
                HStack{
                    VStack{
                        Image("logout")
                            .resizable()
                            .frame(width:22, height: 23)
                            .padding(.horizontal)
                    }
                    .frame(width: 48, height: 48)
                    .background(Color.lightprimaryColor)
                    .cornerRadius(10)
                    .padding(.leading)
                    Text("Log Out")
                        .font(.custom("Poppins-Regular", size: 17))
                        .padding(.leading)
                    
                    
                    Spacer()
                }
                .padding(.top, 10)
                .padding(.bottom, 10)
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
