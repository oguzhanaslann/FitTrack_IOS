//
//  Localization.swift
//  FitTrack_IOS
//
//  Created by Oğuzhan Aslan on 25.09.2022.
//

import Foundation



enum Localization : String {
    case next = "Next"
    case start = "Start"
    case onboard1Title = "onboard1Title"
    case onboard1Slogan = "onboard1Slogan"
    
    case onboard2Title = "onboard2Title"
    case onboard2Slogan = "onboard2Slogan"
    
    case onboard3Title = "onboard3Title"
    case onboard3Slogan = "onboard3Slogan"
}

extension Localization {
    func localize(_ key : String? = nil) -> String {
        return NSLocalizedString( key ?? self.rawValue , comment: "")
    }
}
