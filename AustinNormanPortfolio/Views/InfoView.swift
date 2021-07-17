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
        RoundedRectangle(cornerRadius: 20)
            .frame(height: 60 )
            .foregroundColor(.black)
            .font(.largeTitle)
            .shadow(color: .black, radius: 5)
            .overlay(HStack{
                Image(systemName: imageName)
                    .foregroundColor(.white)
                    .font(.title)
                    .shadow(color: .white, radius: 2)
                Text(text)
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                    .font(.title)
                    .shadow(color: .white, radius: 2)

                    

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
