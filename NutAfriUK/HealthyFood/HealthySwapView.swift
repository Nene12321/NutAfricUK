//
//  HealthySwapView.swift
//  NutAfriUK
//
//  Created by Nene ogba on 26/07/2023.
//

import SwiftUI

struct HealthySwapView: View {
    @ObservedObject var viewModel:HealthySwapViewModel = HealthySwapViewModel()
    @State var selectedFood:HealthySwapModel? = nil
    @State private var isPresenting = false
    
    var body: some View {
        VStack{
            Text("Healthy Swaps")
                .font(.custom("Poppins-Medium", size: 18))
                .padding(.bottom, 20)
                .padding(.top,10)
            Text("Alternatives to replace less healthy food choices in traditional African recipes")
                .font(.custom("Poppins-Regular", size: 16))
                .foregroundColor(.greyColor)
                .padding(.horizontal)
            ForEach (viewModel.healthyswaps){ healthyswap in
                VStack{
                    Text(healthyswap.item)
                        .padding(.top)
                        .padding(.trailing,300)
                    
                    Divider()
                        .padding(.horizontal)
                }
                .onTapGesture {
                    isPresenting = true
                    selectedFood = healthyswap
                }
            }
            Spacer()
            
        }
        .onAppear{
            viewModel.fetchHealthySwaps()
        }
        .navigationDestination(isPresented: $isPresenting, destination: {
           HealthySwapDetailView(food: selectedFood)
        })
    }
}

struct HealthySwapView_Previews: PreviewProvider {
    static var previews: some View {
        HealthySwapView()
    }
}
