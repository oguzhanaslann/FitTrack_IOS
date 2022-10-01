//
//  Extensions.swift
//  FitTrack_IOS
//
//  Created by Oğuzhan Aslan on 25.09.2022.
//

import Foundation
import UIKit

extension UIScrollView {
    func scrollTo(horizontalPage : Int = 0, verticalPage: Int = 0, animated : Bool = true) {
        var frame = self.frame
        frame.origin.x = frame.size.width * CGFloat(horizontalPage)
        frame.origin.y = frame.size.width * CGFloat(verticalPage)
        self.scrollRectToVisible(frame, animated: animated)
    }
}

extension UILabel {
    func breakLineFromEndIfNeeded() {
        self.adjustsFontSizeToFitWidth = false
        self.numberOfLines = 0
        self.lineBreakMode = .byTruncatingTail
    }
}


extension UIView {
    func hide() {
        self.isHidden = true
    }
    
    func show() {
        self.isHidden = false
    }
    
}

extension UIAlertController {
    func showOn(_ controller: UIViewController, isAnimated : Bool , completion: (() -> Void)? = nil) {
        controller.present(self, animated: isAnimated, completion: completion)
    }
}

extension Bool {
    func not()  -> Bool {
        return !self
    }
}

extension String {
    func localize(_ key : String? = nil) -> String {
      return NSLocalizedString( key ?? self , comment: "")
    }
}
