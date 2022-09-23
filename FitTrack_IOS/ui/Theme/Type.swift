//
//  Type.swift
//  FitTrack_IOS
//
//  Created by Oğuzhan Aslan on 18.09.2022.
//

import Foundation
import UIKit

func FTSubHeader1(
    text : String,
    color : UIColor = .black,
    font : UIFont  = UIFont.boldSystemFont(ofSize: 18)
) -> UILabel {
    let label = UILabel()
    label.text = text
    label.textColor = color
    label.font = font
    return label
}
