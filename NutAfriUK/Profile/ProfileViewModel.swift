//
//  ProfileViewModel.swift
//  NutAfriUK
//
//  Created by Nene ogba on 25/08/2023.
//

import Foundation
import Combine
import FirebaseFirestore
import FirebaseAuth

final class ProfileViewModel: ObservableObject {
    
    @Published var user:UserProfileModel?

     func fetchUser() {
         let db = Firestore.firestore()
        
         guard let uid = Auth.auth().currentUser?.uid else { return }
        let user = db.collection("users").document(uid)
        
        user.getDocument { [weak self](document, error) in
            guard error == nil else {
                print("error", error ?? "")
                return
            }
            
            if let data = document?.data() as? [String: String] {
                if let firstname = data["firstname"],
                   let image = data["image"],
                   let email = data["email"],
                   let id = data["id"]{
                    
                    let profile = UserProfileModel(firstname: firstname, email: email, id: id, image: image)
                    self?.user = profile
                }
            }
        }
    }
    
    func updateProfile(user: UserProfileModel?){
        self.user = user
    }
    
    func channelList() -> [ChannelModel]{
        return [
            ChannelModel(item: "Sisi Jemimah's Recipes", id: 1, youtubelink: "https://www.youtube.com/@SisiJemimahsRecipes"),
            ChannelModel(item: "Tspices Kitchen", id: 2, youtubelink: "https://www.youtube.com/@tspiceskitchen"),
        ]
        
    }
    func createreport(report:String) {
         let db = Firestore.firestore().collection("reports")
         let docId = db.document().documentID
         
        let data:[String:Any] = ["userid":getUserId(), "report":report,  "id":docId
        ]
        
         db.document(docId).setData(data) { err in
            if let err = err {
                print(err)
                return
            }
            print("Success")
        }
    }
    func getUserId() -> String{
        return Auth.auth().currentUser?.uid ?? ""
    }
}

struct ChannelModel:Identifiable, Codable{
    let item:String
    let id:Int
    let youtubelink:String
}



struct UserProfileModel{
    let firstname:String
    let email:String
    let id:String
    let image:String?
}

