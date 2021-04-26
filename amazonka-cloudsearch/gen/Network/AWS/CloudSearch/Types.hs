{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

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
    defaultService,

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
    newAccessPoliciesStatus,

    -- * AnalysisOptions
    AnalysisOptions (..),
    newAnalysisOptions,

    -- * AnalysisScheme
    AnalysisScheme (..),
    newAnalysisScheme,

    -- * AnalysisSchemeStatus
    AnalysisSchemeStatus (..),
    newAnalysisSchemeStatus,

    -- * AvailabilityOptionsStatus
    AvailabilityOptionsStatus (..),
    newAvailabilityOptionsStatus,

    -- * DateArrayOptions
    DateArrayOptions (..),
    newDateArrayOptions,

    -- * DateOptions
    DateOptions (..),
    newDateOptions,

    -- * DocumentSuggesterOptions
    DocumentSuggesterOptions (..),
    newDocumentSuggesterOptions,

    -- * DomainEndpointOptions
    DomainEndpointOptions (..),
    newDomainEndpointOptions,

    -- * DomainEndpointOptionsStatus
    DomainEndpointOptionsStatus (..),
    newDomainEndpointOptionsStatus,

    -- * DomainStatus
    DomainStatus (..),
    newDomainStatus,

    -- * DoubleArrayOptions
    DoubleArrayOptions (..),
    newDoubleArrayOptions,

    -- * DoubleOptions
    DoubleOptions (..),
    newDoubleOptions,

    -- * Expression
    Expression (..),
    newExpression,

    -- * ExpressionStatus
    ExpressionStatus (..),
    newExpressionStatus,

    -- * IndexField
    IndexField (..),
    newIndexField,

    -- * IndexFieldStatus
    IndexFieldStatus (..),
    newIndexFieldStatus,

    -- * IntArrayOptions
    IntArrayOptions (..),
    newIntArrayOptions,

    -- * IntOptions
    IntOptions (..),
    newIntOptions,

    -- * LatLonOptions
    LatLonOptions (..),
    newLatLonOptions,

    -- * Limits
    Limits (..),
    newLimits,

    -- * LiteralArrayOptions
    LiteralArrayOptions (..),
    newLiteralArrayOptions,

    -- * LiteralOptions
    LiteralOptions (..),
    newLiteralOptions,

    -- * OptionStatus
    OptionStatus (..),
    newOptionStatus,

    -- * ScalingParameters
    ScalingParameters (..),
    newScalingParameters,

    -- * ScalingParametersStatus
    ScalingParametersStatus (..),
    newScalingParametersStatus,

    -- * ServiceEndpoint
    ServiceEndpoint (..),
    newServiceEndpoint,

    -- * Suggester
    Suggester (..),
    newSuggester,

    -- * SuggesterStatus
    SuggesterStatus (..),
    newSuggesterStatus,

    -- * TextArrayOptions
    TextArrayOptions (..),
    newTextArrayOptions,

    -- * TextOptions
    TextOptions (..),
    newTextOptions,
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
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2013-01-01@ of the Amazon CloudSearch SDK configuration.
defaultService :: Prelude.Service
defaultService =
  Prelude.Service
    { Prelude._svcAbbrev = "CloudSearch",
      Prelude._svcSigner = Sign.v4,
      Prelude._svcPrefix = "cloudsearch",
      Prelude._svcVersion = "2013-01-01",
      Prelude._svcEndpoint =
        Prelude.defaultEndpoint defaultService,
      Prelude._svcTimeout = Prelude.Just 70,
      Prelude._svcCheck = Prelude.statusSuccess,
      Prelude._svcError =
        Prelude.parseXMLError "CloudSearch",
      Prelude._svcRetry = retry
    }
  where
    retry =
      Prelude.Exponential
        { Prelude._retryBase = 5.0e-2,
          Prelude._retryGrowth = 2,
          Prelude._retryAttempts = 5,
          Prelude._retryCheck = check
        }
    check e
      | Lens.has
          ( Prelude.hasCode "BandwidthLimitExceeded"
              Prelude.. Prelude.hasStatus 509
          )
          e =
        Prelude.Just "request_limit_exceeded"
      | Lens.has (Prelude.hasStatus 504) e =
        Prelude.Just "gateway_timeout"
      | Lens.has
          ( Prelude.hasCode
              "ProvisionedThroughputExceededException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throughput_exceeded"
      | Lens.has (Prelude.hasStatus 503) e =
        Prelude.Just "service_unavailable"
      | Lens.has (Prelude.hasStatus 502) e =
        Prelude.Just "bad_gateway"
      | Lens.has (Prelude.hasStatus 429) e =
        Prelude.Just "too_many_requests"
      | Lens.has
          ( Prelude.hasCode "RequestThrottledException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "request_throttled_exception"
      | Lens.has
          ( Prelude.hasCode "ThrottledException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throttled_exception"
      | Lens.has (Prelude.hasStatus 509) e =
        Prelude.Just "limit_exceeded"
      | Lens.has (Prelude.hasStatus 500) e =
        Prelude.Just "general_server_error"
      | Lens.has
          ( Prelude.hasCode "ThrottlingException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throttling_exception"
      | Lens.has
          ( Prelude.hasCode "Throttling"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throttling"
      | Prelude.otherwise = Prelude.Nothing

-- | The request was rejected because it specified an invalid type
-- definition.
_InvalidTypeException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidTypeException =
  Prelude._MatchServiceError
    defaultService
    "InvalidType"
    Prelude.. Prelude.hasStatus 409

-- | An internal error occurred while processing the request. If this problem
-- persists, report an issue from the
-- <http://status.aws.amazon.com/ Service Health Dashboard>.
_InternalException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InternalException =
  Prelude._MatchServiceError
    defaultService
    "InternalException"
    Prelude.. Prelude.hasStatus 500

-- | An error occurred while processing the request.
_BaseException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_BaseException =
  Prelude._MatchServiceError
    defaultService
    "BaseException"

-- | The request was rejected because it has invalid parameters.
_ValidationException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ValidationException =
  Prelude._MatchServiceError
    defaultService
    "ValidationException"

-- | The request was rejected because a resource limit has already been met.
_LimitExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_LimitExceededException =
  Prelude._MatchServiceError
    defaultService
    "LimitExceeded"
    Prelude.. Prelude.hasStatus 409

-- | The request was rejected because it attempted to reference a resource
-- that does not exist.
_ResourceNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "ResourceNotFound"
    Prelude.. Prelude.hasStatus 409

-- | The request was rejected because it attempted an operation which is not
-- enabled.
_DisabledOperationException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DisabledOperationException =
  Prelude._MatchServiceError
    defaultService
    "DisabledAction"
    Prelude.. Prelude.hasStatus 409
