//
//  User.swift
//  Mentions
//
//  Created by Apple on 01/09/18.
//  Copyright © 2018 Batth. All rights reserved.
//

import UIKit
import Hakawai

class User: NSObject,HKWMentionsEntityProtocol {
    
    var name: String!
    var id: Int!
    
    init(name: String, id: Int) {
        self.name = name
        self.id = id
    }
    
    func entityId() -> String! {
        return String(describing: self.id)
    }
    
    func entityName() -> String! {
        return self.name
    }
    
    func entityMetadata() -> [AnyHashable : Any]! {
        return [self.id:self.name]
    }
}
