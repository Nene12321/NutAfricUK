//
//  CommunityChatView.swift
//  NutAfriUK
//
//  Created by Nene ogba on 16/08/2023.
//

import SwiftUI

struct CommunityChatView: View {
    @ObservedObject var viewModel:CommunityViewModel = CommunityViewModel()
    var community:CommunityModel?
    @ObservedObject var profileViewModel:ProfileViewModel = ProfileViewModel()
    @State var text = ""
    var body: some View {
        VStack{
            Text(community?.title ?? "Community Chat")
                .font(.custom("Poppins-Medium", size: 17))
                .padding(.bottom,20)
            
            ForEach (viewModel.messages){ message in
                if message.userid == viewModel.getUserId(){
                    VStack{
                        HStack{
                            Spacer()
                            Text("Me" )
                                .font(.custom("Poppins-Regular", size: 14))
                            
                        }.padding(.trailing)
                        HStack{
                            Spacer()
                            Text(message.text )
                                .font(.custom("Poppins-Regular", size: 10))
                                .foregroundColor(.greyColor)
                        }
                        .padding(.trailing)
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.vertical)
                    .background(Color.white)
                    .cornerRadius(10)
                    .padding(.horizontal,30)
                }else{
                    VStack{
                        HStack{
                            Text(message.name.capitalized )
                                .font(.custom("Poppins-Regular", size: 14))
                            Spacer()
                        }.padding(.leading)
                        HStack{
                            Text(message.text )
                                .font(.custom("Poppins-Regular", size: 10))
                                .foregroundColor(.greyColor)
                            
                            
                            Spacer()
                        }
                        .padding(.leading)
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.vertical)
                    .background(Color.white)
                    .cornerRadius(10)
                    .padding(.horizontal,30)
                }
            }
            
            Spacer()
            
            VStack{
                HStack{
                    TextField("", text: $text)
                        .frame(height: 45)
                        .keyboardType(.emailAddress)
                    
                        .autocapitalization(.none).placeholder(when: text.isEmpty) {
                            Text("   send a message")
                                .font(.custom("Poppins-Regular", size: 10))
                                .foregroundColor(.gray)
                        }
                        .padding(.horizontal)
                    
                    Button {
                        sendMessage()
                    } label: {
                        Image(systemName: "paperplane.circle.fill")
                            .resizable()
                            .foregroundColor(.black)
                            .frame(width: 30, height: 30)
                           
                    }
                    .padding(.trailing)

                }
            }
            .frame(maxWidth: .infinity, maxHeight: 80)
            .background(Color.white)
            
        }
        .background(Color.grayColorTwo)
        .onAppear{
            viewModel.fetchCommunityMessages(communityid: community?.id ?? "")
            profileViewModel.fetchUser()
        }
    }
    
    func sendMessage(){
        if text != ""{
            viewModel.sendMessages(text: text, communityid: community?.id ?? "", name: profileViewModel.user?.firstname.capitalized ?? "")
            text = ""
        }
    }
}

struct CommunityChatView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityChatView()
    }
}
