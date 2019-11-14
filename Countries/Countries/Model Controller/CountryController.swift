//
//  CountryController.swift
//  Countries
//
//  Created by Mitchell Budge on 11/14/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

import UIKit

class CountryController: NSObject {
    
    let baseURL = URL(string: "https://restcountries.eu/rest/v2/")!
    
    var countries: [MBCountry] = []
    
    typealias CompletionHandler = (Error?) -> Void
    
    func fetchCountries(completion: @escaping CompletionHandler) {
        
        URLSession.shared.dataTask(with: baseURL) { (data, _, error) in
            if let error = error {
                completion(error)
                return
            }
            guard let data = data else {
                completion(nil)
                return
            }
            do {
                let jsonArray = try JSONSerialization.jsonObject(with: data, options: [])
                for jsonDictionary in jsonArray as! [[String : Any]] {
                    guard let country = MBCountry.init(dictionary: jsonDictionary) else { return }
                    self.countries.append(country)
                }
            } catch {
                completion(nil)
                return
            }
            completion(nil)
        }.resume()
    }
    
}




