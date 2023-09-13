//
//  DiscoverView.swift
//  NutAfriUK
//
//  Created by Nene ogba on 04/08/2023.
//

import SwiftUI

struct DiscoverView: View {
    @State private var currentTab = 0
    @AppStorage("applicationstate") var applicationstate: String = "onboarding"
    var body: some View {
        TabView(selection: $currentTab,
                        content:  {
            ForEach(onboardingList()) { viewData in
                
                
                VStack{
                    Image(viewData.image)
                        .resizable()
                        .frame(width:280, height: 283)
                        .padding(.top,100)
                    Text(viewData.title)
                        .font(.custom("Poppins-SemiBold", size: 25))
                        .padding(.bottom, 1)
                    
                    Text(viewData.text)
                        .font(.custom("Poppins-Regular", size: 17))
                        .foregroundColor(.greyColor)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                        .padding(.top)
                   
                    
                    Spacer()
                    
                    HStack{
                        Button {
                            applicationstate = "register"
                        } label: {
                            Text("SKIP")
                                .font(.custom("Poppins-Regular", size: 12))
                                .foregroundColor(.black)
                            
                        }
                        Spacer()
                        Image(viewData.indicatorimage)
                            .resizable()
                            .frame(width: 50,height: 10)
                        Spacer()
                        
                        Button {
                            moveToNext()
                        } label: {
                            Text("NEXT")
                                .font(.custom("Poppins-Regular", size: 12))
                                .foregroundColor(.black)
                            
                        }
                        
                    }
                    .padding(.horizontal)
                }
                .tag(viewData)
            }
        })
                  .tabViewStyle(PageTabViewStyle())
                  .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .automatic))
    }
    
    func moveToNext(){
        if currentTab < 3{
            currentTab += 1
        }else{
            applicationstate = "register"
        }
    }
}

struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
    }
}

