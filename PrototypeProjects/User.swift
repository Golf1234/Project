//
//  User.swift
//  PrototypeProjects
//
//  Created by Pattanapong Chankaew on 5/6/2559 BE.
//  Copyright © 2559 Pattanapong Chankaew. All rights reserved.
//

import Foundation


class User {
    static let instance = User()
    
    private init(){}
    
    private var name:String = ""
    
    func getName() -> String{
        return self.name
    }
    
    func setName(name:String){
        self.name = name
    }
}
