//
//  DiscoverMovie.swift
//  TheMovieDBWrapperSwift
//
//  Created by George on 2016-02-05.
//  Copyright © 2016 GeorgeKye. All rights reserved.
//

import Foundation
import SwiftyJSON

enum MovieGenres: String{
    case Action = "28";
    case Adventure = "12";
    case Animation = "16";
    case Comedy = "35";
    case Crime = "80";
    case Documentary = "99";
    case Drama = "18";
    case Family = "10751";
    case Fantasy = "14";
    case Foreign = "10769";
    case History = "36";
    case Horror = "27";
    case Music = "10402";
    case Mystery = "9648";
    case Romance = "10749";
    case ScienceFiction = "878";
    case TvMovie = "10770";
    case Thriller = "53";
    case War = "10752";
    case Western = "37";
}

class DiscoverMovie: Discover{


    
    ////DiscoverMovie query.  Language must be an ISO 639-1 code. Page must be greater than one. sort_by expected values can be found in DiscoverSortBy() and DiscoverSortByMovie. ALL parameters are optional.
    class func discoverMovies(api_key: String, language: String?, page: Double?, sort_by: String?, completionHandler: (ClientReturn) -> ()) -> (){
        
        Client.discover(api_key, baseURL:"movie", sort_by: sort_by, certification_country: nil, certification: nil, certification_lte: nil, include_adult: nil, include_video: nil, primary_release_year: nil, primary_release_date_gte: nil, primary_release_date_lte: nil, release_date_gte: nil, release_date_lte: nil, air_date_gte: nil, air_date_lte: nil, first_air_date_gte: nil, first_air_date_lte: nil, first_air_date_year: nil, language: language, page: page, timezone: nil, vote_average_gte: nil, vote_average_lte: nil, vote_count_gte: nil, vote_count_lte: nil, with_genres: nil, with_cast: nil, with_crew: nil, with_companies: nil, with_keywords: nil, with_people: nil, with_networks: nil, year: nil, certification_gte: nil){
            apiReturn in
            completionHandler(apiReturn)
        }
        
    }
    ///DiscoverMovie query.  Language must be an ISO 639-1 code. Page must be greater than one. sort_by expected values can be found in DiscoverSortBy() and DiscoverSortByMovie. You must specify a valid 'certification_country' and a valid certification for the specified value. all `_with` values-> comma separated indicates an 'AND' query, while a pipe (|) separated value indicates an 'OR'. ALL parameters are optional.
    class func discoverMovies(api_key: String, sort_by: String?, certification_country: String?, certification: String?, certification_lte: String?, certification_gte: String?, include_adult: Bool?, include_video: Bool?, primary_release_year: String?, primary_release_date_gte: String?, primary_release_date_lte: String?, release_date_gte: String?, release_date_lte: String?, language: String?, page: Double?, vote_average_gte: Double?, vote_average_lte: Double?, vote_count_gte: Double?, vote_count_lte: Double?, with_cast: String?, with_crew: String?, with_companies: String?, with_genres: String?, with_keywords: String?, with_people: String?, with_networks: String?, year: Float?,  completionHandler: (ClientReturn) -> ()) -> (){
        
        Client.discover(api_key, baseURL:"movie", sort_by: sort_by, certification_country: certification_country, certification: certification, certification_lte: certification_lte, include_adult: include_adult, include_video: include_video, primary_release_year: primary_release_year, primary_release_date_gte: primary_release_date_gte, primary_release_date_lte: primary_release_date_lte, release_date_gte: release_date_gte, release_date_lte: release_date_lte, air_date_gte: nil, air_date_lte: nil, first_air_date_gte: nil, first_air_date_lte: nil, first_air_date_year: nil, language: language, page: page,  timezone: nil, vote_average_gte: vote_average_gte, vote_average_lte: vote_average_lte, vote_count_gte: vote_count_gte, vote_count_lte: vote_count_lte, with_genres: with_genres, with_cast: with_cast, with_crew: with_crew, with_companies: with_companies , with_keywords: with_keywords, with_people: with_people, with_networks: with_networks , year: year, certification_gte: certification_gte){
            apiReturn in
            completionHandler(apiReturn)
        }
    }
    
