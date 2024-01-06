//
//  MessagePreview.swift
//  Tinder-SwiftUI
//
//  Created by Radhi MIGHRI on 08/03/2022.
//

import Foundation

//represents all the conversations

struct MessagePreview {
    var person: Person
    var lastMessage: String
}


extension MessagePreview {
    
    static let exemple = MessagePreview(person: Person.exemple, lastMessage: "Hello there.")
    
}
