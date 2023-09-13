//
//  HealthyFoodView.swift
//  NutAfriUK
//
//  Created by Nene ogba on 23/07/2023.
//

import SwiftUI

struct AfricanFoodView: View {
    @ObservedObject var viewModel:FoodViewModel = FoodViewModel()
    @ObservedObject var profileViewModel:ProfileViewModel = ProfileViewModel()
    @State var selectedFood:FoodModel? = nil
    @State private var isPresenting = false
    
    var body: some View {
        VStack{
            Text("African Food")
                .font(.custom("Poppins-Medium", size: 18))
                .padding(.bottom, 20)
                .padding(.top,10)
            Text("Hello \(profileViewModel.user?.firstname.capitalized ?? ""),")
                .font(.custom("Poppins-Medium", size: 23))
                .foregroundColor(.primaryColor)
                .padding(.bottom, 20)
                .padding(.top,10)
            
            
            ForEach (viewModel.foods){ food in
                HStack {
                    Image(food.image)
                        .resizable()
                        .frame(width:78, height: 70)
                    
                    Text(food.name)
                    Spacer()
                }
                .frame(maxWidth: .infinity, maxHeight: 83)

                .background(Color.white)
             
                .overlay {
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(Color.grayColor, lineWidth: 1)
                }
                .onTapGesture {
                    isPresenting = true
                    selectedFood = food
                }
            }
           
            Spacer()
            
        }
        .padding()
        .onAppear{
          viewModel.fetchFoods()
            profileViewModel.fetchUser()
        }
        .navigationDestination(isPresented: $isPresenting, destination: {
           AfricanFoodDetailView(food: selectedFood)
        })
    }
    
}

struct HealthyFoodView_Previews: PreviewProvider {
    static var previews: some View {
        AfricanFoodView()
    }
}

func getFood(){
    
}
