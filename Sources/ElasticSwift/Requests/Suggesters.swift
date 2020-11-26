//
//  Suggesters.swift
//  
//
//  Created by Prafull Kumar Soni on 11/1/20.
//

import ElasticSwiftCodableUtils
import ElasticSwiftCore
import ElasticSwiftQueryDSL
import Foundation
import NIOHTTP1


public protocol SuggestionBuilder: ElasticSwiftTypeBuilder  where ElasticSwiftType: Suggestion {
    
    var field: String? { get }
    var text: String? { get }
    var prefix: String? { get }
    var regex: String? { get }
    var analyzer: String? { get }
    var size: Int? { get }
    var shardSize: Int? { get }
    
    @discardableResult
    func set(field: String) -> Self
    @discardableResult
    func set(text: String) -> Self
    @discardableResult
    func set(prefix: String) -> Self
    @discardableResult
    func set(regex: String) -> Self
    @discardableResult
    func set(analyzer: String) -> Self
    @discardableResult
    func set(size: Int) -> Self
    @discardableResult
    func set(shardSize: Int) -> Self
    
}

public protocol Suggestion: Codable {
    
    var suggestionType: SuggestionType { get }
    
    var field: String { get }
    var text: String? { get set }
    var prefix: String? { get set }
    var regex: String? { get set }
    var analyzer: String? { get set }
    var size: Int? { get set }
    var shardSize: Int? { get set }
    
    func isEqualTo(_ other: Suggestion) -> Bool
}

public extension Suggestion where Self: Equatable {
    func isEqualTo(_ other: Suggestion) -> Bool {
        if let o = other as? Self {
            return self == o
        }
        return false
    }
}

public enum SuggestionType: String, Codable {
    case term
    case phrase
    case completion
}

public extension SuggestionType {
    var metaType: Suggestion.Type {
        switch self {
        case .term:
            return TermSuggestion.self
        case .phrase:
            return PhraseSuggestion.self
        case .completion:
            return CompletionSuggestion.self
        }
    }
}

public struct SuggestSource {
    
    public var globalText: String?
    public var suggestions: [String: String]
    
}

extension SuggestSource: Codable {
    
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        var dic = try container.decode([String: String].self)
        self.globalText = dic[CodingKeys.globalText.rawValue]
        dic.removeValue(forKey: CodingKeys.globalText.rawValue)
        self.suggestions = dic
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DynamicCodingKeys.self)
        try container.encode(self.globalText, forKey: .key(named: CodingKeys.globalText.rawValue))
        for (k, v) in self.suggestions {
            try container.encode(v, forKey: .key(named: k))
        }
    }
    
    internal enum CodingKeys: String, CodingKey {
        case globalText = "text"
    }
}

extension SuggestSource: Equatable {}


public class TermSuggestionBuilder: SuggestionBuilder {
    
    public typealias ElasticSwiftType = TermSuggestion
    
    private var _field: String?
    private var _text: String?
    private var _prefix: String?
    private var _regex: String?
    private var _analyzer: String?
    private var _size: Int?
    private var _shardSize: Int?
    
    private var _sort: TermSuggestion.SortBy?
    private var _suggestMode: SuggestMode?
    private var _accuracy: Decimal?
    private var _maxEdits: Int?
    private var _maxInspections: Int?
    private var _maxTermFreq: Decimal?
    private var _prefixLength: Int?
    private var _minWordLength: Int?
    private var _minDocFreq: Decimal?
    private var _stringDistance: TermSuggestion.StringDistance?
    
    public init() {}
    
    @discardableResult
    public func set(field: String) -> Self {
        self._field = field
        return self
    }
    
    @discardableResult
    public func set(text: String) -> Self {
        self._text = text
        return self
    }
    
    @discardableResult
    public func set(prefix: String) -> Self {
        self._prefix = prefix
        return self
    }
    
    @discardableResult
    public func set(regex: String) -> Self {
        self._regex = regex
        return self
    }
    
    @discardableResult
    public func set(analyzer: String) -> Self {
        self._analyzer = analyzer
        return self
    }
    
    @discardableResult
    public func set(size: Int) -> Self {
        self._size = size
        return self
    }
    
    @discardableResult
    public func set(shardSize: Int) -> Self {
        self._shardSize = shardSize
        return self
    }
    
    @discardableResult
    public func set(sort: TermSuggestion.SortBy) -> Self {
        self._sort = sort
        return self
    }
    
    @discardableResult
    public func set(suggestMode: SuggestMode) -> Self {
        self._suggestMode = suggestMode
        return self
    }
    
