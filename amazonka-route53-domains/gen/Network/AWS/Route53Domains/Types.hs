{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53Domains.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53Domains.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _InvalidInput,
    _UnsupportedTLD,
    _DuplicateRequest,
    _DomainLimitExceeded,
    _OperationLimitExceeded,
    _TLDRulesViolation,

    -- * ContactType
    ContactType (..),

    -- * CountryCode
    CountryCode (..),

    -- * DomainAvailability
    DomainAvailability (..),

    -- * ExtraParamName
    ExtraParamName (..),

    -- * OperationStatus
    OperationStatus (..),

    -- * OperationType
    OperationType (..),

    -- * ReachabilityStatus
    ReachabilityStatus (..),

    -- * Transferable
    Transferable (..),

    -- * BillingRecord
    BillingRecord (..),
    newBillingRecord,

    -- * ContactDetail
    ContactDetail (..),
    newContactDetail,

    -- * DomainSuggestion
    DomainSuggestion (..),
    newDomainSuggestion,

    -- * DomainSummary
    DomainSummary (..),
    newDomainSummary,

    -- * DomainTransferability
    DomainTransferability (..),
    newDomainTransferability,

    -- * ExtraParam
    ExtraParam (..),
    newExtraParam,

    -- * Nameserver
    Nameserver (..),
    newNameserver,

    -- * OperationSummary
    OperationSummary (..),
    newOperationSummary,

    -- * Tag
    Tag (..),
    newTag,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Route53Domains.Types.BillingRecord
import Network.AWS.Route53Domains.Types.ContactDetail
import Network.AWS.Route53Domains.Types.ContactType
import Network.AWS.Route53Domains.Types.CountryCode
import Network.AWS.Route53Domains.Types.DomainAvailability
import Network.AWS.Route53Domains.Types.DomainSuggestion
import Network.AWS.Route53Domains.Types.DomainSummary
import Network.AWS.Route53Domains.Types.DomainTransferability
import Network.AWS.Route53Domains.Types.ExtraParam
import Network.AWS.Route53Domains.Types.ExtraParamName
import Network.AWS.Route53Domains.Types.Nameserver
import Network.AWS.Route53Domains.Types.OperationStatus
import Network.AWS.Route53Domains.Types.OperationSummary
import Network.AWS.Route53Domains.Types.OperationType
import Network.AWS.Route53Domains.Types.ReachabilityStatus
import Network.AWS.Route53Domains.Types.Tag
import Network.AWS.Route53Domains.Types.Transferable
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2014-05-15@ of the Amazon Route 53 Domains SDK configuration.
defaultService :: Prelude.Service
defaultService =
  Prelude.Service
    { Prelude._svcAbbrev =
        "Route53Domains",
      Prelude._svcSigner = Sign.v4,
      Prelude._svcPrefix = "route53domains",
      Prelude._svcVersion = "2014-05-15",
      Prelude._svcEndpoint =
        Prelude.defaultEndpoint defaultService,
      Prelude._svcTimeout = Prelude.Just 70,
      Prelude._svcCheck = Prelude.statusSuccess,
      Prelude._svcError =
        Prelude.parseJSONError "Route53Domains",
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

-- | The requested item is not acceptable. For example, for APIs that accept
-- a domain name, the request might specify a domain name that doesn\'t
-- belong to the account that submitted the request. For
-- @AcceptDomainTransferFromAnotherAwsAccount@, the password might be
-- invalid.
_InvalidInput :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidInput =
  Prelude._MatchServiceError
    defaultService
    "InvalidInput"

-- | Amazon Route 53 does not support this top-level domain (TLD).
_UnsupportedTLD :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_UnsupportedTLD =
  Prelude._MatchServiceError
    defaultService
    "UnsupportedTLD"

-- | The request is already in progress for the domain.
_DuplicateRequest :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DuplicateRequest =
  Prelude._MatchServiceError
    defaultService
    "DuplicateRequest"

-- | The number of domains has exceeded the allowed threshold for the
-- account.
_DomainLimitExceeded :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DomainLimitExceeded =
  Prelude._MatchServiceError
    defaultService
    "DomainLimitExceeded"

-- | The number of operations or jobs running exceeded the allowed threshold
-- for the account.
_OperationLimitExceeded :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_OperationLimitExceeded =
  Prelude._MatchServiceError
    defaultService
    "OperationLimitExceeded"

-- | The top-level domain does not support this operation.
_TLDRulesViolation :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TLDRulesViolation =
  Prelude._MatchServiceError
    defaultService
    "TLDRulesViolation"
