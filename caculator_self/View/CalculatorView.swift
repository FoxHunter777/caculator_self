//
//  CalculatorView.swift
//  caculator_self
//
//  Created by 이은수 on 7/11/24.
//

import SwiftUI


struct CalculatorView: View {
    var tmpName:String?
    var tmpPrice:Int?
    var tmpweight:Int?
    var tmpQuantity:Int?
    
    var body: some View {
        VStack{
            HStack{
                Text("여기에 제품명 입력")
                RoundedRectangle(cornerRadius: 5)
                    .frame(width: 20, height: 20)
                    .foregroundColor(.blue)
            }
            
            HStack{
                Text("여기에 제품 가격입력")
            }
            
            HStack{
                Text("제품 무게와 제품 개수")
            }
            
            VStack{
                Button(action: {
                    
                }, label: {
                    Text("계산하기")
                        .foregroundColor(Color.green)
                })
                
                Button(action: {
                    
                }, label: {
                    Text("장바구니 추가")
                        .foregroundColor(Color.purple)
                })
            }.padding(.top, 50)
        }
    }
        
}

#Preview {
    CalculatorView()
}