    @discardableResult
    public func set(accuracy: Decimal) -> Self {
        self._accuracy = accuracy
        return self
    }
    
    @discardableResult
    public func set(maxEdits: Int) -> Self {
        self._maxEdits = maxEdits
        return self
    }
    
    @discardableResult
    public func set(maxInspections: Int) -> Self {
        self._maxInspections = maxInspections
        return self
    }
    
    @discardableResult
    public func set(maxTermFreq: Decimal) -> Self {
        self._maxTermFreq = maxTermFreq
        return self
    }
    
    @discardableResult
    public func set(prefixLength: Int) -> Self {
        self._prefixLength = prefixLength
        return self
    }
    
    @discardableResult
    public func set(minWordLength: Int) -> Self {
        self._minWordLength = minWordLength
        return self
    }
    
    @discardableResult
    public func set(minDocFreq: Decimal) -> Self {
        self._minDocFreq = minDocFreq
        return self
    }
    
    @discardableResult
    public func set(stringDistance: TermSuggestion.StringDistance) -> Self {
        self._stringDistance = stringDistance
        return self
    }
    
    
    public var field: String? {
        return _field
    }
    
    public var text: String? {
        return _text
    }
    
    public var prefix: String? {
        return _prefix
    }
    
    public var regex: String? {
        return _regex
    }
    
    public var analyzer: String? {
        return _analyzer
    }
    
    public var size: Int? {
        return _size
    }
    
    public var shardSize: Int? {
        return _shardSize
    }
    
    public var sort: TermSuggestion.SortBy? {
        return _sort
    }
    
    public var suggestMode: SuggestMode? {
        return _suggestMode
    }
    
    public var accuracy: Decimal? {
        return _accuracy
    }
    
    public var maxEdits: Int? {
        return _maxEdits
    }
    
    public var maxInspections: Int? {
        return _maxInspections
    }
    
    public var maxTermFreq: Decimal? {
        return _maxTermFreq
    }
    
    public var prefixLength: Int? {
        return _prefixLength
    }
    
    public var minWordLength: Int? {
        return _minWordLength
    }
    
    public var minDocFreq: Decimal? {
        return _minDocFreq
    }
    
    public var stringDistance: TermSuggestion.StringDistance? {
        return _stringDistance
    }
    
    public func build() throws -> TermSuggestion {
        return try TermSuggestion(withBuilder: self)
    }
}


public struct TermSuggestion: Suggestion {
    
    public let suggestionType: SuggestionType = .term
    
    public var field: String
    
    public var text: String?
    
    public var prefix: String?
    
    public var regex: String?
    
    public var analyzer: String?
    
    public var size: Int?
    
    public var shardSize: Int?
    
    public var sort: SortBy?
    
    public var suggestMode: SuggestMode?
    
    public var accuracy: Decimal?
    
    public var maxEdits: Int?
    
    public var maxInspections: Int?
    
    public var maxTermFreq: Decimal?
    
    public var prefixLength: Int?
    
    public var minWordLength: Int?
    
    public var minDocFreq: Decimal?
    
    public var stringDistance: StringDistance?
    
    
    public init(field: String, text: String? = nil, prefix: String? = nil, regex: String? = nil, analyzer: String? = nil, size: Int? = nil, shardSize: Int? = nil, sort: SortBy? = nil, suggestMode: SuggestMode? = nil, accuracy: Decimal? = nil, maxEdits: Int? = nil, maxInspections: Int? = nil, maxTermFreq: Decimal? = nil, prefixLength: Int? = nil, minWordLength: Int? = nil, minDocFreq: Decimal? = nil, stringDistance: StringDistance? = nil) {
        self.field = field
        self.text = text
        self.prefix = prefix
        self.regex = regex
        self.analyzer = analyzer
        self.size = size
        self.shardSize = shardSize
        self.sort = sort
        self.suggestMode = suggestMode
        self.accuracy = accuracy
        self.maxEdits = maxEdits
        self.maxInspections = maxInspections
        self.maxTermFreq = maxTermFreq
        self.prefixLength = prefixLength
        self.minWordLength = minWordLength
        self.minDocFreq = minDocFreq
        self.stringDistance = stringDistance
    }
    
