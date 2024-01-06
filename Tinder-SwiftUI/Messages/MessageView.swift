//
//  MessageView.swift
//  Tinder-SwiftUI
//
//  Created by Radhi MIGHRI on 08/03/2022.
//

import SwiftUI

struct MessageView: View {
    //MARK: - Properties
    var message: Message
    
    //MARK: - Body
    var body: some View {
        
        HStack {
            
            if message.fromCurrentUser {
                Spacer()
            }
            
            Text(message.content)
                .padding(10)
                .foregroundColor(.white)
                .background(message.fromCurrentUser ? Color.blue : Color.gray)
                .cornerRadius(10)
            
            if !message.fromCurrentUser {
                Spacer()
            }
        }
        .padding()
    }
}


//MARK: - Preview
struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(message: Message.exampleReceived)
            .previewDevice("iPhone 11")
    }
}
