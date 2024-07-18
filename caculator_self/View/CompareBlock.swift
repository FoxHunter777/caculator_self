//
//  CompareBlock.swift
//  caculator_self
//
//  Created by 이은수 on 7/17/24.
//

import SwiftUI

struct CompareBlock: View {
//    @ObservedObject var priceObj: Price
    var productName: String = "제품이름"
    var productPrice: String = "가격"
    var bgColor: Color = .gray
    
    
    var body: some View {
        ZStack {
            VStack {
                Rectangle()
                    .frame(width: 170, height: 170)
                    .cornerRadius(20)
                    .foregroundColor(bgColor)
            }
            VStack(){
                
                HStack {
                    Spacer()
                    Text(productName)
                        .font(.title)
                        .fontWeight(.bold)
                }.padding(.horizontal)
                    .padding(.top, 50)
                HStack {
                    Spacer()
                    Text(productPrice)
                        
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
