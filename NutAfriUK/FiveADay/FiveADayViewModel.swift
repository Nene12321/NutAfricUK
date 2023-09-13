//
//  FiveADayViewModel.swift
//  NutAfriUK
//
//  Created by Nene ogba on 25/08/2023.
//
import Firebase
import FirebaseFirestore
import Combine

final class FiveADayViewModel: ObservableObject {
    
    @Published var fetchfiveaday:[FiveADayProgressModel] = []
    @Published var fiveadayprogress:[FiveADayProgressDisplayModel] = []
    
    func fiveADayList() -> [FiveADayModel]{
        return [
            FiveADayModel(item: "Why Five a Day?", id: 1),
            FiveADayModel(item: "Record My Progress", id: 2),
            FiveADayModel(item: "My Progress List", id: 3),
            FiveADayModel(item: "Learn More on NHS", id: 4)
        ]
    }
    
    func trackFiveAday(fruitintake:String) {
         let db = Firestore.firestore().collection("fiveadayprogress")
         let docId = db.document().documentID
         
        let data:[String:Any] = ["userid": getUserId(), "fruitintake":fruitintake, "time":Timestamp(), "id":docId
        ]
        
         db.document(docId).setData(data) { err in
            if let err = err {
                print(err)
                return
            }
            print("Success")
        }
    }
    
   
    func fetchFiveADay() {
        
        let db = Firestore.firestore()
        db.collection("fiveadayprogress")
            .getDocuments { [weak self] documentsSnapshot, error in
                if let error = error {
                    print("Failed to fetch: \(error)")
                    return
                }
                
                //empty the list
                self?.fetchfiveaday.removeAll()
                
                documentsSnapshot?.documents.forEach({ [weak self] document in
                    
                    if let data = document.data() as? [String:Any]{
                        if let item = data["fruitintake"] as? String,
                           let userid = data["userid"] as? String,
                           let time = data["time"] as? Timestamp,
                           let id = data["id"] as? String{
                            
                            if userid == self?.getUserId(){
                                let item = FiveADayProgressModel(fruitintake: item, id: id , userid: userid, time: time)
                                self?.fetchfiveaday.append(item)
                            }
                            
                            print("data \(item)")
                            
                        }
                       
                    }
                   
                })
                
                self?.groupItemByDate()
            }
    }
    
    var groupedDictionary: [String: FiveADayProgressDisplayModel] = [:]
    
    func groupItemByDate(){
        
        for progress in fetchfiveaday {
            if let existingIntake = groupedDictionary[progress.time.dateValue().formatDate()] {
                // If the timestamp exists in the dictionary, add the intake
                groupedDictionary[progress.time.dateValue().formatDate()] = FiveADayProgressDisplayModel(item: existingIntake.item + (Int(progress.fruitintake) ?? 0), date: progress.time.dateValue().formatDate(), id: progress.id)
            } else {
                // If the timestamp doesn't exist in the dictionary, add it
                groupedDictionary[progress.time.dateValue().formatDate()] = FiveADayProgressDisplayModel(item: (Int(progress.fruitintake) ?? 0), date:progress.time.dateValue().formatDate(), id: progress.id)
            }
        }
        
        for (_, intake) in groupedDictionary {
            fiveadayprogress.append(intake)
        }
    }
    
    func getUserId() -> String{
        return Auth.auth().currentUser?.uid ?? ""
    }
}



struct FiveADayModel:Identifiable, Codable{
    let item:String
    let id:Int
}

struct FiveADayProgressDisplayModel:Identifiable, Codable{
    let item:Int
    let date:String
    let id:String
}

struct FiveADayProgressModel:Identifiable{
    let fruitintake:String
    let id:String
    let userid:String
    let time: Timestamp
}

struct ReportModel:Identifiable{
    let report:String
    let id:String
    let userid:String
}

extension Date {
        func formatDate() -> String {
                let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .short
            dateFormatter.dateFormat = "d'th' MMMM yyyy"
            return dateFormatter.string(from: self)
        }
}

