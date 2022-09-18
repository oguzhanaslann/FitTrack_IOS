//
//  ViewController.swift
//  FitTrack_IOS
//
//  Created by Oğuzhan Aslan on 17.09.2022.
//

import UIKit
import SnapKit
import Foundation

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

class BaseViewContoller : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = backgroundColor
    }
}


class OnBoardingViewContoller: BaseViewContoller {
    
    let circle: UIView = {
        let view =  UIView()
        view.backgroundColor = onPrimaryColor
        return view
    }()

    let circle2: UIView = {
        let view =  UIView()
        view.backgroundColor = onPrimaryColor
        view.alpha = 0.77
        return view
    }()

    let circle3: UIView = {
        let view =  UIView()
        view.backgroundColor = onPrimaryColor
        view.alpha = 0.57
        return view
    }()
    
    let circle4: UIView = {
        let view =  UIView()
        view.backgroundColor = onPrimaryColor
        view.alpha = 0.25
        return view
    }()


    


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = primaryColor
       
        view.addSubview(circle)
        view.backgroundColor = primaryColor
        circle.snp.makeConstraints { make in
            make.top.greaterThanOrEqualTo(view.snp.top).offset(64)
            let dimensions = 324
            make.width.equalTo(dimensions)
            make.height.equalTo(dimensions)
            circle.layer.cornerRadius = CGFloat((dimensions / 2))
            make.centerX.equalTo(view.snp.centerX)
        }
        
       
        
        view.addSubview(circle2)
        view.backgroundColor = primaryColor
        circle2.snp.makeConstraints { make in
            let dimensions = 464
            make.width.equalTo(dimensions)
            make.height.equalTo(dimensions)
            make.center.equalTo(circle.snp.center)
            circle2.layer.cornerRadius = CGFloat((dimensions / 2))
        }
        
        
        view.addSubview(circle3)
        view.backgroundColor = primaryColor
        circle3.snp.makeConstraints { make in
            let dimensions = 578
            make.width.equalTo(dimensions)
            make.height.equalTo(dimensions)
            make.center.equalTo(circle.snp.center)
            circle3.layer.cornerRadius = CGFloat((dimensions / 2))
        }
        
        
        view.addSubview(circle4)
        view.backgroundColor = primaryColor
        circle4.snp.makeConstraints { make in
            let dimensions = 658
            make.width.equalTo(dimensions)
            make.height.equalTo(dimensions)
            make.center.equalTo(circle.snp.center)
            circle4.layer.cornerRadius = CGFloat((dimensions / 2))
        }
       
    }
    
}
