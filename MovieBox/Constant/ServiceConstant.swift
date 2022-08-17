//
//  ServiceConstant.swift
//  MovieBox
//
//  Created by Nesrin Bozan on 5.08.2022.
/* https://api.themoviedb.org/3/discover/movie?api_key=92d1403d998e59c8da9593a2b610ef15
*/
import Foundation

extension Constant {

    enum ServiceEndPoint: String {
        
        case BASE_URL = "https://api.themoviedb.org/3/discover/movie?"
        case API_KEY = "api_key=92d1403d998e59c8da9593a2b610ef15"
        
        static func moviesServiceEndPoint() -> String {
            
            "\(BASE_URL.rawValue)\(API_KEY.rawValue)"
        }
    }
    
}
