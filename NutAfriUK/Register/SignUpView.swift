//
//  SignUpView.swift
//  NutAfriUK
//
//  Created by Nene ogba on 23/07/2023.
//

import SwiftUI

struct SignUpView: View {
    @ObservedObject var viewModel:SignUpViewModel = SignUpViewModel()
    @State var firstname = ""
    @State var email = ""
    @State var password = ""
    @State var shouldShowImagePicker = false
    @State var image: UIImage?
    @AppStorage("applicationstate") var applicationstate: String = "onboarding"
    @State private var isPresenting = false
    
    var body: some View {
        VStack{
            Text("Sign Up")
                .font(.custom("Poppins-Bold", size: 24))
                .padding(.bottom, 20)
                .padding(.top,10)
            
            Button {
                shouldShowImagePicker.toggle()
            } label: {
                Image("userprofile")
                    .padding(.bottom)
            }
            
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
               
            SecureField("", text: $password)
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
                isPresenting = true
            } label: {
                HStack{
                 Text("By clicking On signup, You have read and agreed to our privacy policy")
                        .font(.custom("Poppins-Regular", size: 12))
                        .foregroundColor(.black)
                    
                }
                
            }
            
            Button {
                register()
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
                applicationstate = "login"
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
            
            Text(viewModel.statusMessage)
                .padding(.vertical)
                .font(.custom("Poppins-Regular", size: 12))
                .foregroundColor(.red)
             
            Spacer()
        }
        .fullScreenCover(isPresented: $shouldShowImagePicker, onDismiss: nil) {
            ImagePicker(image: $image)
                .ignoresSafeArea()
        }
        .navigationDestination(isPresented: $isPresenting, destination: {
          PrivacyPolicyView()
        })
        .onChange(of: viewModel.signupStatus) { newValue in
            if newValue{
               applicationstate = "home"
            }
        }
    }
    
    func register(){
        viewModel.createNewAccount(model: SignUpModel(firstname: firstname, email: email, password: password, image: image))
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
