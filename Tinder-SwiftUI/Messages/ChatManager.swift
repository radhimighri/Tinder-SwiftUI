//
//  ChatManager.swift
//  Tinder-SwiftUI
//
//  Created by Radhi MIGHRI on 09/03/2022.
//

import Foundation
import Combine
import UIKit

class ChatManager: ObservableObject {
    
    @Published var messages: [Message] = []
    @Published var keyboardIsShowing: Bool = false
        
    var cancellable: AnyCancellable? = nil
    
    private var person: Person

    init(person: Person) {
        self.person = person
        loadMessages()
        setupPublishers()
    }
   
    public func sendMessage(_ message: Message) {
        // Fire Networking
        
        //at this step we can Show loading indicator
        
        //send
        
        messages.append(message)
        // if networking failure, then show an error with some retry options
        
    }
    
     
        //Publishers
    private let keyboardWillShow = NotificationCenter.default
        .publisher(for: UIResponder.keyboardWillShowNotification)
        .map({ _ in true }) //send true true true...
    
    private let keyboardWillHide = NotificationCenter.default
        .publisher(for: UIResponder.keyboardWillHideNotification)
        .map({ _ in false }) //send false false false...

    
    private func setupPublishers() { //subscribe to the publishers and store them into the cancellable block
        cancellable = Publishers.Merge(keyboardWillShow, keyboardWillHide)
            .subscribe(on: DispatchQueue.main)
            .assign(to: \.keyboardIsShowing, on: self) //send true/false true/false true/false...
    }
    

    private func loadMessages() {
        //Fire up a fake network request, once we receive our message we can assign it..
        messages = [Message.exampleSent, Message.exampleReceived]
    }
    
    
    
    deinit{
        cancellable?.cancel()
    }
    
    
}
