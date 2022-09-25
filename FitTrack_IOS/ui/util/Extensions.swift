//
//  Extensions.swift
//  FitTrack_IOS
//
//  Created by Oğuzhan Aslan on 25.09.2022.
//

import Foundation
import UIKit


extension UILabel {
    func breakLineFromEndIfNeeded() {
        self.adjustsFontSizeToFitWidth = false
        self.numberOfLines = 0
        self.lineBreakMode = .byTruncatingTail
    }
}
