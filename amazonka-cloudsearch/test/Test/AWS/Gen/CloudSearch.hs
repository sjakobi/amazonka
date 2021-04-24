{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.CloudSearch
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.CloudSearch where

import Data.Proxy
import Network.AWS.CloudSearch
import Test.AWS.CloudSearch.Internal
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestDefineExpression $
--             defineExpression
--
--         , requestListDomainNames $
--             listDomainNames
--
--         , requestDefineSuggester $
--             defineSuggester
--
--         , requestDescribeDomains $
--             describeDomains
--
--         , requestDescribeDomainEndpointOptions $
--             describeDomainEndpointOptions
--
--         , requestDeleteExpression $
--             deleteExpression
--
--         , requestDeleteIndexField $
--             deleteIndexField
--
--         , requestDeleteSuggester $
--             deleteSuggester
--
--         , requestUpdateDomainEndpointOptions $
--             updateDomainEndpointOptions
--
--         , requestDescribeIndexFields $
--             describeIndexFields
--
--         , requestCreateDomain $
--             createDomain
--
--         , requestDescribeExpressions $
--             describeExpressions
--
--         , requestDescribeAvailabilityOptions $
--             describeAvailabilityOptions
--
--         , requestDefineIndexField $
--             defineIndexField
--
--         , requestDescribeAnalysisSchemes $
--             describeAnalysisSchemes
--
--         , requestDeleteDomain $
--             deleteDomain
--
--         , requestDeleteAnalysisScheme $
--             deleteAnalysisScheme
--
--         , requestUpdateScalingParameters $
--             updateScalingParameters
--
--         , requestBuildSuggesters $
--             buildSuggesters
--
--         , requestUpdateServiceAccessPolicies $
--             updateServiceAccessPolicies
--
--         , requestUpdateAvailabilityOptions $
--             updateAvailabilityOptions
--
--         , requestDescribeSuggesters $
--             describeSuggesters
--
--         , requestDescribeServiceAccessPolicies $
--             describeServiceAccessPolicies
--
--         , requestDefineAnalysisScheme $
--             defineAnalysisScheme
--
--         , requestIndexDocuments $
--             indexDocuments
--
--         , requestDescribeScalingParameters $
--             describeScalingParameters
--
--           ]

--     , testGroup "response"
--         [ responseDefineExpression $
--             defineExpressionResponse
--
--         , responseListDomainNames $
--             listDomainNamesResponse
--
--         , responseDefineSuggester $
--             defineSuggesterResponse
--
--         , responseDescribeDomains $
--             describeDomainsResponse
--
--         , responseDescribeDomainEndpointOptions $
--             describeDomainEndpointOptionsResponse
--
--         , responseDeleteExpression $
--             deleteExpressionResponse
--
--         , responseDeleteIndexField $
--             deleteIndexFieldResponse
--
--         , responseDeleteSuggester $
--             deleteSuggesterResponse
--
--         , responseUpdateDomainEndpointOptions $
--             updateDomainEndpointOptionsResponse
--
--         , responseDescribeIndexFields $
--             describeIndexFieldsResponse
--
--         , responseCreateDomain $
--             createDomainResponse
--
--         , responseDescribeExpressions $
--             describeExpressionsResponse
--
--         , responseDescribeAvailabilityOptions $
--             describeAvailabilityOptionsResponse
--
--         , responseDefineIndexField $
--             defineIndexFieldResponse
--
--         , responseDescribeAnalysisSchemes $
--             describeAnalysisSchemesResponse
--
--         , responseDeleteDomain $
--             deleteDomainResponse
--
--         , responseDeleteAnalysisScheme $
--             deleteAnalysisSchemeResponse
--
--         , responseUpdateScalingParameters $
--             updateScalingParametersResponse
--
--         , responseBuildSuggesters $
--             buildSuggestersResponse
--
--         , responseUpdateServiceAccessPolicies $
--             updateServiceAccessPoliciesResponse
--
--         , responseUpdateAvailabilityOptions $
--             updateAvailabilityOptionsResponse
--
--         , responseDescribeSuggesters $
--             describeSuggestersResponse
--
--         , responseDescribeServiceAccessPolicies $
--             describeServiceAccessPoliciesResponse
--
--         , responseDefineAnalysisScheme $
--             defineAnalysisSchemeResponse
--
--         , responseIndexDocuments $
--             indexDocumentsResponse
--
--         , responseDescribeScalingParameters $
--             describeScalingParametersResponse
--
--           ]
--     ]

