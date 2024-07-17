//
//  Price.swift
//  caculator_self
//
//  Created by 이은수 on 7/11/24.
//

import Foundation

class Price: Identifiable, ObservableObject{
    var id = UUID()
    
    var per_gram: [Int] = []  //g당 가격
    var per_one:[Int] = []  //1개당 가격
    var name:[String] = []  //제품 이름
    var quantity:[Int] = [] //개수 정보
    
    
    
}
