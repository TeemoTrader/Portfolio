//
//  PortfolioModel.swift
//  AustinNormanPortfolio
//
//  Created by Teemo Norman on 7/17/21.
//

import SwiftUI

//MARK: - PORTFOLIO DATA MODEL

struct Apps: Identifiable {
    var id = UUID()
    var title: String
    var image: String
    var gradientColors: [Color]
    var description: [String]
    var headline: String
}
