//
//  ViewController.swift
//  FitTrack_IOS
//
//  Created by Oğuzhan Aslan on 17.09.2022.
//

import UIKit
import SnapKit
import Foundation


extension UIScrollView {
    func scrollTo(horizontalPage : Int = 0, verticalPage: Int = 0, animated : Bool = true) {
        var frame = self.frame
        frame.origin.x = frame.size.width * CGFloat(horizontalPage )
        frame.origin.y = frame.size.width * CGFloat(verticalPage)
        self.scrollRectToVisible(frame, animated: animated)
    }
}

class OnBoardingViewContoller: BaseViewContoller, UIScrollViewDelegate {
    
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
    
    lazy var onboardPage1 : UIView = {
        return onboardingPage(
            title: Localization.onboard1Title.localize(),
            image: FtImage(name: "runningWomanFigure"),
            slogan: Localization.onboard1Slogan.localize()
        )
    }()
    
    func onboardingPage(
        title: String,
        image : UIImageView,
        slogan : String
    ) -> UIView {
        let view = UIView()
        let label = FtTitle3(text: title,color : secondaryColor)
        view.addSubview(label)
        label.snp.makeConstraints { make in
            make.top.greaterThanOrEqualTo(view.snp.top).offset(106)
            make.centerX.equalToSuperview()
        }
        
        view.addSubview(image)
        
        image.snp.makeConstraints { make in
            make.top.greaterThanOrEqualTo(label.snp.bottom).offset(24)
            make.centerX.equalTo(view.snp.centerX)
        }
        
        
        let bottomSlogan = FtHeadline(text: slogan, color : onPrimaryColor)
        bottomSlogan.textAlignment = .center
        bottomSlogan.breakLineFromEndIfNeeded()
        
        view.addSubview(bottomSlogan)
        bottomSlogan.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.left.equalToSuperview().offset(48)
            make.right.equalToSuperview().offset(-48)
            make.bottom.equalToSuperview().offset(-48)
        }
        return view
    }

    lazy var onboardPage2 : UIView = {
        return onboardingPage(
            title: Localization.onboard2Title.localize(),
            image: FtImage(name: "liftingWomanFigure"),
            slogan: Localization.onboard2Slogan.localize()
        )
    }()
    
    
    lazy var onboardPage3 : UIView = {
        return onboardingPage(
            title: Localization.onboard3Title.localize(),
            image: FtImage(name: "ManWomanFigure"),
            slogan: Localization.onboard3Slogan.localize()
        )
    }()
    
    
    lazy var pages : [UIView] = [onboardPage1,onboardPage2,onboardPage3]
    
    lazy var pageControll : UIPageControl = {
        let pageControll = UIPageControl()
        pageControll.numberOfPages = pages.count
        pageControll.currentPageIndicatorTintColor = secondaryColor
        pageControll.pageIndicatorTintColor = onPrimaryColor
        pageControll.addTarget(self, action: #selector(pageControlTapHandler(sender:)), for: .touchUpInside)
        return pageControll
    }()
    
    @objc
    func pageControlTapHandler(sender : UIPageControl) {
        scrollView.scrollTo(horizontalPage: sender.currentPage)
    }
    
    lazy var scrollView : UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.isPagingEnabled = true

        scrollView.contentSize = CGSize(
            width: view.frame.width * CGFloat(pages.count),
            height: view.frame.height * 0.80
        )
        
        for index in 0..<pages.count {
            let pageView = pages[index]
            scrollView.addSubview(pageView)
            pageView.frame = CGRect(
                x: view.frame.width * CGFloat(index),
                y: 0,
                width: view.frame.width,
                height: view.frame.height * 0.80
            )
        }
       
        
        return scrollView
    }()
    

    lazy var nextPageButton : UIButton = {
        let button = FtLargeButton(titleOnNormalState: Localization.next.localize(), backgroundColor: onPrimaryColor, titleColorOnNormalState: primaryColor)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        return button
    }()
    
    @objc
    func buttonAction(sender: UIButton!) {
        let currentPage = Int(round(scrollView.contentOffset.x / view.frame.width))
        if currentPage <= pageControll.numberOfPages {
            scrollView.scrollTo(horizontalPage: currentPage + 1)
        } else {
            // Finish onboard
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = primaryColor
        initViews()
    }
    
    private func initViews() {
        view.addSubview(circle)
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

        view.addSubview(scrollView)
        scrollView.delegate = self
        scrollView.snp.makeConstraints { make in
            make.top.greaterThanOrEqualTo(view.snp.top)

            make.left.equalTo(view.snp.left)
            make.right.equalTo(view.snp.right)
            make.width.equalTo(view.snp.width)
            make.height.equalTo(view.frame.height * 0.80)
            view.bringSubviewToFront(scrollView)
        }
        
        view.addSubview(nextPageButton)
        nextPageButton.snp.makeConstraints { make in
            make.bottom.lessThanOrEqualToSuperview().offset(-48)
            make.left.greaterThanOrEqualToSuperview().offset(24)
            make.right.greaterThanOrEqualToSuperview().offset(-24)
            make.height.equalTo(largeButtonHeight)
            make.centerX.equalToSuperview()
        }
        
        view.addSubview(pageControll)
        pageControll.snp.makeConstraints { make in
            make.bottom.lessThanOrEqualTo(nextPageButton.snp.top).offset(-8)
            make.centerX.equalToSuperview()
        }
    }
    
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let pageIndex = round(scrollView.contentOffset.x / view.frame.width)
        pageControll.currentPage = Int(pageIndex)
        
        let isLastPage = Int(pageIndex) == (pageControll.numberOfPages - 1 )
        if isLastPage {
            nextPageButton.setTitle(Localization.start.localize(), for: .normal)
        } else {
            nextPageButton.setTitle(Localization.next.localize(), for: .normal)
        }
    }
}
