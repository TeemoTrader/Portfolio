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
                LinearGradient(gradient: Gradient(colors: [Color.white, Color.black]), startPoint: .bottom, endPoint: .top)
                    .ignoresSafeArea()
                VStack {
                    Image("meh")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .overlay(
                            Circle().stroke(Color.black, lineWidth: 3))
                        .shadow(color: .black, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    Text("Austin Norman")
                        .font(Font.custom("Montserrat-Bold.ttf", size: 40))
                        .foregroundColor(.white)
                        .shadow(color: .black, radius: 5)

                    Text("iOS Developer")
                        .foregroundColor(.white)
                        .shadow(color: .black, radius: 5)

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


