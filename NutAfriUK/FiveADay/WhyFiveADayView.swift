//
//  WhyFiveADayView.swift
//  NutAfriUK
//
//  Created by Nene ogba on 04/08/2023.
//

import SwiftUI

struct WhyFiveADayView: View {
    @Binding var isPresenting:Bool
    var body: some View
    {
        VStack{
        
            ZStack{
                HStack{
                    Button {
                       isPresenting = false
                    } label: {
                        Image(systemName: "arrow.backward")
                            .foregroundColor(.black)
                    }
                    
                    Spacer()
                }
                .padding(.leading)
                .padding(.bottom)
                
                Text("Why Five A Day?")
                    .font(.custom("Poppins-Medium", size: 18))
                    .padding(.bottom)
            }
            
            Text("Five a Day is a simple guideline urging the consumption of five servings of fruits and vegetables daily. These nutrient-packed foods offer essential vitamins, minerals, and fiber, supporting overall health and reducing the risk of chronic illnesses.")
                .font(.custom("Poppins-Regular",size: 12))
                .padding(.horizontal)
                .foregroundColor(.greyColor)
                .padding(.bottom)
            
            Text("By incorporating colorful fruits like apples, bananas, oranges, berries, and grapes into your diet, you can enhance your immune system, improve digestion, and promote heart health. Enjoy the natural goodness of these delicious options to stay healthy and thriving!")
                .font(.custom("Poppins-Regular",size: 12))
                .padding(.horizontal)
                .foregroundColor(.greyColor)
                .padding(.bottom)
            
            Text("This recommendation is based on the understanding that fruits and vegetables are rich sources of essential vitamins, minerals, and dietary fiber, which play a vital role in maintaining overall health and reducing the risk of chronic diseases")
                .font(.custom("Poppins-Regular",size: 12))
                .padding(.horizontal)
                .foregroundColor(.greyColor)
            Spacer()
        }
        
    }
}

struct WhyFiveADayView_Previews: PreviewProvider {
    static var previews: some View {
        WhyFiveADayView(isPresenting: .constant(false))
    }
}
