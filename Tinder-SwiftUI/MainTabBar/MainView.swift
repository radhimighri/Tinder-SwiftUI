//
//  MainView.swift
//  Tinder-SwiftUI
//
//  Created by Radhi MIGHRI on 07/03/2022.
//

import SwiftUI

struct MainView: View {
    //MARK: - Properties
    @EnvironmentObject var appState: AppStateManager
    
    //MARK: - Helpers
    func correctViewForState() -> some View {
        
        switch appState.selectedTab {
            
        case .fire:
            let view = Text("Fire")
            return AnyView(view)
        case .star:
            let view = Color.red
            return AnyView(view)
        case .message:
            let view = MessageView(message: Message.exampleReceived)
            return AnyView(view)
        case .profile:
            let view = ProfileView()
            return AnyView(view)
        }
    }
    
    //MARK: - Body
    var body: some View {

        ZStack {
            Color(.systemGray6)
                .opacity(0.35)
                .edgesIgnoringSafeArea(.vertical)
            
            VStack {
                HStack {
                    
                    Spacer()
                    
//                    TabBarButtonView(type: .fire) {
//                        appState.selectedTab = .fire
//                    }
//
                    TabBarButtonView(type: .fire)
                    
                    Spacer()

                    TabBarButtonView(type: .star)
                    
                    Spacer()

                    TabBarButtonView(type: .message)
                    
                    Spacer()
                    
                    TabBarButtonView(type: .profile)
                    
                    Spacer()

                }
                .frame(height: 100) //Height of our bar
                .padding(.top, 30)
                
                correctViewForState()
                
                Spacer()
            }
            .edgesIgnoringSafeArea(.vertical)
        }

    }
}

//MARK: - Preview
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView().environmentObject(AppStateManager()) //we have to initialise it to avoid the preview crash
            .previewDevice("iPhone 11")
    }
}

