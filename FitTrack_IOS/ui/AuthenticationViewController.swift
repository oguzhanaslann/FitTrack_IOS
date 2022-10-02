//
//  AuthenticationViewController.swift
//  FitTrack_IOS
//
//  Created by Oğuzhan Aslan on 30.09.2022.
//

import Foundation
import UIKit

class AuthenticationViewController : UIViewController {
    
    lazy var circle1 : UIView = {
        return uiCircle(alpha: 0.57)
    }()
    
    lazy var circle2 : UIView = {
        return uiCircle(alpha: 0.25)
    }()
    
    lazy var containerCard : UIView = {
        let card = UIView()
        card.backgroundColor = backgroundColor
        card.layer.cornerRadius = roundedMediumCornerRadius
        
        let title = FtTitle1(text:Localization.localized(.signIn),color: onBackgroundColor)
        card.addSubview(title)
        title.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.greaterThanOrEqualToSuperview().offset(36)
        }
        
        let subtitle = FtCaption(text: Localization.localized(.welcomeBack),color: onBackgroundColor.withAlphaComponent(0.5))
        card.addSubview(subtitle)
        subtitle.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.greaterThanOrEqualTo(title.snp.bottom).offset(8)
        }
        
        

        let emailInput = FtTextInputField(
            title: "Email",
            iconSysName: "person.fill",
            hint: "Enter your email..."
        )
        
        card.addSubview(emailInput)
        emailInput.snp.makeConstraints { make in
            make.top.greaterThanOrEqualTo(subtitle).offset(48)
            make.left.equalToSuperview().offset(24)
            make.right.equalToSuperview().offset(-24)
            make.height.equalTo(72)
        }
    
        let passwordInput = FtTextInputField(
            title: "Password",
            iconSysName: "lock.fill",
            hint: "Enter your email..."
        )
        
        card.addSubview(passwordInput)
        passwordInput.snp.makeConstraints { make in
            make.top.greaterThanOrEqualTo(emailInput.snp.bottom).offset(18)
            make.left.equalToSuperview().offset(24)
            make.right.equalToSuperview().offset(-24)
            make.height.equalTo(86)
        }
        
        
        let signInButton = FtLargeButton(
            titleOnNormalState: Localization.localized(.signIn),
            backgroundColor: primaryColor,
            titleColorOnNormalState: onPrimaryColor
        )
        
        card.addSubview(signInButton)
        signInButton.snp.makeConstraints { make in
            make.top.greaterThanOrEqualTo(passwordInput.snp.bottom).offset(24)
            make.left.equalToSuperview().offset(24)
            make.right.equalToSuperview().offset(-24)
            make.height.equalTo(largeButtonHeight)
        }
        
        
        let noAccountCTA = UILabel()
        noAccountCTA.attributedText = NSMutableAttributedString()
            .span("Do not hav account ",font: FtCaption2Font(), foregroundColor: onBackgroundColor)
            .span("Sign up",font : FtCaption2Font(),foregroundColor: secondaryColor)
    
        card.addSubview(noAccountCTA)
    
        noAccountCTA.snp.makeConstraints { make in
            make.top.greaterThanOrEqualTo(signInButton.snp.bottom).offset(16)
            make.centerX.equalToSuperview()
        }
        
        return card
    }()
    
    func FtTextInputField(
        title: String,
        iconSysName : String,
        hint : String? = nil,
        value : String? = nil
    ) -> UIView {
        let textInputContainer = UIView()
        
        let textFieldTitle = FtCaption(text: title,color: onBackgroundColor.withAlphaComponent(0.5))
        
        textInputContainer.addSubview(textFieldTitle)
        textFieldTitle.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.equalToSuperview()
        }
        
        let personIcon = FtSystemImage(systemName: iconSysName,tint: onBackgroundColor.withAlphaComponent(0.25))
        textInputContainer.addSubview(personIcon)
        personIcon.snp.makeConstraints { make in
            make.top.greaterThanOrEqualTo(textFieldTitle).offset(32)
            make.left.equalToSuperview()
            make.size.equalTo(24)
        }
        
        let emailInput = UITextField()
        textInputContainer.addSubview(emailInput)
        emailInput.snp.makeConstraints { make in
            make.top.greaterThanOrEqualTo(textFieldTitle).offset(16)
            make.left.equalTo(personIcon.snp.right).offset(8)
            make.right.equalToSuperview()
            make.height.equalTo(56)
        }
        
        emailInput.placeholder = hint
        emailInput.text = value
        
        let seperatorView = UIView()
        seperatorView.backgroundColor = onBackgroundColor.withAlphaComponent(0.25)
        textInputContainer.addSubview(seperatorView)
        seperatorView.snp.makeConstraints { make in
            make.height.equalTo(1)
            make.top.greaterThanOrEqualTo(emailInput.snp.bottom)
            make.right.equalToSuperview()
            make.left.equalToSuperview()
        }
        
        return textInputContainer
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = primaryColor
        
        view.addSubview(circle1)
        view.addSubview(circle2)
        
        circle1.snp.makeConstraints { make in
            let dimensions = 578
            make.width.equalTo(dimensions)
            make.height.equalTo(dimensions)
            circle1.layer.cornerRadius = CGFloat((dimensions / 2))
            make.center.equalToSuperview()
        }
        
        
        circle2.snp.makeConstraints { make in
            make.center.equalToSuperview()
            let dimensions = 658
            make.width.equalTo(dimensions)
            make.height.equalTo(dimensions)
            circle2.layer.cornerRadius = CGFloat((dimensions / 2))
        }
        
        view.addSubview(containerCard)
        containerCard.snp.makeConstraints { make in
            make.top.greaterThanOrEqualTo(circle1).offset(72)
            make.bottom.lessThanOrEqualTo(circle1).offset(-72)
            make.left.equalToSuperview().offset(16)
            make.right.equalToSuperview().offset(-16)
        }
    }
}


extension NSMutableAttributedString {
    
    func span(
        _ value:String,
        font :UIFont,
        foregroundColor : UIColor
    ) -> NSMutableAttributedString {
        
        let attributes:[NSAttributedString.Key : Any] = [
            .font : font,
            .foregroundColor : foregroundColor
        ]
        self.append(NSAttributedString(string: value, attributes:attributes))
        return self
    }
}
