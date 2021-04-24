{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CertificateManagerPCA.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManagerPCA.Types
  ( -- * Service Configuration
    certificateManagerPCA,

    -- * Errors
    _TooManyTagsException,
    _InvalidStateException,
    _InvalidArgsException,
    _InvalidPolicyException,
    _InvalidARNException,
    _MalformedCertificateException,
    _RequestAlreadyProcessedException,
    _ConcurrentModificationException,
    _InvalidNextTokenException,
    _PermissionAlreadyExistsException,
    _InvalidRequestException,
    _InvalidTagException,
    _RequestInProgressException,
    _LimitExceededException,
    _CertificateMismatchException,
    _ResourceNotFoundException,
    _RequestFailedException,
    _LockoutPreventedException,
    _MalformedCSRException,

    -- * AccessMethodType
    AccessMethodType (..),

    -- * ActionType
    ActionType (..),

    -- * AuditReportResponseFormat
    AuditReportResponseFormat (..),

    -- * AuditReportStatus
    AuditReportStatus (..),

    -- * CertificateAuthorityStatus
    CertificateAuthorityStatus (..),

    -- * CertificateAuthorityType
    CertificateAuthorityType (..),

    -- * ExtendedKeyUsageType
    ExtendedKeyUsageType (..),

    -- * FailureReason
    FailureReason (..),

    -- * KeyAlgorithm
    KeyAlgorithm (..),

    -- * PolicyQualifierId
    PolicyQualifierId (..),

    -- * ResourceOwner
    ResourceOwner (..),

    -- * RevocationReason
    RevocationReason (..),

    -- * SigningAlgorithm
    SigningAlgorithm (..),

    -- * ValidityPeriodType
    ValidityPeriodType (..),

    -- * APIPassthrough
    APIPassthrough (..),
    apiPassthrough,
    apExtensions,
    apSubject,

    -- * ASN1Subject
    ASN1Subject (..),
    asn1Subject,
    asLocality,
    asGenerationQualifier,
    asSurname,
    asTitle,
    asOrganizationalUnit,
    asInitials,
    asPseudonym,
    asCommonName,
    asState,
    asGivenName,
    asOrganization,
    asDistinguishedNameQualifier,
    asSerialNumber,
    asCountry,

    -- * AccessDescription
    AccessDescription (..),
    accessDescription,
    adAccessMethod,
    adAccessLocation,

    -- * AccessMethod
    AccessMethod (..),
    accessMethod,
    amAccessMethodType,
    amCustomObjectIdentifier,

    -- * CertificateAuthority
    CertificateAuthority (..),
    certificateAuthority,
    caStatus,
    caNotBefore,
    caRevocationConfiguration,
    caSerial,
    caARN,
    caCreatedAt,
    caCertificateAuthorityConfiguration,
    caFailureReason,
    caNotAfter,
    caLastStateChangeAt,
    caType,
    caOwnerAccount,
    caRestorableUntil,

    -- * CertificateAuthorityConfiguration
    CertificateAuthorityConfiguration (..),
    certificateAuthorityConfiguration,
    cacCsrExtensions,
    cacKeyAlgorithm,
    cacSigningAlgorithm,
    cacSubject,

    -- * CrlConfiguration
    CrlConfiguration (..),
    crlConfiguration,
    ccCustomCname,
    ccS3BucketName,
    ccExpirationInDays,
    ccEnabled,

    -- * CsrExtensions
    CsrExtensions (..),
    csrExtensions,
    ceSubjectInformationAccess,
    ceKeyUsage,

    -- * EdiPartyName
    EdiPartyName (..),
    ediPartyName,
    epnNameAssigner,
    epnPartyName,

    -- * ExtendedKeyUsage
    ExtendedKeyUsage (..),
    extendedKeyUsage,
    ekuExtendedKeyUsageObjectIdentifier,
    ekuExtendedKeyUsageType,

    -- * Extensions
    Extensions (..),
    extensions,
    eCertificatePolicies,
    eExtendedKeyUsage,
    eSubjectAlternativeNames,
    eKeyUsage,

    -- * GeneralName
    GeneralName (..),
    generalName,
    gnEdiPartyName,
    gnOtherName,
    gnUniformResourceIdentifier,
    gnIPAddress,
    gnDNSName,
    gnDirectoryName,
    gnRfc822Name,
    gnRegisteredId,

    -- * KeyUsage
    KeyUsage (..),
    keyUsage,
    kuDataEncipherment,
    kuKeyCertSign,
    kuCRLSign,
    kuKeyEncipherment,
    kuEncipherOnly,
    kuKeyAgreement,
    kuDigitalSignature,
    kuDecipherOnly,
    kuNonRepudiation,

    -- * OtherName
    OtherName (..),
    otherName,
    onTypeId,
    onValue,

    -- * Permission
    Permission (..),
    permission,
    pCertificateAuthorityARN,
    pCreatedAt,
    pActions,
    pPrincipal,
    pSourceAccount,
    pPolicy,

    -- * PolicyInformation
    PolicyInformation (..),
    policyInformation,
    piPolicyQualifiers,
    piCertPolicyId,

    -- * PolicyQualifierInfo
    PolicyQualifierInfo (..),
    policyQualifierInfo,
    pqiPolicyQualifierId,
    pqiQualifier,

    -- * Qualifier
    Qualifier (..),
    qualifier,
    qCpsURI,

    -- * RevocationConfiguration
    RevocationConfiguration (..),
    revocationConfiguration,
    rcCrlConfiguration,

    -- * Tag
    Tag (..),
    tag,
    tagValue,
    tagKey,

    -- * Validity
    Validity (..),
    validity,
    vValue,
    vType,
  )
where

import Network.AWS.CertificateManagerPCA.Types.APIPassthrough
import Network.AWS.CertificateManagerPCA.Types.ASN1Subject
import Network.AWS.CertificateManagerPCA.Types.AccessDescription
import Network.AWS.CertificateManagerPCA.Types.AccessMethod
import Network.AWS.CertificateManagerPCA.Types.AccessMethodType
import Network.AWS.CertificateManagerPCA.Types.ActionType
import Network.AWS.CertificateManagerPCA.Types.AuditReportResponseFormat
import Network.AWS.CertificateManagerPCA.Types.AuditReportStatus
import Network.AWS.CertificateManagerPCA.Types.CertificateAuthority
import Network.AWS.CertificateManagerPCA.Types.CertificateAuthorityConfiguration
import Network.AWS.CertificateManagerPCA.Types.CertificateAuthorityStatus
import Network.AWS.CertificateManagerPCA.Types.CertificateAuthorityType
import Network.AWS.CertificateManagerPCA.Types.CrlConfiguration
import Network.AWS.CertificateManagerPCA.Types.CsrExtensions
import Network.AWS.CertificateManagerPCA.Types.EdiPartyName
import Network.AWS.CertificateManagerPCA.Types.ExtendedKeyUsage
import Network.AWS.CertificateManagerPCA.Types.ExtendedKeyUsageType
import Network.AWS.CertificateManagerPCA.Types.Extensions
import Network.AWS.CertificateManagerPCA.Types.FailureReason
import Network.AWS.CertificateManagerPCA.Types.GeneralName
import Network.AWS.CertificateManagerPCA.Types.KeyAlgorithm
import Network.AWS.CertificateManagerPCA.Types.KeyUsage
import Network.AWS.CertificateManagerPCA.Types.OtherName
import Network.AWS.CertificateManagerPCA.Types.Permission
import Network.AWS.CertificateManagerPCA.Types.PolicyInformation
import Network.AWS.CertificateManagerPCA.Types.PolicyQualifierId
import Network.AWS.CertificateManagerPCA.Types.PolicyQualifierInfo
import Network.AWS.CertificateManagerPCA.Types.Qualifier
import Network.AWS.CertificateManagerPCA.Types.ResourceOwner
import Network.AWS.CertificateManagerPCA.Types.RevocationConfiguration
import Network.AWS.CertificateManagerPCA.Types.RevocationReason
import Network.AWS.CertificateManagerPCA.Types.SigningAlgorithm
import Network.AWS.CertificateManagerPCA.Types.Tag
import Network.AWS.CertificateManagerPCA.Types.Validity
import Network.AWS.CertificateManagerPCA.Types.ValidityPeriodType
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2017-08-22@ of the Amazon Certificate Manager Private Certificate Authority SDK configuration.
certificateManagerPCA :: Service
certificateManagerPCA =
  Service
    { _svcAbbrev = "CertificateManagerPCA",
      _svcSigner = v4,
      _svcPrefix = "acm-pca",
      _svcVersion = "2017-08-22",
      _svcEndpoint = defaultEndpoint certificateManagerPCA,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "CertificateManagerPCA",
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

-- | You can associate up to 50 tags with a private CA. Exception information is contained in the exception message field.
_TooManyTagsException :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyTagsException =
  _MatchServiceError
    certificateManagerPCA
    "TooManyTagsException"

-- | The state of the private CA does not allow this action to occur.
_InvalidStateException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidStateException =
  _MatchServiceError
    certificateManagerPCA
    "InvalidStateException"

-- | One or more of the specified arguments was not valid.
_InvalidArgsException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidArgsException =
  _MatchServiceError
    certificateManagerPCA
    "InvalidArgsException"

-- | The resource policy is invalid or is missing a required statement. For general information about IAM policy and statement structure, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#access_policies-json Overview of JSON Policies> .
_InvalidPolicyException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidPolicyException =
  _MatchServiceError
    certificateManagerPCA
    "InvalidPolicyException"

-- | The requested Amazon Resource Name (ARN) does not refer to an existing resource.
_InvalidARNException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidARNException =
  _MatchServiceError
    certificateManagerPCA
    "InvalidArnException"

-- | One or more fields in the certificate are invalid.
_MalformedCertificateException :: AsError a => Getting (First ServiceError) a ServiceError
_MalformedCertificateException =
  _MatchServiceError
    certificateManagerPCA
    "MalformedCertificateException"

-- | Your request has already been completed.
_RequestAlreadyProcessedException :: AsError a => Getting (First ServiceError) a ServiceError
_RequestAlreadyProcessedException =
  _MatchServiceError
    certificateManagerPCA
    "RequestAlreadyProcessedException"

-- | A previous update to your private CA is still ongoing.
_ConcurrentModificationException :: AsError a => Getting (First ServiceError) a ServiceError
_ConcurrentModificationException =
  _MatchServiceError
    certificateManagerPCA
    "ConcurrentModificationException"

-- | The token specified in the @NextToken@ argument is not valid. Use the token returned from your previous call to <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListCertificateAuthorities.html ListCertificateAuthorities> .
_InvalidNextTokenException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidNextTokenException =
  _MatchServiceError
    certificateManagerPCA
    "InvalidNextTokenException"

-- | The designated permission has already been given to the user.
_PermissionAlreadyExistsException :: AsError a => Getting (First ServiceError) a ServiceError
_PermissionAlreadyExistsException =
  _MatchServiceError
    certificateManagerPCA
    "PermissionAlreadyExistsException"

-- | The request action cannot be performed or is prohibited.
_InvalidRequestException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidRequestException =
  _MatchServiceError
    certificateManagerPCA
    "InvalidRequestException"

-- | The tag associated with the CA is not valid. The invalid argument is contained in the message field.
_InvalidTagException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidTagException =
  _MatchServiceError
    certificateManagerPCA
    "InvalidTagException"

-- | Your request is already in progress.
_RequestInProgressException :: AsError a => Getting (First ServiceError) a ServiceError
_RequestInProgressException =
  _MatchServiceError
    certificateManagerPCA
    "RequestInProgressException"

-- | An ACM Private CA quota has been exceeded. See the exception message returned to determine the quota that was exceeded.
_LimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_LimitExceededException =
  _MatchServiceError
    certificateManagerPCA
    "LimitExceededException"

-- | The certificate authority certificate you are importing does not comply with conditions specified in the certificate that signed it.
_CertificateMismatchException :: AsError a => Getting (First ServiceError) a ServiceError
_CertificateMismatchException =
  _MatchServiceError
    certificateManagerPCA
    "CertificateMismatchException"

-- | A resource such as a private CA, S3 bucket, certificate, audit report, or policy cannot be found.
_ResourceNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotFoundException =
  _MatchServiceError
    certificateManagerPCA
    "ResourceNotFoundException"

-- | The request has failed for an unspecified reason.
_RequestFailedException :: AsError a => Getting (First ServiceError) a ServiceError
_RequestFailedException =
  _MatchServiceError
    certificateManagerPCA
    "RequestFailedException"

-- | The current action was prevented because it would lock the caller out from performing subsequent actions. Verify that the specified parameters would not result in the caller being denied access to the resource.
_LockoutPreventedException :: AsError a => Getting (First ServiceError) a ServiceError
_LockoutPreventedException =
  _MatchServiceError
    certificateManagerPCA
    "LockoutPreventedException"

-- | The certificate signing request is invalid.
_MalformedCSRException :: AsError a => Getting (First ServiceError) a ServiceError
_MalformedCSRException =
  _MatchServiceError
    certificateManagerPCA
    "MalformedCSRException"
