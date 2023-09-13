//
//  CommunityChatViewModel.swift
//  NutAfriUK
//
//  Created by Nene ogba on 25/08/2023.
//


import Foundation
import Combine
import Firebase
import FirebaseFirestore


final class CommunityViewModel: ObservableObject {
    @Published var communities:[CommunityModel] = []
    var firestoreListener: ListenerRegistration?
    @Published var messages:[CommunityMessageModel] = []
    
    func fetchCommunities() {
        
        let db = Firestore.firestore()
        db.collection("community")
            .getDocuments { [weak self] documentsSnapshot, error in
                if let error = error {
                    print("Failed to fetch healthyswaps: \(error)")
                    return
                }
                
                //empty the list
                self?.communities.removeAll()
                
                documentsSnapshot?.documents.forEach({ [weak self] document in
                    
                    if let data = document.data() as? [String: String] {
                        if let title = data["title"],
                           let image = data["image"],
                           let id = data["id"]{
                            
                            let communities = CommunityModel(title: title, image: image, id: id)
                            
                            self?.communities.append(communities)
                            
                        }
                    }
                })
            }
    }
    
    func fetchCommunityMessages(communityid:String) {
        let db = Firestore.firestore()
        firestoreListener?.remove()
        messages.removeAll()
        firestoreListener = db.collection("community")
            .document(communityid)
            .collection("messages")
            .order(by: "time")
            .addSnapshotListener { querySnapshot, error in
                if let error = error {
                    print( "Failed to listen for messages: \(error)")
                    return
                }
                
                querySnapshot?.documentChanges.forEach({ [weak self] change in
                    if change.type == .added {
    
                        if let data = change.document.data() as? [String: Any] {
                            if let name = data["name"] as? String,
                               let text = data["text"] as? String,
                               let userid = data["userid"] as? String,
                               let time = data["time"] as? Timestamp,
                               let id = data["id"] as? String{
                                
                                let message = CommunityMessageModel(name: name , text: text, id: id, userid: userid, time: time)
                                
                                self?.messages.append(message)
                                
                            }
                        }
                    }
                })
            }
    }
    

    func sendMessages(text:String, communityid:String, name:String) {
         let db = Firestore.firestore().collection("community")
             .document(communityid)
             .collection("messages")
         let docId = db.document().documentID
         
        let data:[String:Any] = ["userid": getUserId(), "text":text, "name":name, "time":Timestamp(), "id":docId
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
