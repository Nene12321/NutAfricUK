//
//  FoodViewModel.swift
//  NutAfriUK
//
//  Created by Nene ogba on 20/08/2023.
//

import Foundation
import Combine
import Firebase
import FirebaseFirestore

final class FoodViewModel: ObservableObject {
    
    @Published var foods:[FoodModel] = []
    
    func fetchFoods() {
      
        let db = Firestore.firestore()
        db.collection("foods")
            .getDocuments { [weak self] documentsSnapshot, error in
                if let error = error {
                    print("Failed to fetch foods: \(error)")
                    return
                }
                
                //empty the list
               self?.foods.removeAll()
                
                documentsSnapshot?.documents.forEach({ [weak self] document in
                   
                    if let data = document.data() as? [String: String] {
                        if let name = data["name"],
                           let desc = data["description"],
                           let store = data["stores"],
                           let image = data["image"],
                           let id = data["id"]{
    
                            let food = FoodModel(name: name, description: desc, stores: store, image: image, id: id)
                            
                            self?.foods.append(food)
                            
                        }
                    }
                })
            }
    }
}

