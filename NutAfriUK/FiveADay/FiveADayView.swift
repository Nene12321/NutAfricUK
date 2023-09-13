//
//  FiveADayView.swift
//  NutAfriUK
//
//  Created by Nene ogba on 25/08/2023.
//

import SwiftUI

struct FiveADayView: View {
    @ObservedObject var viewModel:FiveADayViewModel = FiveADayViewModel()
    @State private var isFiveADay = false
    @State private var recordProgress = false
    @State private var progressList = false
    @State private var learnMore = false
    @Environment(\.openURL) var openURL
    var body: some View {
        VStack{
            Text("Five A Day")
                .font(.custom("Poppins-Medium", size: 18))
                .padding(.bottom, 20)
                .padding(.top,10)
            
            ForEach (viewModel.fiveADayList()){ item in
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
                    if item.id == 1{
                        isFiveADay = true
                    }else if item.id == 2{
                        recordProgress = true
                    }else if item.id == 3{
                        progressList = true
                    }else if item.id == 4{
                        openURL(URL(string: "https://www.nhs.uk/live-well/eat-well/5-a-day/why-5-a-day/")!)
                    }
                }
            }
            
            Spacer()
        }
        .fullScreenCover(isPresented: $isFiveADay, content: {
            WhyFiveADayView(isPresenting: $isFiveADay)
        })
        .fullScreenCover(isPresented: $recordProgress, content: {
            RecordMyProgressView(isPresenting:$recordProgress)
        })
        .fullScreenCover(isPresented: $progressList, content: {
            ProgressView(isPresenting:$progressList)
        })
    }
}

struct FiveADayView_Previews: PreviewProvider {
    static var previews: some View {
        FiveADayView()
    }
}
