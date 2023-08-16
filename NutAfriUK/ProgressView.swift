//
//  ProgressView.swift
//  NutAfriUK
//
//  Created by Nene ogba on 16/08/2023.
//

import SwiftUI

struct ProgressView: View {
    var body: some View {
        VStack{
            Text("Progess List")
                .font(.custom("Poppins-Medium", size: 18))
                .padding(.bottom)
            VStack{
                HStack{
                    Text("Date: 5th of December")
                    .font(.custom("Poppins-Regular", size: 14))
                    Spacer()
                }.padding(.leading)
                HStack{
                    
                    Text("Intake: 4 apples")
                        .font(.custom("Poppins-Regular", size: 10))
                        .foregroundColor(.greyColor)
                        
                    
                    Spacer()
                }
                .padding(.leading)
                
               Divider()
            }
       
            .padding(.horizontal,30)
            Spacer()
            
        }
        
    }
}

struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView()
    }
}
