//
//  ContentView.swift
//  AustinNormanPortfolio
//
//  Created by Teemo Norman on 7/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.black, Color.white]), startPoint: .bottom, endPoint: .top)
                    .ignoresSafeArea()
                VStack {
                    Image("MEEEEE")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .overlay(
                            Circle().stroke(Color.white, lineWidth: 5))
                    Text("Austin Norman")
                        .font(Font.custom("Montserrat-Bold.ttf", size: 40))
                        .foregroundColor(.white)
                    Text("iOS Developer")
                        .foregroundColor(.white)
                    Divider()
                    InfoView(text: "704-281-3712", imageName: "phone.fill")
                    InfoView(text: "Austin@austin.com", imageName: "envelope.fill")
                    NavigationLink(
                        destination: PortfolioView(),
                        label: {
                            InfoView(text: "View My Portfolio", imageName: "folder.fill")
                                
                        }
                    )
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