    internal init(withBuilder builder: TermSuggestionBuilder) throws {
        
        guard let field = builder.field else {
            throw SuggestionBuilderError.missingRequiredField("field")
        }
        
        self.init(field: field, text: builder.text, prefix: builder.prefix, regex: builder.regex, analyzer: builder.analyzer, size: builder.size, shardSize: builder.shardSize, sort: builder.sort, suggestMode: builder.suggestMode, accuracy: builder.accuracy, maxEdits: builder.maxEdits, maxInspections: builder.maxInspections, maxTermFreq: builder.maxTermFreq, prefixLength: builder.prefixLength, minWordLength: builder.minWordLength, minDocFreq: builder.minDocFreq, stringDistance: builder.stringDistance)
    }
    
}

extension TermSuggestion {
    
    public init(from decoder: Decoder) throws {
        let contianer = try decoder.container(keyedBy: DynamicCodingKeys.self)
        let namedContianer = try contianer.nestedContainer(keyedBy: CodingKeys.self, forKey: .key(named: suggestionType))
        self.field = try namedContianer.decodeString(forKey: .field)
        self.text = try contianer.decodeStringIfPresent(forKey: .key(named: CodingKeys.text.rawValue))
        self.prefix = try contianer.decodeStringIfPresent(forKey: .key(named: CodingKeys.prefix.rawValue))
        self.regex = try contianer.decodeStringIfPresent(forKey: .key(named: CodingKeys.regex.rawValue))
        self.analyzer = try namedContianer.decodeStringIfPresent(forKey: .analyzer)
        self.size = try namedContianer.decodeIntIfPresent(forKey: .size)
        self.shardSize = try namedContianer.decodeIntIfPresent(forKey: .shardSize)
        self.sort = try namedContianer.decodeIfPresent(SortBy.self, forKey: .sort)
        self.suggestMode = try namedContianer.decodeIfPresent(SuggestMode.self, forKey: .suggestMode)
        self.accuracy = try namedContianer.decodeDecimalIfPresent(forKey: .accuracy)
        self.maxEdits = try namedContianer.decodeIntIfPresent(forKey: .maxEdits)
        self.maxInspections = try namedContianer.decodeIntIfPresent(forKey: .maxInspections)
        self.maxTermFreq = try namedContianer.decodeDecimalIfPresent(forKey: .maxTermFreq)
        self.prefixLength = try namedContianer.decodeIntIfPresent(forKey: .prefixLength)
        self.minWordLength = try namedContianer.decodeIntIfPresent(forKey: .minWordLength)
        self.minDocFreq = try namedContianer.decodeDecimalIfPresent(forKey: .minDocFreq)
        self.stringDistance = try namedContianer.decodeIfPresent(StringDistance.self, forKey: .stringDistance)
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DynamicCodingKeys.self)
        try container.encodeIfPresent(text, forKey: .key(named: CodingKeys.text.rawValue))
        try container.encodeIfPresent(prefix, forKey: .key(named: CodingKeys.prefix.rawValue))
        try container.encodeIfPresent(regex, forKey: .key(named: CodingKeys.regex.rawValue))
        
        var namedContainer = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .key(named: suggestionType))
        try namedContainer.encode(field, forKey: .field)
        try namedContainer.encodeIfPresent(analyzer, forKey: .analyzer)
        try namedContainer.encodeIfPresent(size, forKey: .size)
        try namedContainer.encodeIfPresent(shardSize, forKey: .shardSize)
        try namedContainer.encodeIfPresent(sort, forKey: .sort)
        try namedContainer.encodeIfPresent(suggestMode, forKey: .suggestMode)
        try namedContainer.encodeIfPresent(accuracy, forKey: .accuracy)
        try namedContainer.encodeIfPresent(maxEdits, forKey: .maxEdits)
        try namedContainer.encodeIfPresent(maxInspections, forKey: .maxInspections)
        try namedContainer.encodeIfPresent(maxTermFreq, forKey: .maxTermFreq)
        try namedContainer.encodeIfPresent(prefixLength, forKey: .prefixLength)
        try namedContainer.encodeIfPresent(minWordLength, forKey: .minWordLength)
        try namedContainer.encodeIfPresent(minDocFreq, forKey: .minDocFreq)
        try namedContainer.encodeIfPresent(stringDistance, forKey: .stringDistance)
    }
    
    enum CodingKeys: String, CodingKey {
        case field
        case text
        case prefix
        case regex
        case analyzer
        case size
        case shardSize = "shard_size"
        case sort
        case suggestMode = "suggest_mode"
        case accuracy
        case maxEdits = "max_edits"
        case maxInspections = "max_inspections"
        case maxTermFreq = "max_term_freq"
        case prefixLength = "prefix_length"
        case minWordLength = "min_word_length"
        case minDocFreq = "min_doc_freq"
        case stringDistance = "string_distance"
    }
}

extension TermSuggestion {
    
