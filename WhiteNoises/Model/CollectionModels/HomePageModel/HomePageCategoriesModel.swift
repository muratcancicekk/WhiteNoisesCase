//
//  HomePageCategoriesModel.swift
//  WhiteNoises
//
//  Created by Murat on 11.11.2022.
//

import Foundation

struct HomePageMyMixModel: Hashable {
    let header: String
    let imageName: String
}

struct HomePageAllDataModel: Hashable {
    let model: [HomePageMyMixModel]
    let header: String
    let subtitle: String
}


struct HomePageModel {
    static let homePageAllData = [HomePageAllDataModel(model: myMixModel, header: "My mix", subtitle: "My List"),
        HomePageAllDataModel(model: forBabies, header: "White Noise", subtitle: "For babies 0 - 6 months."),
        HomePageAllDataModel(model: social, header: "Social", subtitle: "For babies 6 - 12 months."),
        HomePageAllDataModel(model: natural, header: "Natural", subtitle: "For babies 6 - 18 months."),
        HomePageAllDataModel(model: special, header: "Special", subtitle: "For all ages."),]


    static let myMixModel = [HomePageMyMixModel(header: "Fun", imageName: "musicCircleIcon"),
        HomePageMyMixModel(header: "Happy", imageName: "musicCircleIcon"),
        HomePageMyMixModel(header: "Love", imageName: "musicCircleIcon"),
        HomePageMyMixModel(header: "Cold", imageName: "musicCircleIcon"),
        HomePageMyMixModel(header: "Relax", imageName: "musicCircleIcon"),
        HomePageMyMixModel(header: "Calm", imageName: "musicCircleIcon"),
        HomePageMyMixModel(header: "Sweet", imageName: "musicCircleIcon"),
        HomePageMyMixModel(header: "Hot", imageName: "musicCircleIcon")]

    static let forBabies = [HomePageMyMixModel(header: "Vacuum Cleaner", imageName: "vacuumIcon"),
        HomePageMyMixModel(header: "Old TV", imageName: "oldtvIcon"),
        HomePageMyMixModel(header: "Hair Dryer", imageName: "hairDryerIcon"),
        HomePageMyMixModel(header: "Train", imageName: "trainIcon"),
        HomePageMyMixModel(header: "Rain", imageName: "rainIcon"),
        HomePageMyMixModel(header: "Wind", imageName: "windIcon"),
        HomePageMyMixModel(header: "Strong Rain", imageName: "strongRainIcon"),
        HomePageMyMixModel(header: "Airplane", imageName: "airplaneIcon")]

    static let social = [HomePageMyMixModel(header: "Birds", imageName: "birdIcon"),
        HomePageMyMixModel(header: "Chicken", imageName: "chickenIcon"),
        HomePageMyMixModel(header: "Keyboard", imageName: "keyboardIcon"),
        HomePageMyMixModel(header: "Table Fan", imageName: "tableFanIcon"),
        HomePageMyMixModel(header: "Frog", imageName: "frogIcon"),
        HomePageMyMixModel(header: "Bubble", imageName: "bubblesIcon"),
        HomePageMyMixModel(header: "Airport", imageName: "airportIcon"),
        HomePageMyMixModel(header: "Wall Clock", imageName: "wallClockIcon")]

    static let natural = [HomePageMyMixModel(header: "PingPong", imageName: "pingPongIcon"),
        HomePageMyMixModel(header: "Fountain", imageName: "fountainIcon"),
        HomePageMyMixModel(header: "Sewing Machine", imageName: "sewingMachineIcon"),
        HomePageMyMixModel(header: "Forest", imageName: "forestIcon"),
        HomePageMyMixModel(header: "Breathe(Run)", imageName: "breatheRunIcon"),
        HomePageMyMixModel(header: "Mower", imageName: "mowerIcon"),
        HomePageMyMixModel(header: "Storm", imageName: "stormIcon"),
        HomePageMyMixModel(header: "River", imageName: "riverIcon")]

    static let special = [HomePageMyMixModel(header: "Cooking", imageName: "cookingIcon"),
        HomePageMyMixModel(header: "Heartbeat", imageName: "heartIcon"),
        HomePageMyMixModel(header: "Water Drop", imageName: "waterTapIcon"),
        HomePageMyMixModel(header: "Printer", imageName: "printingIcon"),
        HomePageMyMixModel(header: "Snoring(Cat)", imageName: "catIcon"),
        HomePageMyMixModel(header: "Fireworks", imageName: "fireworkIcon"),
        HomePageMyMixModel(header: "Blower", imageName: "blowerIcon"),
        HomePageMyMixModel(header: "Drum", imageName: "drumIcon"),
        HomePageMyMixModel(header: "Space", imageName: "planetsIcon")]
}
