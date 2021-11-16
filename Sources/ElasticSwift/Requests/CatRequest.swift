import ElasticSwiftCodableUtils
import ElasticSwiftCore
import Foundation
import NIOHTTP1

public struct CatIndicesRequest: Request {
    public init() {}
  
    public var headers = HTTPHeaders()

    public var method: HTTPMethod {
        return .GET
    }

    public var endPoint: String {
        return "_cat/indices"
    }

    public var queryParams: [URLQueryItem] {
        return []
    }

    public func makeBody(_: Serializer) -> Result<Data, MakeBodyError> {
        return .failure(.noBodyForRequest)
    }
}

extension CatIndicesRequest: Equatable {
    public static func == (lhs: CatIndicesRequest, rhs: CatIndicesRequest) -> Bool {
        return lhs.method == rhs.method
            && lhs.queryParams == rhs.queryParams
            && lhs.endPoint == rhs.endPoint
    }
}