    public enum SortBy: String, Codable {
        case score
        case frequency
    }
    
    public enum StringDistance: String, Codable {
        case `internal`
        case damerauLevenshtein = "damerau_levenshtein"
        case levenshtein
        case jaroWinkler = "jaro_winkler"
        case ngram = "ngram"
    }
}

extension TermSuggestion: Equatable {}


public enum SuggestMode: String, Codable {
    case missing
    case popular
    case always
}


public enum SuggestionBuilderError: Error {
    case missingRequiredField(String)
}


public class PhraseSuggestionBuilder: SuggestionBuilder {
    public typealias ElasticSwiftType = PhraseSuggestion
    
    private var _field: String?
    private var _text: String?
    private var _prefix: String?
    private var _regex: String?
    private var _analyzer: String?
    private var _size: Int?
    private var _shardSize: Int?
    
    @discardableResult
    public func set(field: String) -> Self {
        self._field = field
        return self
    }
    
    @discardableResult
    public func set(text: String) -> Self {
        self._text = text
        return self
    }
    
    @discardableResult
    public func set(prefix: String) -> Self {
        self._prefix = prefix
        return self
    }
    
    @discardableResult
    public func set(regex: String) -> Self {
        self._regex = regex
        return self
    }
    
    @discardableResult
    public func set(analyzer: String) -> Self {
        self._analyzer = analyzer
        return self
    }
    
    @discardableResult
    public func set(size: Int) -> Self {
        self._size = size
        return self
    }
    
    @discardableResult
    public func set(shardSize: Int) -> Self {
        self._shardSize = shardSize
        return self
    }
    
    public var field: String? {
        return _field
    }
    
    public var text: String? {
        return _text
    }
    
    public var prefix: String? {
        return _prefix
    }
    
    public var regex: String? {
        return _regex
    }
    
    public var analyzer: String? {
        return _analyzer
    }
    
    public var size: Int? {
        return _size
    }
    
    public var shardSize: Int? {
        return _shardSize
    }
    
    public func build() throws -> PhraseSuggestion {
        return try PhraseSuggestion(withBuilder: self)
    }
}


public struct PhraseSuggestion: Suggestion {
    public let suggestionType: SuggestionType = .phrase
    
    public var field: String
    public var text: String?
    public var prefix: String?
    public var regex: String?
    public var analyzer: String?
    public var size: Int?
    public var shardSize: Int?
    
    public var maxErrors: Decimal?
    public var separator: String?
    public var realWordErrorLikelihood: Decimal?
    public var confidence: Decimal?
    public var gramSize: Int?
    public var forceUnigrams: Bool?
    public var tokenLimit: Int?
    public var highlight: Highlight?
    public var collate: Collate?
    public var smoothing: SmoothingModel?
    
    public init(field: String, text: String? = nil, prefix: String? = nil, regex: String? = nil, analyzer: String? = nil, size: Int? = nil, shardSize: Int? = nil, maxErrors: Decimal? = nil, separator: String? = nil, realWordErrorLikelihood: Decimal? = nil, confidence: Decimal? = nil, gramSize: Int? = nil, forceUnigrams: Bool? = nil, tokenLimit: Int? = nil, highlight: PhraseSuggestion.Highlight? = nil, collate: Collate? = nil, smoothing: SmoothingModel? = nil) {
        self.field = field
        self.text = text
        self.prefix = prefix
        self.regex = regex
        self.analyzer = analyzer
        self.size = size
        self.shardSize = shardSize
        self.maxErrors = maxErrors
        self.separator = separator
        self.realWordErrorLikelihood = realWordErrorLikelihood
        self.confidence = confidence
        self.gramSize = gramSize
        self.forceUnigrams = forceUnigrams
        self.tokenLimit = tokenLimit
        self.highlight = highlight
        self.collate = collate
        self.smoothing = smoothing
    }
    
    internal init(withBuilder builder: PhraseSuggestionBuilder) throws {
        guard let field = builder.field else {
            throw SuggestionBuilderError.missingRequiredField("field")
        }
        self.init(field: field, text: builder.text, prefix: builder.prefix, regex: builder.regex, analyzer: builder.analyzer, size: builder.size, shardSize: builder.shardSize)
    }
    
}

