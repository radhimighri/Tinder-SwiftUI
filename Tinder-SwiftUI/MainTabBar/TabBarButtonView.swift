//
//  TabBarButtonView.swift
//  Tinder-SwiftUI
//
//  Created by Radhi MIGHRI on 07/03/2022.
//

import SwiftUI

enum TabBarButtonType: String {
    case fire = "flame.fill"
    case star = "star.fill"
    case message = "message.fill"
    case profile = "person.fill"
}


struct TabBarButtonView: View {
    //MARK: - Properties
    var type: TabBarButtonType
//    var action: () -> Void
    @EnvironmentObject var appState: AppStateManager
    
    //MARK: - Body
    var body: some View {
        Button {
//            action()
            appState.selectedTab = type
        } label: {
            Image(systemName: type.rawValue)
                .resizable()
                .aspectRatio(contentMode: .fit)
            //if the selected tab is the same type that this button is rendering then we want to apply this transformation
                .if(appState.selectedTab == type, transform: {
                    $0.foregroundColor(type == .star ? .yellow : .red) // $0: current view : Button
                })
                .foregroundColor(.gray.opacity(0.5))
        }
        .frame(height: 32)
    }
}


//MARK: - Preview
struct TabBarButtonView_Previews: PreviewProvider {
    static var previews: some View {
//        TabBarButtonView(type: .star) {
//            print("DEBUG: Test")
//        }
        TabBarButtonView(type: .star)
            .previewLayout(.sizeThatFits)
    }
}
