//
//  Message.swift
//  Tinder-SwiftUI
//
//  Created by Radhi MIGHRI on 08/03/2022.
//

import Foundation

struct Message: Hashable /*Equatable*/ { //Hashable a protocol that make us enable to make the difference between to msgs based on the hash of each one
    
//    static func == (lhs: Message, rhs: Message) -> Bool {
//
//    }
    
    var content: String
    var person: Person? = nil
    
    var fromCurrentUser: Bool {
        return person == nil
    }
}


extension Message {
    static let exampleSent = Message(content: "Hello there..")
    static let exampleReceived = Message(content: "Hi", person: Person.exemple)
}