extension PhraseSuggestion {
    public init(from decoder: Decoder) throws {
        let contianer = try decoder.container(keyedBy: DynamicCodingKeys.self)
        let namedContianer = try contianer.nestedContainer(keyedBy: CodingKeys.self, forKey: .key(named: suggestionType))
        self.field = try namedContianer.decodeString(forKey: .field)
        self.text = try contianer.decodeStringIfPresent(forKey: .key(named: CodingKeys.text.rawValue))
        self.prefix = try contianer.decodeStringIfPresent(forKey: .key(named: CodingKeys.prefix.rawValue))
        self.regex = try contianer.decodeStringIfPresent(forKey: .key(named: CodingKeys.regex.rawValue))
        self.analyzer = try namedContianer.decodeStringIfPresent(forKey: .analyzer)
        self.size = try namedContianer.decodeIntIfPresent(forKey: .size)
        self.shardSize = try namedContianer.decodeIntIfPresent(forKey: .shardSize)
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DynamicCodingKeys.self)
        try container.encodeIfPresent(text, forKey: .key(named: CodingKeys.text.rawValue))
        try container.encodeIfPresent(prefix, forKey: .key(named: CodingKeys.prefix.rawValue))
        try container.encodeIfPresent(regex, forKey: .key(named: CodingKeys.regex.rawValue))
        
        var namedContainer = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .key(named: suggestionType))
        try namedContainer.encode(field, forKey: .field)
        try namedContainer.encodeIfPresent(analyzer, forKey: .analyzer)
        try namedContainer.encodeIfPresent(size, forKey: .size)
        try namedContainer.encodeIfPresent(shardSize, forKey: .shardSize)
    }
    
    enum CodingKeys: String, CodingKey {
        case field
        case text
        case prefix
        case regex
        case analyzer
        case size
        case shardSize = "shard_size"
        case directGenerator = "direct_generator"
        case highlight
        case collate
        case smoothing
    }
}

extension PhraseSuggestion {
    
    public struct Highlight {
        public let preTag: String
        public let postTag: String
        
        public init(preTag: String, postTag: String) {
            self.preTag = preTag
            self.postTag = postTag
        }
    }
    
    public struct DirectCandidateGenerator {
        public var field: String
        public var preFilter: String?
        public var postFilter: String?
        public var suggestMode: String?
        public var accuracy: Decimal?
        public var size: Int?
        public var sort: TermSuggestion.SortBy?
        public var stringDistance: TermSuggestion.StringDistance?
        public var maxEdits: Int?
        public var maxInspections: Int?
        public var maxTermFreq: Decimal?
        public var prefixLength: Int?
        public var minWordLength: Int?
        public var minDocFreq: Decimal?
        
        public init(field: String, preFilter: String? = nil, postFilter: String? = nil, suggestMode: String? = nil, accuracy: Decimal? = nil, size: Int? = nil, sort: TermSuggestion.SortBy? = nil, stringDistance: TermSuggestion.StringDistance? = nil, maxEdits: Int? = nil, maxInspections: Int? = nil, maxTermFreq: Decimal? = nil, prefixLength: Int? = nil, minWordLength: Int? = nil, minDocFreq: Decimal? = nil) {
            self.field = field
            self.preFilter = preFilter
            self.postFilter = postFilter
            self.suggestMode = suggestMode
            self.accuracy = accuracy
            self.size = size
            self.sort = sort
            self.stringDistance = stringDistance
            self.maxEdits = maxEdits
            self.maxInspections = maxInspections
            self.maxTermFreq = maxTermFreq
            self.prefixLength = prefixLength
            self.minWordLength = minWordLength
            self.minDocFreq = minDocFreq
        }
    }
    
    public struct Collate {
        public let query: Script
        public let params: [String: CodableValue]?
        public let purne: Bool
    }
}

extension PhraseSuggestion.Highlight: Codable {
    enum CodingKeys: String, CodingKey {
        case preTag = "pre_tag"
        case postTag = "post_tag"
    }
}

extension PhraseSuggestion.Highlight: Equatable {}

extension PhraseSuggestion.DirectCandidateGenerator: Codable {
    enum CodingKeys: String, CodingKey {
        case field
        case preFilter = "pre_filter"
        case postFilter = "post_filter"
        case suggestMode = "suggest_mode"
        case accuracy
        case size
        case sort
        case stringDistance = "string_distance"
        case maxEdits = "max_edits"
        case maxInspections = "max_inspections"
        case maxTermFreq = "max_term_freq"
        case prefixLength = "prefix_length"
        case minWordLength = "min_word_length"
        case minDocFreq = "min_doc_freq"
    }
}

extension PhraseSuggestion.DirectCandidateGenerator: Equatable {}

extension PhraseSuggestion.Collate: Codable {}

extension PhraseSuggestion.Collate: Equatable {}

