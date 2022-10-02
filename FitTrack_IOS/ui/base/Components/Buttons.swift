//
//  Buttons.swift
//  FitTrack_IOS
//
//  Created by Oğuzhan Aslan on 25.09.2022.
//

import Foundation
import UIKit

func FtLargeButton(
    titleOnNormalState : String,
    backgroundColor : UIColor,
    titleColorOnNormalState : UIColor
)  -> UIButton {
    let button = UIButton()
    button.setTitle(titleOnNormalState, for: .normal)
    if let label = button.titleLabel {
        label.font = FtButtonFont()
    }
    button.backgroundColor = backgroundColor
    button.setTitleColor(titleColorOnNormalState, for: .normal)
    button.layer.cornerRadius = roundedMediumCornerRadius
    return button 
}
