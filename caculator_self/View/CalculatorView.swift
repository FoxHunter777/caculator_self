//
//  CalculatorView.swift
//  caculator_self
//
//  Created by 이은수 on 7/11/24.
//

import SwiftUI


struct CalculatorView: View {
    @State var gprice: String = "0"
    @State var qprice: String = "0"
    
    @State var tmpName:String = ""
    @State var tmpPrice:String = ""
    @State var tmpweight:String = ""
    @State var tmpQuantity:String = ""
    
    var body: some View {
        VStack{
            Divider()
                .padding(.bottom, 50)
            VStack{
                HStack {
                    Text("g당 ")
                        .font(.largeTitle)
                    Spacer()
                    Text(gprice)
                        .font(.largeTitle)
                    Text("원")
                        .font(.largeTitle)
                }

                HStack {
                    Text("개당 ")
                        .font(.largeTitle)
                    
                    
                    Spacer()
                    Text(qprice)
                        .font(.largeTitle)
                    Text("원")
                        .font(.largeTitle)
                }
                
            }.padding(.bottom, 50)
                .padding(.horizontal, 70)
            
            Divider()
                .padding(.bottom, 50)
            
            VStack(alignment: .center) {
                HStack{
                    TextField("제품명 입력", text: $tmpName)
                }
                .padding(10)
                .border(Color.black)
                
                HStack{
                    TextField("제품 가격 입력", text: $tmpPrice)
                }
                .padding(10)
                .border(Color.black)
                
                HStack{
                    HStack {
                        TextField("제품 무게 입력", text: $tmpweight)
                    }
                    .padding(10)
                    .border(Color.black)
                    HStack {
                        TextField("제품 개수 입력", text: $tmpQuantity)
                    }
                    .padding(10)
                    .border(Color.black)
                }
                
                
                
            }.padding(.horizontal, 70)
            
            
            
//            Spacer()
            VStack{
                HStack {
                    Button(action: {
                        var g = Float(tmpPrice)! / Float(tmpweight)! * 100
                        var q = Float(tmpPrice)! / Float(tmpQuantity)!
                        
                        gprice = "\(round(g))"
                        qprice = "\(round(q))"
                    }, label: {
                        Text("계산하기")
                            .foregroundColor(Color.white)
                    })
                    .padding(.horizontal, 21.0)
                    .padding(.vertical, 5)
                }
                .background(Color.green)
                
                
                HStack {
                    Button(action: {
                        
                    }, label: {
                        Text("장바구니 추가")
                            .foregroundColor(Color.white)
                }).padding(5)
                }
                .background(Color.green)
            }
            .padding(.top, 50)
            
        }
    }
        
}

#Preview {
    CalculatorView()
}
