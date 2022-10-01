//
//  Util.swift
//  FitTrack_IOS
//
//  Created by Oğuzhan Aslan on 25.09.2022.
//

import Foundation
import UIKit


func FtSystemImage(
    systemName : String,
    clipToBounds : Bool? = nil,
    borderColor: CGColor? = nil,
    borderWidth : CGFloat? = nil,
    tint : UIColor? = nil
)  -> UIImageView {
    let image = UIImage(systemName: systemName)
    let imageView = UIImageView(image: image)
    
    if clipToBounds !=  nil {
        imageView.clipsToBounds = clipToBounds!
    }
    
    if borderColor !=  nil {
        imageView.layer.borderColor = borderColor!
    }
    
    if borderWidth !=  nil {
        imageView.layer.borderWidth = borderWidth!
    }
    
    if tint != nil {
        imageView.tintColor = tint!
    }
    
    return imageView
}


func FtImage (
    name : String,
    clipToBounds : Bool? = nil,
    borderColor: CGColor? = nil,
    borderWidth : CGFloat? = nil
)  -> UIImageView {
    let image = UIImage(named: name)
    let imageView = UIImageView(image: image)
    
    if clipToBounds !=  nil {
        imageView.clipsToBounds = clipToBounds!
    }
    
    if borderColor !=  nil {
        imageView.layer.borderColor = borderColor!
    }
    
    if borderWidth !=  nil {
        imageView.layer.borderWidth = borderWidth!
    }
    
    return imageView
}
