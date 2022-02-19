//
//  ContentView.swift
//  lesson6.1
//
//  Created by Javlonbek on 29/01/22.
//

import SwiftUI

struct ContentView: View {
    @State var welcome = "str_welcome".localized()
    var body: some View {
        VStack {
            Text(welcome)
                .frame(maxHeight: .infinity)
            HStack(spacing: 0){
                VStack{
                    Button {
                        Bundle.setLanguage(lang: "en")
                        welcome = "str_welcome".localized()
                    } label: {
                        Text("English").foregroundColor(.white)
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.red)
                
                VStack{
                    Button {
                        Bundle.setLanguage(lang: "ko")
                        welcome = "str_welcome".localized()
                        print(type(of: welcome))
                    } label: {
                        Text("Korean").foregroundColor(.white)
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.blue)
                
                VStack{
                    Button(action: {
                        Bundle.setLanguage(lang: "zh-Hans")
                        welcome = "str_welcome".localized()
                    },label:{
                        Text("Chinese").foregroundColor(Color.white)
                            .frame(maxWidth:.infinity, maxHeight: .infinity).background(Color.green)
                    })
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.green)
            }
            .frame(maxWidth: .infinity, maxHeight: 70)
            .padding(.bottom, 1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.locale, .init(identifier: "en"))
    }
}

