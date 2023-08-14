//
//  ImageFiveADayView.swift
//  NutAfriUK
//
//  Created by Nene ogba on 04/08/2023.
//

import SwiftUI

struct ImageFiveADayView: View {
    var body: some View {
        VStack{
          Image("fruits")
                .resizable()
                .frame(width:280, height: 283)
            Text("Five A Day")
                .font(.custom("Poppins-SemiBold", size: 25))
            Text("Nourish your body, embrace  your Five a day every way .")
                .font(.custom("Poppins-Regular", size: 17))
                .padding(.horizontal)
            
        }
        
    }
}

struct ImageFiveADayView_Previews: PreviewProvider {
    static var previews: some View {
        ImageFiveADayView()
    }
}
