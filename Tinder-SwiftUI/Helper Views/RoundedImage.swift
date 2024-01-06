//
//  RoundedImage.swift
//  Tinder-SwiftUI
//
//  Created by Radhi MIGHRI on 08/03/2022.
//

import SwiftUI
import Kingfisher

struct RoundedImage: View {
    
    var url: URL?
    
    var body: some View {

        KFImage(url)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())

    }
}

struct RoundedImage_Previews: PreviewProvider {
    static var previews: some View {
        RoundedImage(url: URL(string: "https://picsum.photos/id/870/200/300?grayscale&blur=2"))
            .previewLayout(.sizeThatFits)
    }
}