extension PhraseSuggestion: Equatable {
    public static func == (lhs: PhraseSuggestion, rhs: PhraseSuggestion) -> Bool {
        return lhs.suggestionType == rhs.suggestionType
            && lhs.field == rhs.field
            && lhs.prefix == rhs.prefix
            && lhs.text == rhs.text
            && lhs.regex == rhs.regex
            && lhs.analyzer == rhs.analyzer
            && lhs.size == rhs.size
            && lhs.shardSize == rhs.shardSize
            && lhs.maxErrors == rhs.maxErrors
            && lhs.separator == rhs.separator
            && lhs.realWordErrorLikelihood == rhs.realWordErrorLikelihood
            && lhs.confidence == rhs.confidence
            && lhs.gramSize == rhs.gramSize
            && lhs.forceUnigrams == rhs.forceUnigrams
            && lhs.tokenLimit == rhs.tokenLimit
            && lhs.highlight == rhs.highlight
            && lhs.collate == rhs.collate
            && isEqualSmoothingModels(lhs.smoothing, rhs.smoothing)
    }
}

public enum SmoothingModelType: String, Codable {
    case laplace
    case stupidBackoff = "stupid_backoff"
    case linearInterpolation = "linear_interpolation"
}

public protocol SmoothingModel: Codable {
    
    var smoothingModelType: SmoothingModelType { get }
    
    func isEqualTo(_ other: SmoothingModel) -> Bool
}

extension SmoothingModel where Self: Equatable {
    public func isEqualTo(_ other: SmoothingModel) -> Bool {
        if let o = other as? Self {
            return self == o
        }
        return false
    }
}

public func isEqualSmoothingModels(_ lhs: SmoothingModel?, _ rhs: SmoothingModel?) -> Bool {
    if lhs == nil && rhs == nil {
        return true
    }
    if let lhs = lhs, let rhs = rhs {
        return lhs.isEqualTo(rhs)
    }
    return false
}

public struct StupidBackoff: SmoothingModel {
    public let smoothingModelType: SmoothingModelType = .stupidBackoff
    
    public let discount: Decimal
}

extension StupidBackoff {
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
        let namedContainer = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .key(named: smoothingModelType))
        self.discount = try namedContainer.decodeDecimal(forKey: .discount)
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DynamicCodingKeys.self)
        var namedContainer = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .key(named: smoothingModelType))
        try namedContainer.encode(discount, forKey: .discount)
    }
    
    enum CodingKeys: String, CodingKey {
        case discount
    }
}

extension StupidBackoff: Equatable {}

public struct Laplace: SmoothingModel {
    public let smoothingModelType: SmoothingModelType = .laplace
    
    public let alpha: Decimal
}

extension Laplace {
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
        let namedContainer = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .key(named: smoothingModelType))
        self.alpha = try namedContainer.decodeDecimal(forKey: .alpha)
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DynamicCodingKeys.self)
        var namedContainer = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .key(named: smoothingModelType))
        try namedContainer.encode(alpha, forKey: .alpha)
    }
    
    enum CodingKeys: String, CodingKey {
        case alpha
    }
}

extension Laplace: Equatable {}


public struct LinearInterpolation: SmoothingModel {
    public let smoothingModelType: SmoothingModelType = .linearInterpolation
    
    public let trigramLambda: Decimal
    public let bigramLambda: Decimal
    public let unigramLambda: Decimal
}

extension LinearInterpolation {
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
        let namedContainer = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .key(named: smoothingModelType))
        self.trigramLambda = try namedContainer.decodeDecimal(forKey: .trigramLambda)
        self.bigramLambda = try namedContainer.decodeDecimal(forKey: .bigramLambda)
        self.unigramLambda = try namedContainer.decodeDecimal(forKey: .unigramLambda)
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DynamicCodingKeys.self)
        var namedContainer = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .key(named: smoothingModelType))
        try namedContainer.encode(trigramLambda, forKey: .trigramLambda)
        try namedContainer.encode(bigramLambda, forKey: .bigramLambda)
        try namedContainer.encode(unigramLambda, forKey: .unigramLambda)
    }
    
    enum CodingKeys: String, CodingKey {
        case trigramLambda = "trigram_lambda"
        case bigramLambda = "bigram_lambda"
        case unigramLambda = "unigram_lambda"
    }
}

extension LinearInterpolation: Equatable {}


public class CompletionSuggestionBuilder: SuggestionBuilder {
    public typealias ElasticSwiftType = CompletionSuggestion
    
