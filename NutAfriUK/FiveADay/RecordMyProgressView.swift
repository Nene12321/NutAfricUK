//
//  FiveADayView.swift
//  NutAfriUK
//
//  Created by Nene ogba on 04/08/2023.
//

import SwiftUI

struct RecordMyProgressView: View {
    @ObservedObject var viewModel:FiveADayViewModel = FiveADayViewModel()
    @Binding var isPresenting:Bool
    @State var apple = 0
    @State var banana = 0
    @State var grape = 0
    @State var salad = 0
    @State var orange = 0
    @State var error = ""
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
                
                Text("Why Five A Day?")
                    .font(.custom("Poppins-Medium", size: 18))
                    .padding(.bottom)
            }
      
            VStack{
                VStack{
                    HStack{
                        Text("🍏 Apple")
                            .font(.custom("Poppins-Regular", size: 17))
                       
                        Spacer()
                        
                        Stepper("", value: $apple, in: 0...10)
                        
                        Spacer()
                        
                        Text("\(apple)")
                            .padding(.horizontal)
                    }
                    
                    Divider()
                    
                }
                VStack{
                    HStack{
                        Text("🍌 Banana  ")
                            .font(.custom("Poppins-Regular", size: 17))
                        Spacer()
                        
                        Stepper("", value: $banana, in: 0...10)
                        
                        Spacer()
                        
                        Text("\(banana)")
                            .padding(.horizontal)
                    }
                    Divider()
                }
                VStack{
                    HStack{
                        Text("🍇 Grape")
                            .font(.custom("Poppins-Regular", size: 17))
                        Spacer()
                        
                        Stepper("", value: $grape, in: 0...10)
                        
                        Spacer()
                        
                        Text("\(grape)")
                            .padding(.horizontal)
                    }
                    Divider()
                }
                VStack{
                    HStack{
                        Text("🥗 Salad")
                            .font(.custom("Poppins-Regular", size: 17))
                        Spacer()
                        
                        Stepper("", value: $salad, in: 0...10)
                        
                        Spacer()
                        
                        Text("\(salad)")
                            .padding(.horizontal)
                    }
                    Divider()
                }
                VStack{
                    HStack{
                        Text("🥤Orange Juice ")
                            .font(.custom("Poppins-Regular", size: 17))
                        Spacer()
                        
                        Stepper("", value: $orange, in: 0...10)
                        
                        Spacer()
                        
                        Text("\(orange)")
                            .padding(.horizontal)
                    }
                    Divider()
                }
              
            }
            .padding(.horizontal)
            
            Button {
                saveFruitIntakes()
            } label: {
                HStack{
                    Text("Submit")
                        .font(.custom("Poppins-Regular", size: 12))
                        .foregroundColor(.white)
                    
                }
                .frame(maxWidth: .infinity, maxHeight: 45)
                .background(Color.primaryColor)
                .cornerRadius(10)
                .padding(.horizontal)
                .padding(.top,20)
                
            }
            
            Text(error)
                .foregroundColor(.red)
                .font(.custom("Poppins-Regular", size: 17))
        
            Spacer()
        }
        
    }
    
    func saveFruitIntakes(){
        let total_fruit = apple + banana + grape + salad + orange
        if total_fruit > 0{
           error = ""
            //save to firebase
            viewModel.trackFiveAday(fruitintake: "\(total_fruit)")
        }else{
            error = "You did not add any fruit"
        }
    }
    
}

struct RecordMyProgressView_Previews: PreviewProvider {
    static var previews: some View {
        RecordMyProgressView(isPresenting: .constant(false))
    }
}
