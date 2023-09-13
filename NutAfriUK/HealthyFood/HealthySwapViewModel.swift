//
//  HealthySwapViewModel.swift
//  NutAfriUK
//
//  Created by Nene ogba on 23/08/2023.
//


import Foundation
import Combine
import Firebase
import FirebaseFirestore


final class HealthySwapViewModel: ObservableObject {
    @Published var healthyswaps:[HealthySwapModel] = []
    
    
    func fetchHealthySwaps() {
        
        let db = Firestore.firestore()
        db.collection("healthyswaps")
            .getDocuments { [weak self] documentsSnapshot, error in
                if let error = error {
                    print("Failed to fetch healthyswaps: \(error)")
                    return
                }
                
                //empty the list
                self?.healthyswaps.removeAll()
                
                documentsSnapshot?.documents.forEach({ [weak self] document in
                    
                    if let data = document.data() as? [String: String] {
                        if let item = data["item"],
                           let desc = data["description"],
                           let store = data["stores"],
                           let itemimage = data["itemimage"],
                           let alternative = data["alternative"],
                           let alternativeimage = data["alternativeimage"],
                           let id = data["id"]{
                            
                            let food = HealthySwapModel(item: item, description: desc, stores: store, itemimage: itemimage, id: id, alternative: alternative, alternativeimage: alternativeimage)
                            
                            self?.healthyswaps.append(food)
                            
                        }
                    }
                })
            }
    }
}
