//
//  Router.swift
//  CryptoVIPER
//
//  Created by Turan Çabuk on 9.09.2022.
//

import Foundation
import UIKit


// class , Protocols
// entry point

typealias entryPoint = AnyView & UIViewController
protocol AnyRouter {
    
    var entry : entryPoint? { get }
  
    static func startExecution() -> AnyRouter
}

class CryptoRouter : AnyRouter {
    var entry: entryPoint?
    
    static func startExecution() -> AnyRouter {
        
        let router = CryptoRouter()
        
        var view : AnyView = CryptoViewController()
        var presenter : AnyPresenter = CryptoPresenter()
        var interactor : AnyInteractor = CryptoInteractor()
        
        view.presenter = presenter
        
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        
        interactor.presenter = presenter
        
        
        router.entry = view as? entryPoint
        return router
    }
    
}
