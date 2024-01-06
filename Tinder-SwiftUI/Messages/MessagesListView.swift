//
//  MessagesListView.swift
//  Tinder-SwiftUI
//
//  Created by Radhi MIGHRI on 14/03/2022.
//

import SwiftUI

struct MessagesListView: View {
    
    //MARK: - Properties
    @ObservedObject var vm: MessagesListVM = MessagesListVM()
    
    @State private var searchText: String = ""
    @State private var isEditing: Bool = false

    //MARK: - Body
    var body: some View {
        VStack {
            
            HStack {
                TextField("Search Matches", text: $searchText)
                    .padding(7)
                    .padding(.horizontal, 25)
                    .background(Color.textFieldBG)
                    .cornerRadius(8)
                    .overlay(
                        HStack {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.textPrimary)
                                .font(.system(size: 20, weight: .bold))
                                .padding(.leading, 4)
                            
                            Spacer()
                        }
                    )
                .padding(.horizontal, 10)
                .onTapGesture {
                    self.isEditing = true
                }
                .animation(.easeIn(duration: 0.25))
                
                if isEditing {
                    Button {
                        //
                        self.isEditing = false
                        self.searchText = ""
                    } label: {
                        Text("Cancel")
                    }
                    .padding(.trailing, 10)
                    .transition(.move(edge: .trailing))//describe the way of transition
                    .animation(.easeIn(duration: 0.25))// determine how quicly / what duration to finish the transition
                }
                
                

            }
            
            
            
            Spacer()
            
            
        }
    }
}

//MARK: - Preview
struct MessagesListView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesListView()
    }
}
 
