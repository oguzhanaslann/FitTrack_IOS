//
//  UserInfoRepository.swift
//  FitTrack_IOS
//
//  Created by Oğuzhan Aslan on 1.10.2022.
//

import Foundation

protocol UserInfoRepository {
    func setOnboardingAsSeen()
}

class FitTrackUserInfoRepository : UserInfoRepository {

    let localDatasource : UserInfoLocalDataSource

    init(userInfoLocalDataSource:UserInfoLocalDataSource) {
        self.localDatasource = userInfoLocalDataSource
    }

    func setOnboardingAsSeen() {
        localDatasource.setAsSeenOnboard()
    }
}
