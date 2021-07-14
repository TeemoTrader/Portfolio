//
//  PortfolioView.swift
//  AustinNormanPortfolio
//
//  Created by Teemo Norman on 7/14/21.
//

import SwiftUI


struct PortfolioView: View {
    
    var apps = ["Dicey", "CodeHistory", "FlashChat", "FlagGuess", "H4xor"]
    
    
    var body: some View {
        NavigationView {
            
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.white, Color.black]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()

                ScrollView(.vertical) {
                    VStack(spacing: 10) {
                        ForEach(0 ..< apps.count) { app in
                            Text("\(apps[app]):")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                            Image(self.apps[app])
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .clipShape(Capsule())
                                .overlay(Capsule().stroke(Color.black, lineWidth: 3))
                                .shadow(color: .black, radius: 20)
                                .padding()
                                
                                
                    }

                }
                    .navigationBarBackButtonHidden(false)
            
            
                
            }
                .frame(height: 800)
            
        }


    }
    }
}




struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView()
    }
}
