{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudSearch.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudSearch.Types
  ( -- * Service Configuration
    cloudSearch,

    -- * Errors
    _InvalidTypeException,
    _InternalException,
    _BaseException,
    _ValidationException,
    _LimitExceededException,
    _ResourceNotFoundException,
    _DisabledOperationException,

    -- * AlgorithmicStemming
    AlgorithmicStemming (..),

    -- * AnalysisSchemeLanguage
    AnalysisSchemeLanguage (..),

    -- * IndexFieldType
    IndexFieldType (..),

    -- * OptionState
    OptionState (..),

    -- * PartitionInstanceType
    PartitionInstanceType (..),

    -- * SuggesterFuzzyMatching
    SuggesterFuzzyMatching (..),

    -- * TLSSecurityPolicy
    TLSSecurityPolicy (..),

    -- * AccessPoliciesStatus
    AccessPoliciesStatus (..),
    accessPoliciesStatus,
    apsOptions,
    apsStatus,

    -- * AnalysisOptions
    AnalysisOptions (..),
    analysisOptions,
    aoStopwords,
    aoAlgorithmicStemming,
    aoStemmingDictionary,
    aoJapaneseTokenizationDictionary,
    aoSynonyms,

    -- * AnalysisScheme
    AnalysisScheme (..),
    analysisScheme,
    asAnalysisOptions,
    asAnalysisSchemeName,
    asAnalysisSchemeLanguage,

    -- * AnalysisSchemeStatus
    AnalysisSchemeStatus (..),
    analysisSchemeStatus,
    assOptions,
    assStatus,

    -- * AvailabilityOptionsStatus
    AvailabilityOptionsStatus (..),
    availabilityOptionsStatus,
    aosOptions,
    aosStatus,

    -- * DateArrayOptions
    DateArrayOptions (..),
    dateArrayOptions,
    dSourceFields,
    dFacetEnabled,
    dReturnEnabled,
    dSearchEnabled,
    dDefaultValue,

    -- * DateOptions
    DateOptions (..),
    dateOptions,
    dosSortEnabled,
    dosFacetEnabled,
    dosReturnEnabled,
    dosSourceField,
    dosSearchEnabled,
    dosDefaultValue,

    -- * DocumentSuggesterOptions
    DocumentSuggesterOptions (..),
    documentSuggesterOptions,
    dsoFuzzyMatching,
    dsoSortExpression,
    dsoSourceField,

    -- * DomainEndpointOptions
    DomainEndpointOptions (..),
    domainEndpointOptions,
    deoEnforceHTTPS,
    deoTLSSecurityPolicy,

    -- * DomainEndpointOptionsStatus
    DomainEndpointOptionsStatus (..),
    domainEndpointOptionsStatus,
    deosOptions,
    deosStatus,

    -- * DomainStatus
    DomainStatus (..),
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

    -- * DoubleArrayOptions
    DoubleArrayOptions (..),
    doubleArrayOptions,
    daoSourceFields,
    daoFacetEnabled,
    daoReturnEnabled,
    daoSearchEnabled,
    daoDefaultValue,

    -- * DoubleOptions
    DoubleOptions (..),
    doubleOptions,
    doSortEnabled,
    doFacetEnabled,
    doReturnEnabled,
    doSourceField,
    doSearchEnabled,
    doDefaultValue,

    -- * Expression
    Expression (..),
    expression,
    eExpressionName,
    eExpressionValue,

    -- * ExpressionStatus
    ExpressionStatus (..),
    expressionStatus,
    esOptions,
    esStatus,

    -- * IndexField
    IndexField (..),
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

    -- * IndexFieldStatus
    IndexFieldStatus (..),
    indexFieldStatus,
    ifsOptions,
    ifsStatus,

    -- * IntArrayOptions
    IntArrayOptions (..),
    intArrayOptions,
    iaoSourceFields,
    iaoFacetEnabled,
    iaoReturnEnabled,
    iaoSearchEnabled,
    iaoDefaultValue,

    -- * IntOptions
    IntOptions (..),
    intOptions,
    ioSortEnabled,
    ioFacetEnabled,
    ioReturnEnabled,
    ioSourceField,
    ioSearchEnabled,
    ioDefaultValue,

    -- * LatLonOptions
    LatLonOptions (..),
    latLonOptions,
    lloSortEnabled,
    lloFacetEnabled,
    lloReturnEnabled,
    lloSourceField,
    lloSearchEnabled,
    lloDefaultValue,

    -- * Limits
    Limits (..),
    limits,
    lMaximumReplicationCount,
    lMaximumPartitionCount,

    -- * LiteralArrayOptions
    LiteralArrayOptions (..),
    literalArrayOptions,
    laoSourceFields,
    laoFacetEnabled,
    laoReturnEnabled,
    laoSearchEnabled,
    laoDefaultValue,

    -- * LiteralOptions
    LiteralOptions (..),
    literalOptions,
    loSortEnabled,
    loFacetEnabled,
    loReturnEnabled,
    loSourceField,
    loSearchEnabled,
    loDefaultValue,

    -- * OptionStatus
    OptionStatus (..),
    optionStatus,
    osUpdateVersion,
    osPendingDeletion,
    osCreationDate,
    osUpdateDate,
    osState,

    -- * ScalingParameters
    ScalingParameters (..),
    scalingParameters,
    spDesiredReplicationCount,
    spDesiredPartitionCount,
    spDesiredInstanceType,

    -- * ScalingParametersStatus
    ScalingParametersStatus (..),
    scalingParametersStatus,
    spsOptions,
    spsStatus,

    -- * ServiceEndpoint
    ServiceEndpoint (..),
    serviceEndpoint,
    seEndpoint,

    -- * Suggester
    Suggester (..),
    suggester,
    sSuggesterName,
    sDocumentSuggesterOptions,

    -- * SuggesterStatus
    SuggesterStatus (..),
    suggesterStatus,
    ssOptions,
    ssStatus,

    -- * TextArrayOptions
    TextArrayOptions (..),
    textArrayOptions,
    taoAnalysisScheme,
    taoSourceFields,
    taoReturnEnabled,
    taoDefaultValue,
    taoHighlightEnabled,

    -- * TextOptions
    TextOptions (..),
    textOptions,
    toSortEnabled,
    toAnalysisScheme,
    toReturnEnabled,
    toSourceField,
    toDefaultValue,
    toHighlightEnabled,
  )
where

import Network.AWS.CloudSearch.Types.AccessPoliciesStatus
import Network.AWS.CloudSearch.Types.AlgorithmicStemming
import Network.AWS.CloudSearch.Types.AnalysisOptions
import Network.AWS.CloudSearch.Types.AnalysisScheme
import Network.AWS.CloudSearch.Types.AnalysisSchemeLanguage
import Network.AWS.CloudSearch.Types.AnalysisSchemeStatus
import Network.AWS.CloudSearch.Types.AvailabilityOptionsStatus
import Network.AWS.CloudSearch.Types.DateArrayOptions
import Network.AWS.CloudSearch.Types.DateOptions
import Network.AWS.CloudSearch.Types.DocumentSuggesterOptions
import Network.AWS.CloudSearch.Types.DomainEndpointOptions
import Network.AWS.CloudSearch.Types.DomainEndpointOptionsStatus
import Network.AWS.CloudSearch.Types.DomainStatus
import Network.AWS.CloudSearch.Types.DoubleArrayOptions
import Network.AWS.CloudSearch.Types.DoubleOptions
import Network.AWS.CloudSearch.Types.Expression
import Network.AWS.CloudSearch.Types.ExpressionStatus
import Network.AWS.CloudSearch.Types.IndexField
import Network.AWS.CloudSearch.Types.IndexFieldStatus
import Network.AWS.CloudSearch.Types.IndexFieldType
import Network.AWS.CloudSearch.Types.IntArrayOptions
import Network.AWS.CloudSearch.Types.IntOptions
import Network.AWS.CloudSearch.Types.LatLonOptions
import Network.AWS.CloudSearch.Types.Limits
import Network.AWS.CloudSearch.Types.LiteralArrayOptions
import Network.AWS.CloudSearch.Types.LiteralOptions
import Network.AWS.CloudSearch.Types.OptionState
import Network.AWS.CloudSearch.Types.OptionStatus
import Network.AWS.CloudSearch.Types.PartitionInstanceType
import Network.AWS.CloudSearch.Types.ScalingParameters
import Network.AWS.CloudSearch.Types.ScalingParametersStatus
import Network.AWS.CloudSearch.Types.ServiceEndpoint
import Network.AWS.CloudSearch.Types.Suggester
import Network.AWS.CloudSearch.Types.SuggesterFuzzyMatching
import Network.AWS.CloudSearch.Types.SuggesterStatus
import Network.AWS.CloudSearch.Types.TLSSecurityPolicy
import Network.AWS.CloudSearch.Types.TextArrayOptions
import Network.AWS.CloudSearch.Types.TextOptions
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2013-01-01@ of the Amazon CloudSearch SDK configuration.
cloudSearch :: Service
cloudSearch =
  Service
    { _svcAbbrev = "CloudSearch",
      _svcSigner = v4,
      _svcPrefix = "cloudsearch",
      _svcVersion = "2013-01-01",
      _svcEndpoint = defaultEndpoint cloudSearch,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseXMLError "CloudSearch",
      _svcRetry = retry
    }
  where
    retry =
      Exponential
        { _retryBase = 5.0e-2,
          _retryGrowth = 2,
          _retryAttempts = 5,
          _retryCheck = check
        }
    check e
      | has
          (hasCode "BandwidthLimitExceeded" . hasStatus 509)
          e =
        Just "request_limit_exceeded"
      | has (hasStatus 504) e = Just "gateway_timeout"
      | has
          ( hasCode "ProvisionedThroughputExceededException"
              . hasStatus 400
          )
          e =
        Just "throughput_exceeded"
      | has (hasStatus 503) e = Just "service_unavailable"
      | has (hasStatus 502) e = Just "bad_gateway"
      | has (hasStatus 429) e = Just "too_many_requests"
      | has
          (hasCode "RequestThrottledException" . hasStatus 400)
          e =
        Just "request_throttled_exception"
      | has
          (hasCode "ThrottledException" . hasStatus 400)
          e =
        Just "throttled_exception"
      | has (hasStatus 509) e = Just "limit_exceeded"
      | has (hasStatus 500) e = Just "general_server_error"
      | has
          (hasCode "ThrottlingException" . hasStatus 400)
          e =
        Just "throttling_exception"
      | has (hasCode "Throttling" . hasStatus 400) e =
        Just "throttling"
      | otherwise = Nothing

-- | The request was rejected because it specified an invalid type definition.
_InvalidTypeException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidTypeException =
  _MatchServiceError cloudSearch "InvalidType"
    . hasStatus 409

-- | An internal error occurred while processing the request. If this problem persists, report an issue from the <http://status.aws.amazon.com/ Service Health Dashboard> .
_InternalException :: AsError a => Getting (First ServiceError) a ServiceError
_InternalException =
  _MatchServiceError cloudSearch "InternalException"
    . hasStatus 500

-- | An error occurred while processing the request.
_BaseException :: AsError a => Getting (First ServiceError) a ServiceError
_BaseException =
  _MatchServiceError cloudSearch "BaseException"

-- | The request was rejected because it has invalid parameters.
_ValidationException :: AsError a => Getting (First ServiceError) a ServiceError
_ValidationException =
  _MatchServiceError
    cloudSearch
    "ValidationException"

-- | The request was rejected because a resource limit has already been met.
_LimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_LimitExceededException =
  _MatchServiceError cloudSearch "LimitExceeded"
    . hasStatus 409

-- | The request was rejected because it attempted to reference a resource that does not exist.
_ResourceNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotFoundException =
  _MatchServiceError cloudSearch "ResourceNotFound"
    . hasStatus 409

-- | The request was rejected because it attempted an operation which is not enabled.
_DisabledOperationException :: AsError a => Getting (First ServiceError) a ServiceError
_DisabledOperationException =
  _MatchServiceError cloudSearch "DisabledAction"
    . hasStatus 409
