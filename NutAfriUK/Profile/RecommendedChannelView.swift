//
//  RecommendedChannelView.swift
//  NutAfriUK
//
//  Created by Nene ogba on 04/08/2023.
//

import SwiftUI

struct RecommendedChannelView: View {
    @ObservedObject var viewModel:ProfileViewModel = ProfileViewModel()
    @State var selectedChannel:ChannelModel? = nil
    @Binding var isPresenting:Bool
    @State var isPresentingYoutube:Bool = false
    var body: some View {
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
                
                Text("Recommended Cooking Channels ")
                     .font(.custom("Poppins-Medium", size: 16))
                     .padding(.bottom)
            }
           
                
            ForEach (viewModel.channelList()){ item in
                VStack{
                    HStack{
                        Text(item.item)
                            .padding(.top)
                            .padding(.leading,30)
                        Spacer()
                    }
                    
                    Divider()
                        .padding(.horizontal)
                }
                .onTapGesture {
                    selectedChannel = item
                    isPresentingYoutube = true
                }
            }
         Spacer()
        }
        .fullScreenCover(isPresented: $isPresentingYoutube, content: {
          YouTubeChannelView(isPresenting: $isPresentingYoutube, channelItem: selectedChannel)
        })
    
    }
}

struct RecommendedChannelView_Previews: PreviewProvider {
    static var previews: some View {
        RecommendedChannelView(isPresenting: .constant(false))
    }
}
