//
//  ReportView.swift
//  NutAfriUK
//
//  Created by Nene ogba on 09/09/2023.
//

import SwiftUI

struct ReportView: View {
    @ObservedObject var viewModel:ProfileViewModel = ProfileViewModel()
    @State var report = ""
    var body: some View {
        VStack{
            Text("Report")
                .font(.custom("Poppins-Bold", size: 24))
                .padding(.bottom, 70)
            TextField("What do you want to report?", text: $report)
                .frame(height: 100)
                .border(.black)
                        .font(.custom("Poppins-Regular", size: 20))
                        .foregroundColor(.gray)
                        .padding(.horizontal)
            Button {
            createreport()
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
            Spacer()
        }
        
    }
    func createreport(){
        viewModel.createreport(report: report)
    }
}

struct ReportView_Previews: PreviewProvider {
    static var previews: some View {
        ReportView()
    }
}
