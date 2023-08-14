//
//  SignUpView.swift
//  NutAfriUK
//
//  Created by Nene ogba on 23/07/2023.
//

import SwiftUI

struct SignUpView: View {
    @State var firstname = ""
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack{
            Text("Sign Up")
                .font(.custom("Poppins-Bold", size: 24))
                .padding(.bottom, 20)
                .padding(.top,10)
            
            Image("userprofile")
                .padding(.bottom)
            
            TextField("", text: $firstname)
                .frame(height: 45)
                .keyboardType(.alphabet)
                .border(.black)
                .autocapitalization(.none).placeholder(when: firstname.isEmpty) {
                    Text("   First Name")
                        .font(.custom("Poppins-Regular", size: 10))
                        .foregroundColor(.gray)
                }
                .padding(.horizontal)
                .padding(.bottom)
            
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
                    Text("Sign Up")
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
                 Text("already have account?")
                        .font(.custom("Poppins-Regular", size: 12))
                        .foregroundColor(.black)
                    Text("Login")
                        .font(.custom("Poppins-Regular", size: 12))
                        .foregroundColor(.primaryColor)
                }
                
            }
             
            Spacer()
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
