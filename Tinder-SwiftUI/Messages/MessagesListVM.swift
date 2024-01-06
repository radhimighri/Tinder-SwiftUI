//
//  MessagesListVM.swift
//  Tinder-SwiftUI
//
//  Created by Radhi MIGHRI on 14/03/2022.
//

import Foundation


class MessagesListVM: ObservableObject {
    @Published var messagePreviews: [MessagePreview] = []
    
    init() {
        loadPreviews()
    }
    
    func loadPreviews() {
        //Handle networking to load messagesPreviews from a server
        self.messagePreviews = [MessagePreview.exemple]
    }

}
