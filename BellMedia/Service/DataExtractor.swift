//
//  Question2.swift
//  BellMedia
//
//  Created by Konstantin Klyatskin on 2020-03-30.
//  Copyright © 2020 Konstantin Klyatskin. All rights reserved.
//

import Foundation


typealias DataExtractorCompletion = (StreamModel?) -> Void

class DataExtractor {
    
    func extractModel(from data: Data?, completion: DataExtractorCompletion) {
        
        guard let data = data else {
            completion(nil)
            return
        }
        let jsonDecoder = JSONDecoder()
        jsonDecoder.dateDecodingStrategy = .formatted(DateFormatter.input)

        do {
            let model = try jsonDecoder.decode(StreamModel.self, from: data)
            completion(model)
        } catch {
            print("Unexpected error: \(error).")
            completion(nil)
        }
    }

}
