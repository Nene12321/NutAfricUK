//
//  RegisterViewModel.swift
//  NutAfriUK
//
//  Created by Nene ogba on 19/08/2023.
//

import Foundation
import Combine
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth
import FirebaseStorage

final class SignUpViewModel: ObservableObject {
    
    @Published var statusMessage = ""
    @Published var signupStatus = false
    
    func createNewAccount(model:SignUpModel) {
        //validations
        if model.firstname.isEmpty{
            statusMessage = "Invalid First Name"
            return
        }
        
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)

        if !emailPredicate.evaluate(with: model.email) {
            statusMessage = "Invalid Email Address"
            return
        }
        
        if model.password.count < 6{
            statusMessage = "Invalid Password"
            return
        }
        
        Auth.auth().createUser(withEmail: model.email, password: model.password) { [weak self] authResult, error in
            if let err = error {
                print("cannot create user:", err)
                self?.statusMessage = "cannot create user: \(err)"
                return
            }
            
            self?.statusMessage = ""
            if model.image != nil{
                self?.uploadImage(image: model.image ?? UIImage(), action: { image in
                    self?.storeUserInformation(model: model, image: image)
                })
            }else{
                self?.storeUserInformation(model: model, image: "")
            }
        }
    }
    
    private func storeUserInformation(model:SignUpModel, image:String) {
        guard let uid =  Auth.auth().currentUser?.uid else { return }
        let db = Firestore.firestore()
        
        db.collection("users").document(uid).setData([
            "email": model.email,
            "firstname":model.firstname,
            "id": uid,
            "image": image
        ]) { [weak self] err in
            if let err = err {
                print("Error writing document: \(err)")
            } else {
                print("Document successfully written!")
                self?.signupStatus = true
            }
        }
        
    }
    
    func uploadImage(image:UIImage, action:  ((String) -> ())?) {
        let storage: Storage = Storage.storage()
        guard let uid = Auth.auth().currentUser?.uid else { return }
        let ref = storage.reference(withPath: uid)
        guard let imageData = image.jpegData(compressionQuality: 0.5) else { return }
        ref.putData(imageData, metadata: nil) { metadata, err in
            if let err = err {
                print("Failed to push image to Storage: \(err)")
                return
            }
            
            ref.downloadURL { url, err in
                if let err = err {
                    print("Failed to retrieve downloadURL: \(err)")
                    return
                }
                
                print("Successfully stored image with url: \(url?.absoluteString ?? "")")
                print(url?.absoluteString ?? "")
                
                
                guard let url = url else { return }
                action!(url.absoluteString)
            }
        }
    }
}
