//
//  Price.swift
//  caculator_self
//
//  Created by 이은수 on 7/11/24.
//

import Foundation

class Price: Identifiable, ObservableObject{
    @Published var id = UUID()
    
    @Published var per_gram: [String] = []  //g당 가격
    @Published var per_one:[String] = []  //1개당 가격
    @Published var names:[String] = []  //제품 이름
    @Published var quantity:[String] = [] //개수 정보
    
    init() {
        self.names = ["eunsu"]
    }
    
    func add(_ name:String, _ q:String, _ pg: String, _ po: String){
        names.append(name)
        quantity.append(q)
        per_one.append(po)
        per_gram.append(pg)
    }
    func clear(){
        names.removeAll()
        quantity.removeAll()
        per_one.removeAll()
        per_gram.removeAll()
    }
    func clearLast(){
        names.removeLast()
        quantity.removeLast()
        per_one.removeLast()
        per_gram.removeLast()
    }
    
}
