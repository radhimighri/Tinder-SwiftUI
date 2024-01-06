//
//  ChatViewHeader.swift
//  Tinder-SwiftUI
//
//  Created by Radhi MIGHRI on 09/03/2022.
//

import SwiftUI

struct ChatViewHeader: View {
    //MARK: - Properties
    @Environment(\.presentationMode) var presentationMode
    
    let name: String
    let imageURL: URL?
    let videoAction: () -> Void
    
    //MARK: - Body
    var body: some View {
        
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(.top)
                .shadow(radius: 3)
            
            HStack {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundColor(Color.textPrimary)
                        .font(.system(size: 28, weight: .semibold))
                }
                
                Spacer()
                
                VStack(spacing: 6){
                    RoundedImage(url: imageURL)
                        .frame(height: 50)
                    
                    Text(name)
                        .foregroundColor(Color.textSecondary)
                        .font(.system(size: 14))
                }
                
                
                Spacer()
                
                Button {
                    videoAction()
                } label: {
                    Image(systemName: "video.fill")
//                        .foregroundColor(Color.textPrimary)
                        .font(.system(size: 20, weight: .bold))
                }
            }
            .padding(.horizontal, 22)
            .padding(.vertical , 10)
            
        }
        .frame(height: 50)
    }
}

struct ChatViewHeader_Previews: PreviewProvider {
    static var previews: some View {
        let person = Person.exemple
        ChatViewHeader(name: person.name,
                       imageURL: person.imageURLs.first,
                       videoAction: {
            //
            
        }
        )
    }
}
