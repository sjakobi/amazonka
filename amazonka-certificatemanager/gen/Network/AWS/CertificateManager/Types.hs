{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CertificateManager.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManager.Types
  ( -- * Service Configuration
    certificateManager,

    -- * Errors
    _TooManyTagsException,
    _InvalidStateException,
    _InvalidArgsException,
    _InvalidARNException,
    _TagPolicyException,
    _InvalidDomainValidationOptionsException,
    _ThrottlingException,
    _InvalidParameterException,
    _AccessDeniedException,
    _ValidationException,
    _InvalidTagException,
    _RequestInProgressException,
    _ResourceInUseException,
    _LimitExceededException,
    _ConflictException,
    _ResourceNotFoundException,

    -- * CertificateStatus
    CertificateStatus (..),

    -- * CertificateTransparencyLoggingPreference
    CertificateTransparencyLoggingPreference (..),

    -- * CertificateType
    CertificateType (..),

    -- * DomainStatus
    DomainStatus (..),

    -- * ExtendedKeyUsageName
    ExtendedKeyUsageName (..),

    -- * FailureReason
    FailureReason (..),

    -- * KeyAlgorithm
    KeyAlgorithm (..),

    -- * KeyUsageName
    KeyUsageName (..),

    -- * RecordType
    RecordType (..),

    -- * RenewalEligibility
    RenewalEligibility (..),

    -- * RenewalStatus
    RenewalStatus (..),

    -- * RevocationReason
    RevocationReason (..),

    -- * ValidationMethod
    ValidationMethod (..),

    -- * CertificateDetail
    CertificateDetail (..),
    certificateDetail,
    cdStatus,
    cdNotBefore,
    cdCertificateAuthorityARN,
    cdImportedAt,
    cdExtendedKeyUsages,
    cdDomainValidationOptions,
    cdRenewalEligibility,
    cdOptions,
    cdSerial,
    cdCertificateARN,
    cdCreatedAt,
    cdInUseBy,
    cdSubjectAlternativeNames,
    cdDomainName,
    cdRevocationReason,
    cdSubject,
    cdFailureReason,
    cdKeyUsages,
    cdRevokedAt,
    cdNotAfter,
    cdSignatureAlgorithm,
    cdIssuer,
    cdType,
    cdKeyAlgorithm,
    cdIssuedAt,
    cdRenewalSummary,

    -- * CertificateOptions
    CertificateOptions (..),
    certificateOptions,
    coCertificateTransparencyLoggingPreference,

    -- * CertificateSummary
    CertificateSummary (..),
    certificateSummary,
    csCertificateARN,
    csDomainName,

    -- * DomainValidation
    DomainValidation (..),
    domainValidation,
    dvResourceRecord,
    dvValidationEmails,
    dvValidationMethod,
    dvValidationStatus,
    dvValidationDomain,
    dvDomainName,

    -- * DomainValidationOption
    DomainValidationOption (..),
    domainValidationOption,
    dvoDomainName,
    dvoValidationDomain,

    -- * ExpiryEventsConfiguration
    ExpiryEventsConfiguration (..),
    expiryEventsConfiguration,
    eecDaysBeforeExpiry,

    -- * ExtendedKeyUsage
    ExtendedKeyUsage (..),
    extendedKeyUsage,
    ekuName,
    ekuOId,

    -- * Filters
    Filters (..),
    filters,
    fKeyTypes,
    fExtendedKeyUsage,
    fKeyUsage,

    -- * KeyUsage
    KeyUsage (..),
    keyUsage,
    kuName,

    -- * RenewalSummary
    RenewalSummary (..),
    renewalSummary,
    rsRenewalStatusReason,
    rsRenewalStatus,
    rsDomainValidationOptions,
    rsUpdatedAt,

    -- * ResourceRecord
    ResourceRecord (..),
    resourceRecord,
    rrName,
    rrType,
    rrValue,

    -- * Tag
    Tag (..),
    tag,
    tagValue,
    tagKey,
  )
where

import Network.AWS.CertificateManager.Types.CertificateDetail
import Network.AWS.CertificateManager.Types.CertificateOptions
import Network.AWS.CertificateManager.Types.CertificateStatus
import Network.AWS.CertificateManager.Types.CertificateSummary
import Network.AWS.CertificateManager.Types.CertificateTransparencyLoggingPreference
import Network.AWS.CertificateManager.Types.CertificateType
import Network.AWS.CertificateManager.Types.DomainStatus
import Network.AWS.CertificateManager.Types.DomainValidation
import Network.AWS.CertificateManager.Types.DomainValidationOption
import Network.AWS.CertificateManager.Types.ExpiryEventsConfiguration
import Network.AWS.CertificateManager.Types.ExtendedKeyUsage
import Network.AWS.CertificateManager.Types.ExtendedKeyUsageName
import Network.AWS.CertificateManager.Types.FailureReason
import Network.AWS.CertificateManager.Types.Filters
import Network.AWS.CertificateManager.Types.KeyAlgorithm
import Network.AWS.CertificateManager.Types.KeyUsage
import Network.AWS.CertificateManager.Types.KeyUsageName
import Network.AWS.CertificateManager.Types.RecordType
import Network.AWS.CertificateManager.Types.RenewalEligibility
import Network.AWS.CertificateManager.Types.RenewalStatus
import Network.AWS.CertificateManager.Types.RenewalSummary
import Network.AWS.CertificateManager.Types.ResourceRecord
import Network.AWS.CertificateManager.Types.RevocationReason
import Network.AWS.CertificateManager.Types.Tag
import Network.AWS.CertificateManager.Types.ValidationMethod
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2015-12-08@ of the Amazon Certificate Manager SDK configuration.
certificateManager :: Service
certificateManager =
  Service
    { _svcAbbrev = "CertificateManager",
      _svcSigner = v4,
      _svcPrefix = "acm",
      _svcVersion = "2015-12-08",
      _svcEndpoint = defaultEndpoint certificateManager,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "CertificateManager",
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

-- | The request contains too many tags. Try the request again with fewer tags.
_TooManyTagsException :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyTagsException =
  _MatchServiceError
    certificateManager
    "TooManyTagsException"

-- | Processing has reached an invalid state.
_InvalidStateException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidStateException =
  _MatchServiceError
    certificateManager
    "InvalidStateException"

-- | One or more of of request parameters specified is not valid.
_InvalidArgsException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidArgsException =
  _MatchServiceError
    certificateManager
    "InvalidArgsException"

-- | The requested Amazon Resource Name (ARN) does not refer to an existing resource.
_InvalidARNException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidARNException =
  _MatchServiceError
    certificateManager
    "InvalidArnException"

-- | A specified tag did not comply with an existing tag policy and was rejected.
_TagPolicyException :: AsError a => Getting (First ServiceError) a ServiceError
_TagPolicyException =
  _MatchServiceError
    certificateManager
    "TagPolicyException"

-- | One or more values in the 'DomainValidationOption' structure is incorrect.
_InvalidDomainValidationOptionsException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidDomainValidationOptionsException =
  _MatchServiceError
    certificateManager
    "InvalidDomainValidationOptionsException"

-- | The request was denied because it exceeded a quota.
_ThrottlingException :: AsError a => Getting (First ServiceError) a ServiceError
_ThrottlingException =
  _MatchServiceError
    certificateManager
    "ThrottlingException"

-- | An input parameter was invalid.
_InvalidParameterException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidParameterException =
  _MatchServiceError
    certificateManager
    "InvalidParameterException"

-- | You do not have access required to perform this action.
_AccessDeniedException :: AsError a => Getting (First ServiceError) a ServiceError
_AccessDeniedException =
  _MatchServiceError
    certificateManager
    "AccessDeniedException"

-- | The supplied input failed to satisfy constraints of an AWS service.
_ValidationException :: AsError a => Getting (First ServiceError) a ServiceError
_ValidationException =
  _MatchServiceError
    certificateManager
    "ValidationException"

-- | One or both of the values that make up the key-value pair is not valid. For example, you cannot specify a tag value that begins with @aws:@ .
_InvalidTagException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidTagException =
  _MatchServiceError
    certificateManager
    "InvalidTagException"

-- | The certificate request is in process and the certificate in your account has not yet been issued.
_RequestInProgressException :: AsError a => Getting (First ServiceError) a ServiceError
_RequestInProgressException =
  _MatchServiceError
    certificateManager
    "RequestInProgressException"

-- | The certificate is in use by another AWS service in the caller's account. Remove the association and try again.
_ResourceInUseException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceInUseException =
  _MatchServiceError
    certificateManager
    "ResourceInUseException"

-- | An ACM quota has been exceeded.
_LimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_LimitExceededException =
  _MatchServiceError
    certificateManager
    "LimitExceededException"

-- | You are trying to update a resource or configuration that is already being created or updated. Wait for the previous operation to finish and try again.
_ConflictException :: AsError a => Getting (First ServiceError) a ServiceError
_ConflictException =
  _MatchServiceError
    certificateManager
    "ConflictException"

-- | The specified certificate cannot be found in the caller's account or the caller's account cannot be found.
_ResourceNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotFoundException =
  _MatchServiceError
    certificateManager
    "ResourceNotFoundException"