    private var _field: String?
    private var _text: String?
    private var _prefix: String?
    private var _regex: String?
    private var _analyzer: String?
    private var _size: Int?
    private var _shardSize: Int?
    private var _skipDuplicates: Bool?
    private var _fuzzyOptions: CompletionSuggestion.FuzzyOptions?
    private var _regexOptions: CompletionSuggestion.RegexOptions?
    
    @discardableResult
    public func set(field: String) -> Self {
        self._field = field
        return self
    }
    
    @discardableResult
    public func set(text: String) -> Self {
        self._text = text
        return self
    }
    
    @discardableResult
    public func set(prefix: String) -> Self {
        self._prefix = prefix
        return self
    }
    
    @discardableResult
    public func set(regex: String) -> Self {
        self._regex = regex
        return self
    }
    
    @discardableResult
    public func set(analyzer: String) -> Self {
        self._analyzer = analyzer
        return self
    }
    
    @discardableResult
    public func set(size: Int) -> Self {
        self._size = size
        return self
    }
    
    @discardableResult
    public func set(shardSize: Int) -> Self {
        self._shardSize = shardSize
        return self
    }
    
    @discardableResult
    public func set(skipDuplicates: Bool) -> Self {
        self._skipDuplicates = skipDuplicates
        return self
    }
    
    @discardableResult
    public func set(fuzzyOptions: CompletionSuggestion.FuzzyOptions) -> Self {
        self._fuzzyOptions = fuzzyOptions
        return self
    }
    
    @discardableResult
    public func set(regexOptions: CompletionSuggestion.RegexOptions) -> Self {
        self._regexOptions = regexOptions
        return self
    }
    
    public var field: String? {
        return _field
    }
    
    public var text: String? {
        return _text
    }
    
    public var prefix: String? {
        return _prefix
    }
    
    public var regex: String? {
        return _regex
    }
    
    public var analyzer: String? {
        return _analyzer
    }
    
    public var size: Int? {
        return _size
    }
    
    public var shardSize: Int? {
        return _shardSize
    }
    
    public var skipDuplicates: Bool? {
        return _skipDuplicates
    }
    public var fuzzyOptions: CompletionSuggestion.FuzzyOptions? {
        return _fuzzyOptions
    }
    public var regexOptions: CompletionSuggestion.RegexOptions? {
        return _regexOptions
    }
    
    public func build() throws -> CompletionSuggestion {
        return try CompletionSuggestion(withBuilder: self)
    }
}


public struct CompletionSuggestion: Suggestion {
    public let suggestionType: SuggestionType = .completion
    
    public var field: String
    
    public var text: String?
    
    public var prefix: String?
    
    public var regex: String?
    
    public var analyzer: String?
    
    public var size: Int?
    
    public var shardSize: Int?
    
    public var skipDuplicates: Bool?
    
    public var fuzzyOptions: FuzzyOptions?
    
    public var regexOptions: RegexOptions?
    
    public init(field: String, text: String? = nil, prefix: String? = nil, regex: String? = nil, analyzer: String? = nil, size: Int? = nil, shardSize: Int? = nil, skipDuplicates: Bool? = nil, fuzzyOptions: FuzzyOptions? = nil, regexOptions: RegexOptions? = nil) {
        self.field = field
        self.text = text
        self.prefix = prefix
        self.analyzer = analyzer
        self.regex = regex
        self.size = size
        self.shardSize = shardSize
        self.skipDuplicates = skipDuplicates
        self.fuzzyOptions = fuzzyOptions
        self.regexOptions = regexOptions
    }
    
    internal init(withBuilder builder: CompletionSuggestionBuilder) throws {
        guard let field = builder.field else {
            throw SuggestionBuilderError.missingRequiredField("field")
        }
        self.init(field: field, text: builder.text, prefix: builder.prefix, regex: builder.regex, analyzer: builder.analyzer, size: builder.size, shardSize: builder.shardSize, skipDuplicates: builder.skipDuplicates, fuzzyOptions: builder.fuzzyOptions, regexOptions: builder.regexOptions)
    }
}

extension CompletionSuggestion {
    
