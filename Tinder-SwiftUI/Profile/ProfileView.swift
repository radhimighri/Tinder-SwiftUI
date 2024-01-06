//
//  ProfileView.swift
//  Tinder-SwiftUI
//
//  Created by Radhi MIGHRI on 08/03/2022.
//

import SwiftUI

struct ProfileView: View {
    //MARK: - Properties

    //MARK: - Body
    var body: some View {

        VStack(spacing: 0) {
            
            ZStack(alignment: .topTrailing) {
                RoundedImage(url: URL(string: "https://picsum.photos/500"))
                    .frame(height: 175)
                
                Button {
                    
                } label: {
                    Image(systemName: "pencil")
                        .font(.system(size: 18, weight: .heavy))
                        .foregroundColor(.gray.opacity(0.5))
                        .frame(width: 32, height: 32)
                        .background(.white)
                        .clipShape(Circle())
                        .shadow(radius: 6)
                }
                .padding(.vertical, 10)
                .offset(x: -10)
            }
            
            Spacer().frame(height: 18)
            
            Group {
                Text("Radhi, 31")
                    .foregroundColor(.textTitle)
                    .font(.system(size: 26, weight: .medium))
                
                Spacer().frame(height: 6)
                
                Text("Software Engineer")
                
                Spacer().frame(height: 22)
            }
            
            //Buttons
            HStack(alignment: .top) {
                Spacer()
                //Settings
                Button {
                    print("DEBUG: Settings Btn was taped..")
                } label: {
                    VStack {
                        
                        Image(systemName: "gearshape.fill")
                            .foregroundColor(.gray.opacity(0.5))
                            .font(.system(size: 30))
                            .padding(10)
                            .background(Color.white)
                            .clipShape(Circle())
                            .shadow(radius: 6)
                        
                        Text("SETTINGS")
                            .font(.system(size: 14, weight: .medium))
                            .foregroundColor(.textSecondary)
                        
                    }
                }
                
                Spacer()
                
                //Add media
                
                Button {
                    print("DEBUG: Add media Btn was taped..")
                } label: {
                    VStack {
                        
                        Image(systemName: "camera.fill")
                            .foregroundColor(.white)
                            .font(.system(size: 38))
                            .padding(22)
                            .background(.red)
                            .clipShape(Circle())
                            .shadow(radius: 6)
                        
                        Text("Add Media")
                            .font(.system(size: 14, weight: .medium))
                            .foregroundColor(.textSecondary)
                        
                    }
                }
                
                Spacer()
                
                //Safety
                Button {
                    print("DEBUG: Safety Btn was taped..")
                } label: {
                    VStack {
                        
                        Image(systemName: "shield.fill")
                            .foregroundColor(.gray.opacity(0.5))
                            .font(.system(size: 30))
                            .padding(10)
                            .background(Color.white)
                            .clipShape(Circle())
                            .shadow(radius: 6)
                        
                        Text("SAFETY")
                            .font(.system(size: 14, weight: .medium))
                            .foregroundColor(.textSecondary)
                        
                    }
                }
                
                Spacer()
                
            }
            
            Spacer().frame(height: 14)
            
            //
            HStack {
                Text("Photo Tip: Make waves with a beach photo and get more likes")
                    .multilineTextAlignment(.leading)
                    .lineLimit(3)
                    .foregroundColor(.white)
                    .font(.system(size: 14))
                
                Button {
                    
                } label: {
                    Image(systemName: "plus")
                        .font(.system(size: 12, weight: .heavy))
                        .foregroundColor(.pink)
                        .padding(6)
                }
                .background(Color.white)
                .clipShape(Circle())
                
            }
            .padding()
            .background(Color.pink)
            .cornerRadius(12)
            .padding(.horizontal, 8)
            
            ZStack {
                Color.gray.opacity(0.15)
                
                ProfileSwipePromo {
                    //
                }
            }
            .padding(.top, 18)
//            Spacer()
            
        }
        .foregroundColor(.black.opacity(0.75))
    }
}


//MARK: - Preview
struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .previewDevice("iPhone 11")
            .background(Color.defaultBg)
.previewInterfaceOrientation(.portrait)
     }
}
