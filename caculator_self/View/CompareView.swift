//
//  CompareView.swift
//  caculator_self
//
//  Created by 이은수 on 7/11/24.
//

import SwiftUI

struct CompareView: View {
    
    //목록을 1부터 1000까지 만듬
        let data = Array(1...20).map { "목록 \($0)"}
        
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
                       Capsule()
                           .fill(Color.green)
                           .frame(height: 150)
                       Text(i)
                           .foregroundColor(.secondary)
                   }
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    CompareView()
}
