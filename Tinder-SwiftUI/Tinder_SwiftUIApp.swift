//
//  Tinder_SwiftUIApp.swift
//  Tinder-SwiftUI
//
//  Created by Radhi MIGHRI on 07/03/2022.
//

import SwiftUI

@main
struct Tinder_SwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            ChatView(person: Person.exemple)
        }
    }
}
