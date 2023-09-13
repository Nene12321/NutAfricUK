//
//  ProfileView.swift
//  NutAfriUK
//
//  Created by Nene ogba on 04/08/2023.
//

import SwiftUI

struct ProfileView: View {
    @ObservedObject var viewModel:ProfileViewModel = ProfileViewModel()
    @Environment(\.openURL) var openURL
    @AppStorage("applicationstate") var applicationstate: String = "onboarding"
    @State private var isPresenting = false
    var body: some View {
        NavigationStack{
            VStack{
                Text("Profile")
                    .font(.custom("Poppins-Medium", size: 18))
                AsyncImage(url: URL(string: viewModel.user?.image ?? "")) { image in
                    image
                        .resizable()
                        .scaledToFill()
                } placeholder: {
                    Color.gray
                }
                .frame(width:160, height: 160)
                .cornerRadius(80)
                
                Text(viewModel.user?.firstname.capitalized ?? "")
                    .font(.custom("Poppins-Regular", size: 25))
                Text(viewModel.user?.email.capitalized ?? "")
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
                    .onTapGesture {
                        openURL(URL(string: "https://www.eventbrite.co.uk/e/west-african-food-and-drink-meet-up-in-london-tickets-671133276697")!)
                    }
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
                    .onTapGesture {
                        isPresenting = true
                    }
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
                    .onTapGesture {
                        applicationstate = "login"
                    }
                    Divider()
                    
                }
                .fullScreenCover(isPresented: $isPresenting, content: {
                    RecommendedChannelView(isPresenting: $isPresenting)
                })
                .onAppear{
                    viewModel.fetchUser()
                }
                
                
                Spacer()
                
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
