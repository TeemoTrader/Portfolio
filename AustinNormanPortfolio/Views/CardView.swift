//
//  CardView.swift
//  AustinNormanPortfolio
//
//  Created by Teemo Norman on 7/17/21.
//

import SwiftUI

struct CardView: View {
    //MARK: - PROPERTIES
    
    var apps: Apps
    @State private var isAnimating: Bool = false

    
    
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            VStack(spacing: 20) {

                // APP: IMAGE : ADDED INDIVIDUAL ANIMATION TO DO WHEN ON APPEAR TRIGGERED : CUSTOM SHADOW
                Image(apps.image)
                    .resizable()
                    .cornerRadius(30)
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                    .padding(.top, 10)

                
                // APP: TITLE : CUSTOM SHADOW
                Text(apps.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                // APP: HEADLINE
                Text(apps.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                    .padding(.bottom, 40)
                // BUTTON: START
                //StartButtonView()
                
                
            } //VSTACK
        } // ZSTACK
        .onAppear {
            withAnimation(.easeOut(duration: 0.8)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: apps.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(30)
        .padding(.horizontal, 20)
    }
}




//MARK: - PREVIEW
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(apps: appData[0])
    }
}
