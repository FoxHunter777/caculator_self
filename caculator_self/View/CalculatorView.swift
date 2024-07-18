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
    @State var tmpWeight:String = ""
    @State var tmpQuantity:String = ""
    
    //var tmpNameArr: [String] = []
    //var tmpQpriceArr: [String] = []
    //var tmpGpriceArr: [String] = []
    @ObservedObject var price: Price
    
    var body: some View {
        VStack{
           
            ZStack{
                VStack{
                    Rectangle()
                        .fill(.green)
                        .cornerRadius(20)
                        
                }
                .frame(height: 150)
                .padding(.horizontal)
                
                
                
                VStack{
                    HStack {
                        Text("g당 ")
                            .font(.title)
                        Spacer()
                        Text(gprice)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        Text("원")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                    }

                    HStack {
                        Text("개당 ")
                            .font(.title)
                        
                        
                        Spacer()
                        Text(qprice)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        Text("원")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                    }
                    
                }
                    .padding(.horizontal, 70)
            }
            
            
            
            ZStack{
                HStack {
                    Color(red: 238 / 255, green: 241 / 255, blue: 244 / 255).ignoresSafeArea()
                }.cornerRadius(20)
                
                VStack(alignment: .center) {
                
                    VStack{
                        
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
                                TextField("제품 무게 입력", text: $tmpWeight)
                            }
                            .padding(10)
                            .border(Color.black)
                            HStack {
                                TextField("제품 개수 입력", text: $tmpQuantity)
                            }
                            .padding(10)
                            .border(Color.black)
                        }
                    }
                    .padding(.horizontal)
                    .padding(.bottom, 30)
                    
                    
                    HStack {
                        Button(action: {
                            var g = Float(tmpPrice)! / Float(tmpWeight)!
                            var q = Float(tmpPrice)! / Float(tmpQuantity)!
                            
                            gprice = "\(round(g))"
                            qprice = "\(round(q))"
                        }, label: {
                            Text("계산하기")
                                .foregroundColor(Color.white)
                        })
                        .frame(width: 330, height: 40)
                        .cornerRadius(20)
                    }
                    .background(Color.green)
                    
                    
                    HStack {
                        Button(action: {
                            
                            price.add(tmpName, tmpQuantity, gprice, qprice)
                            qprice = "0"
                            gprice = "0"
                            
                            tmpName = ""
                            tmpPrice = ""
                            tmpWeight = ""
                            tmpQuantity = ""
                            
                            
                            //tmpNameArr.append(tmpName)
                            
                            
                        }, label: {
                            Text("장바구니 추가")
                                .foregroundColor(Color.black)
                        })
                        .frame(width: 330, height: 40)
                        .cornerRadius(20)
                    }
                    .background(Color.white)
                }
                
                    
            }
            .padding(.horizontal)
            .frame(height: 370)
        }
    }
        
}

#Preview {
    CalculatorView(price: Price())
}
