//
//  CompareView.swift
//  caculator_self
//
//  Created by 이은수 on 7/11/24.
//

import SwiftUI

struct CompareView: View {
    @ObservedObject var priceObj: Price = Price()
    //@Binding var name: String
    
    //목록을 1부터 10까지 만듬
    let data = Array(1...10).map { "목록 \($0)"}
    //let data = priceObj.names.map{"목록 \($0)"}
    
    //화면을 그리드형식으로 꽉채워줌
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(data, id: \.self) {i in
                    VStack {
                       CompareBlock()
                   }
                    .padding(.top, 1)
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    CompareView(priceObj: Price())
}
