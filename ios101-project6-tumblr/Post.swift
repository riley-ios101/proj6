//
//  Post.swift
//  ios101-project6-tumblr
//

import Foundation

struct Blog: Decodable {
    let response: Response
}

struct Response: Decodable {
    let blog : Info
    let posts: [Post]
}

struct Info : Decodable {
    let title : String
}

struct Post: Decodable {
    let summary: String
    let caption: String
    let photos: [Photo]
}

struct Photo: Decodable {
     let originalSize: PhotoInfo

    enum CodingKeys: String, CodingKey {

        // Maps API key name to a more "swifty" version (i.e. lowerCamelCasing and no `_`)
        case originalSize = "original_size"
    }
}

struct PhotoInfo: Decodable {
    let url: URL
}
