//
//  CompareBlock.swift
//  caculator_self
//
//  Created by 이은수 on 7/17/24.
//

import SwiftUI

struct CompareBlock: View {
    var body: some View {
        ZStack {
            VStack {
                Rectangle()
                    .frame(width: 170, height: 170)
                    .cornerRadius(20)
                    .foregroundColor(Color.gray)
            }
            VStack(){
                
                HStack {
                    Spacer()
                    Text("제품이름")
                        .font(.title)
                        .fontWeight(.bold)
                }.padding(.horizontal)
                    .padding(.top, 50)
                HStack {
                    Spacer()
                    Text("가격")
                        
                }.padding(.horizontal)
                
                    
                    
            }.frame(width: 170, height: 170)
            
            VStack{
                HStack{
                    Spacer()
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "trash")
                            .padding()
                            .foregroundStyle(Color.black)
                    })
                    
                }
                
                Spacer()
            }.frame(width: 170, height: 170)
        }
    }
}

#Preview {
    CompareBlock()
}
