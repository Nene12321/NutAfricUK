//
//  ProgressView.swift
//  NutAfriUK
//
//  Created by Nene ogba on 16/08/2023.
//

import SwiftUI

struct ProgressView: View {
    @ObservedObject var viewModel:FiveADayViewModel = FiveADayViewModel()
    @Binding var isPresenting:Bool
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
                
                Text("Progress List")
                    .font(.custom("Poppins-Medium", size: 18))
                    .padding(.bottom)
            }
            
            if viewModel.fiveadayprogress.isEmpty{
                Text("No Session has been recorded yet")
                    .font(.custom("Poppins-Regular", size: 18))
                    .foregroundColor(.greyColor)
                    .padding(.top, 20)
            }else{
                ForEach (viewModel.fiveadayprogress){ item in
                    VStack{
                        HStack{
                            Text(item.date)
                                .font(.custom("Poppins-Regular", size: 14))
                            Spacer()
                        }.padding(.leading)
                        HStack{
                            
                            Text("Intake: \(item.item)")
                                .font(.custom("Poppins-Regular", size: 10))
                                .foregroundColor(.greyColor)
                            
                            
                            Spacer()
                        }
                        .padding(.leading)
                    }
                    
                    Divider()
                }
                .padding(.horizontal,30)
               
            }
            Spacer()
            
        }
        .onAppear{
            viewModel.fetchFiveADay()
           
        }
        
    }
}

struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView(isPresenting: .constant(false))
    }
}
