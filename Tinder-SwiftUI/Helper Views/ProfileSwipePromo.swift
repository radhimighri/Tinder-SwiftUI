//
//  ProfileSwipePromo.swift
//  Tinder-SwiftUI
//
//  Created by Radhi MIGHRI on 08/03/2022.
//

import SwiftUI

struct ProfileSwipePromo: View {
    //MARK: - Properties
    var action: () -> Void
    
    //MARK: - Body
    var body: some View {

        VStack(spacing: 0) {
            
            TabView {

                //1st
                VStack(spacing: 9) {
                    Spacer()
                    Text("Get Tinder Gold!")
                        .font(.system(size: 26, weight: .semibold))
                    Text("See who Likes You & more!")
                }
                .padding(.bottom, 64)
                
                //2nd
                VStack(spacing: 9) {
                    Spacer()
                    Text("Get Matches Faster!")
                        .font(.system(size: 26, weight: .semibold))
                    Text("Boost your profile once a month!!")
                }
                .padding(.bottom, 64)

                //3th
                VStack(spacing: 9) {
                    Spacer()
                    Text("Increase Your Chances!")
                        .font(.system(size: 26, weight: .semibold))
                    Text("Boost your profile once a month!!")
                }
                .padding(.bottom, 64)

            }
            .tabViewStyle(PageTabViewStyle())
            
            
            //Tinder plus btn
            Button {
                action()
            } label: {
                Text("MY TINDER PLUS")
                    .foregroundColor(.red)
                    .font(.system(size: 18, weight: .semibold))
                    .padding(.vertical, 20)
                    .padding(.horizontal, 50)
                    .background(Color.white)
                    .cornerRadius(30)
                    .shadow(color: Color.gray.opacity(0.2), radius: 10)
            }
            .padding(.bottom, 30)
            
            
        }
    }
}

//MARK: - Preview
struct ProfileSwipePromo_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.gray.opacity(0.2)
                .edgesIgnoringSafeArea(.all)
            
            ProfileSwipePromo {
                print("DEBUG: Test")
            }
        }
        .frame(height: 400)
        
    }
}
