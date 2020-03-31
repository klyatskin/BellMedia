//
//  Question2.swift
//  BellMedia
//
//  Created by Konstantin Klyatskin on 2020-03-30.
//  Copyright © 2020 Konstantin Klyatskin. All rights reserved.
//

import Foundation


typealias NetworkFetchCompletion = (Error?, Data?) -> Void

class NetworkFetcher {
    
    func fetchData(from urlStr: String, completion: @escaping  NetworkFetchCompletion) {
        guard let url = URL(string: urlStr) else { return }
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(error, nil)
            }
            if let data = data {
                completion(nil, data)
            }
        }
        task.resume()
    }
}
