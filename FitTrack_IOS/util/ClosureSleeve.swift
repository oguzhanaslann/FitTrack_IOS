//
//  ClosureSleeve.swift
//  FitTrack_IOS
//
//  Created by Oğuzhan Aslan on 1.10.2022.
//

import Foundation


class ClosureSleeve {
  let closure: () -> ()

  init(attachTo: AnyObject, closure: @escaping () -> ()) {
    self.closure = closure
    objc_setAssociatedObject(attachTo, "[\(arc4random())]", self, .OBJC_ASSOCIATION_RETAIN)
  }

  @objc func invoke() {
    closure()
  }
}
