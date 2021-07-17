//
//  PortfolioView.swift
//  AustinNormanPortfolio
//
//  Created by Teemo Norman on 7/17/21.
//

import SwiftUI

struct PortfolioView: View {
    
    var apps: [Apps] = appData
    
    var body: some View {
        TabView {
            ForEach(apps[0..<apps.count]) { item in
                CardView(apps: item)
            } // LOOP
            .padding(.top, 5)
           
            
        } // TAB
        .navigationBarTitle("My Portfolio", displayMode: .inline)
        
        .tabViewStyle(PageTabViewStyle())
        
    }
    
    
}



struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView()
    }
}
