#if !canImport(ObjectiveC)
    import XCTest

    extension CompoundQueriesTest {
        // DO NOT MODIFY: This is autogenerated, use:
        //   `swift test --generate-linuxmain`
        // to regenerate.
        static let __allTests__CompoundQueriesTest = [
            ("test_01_constantScoreQuery_encode", test_01_constantScoreQuery_encode),
            ("test_02_constantScoreQuery_decode", test_02_constantScoreQuery_decode),
            ("test_03_boolQuery_encode", test_03_boolQuery_encode),
            ("test_04_boolQuery_decode", test_04_boolQuery_decode),
            ("test_05_functionScoreQuery_encode", test_05_functionScoreQuery_encode),
            ("test_06_functionScoreQuery_decode", test_06_functionScoreQuery_decode),
            ("test_07_disMaxQuery_encode", test_07_disMaxQuery_encode),
            ("test_08_disMaxQuery_decode", test_08_disMaxQuery_decode),
            ("test_09_boostingQuery_encode", test_09_boostingQuery_encode),
            ("test_10_boostingQuery_decode", test_10_boostingQuery_decode),
        ]
    }

    extension CompoundQueryBuilderTests {
        // DO NOT MODIFY: This is autogenerated, use:
        //   `swift test --generate-linuxmain`
        // to regenerate.
        static let __allTests__CompoundQueryBuilderTests = [
            ("test_01_constantScoreQueryBuilder", test_01_constantScoreQueryBuilder),
            ("test_02_constantScoreQueryBuilder", test_02_constantScoreQueryBuilder),
            ("test_03_constantScoreQueryBuilder_missing_query", test_03_constantScoreQueryBuilder_missing_query),
            ("test_04_constantScoreQueryBuilder", test_04_constantScoreQueryBuilder),
            ("test_05_boolQueryBuilder", test_05_boolQueryBuilder),
            ("test_06_boolQueryBuilder_atleast_one_required", test_06_boolQueryBuilder_atleast_one_required),
            ("test_07_boolQueryBuilder", test_07_boolQueryBuilder),
            ("test_08_disMaxQueryBuilder", test_08_disMaxQueryBuilder),
            ("test_09_disMaxQueryBuilder", test_09_disMaxQueryBuilder),
            ("test_10_disMaxQueryBuilder", test_10_disMaxQueryBuilder),
            ("test_11_disMaxQueryBuilder_missing_query", test_11_disMaxQueryBuilder_missing_query),
            ("test_12_disMaxQueryBuilder", test_12_disMaxQueryBuilder),
            ("test_13_functionScoreQueryBuilder", test_13_functionScoreQueryBuilder),
            ("test_14_functionScoreQueryBuilder", test_14_functionScoreQueryBuilder),
            ("test_15_functionScoreQueryBuilder_missing_query", test_15_functionScoreQueryBuilder_missing_query),
            ("test_16_functionScoreQueryBuilder_missing_score_function", test_16_functionScoreQueryBuilder_missing_score_function),
            ("test_17_functionScoreQueryBuilder", test_17_functionScoreQueryBuilder),
            ("test_18_functionScoreQueryBuilder", test_18_functionScoreQueryBuilder),
            ("test_19_boostingQueryBuilder", test_19_boostingQueryBuilder),
            ("test_20_boostingQueryBuilder", test_20_boostingQueryBuilder),
            ("test_21_boostingQueryBuilder_missing_negative", test_21_boostingQueryBuilder_missing_negative),
            ("test_22_boostingQueryBuilder_missing_positive", test_22_boostingQueryBuilder_missing_positive),
            ("test_23_boostingQueryBuilder", test_23_boostingQueryBuilder),
        ]
    }

    extension ElasticSwiftQueryDSLTests {
        // DO NOT MODIFY: This is autogenerated, use:
        //   `swift test --generate-linuxmain`
        // to regenerate.
        static let __allTests__ElasticSwiftQueryDSLTests = [
            ("test_01_QueryTypes", test_01_QueryTypes),
            ("test_02_ScoreFunctionTypes", test_02_ScoreFunctionTypes),
        ]
    }

    extension FullTextBuilderTests {
        // DO NOT MODIFY: This is autogenerated, use:
        //   `swift test --generate-linuxmain`
        // to regenerate.
        static let __allTests__FullTextBuilderTests = [
            ("test_01_matchQueryBuilder", test_01_matchQueryBuilder),
            ("test_02_matchQueryBuilder_missing_field", test_02_matchQueryBuilder_missing_field),
            ("test_03_matchQueryBuilder_missing_value", test_03_matchQueryBuilder_missing_value),
            ("test_04_matchQueryBuilder", test_04_matchQueryBuilder),
            ("test_05_matchPhraseQueryBuilder", test_05_matchPhraseQueryBuilder),
            ("test_06_matchPhraseQueryBuilder", test_06_matchPhraseQueryBuilder),
            ("test_07_matchPhraseQueryBuilder_missing_field", test_07_matchPhraseQueryBuilder_missing_field),
            ("test_08_matchPhraseQueryBuilder_missing_value", test_08_matchPhraseQueryBuilder_missing_value),
            ("test_09_matchPhraseQueryBuilder", test_09_matchPhraseQueryBuilder),
            ("test_10_matchPhraseQueryBuilder", test_10_matchPhraseQueryBuilder),
            ("test_11_matchPhrasePrefixQueryBuilder", test_11_matchPhrasePrefixQueryBuilder),
            ("test_12_matchPhrasePrefixQueryBuilder", test_12_matchPhrasePrefixQueryBuilder),
            ("test_13_matchPhrasePrefixQueryBuilder_missing_field", test_13_matchPhrasePrefixQueryBuilder_missing_field),
            ("test_14_matchPhrasePrefixQueryBuilder_missing_value", test_14_matchPhrasePrefixQueryBuilder_missing_value),
            ("test_15_matchPhrasePrefixQueryBuilder", test_15_matchPhrasePrefixQueryBuilder),
            ("test_16_matchPhrasePrefixQueryBuilder", test_16_matchPhrasePrefixQueryBuilder),
            ("test_17_multiMatchQueryBuilder", test_17_multiMatchQueryBuilder),
            ("test_18_multiMatchQueryBuilder", test_18_multiMatchQueryBuilder),
            ("test_19_multiMatchQueryBuilder_missing_field", test_19_multiMatchQueryBuilder_missing_field),
            ("test_20_multiMatchQueryBuilder_missing_value", test_20_multiMatchQueryBuilder_missing_value),
            ("test_21_multiMatchQueryBuilder", test_21_multiMatchQueryBuilder),
            ("test_22_commonTermsQueryBuilder", test_22_commonTermsQueryBuilder),
            ("test_23_commonTermsQueryBuilder", test_23_commonTermsQueryBuilder),
            ("test_24_commonTermsQueryBuilder_missing_field", test_24_commonTermsQueryBuilder_missing_field),
            ("test_25_commonTermsQueryBuilder_missing_value", test_25_commonTermsQueryBuilder_missing_value),
            ("test_26_commonTermsQueryBuilder", test_26_commonTermsQueryBuilder),
            ("test_27_commonTermsQueryBuilder", test_27_commonTermsQueryBuilder),
            ("test_28_queryStringQueryBuilder", test_28_queryStringQueryBuilder),
            ("test_29_queryStringQueryBuilder_missing_field", test_29_queryStringQueryBuilder_missing_field),
            ("test_30_queryStringQueryBuilder", test_30_queryStringQueryBuilder),
            ("test_31_simpleQueryStringQueryBuilder", test_31_simpleQueryStringQueryBuilder),
            ("test_32_simpleQueryStringQueryBuilder_missing_field", test_32_simpleQueryStringQueryBuilder_missing_field),
            ("test_33_simpleQueryStringQueryBuilder", test_33_simpleQueryStringQueryBuilder),
        ]
    }

    extension FullTextQueriesTest {
        // DO NOT MODIFY: This is autogenerated, use:
        //   `swift test --generate-linuxmain`
        // to regenerate.
        static let __allTests__FullTextQueriesTest = [
            ("test_01_matchQuery_encode", test_01_matchQuery_encode),
            ("test_02_matchQuery_decode", test_02_matchQuery_decode),
            ("test_03_matchQuery_decode_2", test_03_matchQuery_decode_2),
            ("test_04_matchQuery_decode_fail", test_04_matchQuery_decode_fail),
            ("test_05_matchPhraseQuery_encode", test_05_matchPhraseQuery_encode),
            ("test_06_matchPhraseQuery_decode", test_06_matchPhraseQuery_decode),
            ("test_07_matchPhraseQuery_decode_2", test_07_matchPhraseQuery_decode_2),
            ("test_08_matchPhraseQuery_decode_fail", test_08_matchPhraseQuery_decode_fail),
            ("test_09_matchPhrasePrefixQuery_encode", test_09_matchPhrasePrefixQuery_encode),
            ("test_10_matchPhrasePrefixQuery_decode", test_10_matchPhrasePrefixQuery_decode),
            ("test_11_matchPhrasePrefixQuery_decode_2", test_11_matchPhrasePrefixQuery_decode_2),
            ("test_12_matchPhrasePrefixQuery_decode_fail", test_12_matchPhrasePrefixQuery_decode_fail),
            ("test_13_multiMatchQuery_encode", test_13_multiMatchQuery_encode),
            ("test_14_multiMatchQuery_decode", test_14_multiMatchQuery_decode),
            ("test_15_multiMatchQuery_decode_2", test_15_multiMatchQuery_decode_2),
            ("test_16_commonTermsQuery_encode", test_16_commonTermsQuery_encode),
            ("test_17_commonTermsQuery_decode", test_17_commonTermsQuery_decode),
            ("test_18_commonTermsQuery_decode_2", test_18_commonTermsQuery_decode_2),
            ("test_19_commonTermsQuery_decode_3", test_19_commonTermsQuery_decode_3),
            ("test_20_commonTermsQuery_encode_2", test_20_commonTermsQuery_encode_2),
            ("test_21_queryStringQuery_encode", test_21_queryStringQuery_encode),
            ("test_22_queryStringQuery_encode_2", test_22_queryStringQuery_encode_2),
            ("test_23_queryStringQuery_decode", test_23_queryStringQuery_decode),
            ("test_24_queryStringQuery_decode_2", test_24_queryStringQuery_decode_2),
            ("test_25_simpleQueryStringQuery_encode", test_25_simpleQueryStringQuery_encode),
            ("test_26_simpleQueryStringQuery_encode_2", test_26_simpleQueryStringQuery_encode_2),
            ("test_27_simpleQueryStringQuery_decode", test_27_simpleQueryStringQuery_decode),
            ("test_28_simpleQueryStringQuery_decode_2", test_28_simpleQueryStringQuery_decode_2),
        ]
    }

    extension GeoQueriesTests {
        // DO NOT MODIFY: This is autogenerated, use:
        //   `swift test --generate-linuxmain`
        // to regenerate.
        static let __allTests__GeoQueriesTests = [
            ("test_01_geoShapeQuery_encode", test_01_geoShapeQuery_encode),
            ("test_02_geoShapeQuery_decode", test_02_geoShapeQuery_decode),
            ("test_03_geoBoundingBoxQuery_encode", test_03_geoBoundingBoxQuery_encode),
            ("test_04_geoBoundingBoxQuery_decode", test_04_geoBoundingBoxQuery_decode),
            ("test_05_geoBoundingBoxQuery_encode_2", test_05_geoBoundingBoxQuery_encode_2),
            ("test_06_geoBoundingBoxQuery_decode_2", test_06_geoBoundingBoxQuery_decode_2),
            ("test_07_geoBoundingBoxQuery_decode_fail", test_07_geoBoundingBoxQuery_decode_fail),
            ("test_08_geoDistanceQuery_encode", test_08_geoDistanceQuery_encode),
            ("test_09_geoDistanceQuery_decode", test_09_geoDistanceQuery_decode),
            ("test_10_geoDistanceQuery_decode_fail", test_10_geoDistanceQuery_decode_fail),
            ("test_11_geoPolygonQuery_encode", test_11_geoPolygonQuery_encode),
            ("test_12_geoPolygonQuery_decode", test_12_geoPolygonQuery_decode),
            ("test_13_geoPolygonQuery_decode_fail", test_13_geoPolygonQuery_decode_fail),
        ]
    }

    extension GeoQueryBuilderTests {
        // DO NOT MODIFY: This is autogenerated, use:
        //   `swift test --generate-linuxmain`
        // to regenerate.
        static let __allTests__GeoQueryBuilderTests = [
            ("test_01_geoShapeQueryBuilder", test_01_geoShapeQueryBuilder),
            ("test_02_geoShapeQueryBuilder", test_02_geoShapeQueryBuilder),
            ("test_03_geoShapeQueryBuilder_missing_indexedShapeType", test_03_geoShapeQueryBuilder_missing_indexedShapeType),
            ("test_04_geoShapeQueryBuilder_missing_no_shape_no_indexedShapeId", test_04_geoShapeQueryBuilder_missing_no_shape_no_indexedShapeId),
            ("test_05_geoShapeQueryBuilder_missing_field", test_05_geoShapeQueryBuilder_missing_field),
            ("test_06_geoBoundingBoxQueryBuilder", test_06_geoBoundingBoxQueryBuilder),
            ("test_07_geoBoundingBoxQueryBuilder", test_07_geoBoundingBoxQueryBuilder),
            ("test_08_geoBoundingBoxQueryBuilder_missing_field", test_08_geoBoundingBoxQueryBuilder_missing_field),
            ("test_09_geoBoundingBoxQueryBuilder_missing_topLeft", test_09_geoBoundingBoxQueryBuilder_missing_topLeft),
            ("test_10_geoBoundingBoxQueryBuilder_missing_bottomRight", test_10_geoBoundingBoxQueryBuilder_missing_bottomRight),
            ("test_11_geoBoundingBoxQueryBuilder", test_11_geoBoundingBoxQueryBuilder),
            ("test_12_geoDistanceQueryBuilder", test_12_geoDistanceQueryBuilder),
            ("test_13_geoDistanceQueryBuilder", test_13_geoDistanceQueryBuilder),
            ("test_14_geoDistanceQueryBuilder", test_14_geoDistanceQueryBuilder),
            ("test_15_geoDistanceQueryBuilder_missing_field", test_15_geoDistanceQueryBuilder_missing_field),
            ("test_16_geoDistanceQueryBuilder_missing_point", test_16_geoDistanceQueryBuilder_missing_point),
            ("test_17_geoPloygonQueryBuilder", test_17_geoPloygonQueryBuilder),
            ("test_18_geoPloygonQueryBuilder", test_18_geoPloygonQueryBuilder),
            ("test_19_geoPloygonQueryBuilder_missing_field", test_19_geoPloygonQueryBuilder_missing_field),
            ("test_20_geoPloygonQueryBuilder_missing_points", test_20_geoPloygonQueryBuilder_missing_points),
        ]
    }

    extension InnertHitsTests {
        // DO NOT MODIFY: This is autogenerated, use:
        //   `swift test --generate-linuxmain`
        // to regenerate.
        static let __allTests__InnertHitsTests = [
            ("test_01_innertHits_encode", test_01_innertHits_encode),
            ("test_02_innerHits_decode", test_02_innerHits_decode),
            ("test_03_innertHits_encode_2", test_03_innertHits_encode_2),
            ("test_04_innerHits_decode_2", test_04_innerHits_decode_2),
            ("test_05_innerHits_decode_3", test_05_innerHits_decode_3),
            ("test_05_innertHits_encode_3", test_05_innertHits_encode_3),
            ("test_06_sourceFilter_encode", test_06_sourceFilter_encode),
            ("test_07_sourceFilter_decode", test_07_sourceFilter_decode),
            ("test_08_sourceFilter_encode_2", test_08_sourceFilter_encode_2),
            ("test_09_sourceFilter_decode_2", test_09_sourceFilter_decode_2),
            ("test_10_sourceFilter_encode_3", test_10_sourceFilter_encode_3),
            ("test_11_sourceFilter_decode_3", test_11_sourceFilter_decode_3),
            ("test_12_highlightBuilder", test_12_highlightBuilder),
            ("test_13_highlightBuilder_missing_fields", test_13_highlightBuilder_missing_fields),
            ("test_14_highlightBuilder", test_14_highlightBuilder),
            ("test_15_fieldOptionsBuilder", test_15_fieldOptionsBuilder),
            ("test_16_fieldOptionsBuilder", test_16_fieldOptionsBuilder),
            ("test_17_highlight_decode", test_17_highlight_decode),
            ("test_18_highlight_decode", test_18_highlight_decode),
            ("test_19_filed_decode", test_19_filed_decode),
            ("test_20_filed_decode", test_20_filed_decode),
        ]
    }

    extension JoiningQueriesTests {
        // DO NOT MODIFY: This is autogenerated, use:
        //   `swift test --generate-linuxmain`
        // to regenerate.
        static let __allTests__JoiningQueriesTests = [
            ("test_01_nestedQuery_encode", test_01_nestedQuery_encode),
            ("test_02_nestedQuery_decode", test_02_nestedQuery_decode),
            ("test_03_hasChildQuery_encode", test_03_hasChildQuery_encode),
            ("test_04_hasChildQuery_decode", test_04_hasChildQuery_decode),
            ("test_05_hasParentQuery_encode", test_05_hasParentQuery_encode),
            ("test_06_hasParentQuery_decode", test_06_hasParentQuery_decode),
            ("test_07_parentIdQuery_encode", test_07_parentIdQuery_encode),
            ("test_08_parentIdQuery_decode", test_08_parentIdQuery_decode),
        ]
    }

    extension JoiningQueryBuilderTests {
        // DO NOT MODIFY: This is autogenerated, use:
        //   `swift test --generate-linuxmain`
        // to regenerate.
        static let __allTests__JoiningQueryBuilderTests = [
            ("test_01_nestedQueryBuilder", test_01_nestedQueryBuilder),
            ("test_02_nestedQueryBuilder_missing_path", test_02_nestedQueryBuilder_missing_path),
            ("test_03_nestedQueryBuilder_missing_query", test_03_nestedQueryBuilder_missing_query),
            ("test_04_hasChildQueryBuilder", test_04_hasChildQueryBuilder),
            ("test_05_hasChildQueryBuilder_missing_type", test_05_hasChildQueryBuilder_missing_type),
            ("test_06_hasChildQueryBuilder_missing_query", test_06_hasChildQueryBuilder_missing_query),
            ("test_07_hasParentQueryBuilder", test_07_hasParentQueryBuilder),
            ("test_08_hasParentQueryBuilder_missing_parentType", test_08_hasParentQueryBuilder_missing_parentType),
            ("test_09_hasParentQueryBuilder_missing_query", test_09_hasParentQueryBuilder_missing_query),
            ("test_10_parentIdQueryBuilder", test_10_parentIdQueryBuilder),
            ("test_11_parentIdQueryBuilder_missing_type", test_11_parentIdQueryBuilder_missing_type),
            ("test_12_parentIdQueryBuilder_missing_id", test_12_parentIdQueryBuilder_missing_id),
            ("test_13_parentIdQueryBuilder", test_13_parentIdQueryBuilder),
            ("test_14_hasParentQueryBuilder_missing_id", test_14_hasParentQueryBuilder_missing_id),
            ("test_15_hasChildQueryBuilder", test_15_hasChildQueryBuilder),
            ("test_16_nestedQueryBuilder_missing_id", test_16_nestedQueryBuilder_missing_id),
        ]
    }

    extension MatchAllQueryTests {
        // DO NOT MODIFY: This is autogenerated, use:
        //   `swift test --generate-linuxmain`
        // to regenerate.
        static let __allTests__MatchAllQueryTests = [
            ("test_01_match_all_query", test_01_match_all_query),
            ("test_02_match_all_boost", test_02_match_all_boost),
            ("test_03_match_non_query", test_03_match_non_query),
            ("test_04_match_all_non_equality", test_04_match_all_non_equality),
            ("test_05_match_all_decode", test_05_match_all_decode),
            ("test_05_match_none_decode", test_05_match_none_decode),
        ]
    }

    extension ScoreFunctionTests {
        // DO NOT MODIFY: This is autogenerated, use:
        //   `swift test --generate-linuxmain`
        // to regenerate.
        static let __allTests__ScoreFunctionTests = [
            ("testExponentialDecayScoreFunction_decode", testExponentialDecayScoreFunction_decode),
            ("testExponentialDecayScoreFunction_encode", testExponentialDecayScoreFunction_encode),
            ("testFieldValueFactorScoreFunction_decode", testFieldValueFactorScoreFunction_decode),
            ("testFieldValueFactorScoreFunction_encode", testFieldValueFactorScoreFunction_encode),
            ("testGaussDecayScoreFunction_decode", testGaussDecayScoreFunction_decode),
            ("testGaussDecayScoreFunction_encode", testGaussDecayScoreFunction_encode),
            ("testLinearDecayScoreFunction_decode", testLinearDecayScoreFunction_decode),
            ("testLinearDecayScoreFunction_encode", testLinearDecayScoreFunction_encode),
            ("testRandomScoreFunction_decode", testRandomScoreFunction_decode),
            ("testRandomScoreFunction_encode", testRandomScoreFunction_encode),
            ("testScriptScoreFunction_decode", testScriptScoreFunction_decode),
            ("testScriptScoreFunction_encode", testScriptScoreFunction_encode),
            ("testWeightScoreFunction_decode", testWeightScoreFunction_decode),
            ("testWeightScoreFunction_encode", testWeightScoreFunction_encode),
        ]
    }

    extension ScriptTests {
        // DO NOT MODIFY: This is autogenerated, use:
        //   `swift test --generate-linuxmain`
        // to regenerate.
        static let __allTests__ScriptTests = [
            ("testScript_decode_short", testScript_decode_short),
            ("testScript_decode", testScript_decode),
            ("testScript_encode_short", testScript_encode_short),
            ("testScript_encode", testScript_encode),
        ]
    }

    extension SpanQueriesTests {
        // DO NOT MODIFY: This is autogenerated, use:
        //   `swift test --generate-linuxmain`
        // to regenerate.
        static let __allTests__SpanQueriesTests = [
            ("test_01_spanTermQuery_encode", test_01_spanTermQuery_encode),
            ("test_02_spanTermQuery_encode_2", test_02_spanTermQuery_encode_2),
            ("test_03_spanTermQuery_decode", test_03_spanTermQuery_decode),
            ("test_04_spanTermQuery_decode_2", test_04_spanTermQuery_decode_2),
            ("test_05_spanTermQuery_decode_3", test_05_spanTermQuery_decode_3),
            ("test_06_spanMultiQuery_encode", test_06_spanMultiQuery_encode),
            ("test_07_spanMultiQuery_encode_2", test_07_spanMultiQuery_encode_2),
            ("test_08_spanMultiQuery_decode", test_08_spanMultiQuery_decode),
            ("test_09_spanMultiQuery_decode_2", test_09_spanMultiQuery_decode_2),
            ("test_10_spanFirstQuery_encode", test_10_spanFirstQuery_encode),
            ("test_11_spanFirstQuery_decode", test_11_spanFirstQuery_decode),
            ("test_12_spanNearQuery_encode", test_12_spanNearQuery_encode),
            ("test_13_spanNearQuery_decode", test_13_spanNearQuery_decode),
            ("test_14_spanOrQuery_encode", test_14_spanOrQuery_encode),
            ("test_15_spanOrQuery_decode", test_15_spanOrQuery_decode),
            ("test_16_spanNotQuery_encode", test_16_spanNotQuery_encode),
            ("test_17_spanNotQuery_decode", test_17_spanNotQuery_decode),
            ("test_18_spanContainingQuery_encode", test_18_spanContainingQuery_encode),
            ("test_19_spanContainingQuery_decode", test_19_spanContainingQuery_decode),
            ("test_20_spanWithinQuery_encode", test_20_spanWithinQuery_encode),
            ("test_21_spanWithinQuery_decode", test_21_spanWithinQuery_decode),
            ("test_22_fieldMaskingSpanQuery_encode", test_22_fieldMaskingSpanQuery_encode),
            ("test_23_fieldMaskingSpanQuery_decode", test_23_fieldMaskingSpanQuery_decode),
        ]
    }

    extension SpecializedQueryBuilderTests {
        // DO NOT MODIFY: This is autogenerated, use:
        //   `swift test --generate-linuxmain`
        // to regenerate.
        static let __allTests__SpecializedQueryBuilderTests = [
            ("test_01_moreLikeThisQueryBuilder", test_01_moreLikeThisQueryBuilder),
            ("test_02_moreLikeThisQueryBuilder_missing_like", test_02_moreLikeThisQueryBuilder_missing_like),
            ("test_03_moreLikeThisQueryBuilder", test_03_moreLikeThisQueryBuilder),
            ("test_04_scriptQueryBuilder", test_04_scriptQueryBuilder),
            ("test_05_scriptQueryBuilder_missing_script", test_05_scriptQueryBuilder_missing_script),
            ("test_06_scriptQueryBuilder", test_06_scriptQueryBuilder),
            ("test_07_percoloteQueryBuilder", test_07_percoloteQueryBuilder),
            ("test_08_percoloteQueryBuilder_missing_field", test_08_percoloteQueryBuilder_missing_field),
            ("test_09_percoloteQueryBuilder_missing_document", test_09_percoloteQueryBuilder_missing_document),
            ("test_10_percoloteQueryBuilder", test_10_percoloteQueryBuilder),
            ("test_11_percoloteQueryBuilder", test_11_percoloteQueryBuilder),
            ("test_12_wrapperQueryBuilder", test_12_wrapperQueryBuilder),
            ("test_13_wrapperQueryBuilder_missing_script", test_13_wrapperQueryBuilder_missing_script),
            ("test_14_wrapperQueryBuilder", test_14_wrapperQueryBuilder),
        ]
    }

    extension SpecializedQuriesTests {
        // DO NOT MODIFY: This is autogenerated, use:
        //   `swift test --generate-linuxmain`
        // to regenerate.
        static let __allTests__SpecializedQuriesTests = [
            ("test_01_moreLikeThisQuery_encode", test_01_moreLikeThisQuery_encode),
            ("test_02_moreLikeThisQuery_encode_2", test_02_moreLikeThisQuery_encode_2),
            ("test_03_moreLikeThisQuery_encode_3", test_03_moreLikeThisQuery_encode_3),
            ("test_04_moreLikeThisQuery_decode", test_04_moreLikeThisQuery_decode),
            ("test_05_moreLikeThisQuery_decode_2", test_05_moreLikeThisQuery_decode_2),
            ("test_06_moreLikeThisQuery_decode_3", test_06_moreLikeThisQuery_decode_3),
            ("test_07_scriptQuery_encode", test_07_scriptQuery_encode),
            ("test_08_scriptQuery_encode_2", test_08_scriptQuery_encode_2),
            ("test_09_scriptQuery_decode", test_09_scriptQuery_decode),
            ("test_10_scriptQuery_decode_2", test_10_scriptQuery_decode_2),
            ("test_11_percolateQuery_encode", test_11_percolateQuery_encode),
            ("test_12_percolateQuery_encode_2", test_12_percolateQuery_encode_2),
            ("test_13_percolateQuery_encode_3", test_13_percolateQuery_encode_3),
            ("test_14_percolateQuery_decode", test_14_percolateQuery_decode),
            ("test_15_percolateQuery_decode_2", test_15_percolateQuery_decode_2),
            ("test_16_percolateQuery_decode_3", test_16_percolateQuery_decode_3),
            ("test_17_wrapperQuery_encode", test_17_wrapperQuery_encode),
            ("test_18_wrapperQuery_decode", test_18_wrapperQuery_decode),
        ]
    }

    extension TermLevelQueriesTests {
        // DO NOT MODIFY: This is autogenerated, use:
        //   `swift test --generate-linuxmain`
        // to regenerate.
        static let __allTests__TermLevelQueriesTests = [
            ("test_01_termQuery_encode", test_01_termQuery_encode),
            ("test_02_termQuery_encode_2", test_02_termQuery_encode_2),
            ("test_03_termQuery_decode", test_03_termQuery_decode),
            ("test_04_termQuery_decode_2", test_04_termQuery_decode_2),
            ("test_05_termsQuery_encode", test_05_termsQuery_encode),
            ("test_06_termsQuery_decode", test_06_termsQuery_decode),
            ("test_07_rangeQuery_encode", test_07_rangeQuery_encode),
            ("test_08_rangeQuery_encode_2", test_08_rangeQuery_encode_2),
            ("test_09_rangeQuery_decode", test_09_rangeQuery_decode),
            ("test_10_rangeQuery_decode_2", test_10_rangeQuery_decode_2),
            ("test_11_existsQuery_encode", test_11_existsQuery_encode),
            ("test_12_existsQuery_decode", test_12_existsQuery_decode),
            ("test_13_prefixQuery_encode", test_13_prefixQuery_encode),
            ("test_14_prefixQuery_encode_2", test_14_prefixQuery_encode_2),
            ("test_15_prefixQuery_decode", test_15_prefixQuery_decode),
            ("test_16_prefixQuery_decode_2", test_16_prefixQuery_decode_2),
            ("test_17_wildCardQuery_encode", test_17_wildCardQuery_encode),
            ("test_18_wildCardQuery_encode_2", test_18_wildCardQuery_encode_2),
            ("test_19_wildCardQuery_decode", test_19_wildCardQuery_decode),
            ("test_20_wildCardQuery_decode_2", test_20_wildCardQuery_decode_2),
            ("test_21_regexpQuery_encode", test_21_regexpQuery_encode),
            ("test_22_regexpQuery_encode_2", test_22_regexpQuery_encode_2),
            ("test_23_regexpQuery_decode", test_23_regexpQuery_decode),
            ("test_24_regexpQuery_decode_2", test_24_regexpQuery_decode_2),
            ("test_25_regexpQuery_encode", test_25_regexpQuery_encode),
            ("test_26_regexpQuery_encode_2", test_26_regexpQuery_encode_2),
            ("test_27_regexpQuery_decode", test_27_regexpQuery_decode),
            ("test_28_regexpQuery_decode_2", test_28_regexpQuery_decode_2),
            ("test_29_typeQuery_encode", test_29_typeQuery_encode),
            ("test_30_typeQuery_decode", test_30_typeQuery_decode),
            ("test_31_idsQuery_encode", test_31_idsQuery_encode),
            ("test_32_idsQuery_encode_2", test_32_idsQuery_encode_2),
            ("test_33_idsQuery_decode", test_33_idsQuery_decode),
            ("test_34_idsQuery_decode_2", test_34_idsQuery_decode_2),
        ]
    }

    extension TermLevelQueryBuilderTests {
        // DO NOT MODIFY: This is autogenerated, use:
        //   `swift test --generate-linuxmain`
        // to regenerate.
        static let __allTests__TermLevelQueryBuilderTests = [
            ("test_01_termQueryBuilder", test_01_termQueryBuilder),
            ("test_02_termQueryBuilder_2", test_02_termQueryBuilder_2),
            ("test_03_termQueryBuilder_missing_field", test_03_termQueryBuilder_missing_field),
            ("test_04_termQueryBuilder_missing_value", test_04_termQueryBuilder_missing_value),
            ("test_05_termsQueryBuilder", test_05_termsQueryBuilder),
            ("test_06_termsQueryBuilder_missing_field", test_06_termsQueryBuilder_missing_field),
            ("test_07_termsQueryBuilder_missing_value", test_07_termsQueryBuilder_missing_value),
            ("test_08_termQueryBuilder", test_08_termQueryBuilder),
            ("test_09_termsQueryBuilder", test_09_termsQueryBuilder),
            ("test_10_rangeQueryBuilder", test_10_rangeQueryBuilder),
            ("test_11_rangeQueryBuilder_missing_field", test_11_rangeQueryBuilder_missing_field),
            ("test_12_rangeQueryBuilder_missing_value", test_12_rangeQueryBuilder_missing_value),
            ("test_13_rangeQueryBuilder", test_13_rangeQueryBuilder),
            ("test_14_existsQueryBuilder", test_14_existsQueryBuilder),
            ("test_15_existsQueryBuilder_missing_field", test_15_existsQueryBuilder_missing_field),
            ("test_16_existsQueryBuilder", test_16_existsQueryBuilder),
            ("test_17_prefixQueryBuilder", test_17_prefixQueryBuilder),
            ("test_18_prefixQueryBuilder_2", test_18_prefixQueryBuilder_2),
            ("test_19_prefixQueryBuilder_missing_field", test_19_prefixQueryBuilder_missing_field),
            ("test_20_prefixQueryBuilder_missing_value", test_20_prefixQueryBuilder_missing_value),
            ("test_21_prefixQueryBuilder", test_21_prefixQueryBuilder),
            ("test_22_wildCardQueryBuilder", test_22_wildCardQueryBuilder),
            ("test_23_wildCardQueryBuilder_2", test_23_wildCardQueryBuilder_2),
            ("test_24_wildCardQueryBuilder_missing_field", test_24_wildCardQueryBuilder_missing_field),
            ("test_25_wildCardQueryBuilder_missing_value", test_25_wildCardQueryBuilder_missing_value),
            ("test_26_wildCardQueryBuilder", test_26_wildCardQueryBuilder),
            ("test_27_regexpQueryBuilder", test_27_regexpQueryBuilder),
            ("test_28_regexpQueryBuilder_2", test_28_regexpQueryBuilder_2),
            ("test_29_regexpQueryBuilder_missing_field", test_29_regexpQueryBuilder_missing_field),
            ("test_30_regexpQueryBuilder_missing_value", test_30_regexpQueryBuilder_missing_value),
            ("test_31_regexpQueryBuilder", test_31_regexpQueryBuilder),
            ("test_32_fuzzyQueryBuilder", test_32_fuzzyQueryBuilder),
            ("test_33_fuzzyQueryBuilder_2", test_33_fuzzyQueryBuilder_2),
            ("test_34_fuzzyQueryBuilder_missing_field", test_34_fuzzyQueryBuilder_missing_field),
            ("test_35_fuzzyQueryBuilder_missing_value", test_35_fuzzyQueryBuilder_missing_value),
            ("test_36_fuzzyQueryBuilder", test_36_fuzzyQueryBuilder),
            ("test_37_typeQueryBuilder", test_37_typeQueryBuilder),
            ("test_38_typeQueryBuilder_missing_field", test_38_typeQueryBuilder_missing_field),
            ("test_39_typeQueryBuilder", test_39_typeQueryBuilder),
            ("test_40_idsQueryBuilder", test_40_idsQueryBuilder),
            ("test_41_idsQueryBuilder", test_41_idsQueryBuilder),
            ("test_42_idsQueryBuilder_missing_field", test_42_idsQueryBuilder_missing_field),
            ("test_43_idsQueryBuilder", test_43_idsQueryBuilder),
        ]
    }

    public func __allTests() -> [XCTestCaseEntry] {
        return [
            testCase(CompoundQueriesTest.__allTests__CompoundQueriesTest),
            testCase(CompoundQueryBuilderTests.__allTests__CompoundQueryBuilderTests),
            testCase(ElasticSwiftQueryDSLTests.__allTests__ElasticSwiftQueryDSLTests),
            testCase(FullTextBuilderTests.__allTests__FullTextBuilderTests),
            testCase(FullTextQueriesTest.__allTests__FullTextQueriesTest),
            testCase(GeoQueriesTests.__allTests__GeoQueriesTests),
            testCase(GeoQueryBuilderTests.__allTests__GeoQueryBuilderTests),
            testCase(InnertHitsTests.__allTests__InnertHitsTests),
            testCase(JoiningQueriesTests.__allTests__JoiningQueriesTests),
            testCase(JoiningQueryBuilderTests.__allTests__JoiningQueryBuilderTests),
            testCase(MatchAllQueryTests.__allTests__MatchAllQueryTests),
            testCase(ScoreFunctionTests.__allTests__ScoreFunctionTests),
            testCase(ScriptTests.__allTests__ScriptTests),
            testCase(SpanQueriesTests.__allTests__SpanQueriesTests),
            testCase(SpecializedQueryBuilderTests.__allTests__SpecializedQueryBuilderTests),
            testCase(SpecializedQuriesTests.__allTests__SpecializedQuriesTests),
            testCase(TermLevelQueriesTests.__allTests__TermLevelQueriesTests),
            testCase(TermLevelQueryBuilderTests.__allTests__TermLevelQueryBuilderTests),
        ]
    }
#endif
