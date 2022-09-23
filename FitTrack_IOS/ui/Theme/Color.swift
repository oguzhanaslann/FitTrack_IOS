//
//  Color.swift
//  FitTrack_IOS
//
//  Created by Oğuzhan Aslan on 18.09.2022.
//

import Foundation
import UIKit

enum Color {
    case primary
    case onPrimary
    case secondary
    case onSecondary
    case surface
    case onSurface
    case error
    case onError
    case background
    case onBackground
}

func getUIColor(color : Color) -> UIColor {
    switch color {
        case .primary:
            return UIColor.init(named: "primary")!
        case .surface:
            return UIColor.init(named: "surface")!
        case .onPrimary:
            return UIColor.init(named: "onPrimary")!
        case .secondary:
            return UIColor.init(named: "secondary")!
        case .onSecondary:
            return UIColor.init(named: "onSecondary")!
        case .onSurface:
            return UIColor.init(named: "onSurface")!
        case .error:
            return UIColor.init(named: "error")!
        case .onError:
            return UIColor.init(named: "onError")!
        case .background:
            return UIColor.init(named: "background")!
        case .onBackground:
            return UIColor.init(named: "onBackground")!
    }
}

let primaryColor = getUIColor(color: .primary)
let onPrimaryColor = getUIColor(color: .onPrimary)
let secondaryColor = getUIColor(color: .secondary)
let onSecondaryColor = getUIColor(color: .onSecondary)
let surfaceColor = getUIColor(color: .surface)
let onSurfaceColor = getUIColor(color: .onSurface)
let errorColor = getUIColor(color: .error)
let onErrorColor = getUIColor(color: .onError)
let backgroundColor = getUIColor(color: .background)
let onBackgroundColor = getUIColor(color: .onBackground)
