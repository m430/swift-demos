//
//  BooksOO.swift
//  SwiftDemos
//
//  Created by 郑敏 on 2024/6/5.
//

import Foundation

@Observable
class BooksOO {
    
    var data: [BooksDO] = []
    
    func fetch() {
        data = [
            BooksDO(name: "SwiftUI Views Mastery"),
            BooksDO(name: "SwiftUI Animations Mastery"),
            BooksDO(name: "Combine Mastery in SwiftUI"),
            BooksDO(name: "Core Data Mastery in SwiftUI"),
            BooksDO(name: "SwiftData Mastery in SwiftUI"),
            BooksDO(name: "Working with Data in SwiftUI"),
        ]
    }
}
