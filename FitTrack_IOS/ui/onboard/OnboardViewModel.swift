//
//  OnboardViewModel.swift
//  FitTrack_IOS
//
//  Created by Oğuzhan Aslan on 1.10.2022.
//

import Foundation

class OnboardViewModel {

    let userInfoRepository : UserInfoRepository
    
    init(
        userInfoRepository : UserInfoRepository
    ) {
        self.userInfoRepository = userInfoRepository
    }
    
    func markOnboardAsSeen() {
        userInfoRepository.setOnboardingAsSeen()
    }
}
