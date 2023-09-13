//
//  PrivacyPolicyView.swift
//  NutAfriUK
//
//  Created by Nene ogba on 09/09/2023.
//

import SwiftUI

struct PrivacyPolicyView: View {
    var body: some View {
        VStack{
            Text("Privacy Policy")
                  .font(.custom("Poppins-Medium", size: 18))
                  .padding(.bottom)
            Text("We value your privacy and are committed to safeguarding your data. We collect personal information and usage data to improve our services, personalize your experience, and communicate with you as needed. We take data security seriously and do not control the privacy practices of linked third-party websites. You have the right to access, correct, or delete your data and can opt out of promotional emails. Our services are not for children under 13, and we may update this policy")
                .font(.custom("Poppins-Regular",size: 12))
                .padding(.horizontal)
                .foregroundColor(.greyColor)
                .padding(.bottom)
            Spacer()
        }
        
    }
}

struct PrivacyPolicyView_Previews: PreviewProvider {
    static var previews: some View {
        PrivacyPolicyView()
    }
}
