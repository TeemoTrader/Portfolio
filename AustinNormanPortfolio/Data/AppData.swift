//
//  AppData.swift
//  AustinNormanPortfolio
//
//  Created by Teemo Norman on 7/17/21.
//

import SwiftUI

let appData: [Apps] = [
    Apps(
        id: UUID(),
        title: "Frootz",
        image: "Frootz",
        gradientColors: [Color("FrootzColorLight"), Color("FrootzColorDark")],
        description: ["HelloWORLD"],
        headline: "Beautifully color coordinated cards/views/assets"),
    Apps(
        id: UUID(),
        title: "Scramble",
        image: "Scramble",
        gradientColors: [Color("ScrambleColorLight"), Color("ScrambleColorDark")],
        description: ["Uses imported database, checks if word uses same letters, then assigns points based on how many letters"],
        headline: "10 second rounds, 5 words."),
    Apps(
        id: UUID(),
        title: "Haxor",
        image: "Haxor",
        gradientColors: [Color("HaxorColorLight"), Color("HaxorColorDark")],
        description: ["Uses imported database, checks if word uses same letters, then assigns points based on how many letters"],
        headline: "API calls filled with webviews"),
    Apps(
        id: UUID(),
        title: "Code History",
        image: "CodeHistory",
        gradientColors: [Color("HistoryColorLight"), Color("HistoryColorDark")],
        description: ["Uses imported database, checks if word uses same letters, then assigns points based on how many letters"],
        headline: "Basic database quiz app with score tracking"),
    Apps(
        id: UUID(),
        title: "Clima",
        image: "Clima",
        gradientColors: [Color("ClimaColorLight"), Color("ClimaColorDark")],
        description: ["Uses imported database, checks if word uses same letters, then assigns points based on how many letters"],
        headline: "Uses device location services as well as search to parse data from the API")
]
