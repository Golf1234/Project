//
//  Userstore.swift
//  PrototypeProjects
//
//  Created by Pattanapong Chankaew on 5/7/2559 BE.
//  Copyright © 2559 Pattanapong Chankaew. All rights reserved.
//

import Foundation
class Userstore {
    static let instance = Userstore()
    
    private init(){}
    
    private var name:String = ""
    
    func getNamestore() -> String{
        return self.name
    }
    
    func setNamestore(name:String){
        self.name = name
    }
    
}
