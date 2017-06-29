//
//  AddOn.swift
//  IOS-SWIFT
//
//  Created by Pro-tek on 19/05/17.
//  Copyright © 2017 Protek. All rights reserved.
//

import Foundation

class Addon {
    var id :Int?
    var name :String?
    var desc :String?
    var limit:String?
    var next : Int?
    var aname:String?
    var specialAddon: Int?
    
init(id:Int?,name:String?,desc:String?,limit:String?,next:Int?,aname:String?,specialAddon: Int?){
    self.id = id
    self.name = name
    self.desc = desc
    self.limit = limit
    self.next = next
    self.aname = aname
    self.specialAddon = specialAddon
    }
    
}
