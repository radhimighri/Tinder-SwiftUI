//
//  Person.swift
//  Tinder-SwiftUI
//
//  Created by Radhi MIGHRI on 08/03/2022.
//

import Foundation

struct Person: Hashable {
    
    var name: String
    var imageURLs: [URL]
}

extension Person {
    static let exemple = Person(name: "Alex", imageURLs: [URL(string: "https://picsum.photos/400/300")!])
}
