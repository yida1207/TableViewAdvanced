//
//  Hebe.swift
//  TableViewBasic
//
//  Created by Yida on 2020/9/22.
//  Copyright © 2020 Yida. All rights reserved.
//

import Foundation

protocol Hebe {
}

struct HebeMusic:Hebe{
    var name:String
    var lyric:String
    var imageName:String
    var favority:Bool
}

struct HebeMovie:Hebe{
    var name:String
    var intro:String
    var imageName:String
    var favority:Bool
}

enum Type {
    case music, movie    
}