-- Requests

requestDefineExpression :: DefineExpression -> TestTree
requestDefineExpression =
  req
    "DefineExpression"
    "fixture/DefineExpression.yaml"

requestListDomainNames :: ListDomainNames -> TestTree
requestListDomainNames =
  req
    "ListDomainNames"
    "fixture/ListDomainNames.yaml"

requestDefineSuggester :: DefineSuggester -> TestTree
requestDefineSuggester =
  req
    "DefineSuggester"
    "fixture/DefineSuggester.yaml"

requestDescribeDomains :: DescribeDomains -> TestTree
requestDescribeDomains =
  req
    "DescribeDomains"
    "fixture/DescribeDomains.yaml"

requestDescribeDomainEndpointOptions :: DescribeDomainEndpointOptions -> TestTree
requestDescribeDomainEndpointOptions =
  req
    "DescribeDomainEndpointOptions"
    "fixture/DescribeDomainEndpointOptions.yaml"

requestDeleteExpression :: DeleteExpression -> TestTree
requestDeleteExpression =
  req
    "DeleteExpression"
    "fixture/DeleteExpression.yaml"

requestDeleteIndexField :: DeleteIndexField -> TestTree
requestDeleteIndexField =
  req
    "DeleteIndexField"
    "fixture/DeleteIndexField.yaml"

requestDeleteSuggester :: DeleteSuggester -> TestTree
requestDeleteSuggester =
  req
    "DeleteSuggester"
    "fixture/DeleteSuggester.yaml"

requestUpdateDomainEndpointOptions :: UpdateDomainEndpointOptions -> TestTree
requestUpdateDomainEndpointOptions =
  req
    "UpdateDomainEndpointOptions"
    "fixture/UpdateDomainEndpointOptions.yaml"

requestDescribeIndexFields :: DescribeIndexFields -> TestTree
requestDescribeIndexFields =
  req
    "DescribeIndexFields"
    "fixture/DescribeIndexFields.yaml"

requestCreateDomain :: CreateDomain -> TestTree
requestCreateDomain =
  req
    "CreateDomain"
    "fixture/CreateDomain.yaml"

requestDescribeExpressions :: DescribeExpressions -> TestTree
requestDescribeExpressions =
  req
    "DescribeExpressions"
    "fixture/DescribeExpressions.yaml"

requestDescribeAvailabilityOptions :: DescribeAvailabilityOptions -> TestTree
requestDescribeAvailabilityOptions =
  req
    "DescribeAvailabilityOptions"
    "fixture/DescribeAvailabilityOptions.yaml"

requestDefineIndexField :: DefineIndexField -> TestTree
requestDefineIndexField =
  req
    "DefineIndexField"
    "fixture/DefineIndexField.yaml"

requestDescribeAnalysisSchemes :: DescribeAnalysisSchemes -> TestTree
requestDescribeAnalysisSchemes =
  req
    "DescribeAnalysisSchemes"
    "fixture/DescribeAnalysisSchemes.yaml"

requestDeleteDomain :: DeleteDomain -> TestTree
requestDeleteDomain =
  req
    "DeleteDomain"
    "fixture/DeleteDomain.yaml"

requestDeleteAnalysisScheme :: DeleteAnalysisScheme -> TestTree
requestDeleteAnalysisScheme =
  req
    "DeleteAnalysisScheme"
    "fixture/DeleteAnalysisScheme.yaml"

requestUpdateScalingParameters :: UpdateScalingParameters -> TestTree
requestUpdateScalingParameters =
  req
    "UpdateScalingParameters"
    "fixture/UpdateScalingParameters.yaml"

requestBuildSuggesters :: BuildSuggesters -> TestTree
requestBuildSuggesters =
  req
    "BuildSuggesters"
    "fixture/BuildSuggesters.yaml"

requestUpdateServiceAccessPolicies :: UpdateServiceAccessPolicies -> TestTree
requestUpdateServiceAccessPolicies =
  req
    "UpdateServiceAccessPolicies"
    "fixture/UpdateServiceAccessPolicies.yaml"

requestUpdateAvailabilityOptions :: UpdateAvailabilityOptions -> TestTree
requestUpdateAvailabilityOptions =
  req
    "UpdateAvailabilityOptions"
    "fixture/UpdateAvailabilityOptions.yaml"

requestDescribeSuggesters :: DescribeSuggesters -> TestTree
requestDescribeSuggesters =
  req
    "DescribeSuggesters"
    "fixture/DescribeSuggesters.yaml"

