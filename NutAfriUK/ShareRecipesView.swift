//
//  ShareRecipesView.swift
//  NutAfriUK
//
//  Created by Nene ogba on 04/08/2023.
//

import SwiftUI

struct ShareRecipesView: View {
    var body: some View {
        VStack{
          Image("sharerecipes")
                .resizable()
                .frame(width:280, height: 283)
            Text("Share Recipes")
                .font(.custom("Poppins-SemiBold", size: 25))
            Text("Food Ideas and Recipe exchange with fellow africans in the UK.")
                .font(.custom("Poppins-Regular", size: 17))
                .padding(.horizontal)
            
        }
    }
}

struct ShareRecipesView_Previews: PreviewProvider {
    static var previews: some View {
        ShareRecipesView()
    }
}
