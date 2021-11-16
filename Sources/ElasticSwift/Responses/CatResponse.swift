//
//  CatResponse.swift
//  ElasticSwift
//
//  Created by Freya Ariel.
//

public struct CatIndicesResponse: Codable, Equatable {
    public let health: String
    public let status: String
    public let index: String
    public let uuid: String
    public let pri: String
    public let rep: String
    public let docsCount: String
    public let docsDeleted: String
    public let storeSize: String
    public let priStoreSize: String

    enum CodingKeys: String, CodingKey {
        case health
        case status
        case index
        case uuid
        case pri
        case rep
        case docsCount = "docs.count"
        case docsDeleted = "docs.deleted"
        case storeSize = "store.size"
        case priStoreSize = "pri.store.size"
    }
}