requestDescribeServiceAccessPolicies :: DescribeServiceAccessPolicies -> TestTree
requestDescribeServiceAccessPolicies =
  req
    "DescribeServiceAccessPolicies"
    "fixture/DescribeServiceAccessPolicies.yaml"

requestDefineAnalysisScheme :: DefineAnalysisScheme -> TestTree
requestDefineAnalysisScheme =
  req
    "DefineAnalysisScheme"
    "fixture/DefineAnalysisScheme.yaml"

requestIndexDocuments :: IndexDocuments -> TestTree
requestIndexDocuments =
  req
    "IndexDocuments"
    "fixture/IndexDocuments.yaml"

requestDescribeScalingParameters :: DescribeScalingParameters -> TestTree
requestDescribeScalingParameters =
  req
    "DescribeScalingParameters"
    "fixture/DescribeScalingParameters.yaml"

-- Responses

responseDefineExpression :: DefineExpressionResponse -> TestTree
responseDefineExpression =
  res
    "DefineExpressionResponse"
    "fixture/DefineExpressionResponse.proto"
    cloudSearch
    (Proxy :: Proxy DefineExpression)

responseListDomainNames :: ListDomainNamesResponse -> TestTree
responseListDomainNames =
  res
    "ListDomainNamesResponse"
    "fixture/ListDomainNamesResponse.proto"
    cloudSearch
    (Proxy :: Proxy ListDomainNames)

responseDefineSuggester :: DefineSuggesterResponse -> TestTree
responseDefineSuggester =
  res
    "DefineSuggesterResponse"
    "fixture/DefineSuggesterResponse.proto"
    cloudSearch
    (Proxy :: Proxy DefineSuggester)

responseDescribeDomains :: DescribeDomainsResponse -> TestTree
responseDescribeDomains =
  res
    "DescribeDomainsResponse"
    "fixture/DescribeDomainsResponse.proto"
    cloudSearch
    (Proxy :: Proxy DescribeDomains)

responseDescribeDomainEndpointOptions :: DescribeDomainEndpointOptionsResponse -> TestTree
responseDescribeDomainEndpointOptions =
  res
    "DescribeDomainEndpointOptionsResponse"
    "fixture/DescribeDomainEndpointOptionsResponse.proto"
    cloudSearch
    (Proxy :: Proxy DescribeDomainEndpointOptions)

responseDeleteExpression :: DeleteExpressionResponse -> TestTree
responseDeleteExpression =
  res
    "DeleteExpressionResponse"
    "fixture/DeleteExpressionResponse.proto"
    cloudSearch
    (Proxy :: Proxy DeleteExpression)

responseDeleteIndexField :: DeleteIndexFieldResponse -> TestTree
responseDeleteIndexField =
  res
    "DeleteIndexFieldResponse"
    "fixture/DeleteIndexFieldResponse.proto"
    cloudSearch
    (Proxy :: Proxy DeleteIndexField)

responseDeleteSuggester :: DeleteSuggesterResponse -> TestTree
responseDeleteSuggester =
  res
    "DeleteSuggesterResponse"
    "fixture/DeleteSuggesterResponse.proto"
    cloudSearch
    (Proxy :: Proxy DeleteSuggester)

responseUpdateDomainEndpointOptions :: UpdateDomainEndpointOptionsResponse -> TestTree
responseUpdateDomainEndpointOptions =
  res
    "UpdateDomainEndpointOptionsResponse"
    "fixture/UpdateDomainEndpointOptionsResponse.proto"
    cloudSearch
    (Proxy :: Proxy UpdateDomainEndpointOptions)

responseDescribeIndexFields :: DescribeIndexFieldsResponse -> TestTree
responseDescribeIndexFields =
  res
    "DescribeIndexFieldsResponse"
    "fixture/DescribeIndexFieldsResponse.proto"
    cloudSearch
    (Proxy :: Proxy DescribeIndexFields)

responseCreateDomain :: CreateDomainResponse -> TestTree
responseCreateDomain =
  res
    "CreateDomainResponse"
    "fixture/CreateDomainResponse.proto"
    cloudSearch
    (Proxy :: Proxy CreateDomain)

responseDescribeExpressions :: DescribeExpressionsResponse -> TestTree
responseDescribeExpressions =
  res
    "DescribeExpressionsResponse"
    "fixture/DescribeExpressionsResponse.proto"
    cloudSearch
    (Proxy :: Proxy DescribeExpressions)

