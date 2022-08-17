//
//  WebService.swift
//  MovieBox
//
//  Created by Nesrin Bozan on 5.08.2022.
//

import Alamofire


protocol ServiceProtokol { //Protocol içerisinde gövde kodu olmaz , ne yapacağı yazılmaz
    
    func fetchMovies(onSuccess: @escaping(Movies?) -> (), onError: @escaping (AFError) -> ())
}

final class Service: ServiceProtokol {
    func fetchMovies(onSuccess: @escaping (Movies?) -> (), onError: @escaping (AFError) -> ()) {
        ServiceManager.shared.fetch(path: Constant.ServiceEndPoint.moviesServiceEndPoint()) { (response: Movies) in
            onSuccess(response)
        } onError: { error in
            onError(error)
        }

    }
    
    
    
}
