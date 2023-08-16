//
//  CommunityChatView.swift
//  NutAfriUK
//
//  Created by Nene ogba on 16/08/2023.
//

import SwiftUI

struct CommunityChatView: View {
    @State var email = ""
    var body: some View {
        VStack{
            Text("Community Chat")
                .font(.custom("Poppins-Medium", size: 17))
                .padding(.bottom,20)
            VStack{
                HStack{
                    Text("Nene Ogba")
                    .font(.custom("Poppins-Regular", size: 14))
                    Spacer()
                }.padding(.leading)
                HStack{
                    Text("I could only take a few bunch of graps guys")
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
            Spacer()
            
            VStack{
                TextField("", text: $email)
                    .frame(height: 45)
                    .keyboardType(.emailAddress)
                   
                    .autocapitalization(.none).placeholder(when: email.isEmpty) {
                        Text("   send a message")
                            .font(.custom("Poppins-Regular", size: 10))
                            .foregroundColor(.gray)
                    }
                    .padding(.horizontal)
            }
            .frame(maxWidth: .infinity, maxHeight: 80)
            .background(Color.white)
            
        }
        .background(Color.grayColorTwo)
       
        
        
    }
}

struct CommunityChatView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityChatView()
    }
}