responseDescribeAvailabilityOptions :: DescribeAvailabilityOptionsResponse -> TestTree
responseDescribeAvailabilityOptions =
  res
    "DescribeAvailabilityOptionsResponse"
    "fixture/DescribeAvailabilityOptionsResponse.proto"
    cloudSearch
    (Proxy :: Proxy DescribeAvailabilityOptions)

responseDefineIndexField :: DefineIndexFieldResponse -> TestTree
responseDefineIndexField =
  res
    "DefineIndexFieldResponse"
    "fixture/DefineIndexFieldResponse.proto"
    cloudSearch
    (Proxy :: Proxy DefineIndexField)

responseDescribeAnalysisSchemes :: DescribeAnalysisSchemesResponse -> TestTree
responseDescribeAnalysisSchemes =
  res
    "DescribeAnalysisSchemesResponse"
    "fixture/DescribeAnalysisSchemesResponse.proto"
    cloudSearch
    (Proxy :: Proxy DescribeAnalysisSchemes)

responseDeleteDomain :: DeleteDomainResponse -> TestTree
responseDeleteDomain =
  res
    "DeleteDomainResponse"
    "fixture/DeleteDomainResponse.proto"
    cloudSearch
    (Proxy :: Proxy DeleteDomain)

responseDeleteAnalysisScheme :: DeleteAnalysisSchemeResponse -> TestTree
responseDeleteAnalysisScheme =
  res
    "DeleteAnalysisSchemeResponse"
    "fixture/DeleteAnalysisSchemeResponse.proto"
    cloudSearch
    (Proxy :: Proxy DeleteAnalysisScheme)

responseUpdateScalingParameters :: UpdateScalingParametersResponse -> TestTree
responseUpdateScalingParameters =
  res
    "UpdateScalingParametersResponse"
    "fixture/UpdateScalingParametersResponse.proto"
    cloudSearch
    (Proxy :: Proxy UpdateScalingParameters)

responseBuildSuggesters :: BuildSuggestersResponse -> TestTree
responseBuildSuggesters =
  res
    "BuildSuggestersResponse"
    "fixture/BuildSuggestersResponse.proto"
    cloudSearch
    (Proxy :: Proxy BuildSuggesters)

responseUpdateServiceAccessPolicies :: UpdateServiceAccessPoliciesResponse -> TestTree
responseUpdateServiceAccessPolicies =
  res
    "UpdateServiceAccessPoliciesResponse"
    "fixture/UpdateServiceAccessPoliciesResponse.proto"
    cloudSearch
    (Proxy :: Proxy UpdateServiceAccessPolicies)

responseUpdateAvailabilityOptions :: UpdateAvailabilityOptionsResponse -> TestTree
responseUpdateAvailabilityOptions =
  res
    "UpdateAvailabilityOptionsResponse"
    "fixture/UpdateAvailabilityOptionsResponse.proto"
    cloudSearch
    (Proxy :: Proxy UpdateAvailabilityOptions)

responseDescribeSuggesters :: DescribeSuggestersResponse -> TestTree
responseDescribeSuggesters =
  res
    "DescribeSuggestersResponse"
    "fixture/DescribeSuggestersResponse.proto"
    cloudSearch
    (Proxy :: Proxy DescribeSuggesters)

responseDescribeServiceAccessPolicies :: DescribeServiceAccessPoliciesResponse -> TestTree
responseDescribeServiceAccessPolicies =
  res
    "DescribeServiceAccessPoliciesResponse"
    "fixture/DescribeServiceAccessPoliciesResponse.proto"
    cloudSearch
    (Proxy :: Proxy DescribeServiceAccessPolicies)

responseDefineAnalysisScheme :: DefineAnalysisSchemeResponse -> TestTree
responseDefineAnalysisScheme =
  res
    "DefineAnalysisSchemeResponse"
    "fixture/DefineAnalysisSchemeResponse.proto"
    cloudSearch
    (Proxy :: Proxy DefineAnalysisScheme)

responseIndexDocuments :: IndexDocumentsResponse -> TestTree
responseIndexDocuments =
  res
    "IndexDocumentsResponse"
    "fixture/IndexDocumentsResponse.proto"
    cloudSearch
    (Proxy :: Proxy IndexDocuments)

responseDescribeScalingParameters :: DescribeScalingParametersResponse -> TestTree
responseDescribeScalingParameters =
  res
    "DescribeScalingParametersResponse"
    "fixture/DescribeScalingParametersResponse.proto"
    cloudSearch
    (Proxy :: Proxy DescribeScalingParameters)
