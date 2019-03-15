//
//  Historico.swift
//  pupeagua
//
//  Created by Renato High on 12/03/19.
//  Copyright © 2019 Renato High. All rights reserved.
//

import Foundation

struct Historico{
    let authorName: String
    
    static func fetchVideos() -> [Historico] {
        let v1 = Historico(authorName: "Daivid Tran")
        return [v1]
    }
    
}