    public init(from decoder: Decoder) throws {
        let contianer = try decoder.container(keyedBy: DynamicCodingKeys.self)
        let namedContianer = try contianer.nestedContainer(keyedBy: CodingKeys.self, forKey: .key(named: suggestionType))
        self.field = try namedContianer.decodeString(forKey: .field)
        self.text = try contianer.decodeStringIfPresent(forKey: .key(named: CodingKeys.text.rawValue))
        self.prefix = try contianer.decodeStringIfPresent(forKey: .key(named: CodingKeys.prefix.rawValue))
        self.regex = try contianer.decodeStringIfPresent(forKey: .key(named: CodingKeys.regex.rawValue))
        self.analyzer = try namedContianer.decodeStringIfPresent(forKey: .analyzer)
        self.size = try namedContianer.decodeIntIfPresent(forKey: .size)
        self.shardSize = try namedContianer.decodeIntIfPresent(forKey: .shardSize)
        self.skipDuplicates = try namedContianer.decodeBoolIfPresent(forKey: .skipDuplicates)
        self.fuzzyOptions = try namedContianer.decodeIfPresent(FuzzyOptions.self, forKey: .fuzzyOptions)
        self.regexOptions = try namedContianer.decodeIfPresent(RegexOptions.self, forKey: .regex)
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DynamicCodingKeys.self)
        try container.encodeIfPresent(text, forKey: .key(named: CodingKeys.text.rawValue))
        try container.encodeIfPresent(prefix, forKey: .key(named: CodingKeys.prefix.rawValue))
        try container.encodeIfPresent(regex, forKey: .key(named: CodingKeys.regex.rawValue))
        
        var namedContainer = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .key(named: suggestionType))
        try namedContainer.encode(field, forKey: .field)
        try namedContainer.encodeIfPresent(analyzer, forKey: .analyzer)
        try namedContainer.encodeIfPresent(size, forKey: .size)
        try namedContainer.encodeIfPresent(shardSize, forKey: .shardSize)
        try namedContainer.encodeIfPresent(skipDuplicates, forKey: .skipDuplicates)
        try namedContainer.encodeIfPresent(fuzzyOptions, forKey: .fuzzyOptions)
        try namedContainer.encodeIfPresent(regexOptions, forKey: .regex)
    }
    
    enum CodingKeys: String, CodingKey {
        case field
        case text
        case prefix
        case regex
        case analyzer
        case size
        case shardSize = "shard_size"
        case skipDuplicates = "skip_duplicates"
        case fuzzyOptions = "fuzzy"
    }
}

extension CompletionSuggestion {
    
    public struct FuzzyOptions {
        
        public var fuzziness: Int?
        public var transpositions: Bool?
        public var fuzzyMinLength: Int?
        public var fuzzyPrefixLength: Int?
        public var unicodeAware: Bool?
        public var maxDeterminizedStates: Int?
        
        public init(fuzziness: Int? = nil, transpositions: Bool? = nil, fuzzyMinLength: Int? = nil, fuzzyPrefixLength: Int? = nil, unicodeAware: Bool? = nil, maxDeterminizedStates: Int? = nil) {
            self.fuzziness = fuzziness
            self.transpositions = transpositions
            self.fuzzyMinLength = fuzzyMinLength
            self.fuzzyPrefixLength = fuzzyPrefixLength
            self.unicodeAware = unicodeAware
            self.maxDeterminizedStates = maxDeterminizedStates
        }
        
    }
    
    public struct RegexOptions {
        public var flags: RegexFlag?
        public var maxDeterminizedStates: Int?
        
        public init(flags: RegexFlag? = nil, maxDeterminizedStates: Int? = nil) {
            self.flags = flags
            self.maxDeterminizedStates = maxDeterminizedStates
        }
    }
    
    public enum RegexFlag: String, Codable {
        case all = "ALL"
        case anystring = "ANYSTRING"
        case complement = "COMPLEMENT"
        case empty = "EMPTY"
        case intersection = "INTERSECTION"
        case `internal` = "INTERVAL"
        case none = "NONE"
    }
}

extension CompletionSuggestion.FuzzyOptions: Codable {
    enum CodingKeys: String, CodingKey {
        case fuzziness
        case transpositions
        case fuzzyMinLength = "min_length"
        case fuzzyPrefixLength = "prefix_length"
        case unicodeAware = "unicode_aware"
        case maxDeterminizedStates = "max_determinized_states"
    }
}

extension CompletionSuggestion.FuzzyOptions: Equatable {}

extension CompletionSuggestion.RegexOptions: Codable {
    enum CodingKeys: String, CodingKey {
        case flags
        case maxDeterminizedStates = "max_determinized_states"
    }
}

extension CompletionSuggestion.RegexOptions: Equatable {}

extension CompletionSuggestion: Equatable {}


/// Extention for DynamicCodingKeys
public extension DynamicCodingKeys {
    static func key(named suggestionType: SuggestionType) -> DynamicCodingKeys {
        return .key(named: suggestionType.rawValue)
    }
    
    static func key(named smoothingModelType: SmoothingModelType) -> DynamicCodingKeys {
        return .key(named: smoothingModelType.rawValue)
    }
}
