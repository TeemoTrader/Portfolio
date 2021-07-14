//
//  InfoView.swift
//  AustinNormanPortfolio
//
//  Created by Teemo Norman on 7/12/21.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(height: 60 )
            .foregroundColor(.white)
            .overlay(HStack{
                Image(systemName: imageName)
                    .foregroundColor(.green)
                Text(text)
                    .font(.system(size: 25))
            })
            .padding()
            .animation(.easeInOut)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "704-281-3712", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
