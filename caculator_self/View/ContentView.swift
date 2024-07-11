//
//  ContentView.swift
//  caculator_self
//
//  Created by 이은수 on 7/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TabView() {
                
                CalculatorView().tabItem {
                    Text("홈화면")
                    Image(systemName: "house")
                    
                }.tag(1)
                
                CompareView().tabItem {
                    
                    Image(systemName: "basket")
                    Text("장바구니")
                }.tag(2)
            }
        }
    }
}

#Preview {
    ContentView()
}
