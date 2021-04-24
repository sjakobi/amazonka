{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudSearch
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __Amazon CloudSearch Configuration Service__
--
-- You use the Amazon CloudSearch configuration service to create, configure, and manage search domains. Configuration service requests are submitted using the AWS Query protocol. AWS Query requests are HTTP or HTTPS requests submitted via HTTP GET or POST with a query parameter named Action.
--
-- The endpoint for configuration service requests is region-specific: cloudsearch./region/ .amazonaws.com. For example, cloudsearch.us-east-1.amazonaws.com. For a current list of supported regions and endpoints, see <http://docs.aws.amazon.com/general/latest/gr/rande.html#cloudsearch_region Regions and Endpoints> .
module Network.AWS.CloudSearch
  ( -- * Service Configuration
    cloudSearch,

    -- * Errors
    -- $errors

    -- ** InvalidTypeException
    _InvalidTypeException,

    -- ** InternalException
    _InternalException,

    -- ** BaseException
    _BaseException,

    -- ** ValidationException
    _ValidationException,

    -- ** LimitExceededException
    _LimitExceededException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- ** DisabledOperationException
    _DisabledOperationException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** DefineExpression
    module Network.AWS.CloudSearch.DefineExpression,

    -- ** ListDomainNames
    module Network.AWS.CloudSearch.ListDomainNames,

    -- ** DefineSuggester
    module Network.AWS.CloudSearch.DefineSuggester,

    -- ** DescribeDomains
    module Network.AWS.CloudSearch.DescribeDomains,

    -- ** DescribeDomainEndpointOptions
    module Network.AWS.CloudSearch.DescribeDomainEndpointOptions,

    -- ** DeleteExpression
    module Network.AWS.CloudSearch.DeleteExpression,

    -- ** DeleteIndexField
    module Network.AWS.CloudSearch.DeleteIndexField,

    -- ** DeleteSuggester
    module Network.AWS.CloudSearch.DeleteSuggester,

    -- ** UpdateDomainEndpointOptions
    module Network.AWS.CloudSearch.UpdateDomainEndpointOptions,

    -- ** DescribeIndexFields
    module Network.AWS.CloudSearch.DescribeIndexFields,

    -- ** CreateDomain
    module Network.AWS.CloudSearch.CreateDomain,

    -- ** DescribeExpressions
    module Network.AWS.CloudSearch.DescribeExpressions,

    -- ** DescribeAvailabilityOptions
    module Network.AWS.CloudSearch.DescribeAvailabilityOptions,

    -- ** DefineIndexField
    module Network.AWS.CloudSearch.DefineIndexField,

    -- ** DescribeAnalysisSchemes
    module Network.AWS.CloudSearch.DescribeAnalysisSchemes,

    -- ** DeleteDomain
    module Network.AWS.CloudSearch.DeleteDomain,

    -- ** DeleteAnalysisScheme
    module Network.AWS.CloudSearch.DeleteAnalysisScheme,

    -- ** UpdateScalingParameters
    module Network.AWS.CloudSearch.UpdateScalingParameters,

    -- ** BuildSuggesters
    module Network.AWS.CloudSearch.BuildSuggesters,

    -- ** UpdateServiceAccessPolicies
    module Network.AWS.CloudSearch.UpdateServiceAccessPolicies,

    -- ** UpdateAvailabilityOptions
    module Network.AWS.CloudSearch.UpdateAvailabilityOptions,

    -- ** DescribeSuggesters
    module Network.AWS.CloudSearch.DescribeSuggesters,

    -- ** DescribeServiceAccessPolicies
    module Network.AWS.CloudSearch.DescribeServiceAccessPolicies,

    -- ** DefineAnalysisScheme
    module Network.AWS.CloudSearch.DefineAnalysisScheme,

    -- ** IndexDocuments
    module Network.AWS.CloudSearch.IndexDocuments,

    -- ** DescribeScalingParameters
    module Network.AWS.CloudSearch.DescribeScalingParameters,

    -- * Types

    -- ** AlgorithmicStemming
    AlgorithmicStemming (..),

    -- ** AnalysisSchemeLanguage
    AnalysisSchemeLanguage (..),

    -- ** IndexFieldType
    IndexFieldType (..),

    -- ** OptionState
    OptionState (..),

    -- ** PartitionInstanceType
    PartitionInstanceType (..),

    -- ** SuggesterFuzzyMatching
    SuggesterFuzzyMatching (..),

    -- ** TLSSecurityPolicy
    TLSSecurityPolicy (..),

    -- ** AccessPoliciesStatus
    AccessPoliciesStatus,
    accessPoliciesStatus,
    apsOptions,
    apsStatus,

    -- ** AnalysisOptions
    AnalysisOptions,
    analysisOptions,
    aoStopwords,
    aoAlgorithmicStemming,
    aoStemmingDictionary,
    aoJapaneseTokenizationDictionary,
    aoSynonyms,

    -- ** AnalysisScheme
    AnalysisScheme,
    analysisScheme,
    asAnalysisOptions,
    asAnalysisSchemeName,
    asAnalysisSchemeLanguage,

    -- ** AnalysisSchemeStatus
    AnalysisSchemeStatus,
    analysisSchemeStatus,
    assOptions,
    assStatus,

    -- ** AvailabilityOptionsStatus
    AvailabilityOptionsStatus,
    availabilityOptionsStatus,
    aosOptions,
    aosStatus,

    -- ** DateArrayOptions
    DateArrayOptions,
    dateArrayOptions,
    dSourceFields,
    dFacetEnabled,
    dReturnEnabled,
    dSearchEnabled,
    dDefaultValue,

    -- ** DateOptions
    DateOptions,
    dateOptions,
    dosSortEnabled,
    dosFacetEnabled,
    dosReturnEnabled,
    dosSourceField,
    dosSearchEnabled,
    dosDefaultValue,

    -- ** DocumentSuggesterOptions
    DocumentSuggesterOptions,
    documentSuggesterOptions,
    dsoFuzzyMatching,
    dsoSortExpression,
    dsoSourceField,

    -- ** DomainEndpointOptions
    DomainEndpointOptions,
    domainEndpointOptions,
    deoEnforceHTTPS,
    deoTLSSecurityPolicy,

    -- ** DomainEndpointOptionsStatus
    DomainEndpointOptionsStatus,
    domainEndpointOptionsStatus,
    deosOptions,
    deosStatus,

    -- ** DomainStatus
    DomainStatus,
    domainStatus,
    dsSearchInstanceType,
    dsARN,
    dsSearchPartitionCount,
    dsSearchInstanceCount,
    dsLimits,
    dsSearchService,
    dsProcessing,
    dsCreated,
    dsDeleted,
    dsDocService,
    dsDomainId,
    dsDomainName,
    dsRequiresIndexDocuments,

    -- ** DoubleArrayOptions
    DoubleArrayOptions,
    doubleArrayOptions,
    daoSourceFields,
    daoFacetEnabled,
    daoReturnEnabled,
    daoSearchEnabled,
    daoDefaultValue,

    -- ** DoubleOptions
    DoubleOptions,
    doubleOptions,
    doSortEnabled,
    doFacetEnabled,
    doReturnEnabled,
    doSourceField,
    doSearchEnabled,
    doDefaultValue,

    -- ** Expression
    Expression,
    expression,
    eExpressionName,
    eExpressionValue,

    -- ** ExpressionStatus
    ExpressionStatus,
    expressionStatus,
    esOptions,
    esStatus,

    -- ** IndexField
    IndexField,
    indexField,
    ifDoubleArrayOptions,
    ifLatLonOptions,
    ifTextArrayOptions,
    ifDateArrayOptions,
    ifDoubleOptions,
    ifTextOptions,
    ifIntArrayOptions,
    ifLiteralArrayOptions,
    ifDateOptions,
    ifIntOptions,
    ifLiteralOptions,
    ifIndexFieldName,
    ifIndexFieldType,

    -- ** IndexFieldStatus
    IndexFieldStatus,
    indexFieldStatus,
    ifsOptions,
    ifsStatus,

    -- ** IntArrayOptions
    IntArrayOptions,
    intArrayOptions,
    iaoSourceFields,
    iaoFacetEnabled,
    iaoReturnEnabled,
    iaoSearchEnabled,
    iaoDefaultValue,

    -- ** IntOptions
    IntOptions,
    intOptions,
    ioSortEnabled,
    ioFacetEnabled,
    ioReturnEnabled,
    ioSourceField,
    ioSearchEnabled,
    ioDefaultValue,

    -- ** LatLonOptions
    LatLonOptions,
    latLonOptions,
    lloSortEnabled,
    lloFacetEnabled,
    lloReturnEnabled,
    lloSourceField,
    lloSearchEnabled,
    lloDefaultValue,

    -- ** Limits
    Limits,
    limits,
    lMaximumReplicationCount,
    lMaximumPartitionCount,

    -- ** LiteralArrayOptions
    LiteralArrayOptions,
    literalArrayOptions,
    laoSourceFields,
    laoFacetEnabled,
    laoReturnEnabled,
    laoSearchEnabled,
    laoDefaultValue,

    -- ** LiteralOptions
    LiteralOptions,
    literalOptions,
    loSortEnabled,
    loFacetEnabled,
    loReturnEnabled,
    loSourceField,
    loSearchEnabled,
    loDefaultValue,

    -- ** OptionStatus
    OptionStatus,
    optionStatus,
    osUpdateVersion,
    osPendingDeletion,
    osCreationDate,
    osUpdateDate,
    osState,

    -- ** ScalingParameters
    ScalingParameters,
    scalingParameters,
    spDesiredReplicationCount,
    spDesiredPartitionCount,
    spDesiredInstanceType,

    -- ** ScalingParametersStatus
    ScalingParametersStatus,
    scalingParametersStatus,
    spsOptions,
    spsStatus,

    -- ** ServiceEndpoint
    ServiceEndpoint,
    serviceEndpoint,
    seEndpoint,

    -- ** Suggester
    Suggester,
    suggester,
    sSuggesterName,
    sDocumentSuggesterOptions,

    -- ** SuggesterStatus
    SuggesterStatus,
    suggesterStatus,
    ssOptions,
    ssStatus,

    -- ** TextArrayOptions
    TextArrayOptions,
    textArrayOptions,
    taoAnalysisScheme,
    taoSourceFields,
    taoReturnEnabled,
    taoDefaultValue,
    taoHighlightEnabled,

    -- ** TextOptions
    TextOptions,
    textOptions,
    toSortEnabled,
    toAnalysisScheme,
    toReturnEnabled,
    toSourceField,
    toDefaultValue,
    toHighlightEnabled,
  )
where

import Network.AWS.CloudSearch.BuildSuggesters
import Network.AWS.CloudSearch.CreateDomain
import Network.AWS.CloudSearch.DefineAnalysisScheme
import Network.AWS.CloudSearch.DefineExpression
import Network.AWS.CloudSearch.DefineIndexField
import Network.AWS.CloudSearch.DefineSuggester
import Network.AWS.CloudSearch.DeleteAnalysisScheme
import Network.AWS.CloudSearch.DeleteDomain
import Network.AWS.CloudSearch.DeleteExpression
import Network.AWS.CloudSearch.DeleteIndexField
import Network.AWS.CloudSearch.DeleteSuggester
import Network.AWS.CloudSearch.DescribeAnalysisSchemes
import Network.AWS.CloudSearch.DescribeAvailabilityOptions
import Network.AWS.CloudSearch.DescribeDomainEndpointOptions
import Network.AWS.CloudSearch.DescribeDomains
import Network.AWS.CloudSearch.DescribeExpressions
import Network.AWS.CloudSearch.DescribeIndexFields
import Network.AWS.CloudSearch.DescribeScalingParameters
import Network.AWS.CloudSearch.DescribeServiceAccessPolicies
import Network.AWS.CloudSearch.DescribeSuggesters
import Network.AWS.CloudSearch.IndexDocuments
import Network.AWS.CloudSearch.ListDomainNames
import Network.AWS.CloudSearch.Types
import Network.AWS.CloudSearch.UpdateAvailabilityOptions
import Network.AWS.CloudSearch.UpdateDomainEndpointOptions
import Network.AWS.CloudSearch.UpdateScalingParameters
import Network.AWS.CloudSearch.UpdateServiceAccessPolicies
import Network.AWS.CloudSearch.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'CloudSearch'.

-- $operations
-- Some AWS operations return results that are incomplete and require subsequent
-- requests in order to obtain the entire result set. The process of sending
-- subsequent requests to continue where a previous request left off is called
-- pagination. For example, the 'ListObjects' operation of Amazon S3 returns up to
-- 1000 objects at a time, and you must send subsequent requests with the
-- appropriate Marker in order to retrieve the next page of results.
--
-- Operations that have an 'AWSPager' instance can transparently perform subsequent
-- requests, correctly setting Markers and other request facets to iterate through
-- the entire result set of a truncated API operation. Operations which support
-- this have an additional note in the documentation.
--
-- Many operations have the ability to filter results on the server side. See the
-- individual operation parameters for details.

-- $waiters
-- Waiters poll by repeatedly sending a request until some remote success condition
-- configured by the 'Wait' specification is fulfilled. The 'Wait' specification
-- determines how many attempts should be made, in addition to delay and retry strategies.
