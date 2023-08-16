//
//  FiveADayView.swift
//  NutAfriUK
//
//  Created by Nene ogba on 04/08/2023.
//

import SwiftUI

struct FiveADayView: View {
    var body: some View {
        VStack{
            Text("Five A Day")
                .font(.custom("Poppins-Medium", size: 18))
                .padding(.bottom)
      
            VStack{
                VStack{
                    HStack{
                        Text("🍏 Apple")
                            .font(.custom("Poppins-Regular", size: 17))
                        Spacer()
                    }
                    
                    Divider()
                    
                }
                VStack{
                    HStack{
                        Text("🍌 Banana  ")
                            .font(.custom("Poppins-Regular", size: 17))
                        Spacer()
                    }
                    Divider()
                }
                VStack{
                    HStack{
                        Text("🍇 Grape")
                            .font(.custom("Poppins-Regular", size: 17))
                        Spacer()
                    }
                    Divider()
                }
                VStack{
                    HStack{
                        Text("🥗 Salad")
                            .font(.custom("Poppins-Regular", size: 17))
                        Spacer()
                    }
                    Divider()
                }
                VStack{
                    HStack{
                        Text("🥤Orange Juice ")
                            .font(.custom("Poppins-Regular", size: 17))
                        Spacer()
                    }
                    Divider()
                }
              
            }
            .padding(.horizontal)
            
            Button {
                
            } label: {
                HStack{
                    Text("Submit")
                        .font(.custom("Poppins-Regular", size: 12))
                        .foregroundColor(.white)
                    
                }
                .frame(maxWidth: .infinity, maxHeight: 45)
                .background(Color.primaryColor)
                .cornerRadius(10)
                .padding(.horizontal)
                .padding(.top,20)
                
            }
        
            Spacer()
        }
        
    }
    
}

struct FiveADayView_Previews: PreviewProvider {
    static var previews: some View {
        FiveADayView()
    }
}
