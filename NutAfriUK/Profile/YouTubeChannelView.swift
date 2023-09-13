//
//  YouTubeChannelView.swift
//  NutAfriUK
//
//  Created by Nene ogba on 04/08/2023.
//

import SwiftUI
import WebKit

struct YouTubeChannelView: View {
    @Binding var isPresenting:Bool
    var channelItem:ChannelModel?
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
                
                Text("\(channelItem?.item.capitalized ?? "") Channel")
                    .font(.custom("Poppins-Medium", size: 17))
            }
          
            
            YoutubeVideoView(youtubeVideoID: channelItem?.youtubelink ?? "")
                .frame(maxWidth: .infinity, maxHeight: 250)
                .background(Color.black)
                .cornerRadius(10)
                .padding(.horizontal, 20)
            
               
            
            Spacer()
            
        }
        
    }
}


struct YoutubeVideoView: UIViewRepresentable {
    
    var youtubeVideoID: String
    
    func makeUIView(context: Context) -> WKWebView  {
        
        WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        
        let path = youtubeVideoID
        guard let url = URL(string: path) else { return }
        
        uiView.scrollView.isScrollEnabled = false
        uiView.backgroundColor = UIColor.black
        uiView.load(.init(url: url))
    }
}

struct YouTubeChannelView_Previews: PreviewProvider {
    static var previews: some View {
        YouTubeChannelView(isPresenting: .constant(false))
    }
}
