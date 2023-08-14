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
            Spacer()
            VStack{
                VStack{
                    HStack{
                        Text("🍏 Apple")
                        Spacer()
                    }
                    
                    Divider()
                    
                }
                VStack{
                    HStack{
                        Text("🍌 Banana  ")
                        Spacer()
                    }
                    Divider()
                }
                VStack{
                    HStack{
                        Text("🍇 Grape")
                        Spacer()
                    }
                    Divider()
                }
                VStack{
                    HStack{
                        Text("🥗 Salad")
                        Spacer()
                    }
                    Divider()
                }
                VStack{
                    HStack{
                        Text("🥤Orange Juice ")
                        Spacer()
                    }
                    Divider()
                }
                Spacer()
            }
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
        
           
        }
        
    }
    
}

struct FiveADayView_Previews: PreviewProvider {
    static var previews: some View {
        FiveADayView()
    }
}
