//
//  Type.swift
//  FitTrack_IOS
//
//  Created by Oğuzhan Aslan on 18.09.2022.
//

import Foundation
import UIKit

func FtLargeTitle(
    text : String,
    color : UIColor = .black,
    font : UIFont  = UIFont.poppinsBold(size: 32) ?? UIFont.systemFont(ofSize: 32)
) -> UILabel {
    let label = UILabel()
    label.text = text
    label.textColor = color
    label.font = font
    return label
}

func FtTitle1(
    text : String,
    color : UIColor = .black,
    font : UIFont  = UIFont.poppinsBold(size: 28) ?? UIFont.systemFont(ofSize: 28)
) -> UILabel {
    let label = UILabel()
    label.text = text
    label.textColor = color
    label.font = font
    return label
}



func FtTitle2(
    text : String,
    color : UIColor = .black,
    font : UIFont  = UIFont.poppinsBold(size: 22) ?? UIFont.systemFont(ofSize: 22)
) -> UILabel {
    let label = UILabel()
    label.text = text
    label.textColor = color
    label.font = font
    return label
}


func FtButtonFont () -> UIFont {
    return UIFont.poppinsSemiBold(size: 18) ?? UIFont.systemFont(ofSize: 18)
}

func FtTitle3(
    text : String,
    color : UIColor = .black,
    font : UIFont  = UIFont.poppinsBold(size: 20) ?? UIFont.systemFont(ofSize: 20)
) -> UILabel {
    let label = UILabel()
    label.text = text
    label.textColor = color
    label.font = font
    return label
}


func FtHeadline(
    text : String,
    color : UIColor = .black,
    font : UIFont  = UIFont.poppinsSemiBold(size: 17) ?? UIFont.systemFont(ofSize: 17)
) -> UILabel {
    let label = UILabel()
    label.text = text
    label.textColor = color
    label.font = font
    return label
}


func FtBody(
    text : String,
    color : UIColor = .black,
    font : UIFont  = UIFont.poppinsRegular(size: 17) ?? UIFont.systemFont(ofSize: 17)
) -> UILabel {
    let label = UILabel()
    label.text = text
    label.textColor = color
    label.font = font
    return label
}


func FtCallout(
    text : String,
    color : UIColor = .black,
    font : UIFont  = UIFont.poppinsRegular(size: 16) ?? UIFont.systemFont(ofSize: 16)
) -> UILabel {
    let label = UILabel()
    label.text = text
    label.textColor = color
    label.font = font
    return label
}


func FtSubhead(
    text : String,
    color : UIColor = .black,
    font : UIFont  = UIFont.poppinsRegular(size: 17) ?? UIFont.systemFont(ofSize: 17)
) -> UILabel {
    let label = UILabel()
    label.text = text
    label.textColor = color
    label.font = font
    return label
}

func FtFootnote(
    text : String,
    color : UIColor = .black,
    font : UIFont  = UIFont.poppinsRegular(size: 13) ?? UIFont.systemFont(ofSize: 13)
) -> UILabel {
    let label = UILabel()
    label.text = text
    label.textColor = color
    label.font = font
    return label
}


func FtCaption(
    text : String,
    color : UIColor = .black,
    font : UIFont  = UIFont.poppinsRegular(size: 12) ?? UIFont.systemFont(ofSize: 12)
) -> UILabel {
    let label = UILabel()
    label.text = text
    label.textColor = color
    label.font = font
    return label
}


func FtCaption2(
    text : String,
    color : UIColor = .black,
    font : UIFont  = UIFont.poppinsRegular(size: 11) ?? UIFont.systemFont(ofSize: 11)
) -> UILabel {
    let label = UILabel()
    label.text = text
    label.textColor = color
    label.font = font
    return label
}






