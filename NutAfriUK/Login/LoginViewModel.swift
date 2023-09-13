//
//  LoginViewModel.swift
//  NutAfriUK
//
//  Created by Nene ogba on 19/08/2023.
//

import Foundation
import Combine
import FirebaseCore
import FirebaseAuth

final class LoginViewModel: ObservableObject {
    
    @Published var loginStatusMessage = ""
    @Published var loginStatus = false
    
    func loginUser(model:LoginModel) {
        
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)

        if !emailPredicate.evaluate(with: model.email) {
            loginStatusMessage = "Invalid Email Address"
            return
        }
        
        if model.password.count < 6{
            loginStatusMessage = "Invalid Password"
            return
        }
        
        Auth.auth().signIn(withEmail: model.email.lowercased(), password: model.password) { [weak self] result, err in
            if let err = err {
                print("Failed to login user:", err)
                self?.loginStatusMessage = "invalid Credentials! Please try again"
                return
            }

            print("Successfully logged in as user: \(result?.user.uid ?? "")")

            self?.loginStatusMessage = ""
            self?.loginStatus = true
        }
    }
}
