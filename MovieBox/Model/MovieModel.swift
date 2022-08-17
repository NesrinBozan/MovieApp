//
//  MovieModel.swift
//  MovieBox
//
//  Created by Nesrin Bozan on 5.08.2022.
//

import Foundation


// MARK: - Welcome
struct Movies: Codable {
    let results: [Result]
    
}

// MARK: - Result
struct Result: Codable {
    let originalTitle, overview: String
    let popularity: Double
    let posterPath, releaseDate, title: String
    let voteAverage: Double



}


