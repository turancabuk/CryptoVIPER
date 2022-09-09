//
//  Presenter.swift
//  CryptoVIPER
//
//  Created by Turan Çabuk on 9.09.2022.
//

import Foundation


// calss , Protocols
// talks to -> Interactor, Router, View

enum NetworkError : Error {
    
    case NetworkFailed
    case ParsingFailed
}

protocol AnyPresenter {
    
    var router : AnyRouter? { get set }
    var interactor : AnyInteractor? { get set }
    var view : AnyView? { get set}
    
    func interactorDidDownloadCryto(result : Result<[Crypto],Error>)
    
}
class CryptoPresenter : AnyPresenter {
    func interactorDidDownloadCryto(result: Result<[Crypto], Error>) {
        
        switch result {
        case.success(let cryptos) :
            print("updeate succesfull")
            
        case .failure(let error):
            
            print("error")
        }
    }
    
    var interactor: AnyInteractor?
    
    var view: AnyView?
    
    var router: AnyRouter?
    
    
    
    
}
