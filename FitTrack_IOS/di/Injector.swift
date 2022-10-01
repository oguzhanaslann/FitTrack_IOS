//
//  Injector.swift
//  FitTrack_IOS
//
//  Created by Oğuzhan Aslan on 1.10.2022.
//

import Foundation
import Swinject

class Injector {
    
    let container = Container()
    static let shared : Injector = Injector()
    
    private init(){}
    
    
    private func registerDependencyIfNotRegistered<T>(dependency : T.Type, onRegisterNeeded : @escaping ( Resolver ) -> T ) {
        if container.resolve(dependency.self) == nil  {
            container.register(dependency) { resolver in
                onRegisterNeeded(resolver)
            }
        }
    }
    
    func injectOnboardViewModel() -> OnboardViewModel {
        registerDependencyIfNotRegistered(
            dependency: OnboardViewModel.self,
            onRegisterNeeded: { resolver in
                OnboardViewModel(
                    userInfoRepository: self.injectUserInfoRepository()
                )
            }
        )
        
        return container.resolve(OnboardViewModel.self)!
    }
    
    func injectUserInfoRepository() -> UserInfoRepository {
        registerDependencyIfNotRegistered(
            dependency: FitTrackUserInfoRepository.self,
            onRegisterNeeded: { resolver in
                FitTrackUserInfoRepository(
                    userInfoLocalDataSource: self.injectUserInfoLocalDataSource()
                )
            }
        )
        
        return container.resolve(FitTrackUserInfoRepository.self)!
    }
    
    func injectUserInfoLocalDataSource() -> UserInfoLocalDataSource {
        registerDependencyIfNotRegistered(
            dependency: UserInfoLocalDataSourceImpl.self,
            onRegisterNeeded: { resolver in
                UserInfoLocalDataSourceImpl()
            }
        )
        
        return container.resolve(UserInfoLocalDataSourceImpl.self)!
    }
}
