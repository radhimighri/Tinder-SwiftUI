//
//  ContentView.swift
//  Tinder-SwiftUI
//
//  Created by Radhi MIGHRI on 07/03/2022.
//

import SwiftUI

struct ContentView: View {
    
    //Initialise the AppStateManager class, so this class now has a place where it llives (ContentView)
    @ObservedObject var mng: AppStateManager = AppStateManager()
    
    var body: some View {

        MainView()
            .environmentObject(mng)// pass the AppStateManager instance to the subView/childView (MainView), and the MainView will link it to every other subView of our app (ProfileView, SettingsView, MainSwipingView...)

    }
}
  
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11")
    }
}