    ///Expected date format = "YYYY-MM-DD -> 2015-01-8". ALL parameters are optional
    class func discoverMovies(api_key: String, primary_release_date_gte: String?, primary_release_date_lte: String?, language: String?, page: Double?, sort_by: String?,  completionHandler: (ClientReturn) -> ()) -> (){
        
        Client.discover(api_key, baseURL:"movie", sort_by: sort_by, certification_country: nil, certification: nil, certification_lte: nil, include_adult: nil, include_video: nil, primary_release_year: nil, primary_release_date_gte: primary_release_date_gte, primary_release_date_lte: primary_release_date_lte, release_date_gte: nil, release_date_lte: nil, air_date_gte: nil, air_date_lte: nil, first_air_date_gte: nil, first_air_date_lte: nil, first_air_date_year: nil, language: language, page: page, timezone: nil, vote_average_gte: nil, vote_average_lte: nil, vote_count_gte: nil, vote_count_lte: nil, with_genres: nil, with_cast: nil, with_crew: nil, with_companies: nil, with_keywords: nil, with_people: nil, with_networks: nil, year: nil, certification_gte: nil){
            apiReturn in
            completionHandler(apiReturn)
        }
    }
    
    
    ///all `_with` values-> comma separated indicates an 'AND' query, while a pipe (|) separated value indicates an 'OR'. ALL parameters are optional
    class func discoverMoviesWith(api_key: String, with_genres: String?, with_cast: String?, with_crew: String?, with_companies: String?,with_keywords: String?, with_people: String?, with_networks: String?, year: Float?, sort_by: String?, page: Double, language: String,  completionHandler: (ClientReturn) -> ()) -> (){
        
        Client.discover(api_key, baseURL:"movie", sort_by: sort_by, certification_country: nil, certification: nil, certification_lte: nil, include_adult: nil, include_video: nil, primary_release_year: nil, primary_release_date_gte: nil, primary_release_date_lte: nil, release_date_gte: nil, release_date_lte: nil, air_date_gte: nil, air_date_lte: nil, first_air_date_gte: nil, first_air_date_lte: nil, first_air_date_year: nil, language: language, page: page, timezone: nil, vote_average_gte: nil, vote_average_lte: nil, vote_count_gte: nil, vote_count_lte: nil, with_genres: with_genres, with_cast: with_cast, with_crew: with_crew, with_companies: with_companies , with_keywords: with_keywords, with_people: with_people, with_networks: with_networks , year: year, certification_gte: nil){
            apiReturn in
            completionHandler(apiReturn)
        }
    }
    
    ///Get the list of movies associated with a particular company.
    class func companyMovies(api_key: String!, companyId: Int!, language: String?, page: Int?, completion: (ClientReturn) -> ()) -> (){
        Client.Company(api_key, companyId: companyId!, language: language, page: page){
            apiReturn in
            var aReturn = apiReturn;
            if(apiReturn.error == nil){
                aReturn.MBDBReturn = MovieMDB.initialize(aReturn.json!["results"])
            }
            completion(aReturn)
        }
    }
    
    ///Get the list of movies for a particular keyword by id.
    class func keyword(api_key: String!, keywordId: Int!, page: Int?, completion: (ClientReturn) -> ()) -> (){
        Client.keyword(api_key, keywordId: keywordId, page: page, movies: true){
            apiReturn in
            completion(apiReturn)
        }
    }
    
    ///Get the list of movies for a particular genre by id. By default, only movies with 10 or more votes are included.
    class func genreList(api_key: String!, genreId: Int, page: Double?, include_all_movies: Bool?, include_adult: Bool?, movieList: Bool?, completion: (ClientReturn) -> ()) -> (){
        Client.Genres(apikey, listType: "movie", language: nil, genreId: genreId, page: page, include_all_movies: include_all_movies, include_adult: nil, movieList: true){
            apiReturn in
            var aReturn = apiReturn
            if(aReturn.error == nil){
                aReturn.MBDBReturn = MovieMDB.initialize(aReturn.json!["results"])
            }
            completion(aReturn)
        }
    }
    
    
}