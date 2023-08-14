//
//  LoginView.swift
//  NutAfriUK
//
//  Created by Nene ogba on 23/07/2023.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    var body: some View {
        VStack{
            Text("Login")
                .font(.custom("Poppins-Bold", size: 24))
                .padding(.bottom, 70)
                .padding(.top,10)
            
            TextField("", text: $email)
                .frame(height: 45)
                .keyboardType(.emailAddress)
                .border(.black)
                .autocapitalization(.none).placeholder(when: email.isEmpty) {
                    Text("   Email")
                        .font(.custom("Poppins-Regular", size: 10))
                        .foregroundColor(.gray)
                }
                .padding(.horizontal)
                .padding(.bottom)
               
            TextField("", text: $password)
                .frame(height: 45)
                .keyboardType(.emailAddress)
                .border(.black)
                .autocapitalization(.none).placeholder(when: password.isEmpty) {
                    Text("   Password")
                        .font(.custom("Poppins-Regular", size: 10))
                        .foregroundColor(.gray)
                }
                .padding(.horizontal)
            
            Button {
                
            } label: {
                HStack{
                    Text("Login")
                        .font(.custom("Poppins-Regular", size: 12))
                        .foregroundColor(.white)
                    
                }
                .frame(maxWidth: .infinity, maxHeight: 45)
                .background(Color.primaryColor)
                .cornerRadius(10)
                .padding(.horizontal)
                .padding(.top,20)
            }
            
            Button {
                
            } label: {
                HStack{
                 Text("Don’t have account?")
                        .font(.custom("Poppins-Regular", size: 12))
                        .foregroundColor(.black)
                    Text("Sign up")
                        .font(.custom("Poppins-Regular", size: 12))
                        .foregroundColor(.primaryColor)
                }
                
            }
             
            Spacer()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}




//Poppins-Regular
//Poppins-Italic
//Poppins-Thin
//Poppins-Medium
//Poppins-SemiBold
//Poppins-Bold
//Poppins-ExtraBold
//Poppins-Black
