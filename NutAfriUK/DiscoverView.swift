//
//  DiscoverView.swift
//  NutAfriUK
//
//  Created by Nene ogba on 04/08/2023.
//

import SwiftUI

struct DiscoverView: View {
    var body: some View {
        VStack{
          Image("discoverr")
                .resizable()
                .frame(width:280, height: 283)
            Text("DISCOVER")
                .font(.custom("Poppins-SemiBold", size: 25))
            Text("Find African foods & healthy alternative available in the UK")
                .font(.custom("Poppins-Regular", size: 17))
            
        }
        
    }
}

struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
    }
}
