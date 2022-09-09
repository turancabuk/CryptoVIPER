//
//  Router.swift
//  CryptoVIPER
//
//  Created by Turan Çabuk on 9.09.2022.
//

import Foundation


// class , Protocols
// entry point

protocol AnyRouter {
    
    static func startExecution() -> AnyRouter
}

class CryptoRouter : AnyRouter {
    
    static func startExecution() -> AnyRouter {
        
        let router = CryptoRouter()
        
        return router
    }
    
}
