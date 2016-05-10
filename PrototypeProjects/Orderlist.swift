//
//  Orderlist.swift
//  PrototypeProjects
//
//  Created by Pattanapong Chankaew on 5/10/2559 BE.
//  Copyright © 2559 Pattanapong Chankaew. All rights reserved.
//

import Foundation
class Orserlist {
    static let instance = Orserlist()
    
    private init(){}
    
    private var cart:[[String:String]] = []
    
    func add(item:[String:String]){
        self.cart.append(item)
    }
    
    func clear(item:[String:String]){
        self.cart = []
    }
    
    func get() -> [[String:String]]{
        return self.cart
    }
    
}
