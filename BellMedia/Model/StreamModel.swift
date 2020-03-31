//
//  StreamModel.swift
//  BellMedia
//
//  Created by Konstantin Klyatskin on 2020-03-30.
//  Copyright © 2020 Konstantin Klyatskin. All rights reserved.
//


import Foundation



// MARK: - Welcome
struct StreamModel: Codable {
    let id: Int?
    let name, desc, shortDesc, type: String?
    let owner: Owner?
    let episode: String?
    let agvotCode: String?
    let agvotDisclaimer: String?
    let qfrCode: String?
    let airingOrder, broadcastDate, broadcastTime, broadcastDateTime: String?
    let lastModifiedDateTime: Date?
    let gameID, album: String?
    let genres, keywords, tags: [String]?
    let images: [Image]?
    let authentication: Authentication?
    let nextAuthentication: Authentication?
    let ratingWarnings, people: [String]?
    let funding: String?
    let musicLabels, broadcastNetworks: [String]?

    enum CodingKeys: String, CodingKey {
        case id = "Id"
        case name = "Name"
        case desc = "Desc"
        case shortDesc = "ShortDesc"
        case type = "Type"
        case owner = "Owner"
        case episode = "Episode"
        case agvotCode = "AgvotCode"
        case agvotDisclaimer = "AgvotDisclaimer"
        case qfrCode = "QfrCode"
        case airingOrder = "AiringOrder"
        case broadcastDate = "BroadcastDate"
        case broadcastTime = "BroadcastTime"
        case broadcastDateTime = "BroadcastDateTime"
        case lastModifiedDateTime = "LastModifiedDateTime"
        case gameID = "GameId"
        case album = "Album"
        case genres = "Genres"
        case keywords = "Keywords"
        case tags = "Tags"
        case images = "Images"
        case authentication = "Authentication"
        case nextAuthentication = "NextAuthentication"
        case ratingWarnings = "RatingWarnings"
        case people = "People"
        case funding = "Funding"
        case musicLabels = "MusicLabels"
        case broadcastNetworks = "BroadcastNetworks"
    }
}

// MARK: - Authentication
struct Authentication: Codable {
    let authenticationRequired: Bool?
    let resources: [Resource]?

    enum CodingKeys: String, CodingKey {
        case authenticationRequired = "Required"
        case resources = "Resources"
    }
}

// MARK: - Resource
struct Resource: Codable {
    let resourceCode: String?

    enum CodingKeys: String, CodingKey {
        case resourceCode = "ResourceCode"
    }
}

// MARK: - Image
struct Image: Codable {
    let type: String?
    let url: String?
    let width, height: Int?

    enum CodingKeys: String, CodingKey {
        case type = "Type"
        case url = "Url"
        case width = "Width"
        case height = "Height"
    }
}

// MARK: - Owner
struct Owner: Codable {
}


/*

    "Id": 69585,
    "Name": "TSN2",
    "Desc": "Watch TSN2 Live",
    "ShortDesc": "Watch TSN2 Live",
    "Type": "stream",
    "Owner": {},
    "Episode": null,
    "AgvotCode": "E",
    "AgvotDisclaimer": null,
    "QfrCode": "G",
    "AiringOrder": null,
    "BroadcastDate": null,
    "BroadcastTime": null,
    "BroadcastDateTime": null,
    "LastModifiedDateTime": "2020-02-10T15:49:05Z",
    "GameId": null,
    "Album": null,
    "Genres": [],
    "Keywords": [],
    "Tags": [],
    "Images": [{
        "Type": "thumbnail",
        "Url": "https://images2.9c9media.com/image_asset/2015_6_16_74e12190-f6ac-0132-a8b0-10604ba4c9b1_png_2000x1125.jpg",
        "Width": 2000,
        "Height": 1125
    }, {
        "Type": "message",
        "Url": "https://images2.9c9media.com/image_asset/2014_9_24_25933d90-2639-0132-f395-34b52f6f1279_jpg_2000x1125.jpg",
        "Width": 2000,
        "Height": 1125
    }, {
        "Type": "background",
        "Url": "https://images2.9c9media.com/image_asset/2018_4_17_e433bec7-e30d-4a33-b250-3cf596ddb205_jpg_3840x2160.jpg",
        "Width": 3840,
        "Height": 2160
    }],
    "Authentication": {
        "Required": true,
        "Resources": [{
            "ResourceCode": "TSN2"
        }]
    },
    "NextAuthentication": null,
    "RatingWarnings": [],
    "People": [],
    "Funding": null,
    "MusicLabels": [],
    "BroadcastNetworks": []
}


*/
