{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Support.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Support.Types
  ( -- * Service Configuration
    support,

    -- * Errors
    _AttachmentSetExpired,
    _CaseCreationLimitExceeded,
    _AttachmentSetSizeLimitExceeded,
    _AttachmentSetIdNotFound,
    _InternalServerError,
    _CaseIdNotFound,
    _AttachmentIdNotFound,
    _AttachmentLimitExceeded,
    _DescribeAttachmentLimitExceeded,

    -- * Attachment
    Attachment (..),
    attachment,
    aData,
    aFileName,

    -- * AttachmentDetails
    AttachmentDetails (..),
    attachmentDetails,
    adAttachmentId,
    adFileName,

    -- * CaseDetails
    CaseDetails (..),
    caseDetails,
    cdDisplayId,
    cdStatus,
    cdCaseId,
    cdRecentCommunications,
    cdServiceCode,
    cdCategoryCode,
    cdSubmittedBy,
    cdSubject,
    cdCcEmailAddresses,
    cdSeverityCode,
    cdTimeCreated,
    cdLanguage,

    -- * Category
    Category (..),
    category,
    cCode,
    cName,

    -- * Communication
    Communication (..),
    communication,
    cCaseId,
    cAttachmentSet,
    cBody,
    cSubmittedBy,
    cTimeCreated,

    -- * RecentCaseCommunications
    RecentCaseCommunications (..),
    recentCaseCommunications,
    rccNextToken,
    rccCommunications,

    -- * SeverityLevel
    SeverityLevel (..),
    severityLevel,
    slCode,
    slName,

    -- * SupportService
    SupportService (..),
    supportService,
    ssCode,
    ssName,
    ssCategories,

    -- * TrustedAdvisorCategorySpecificSummary
    TrustedAdvisorCategorySpecificSummary (..),
    trustedAdvisorCategorySpecificSummary,
    tacssCostOptimizing,

    -- * TrustedAdvisorCheckDescription
    TrustedAdvisorCheckDescription (..),
    trustedAdvisorCheckDescription,
    tacdId,
    tacdName,
    tacdDescription,
    tacdCategory,
    tacdMetadata,

    -- * TrustedAdvisorCheckRefreshStatus
    TrustedAdvisorCheckRefreshStatus (..),
    trustedAdvisorCheckRefreshStatus,
    tacrsCheckId,
    tacrsStatus,
    tacrsMillisUntilNextRefreshable,

    -- * TrustedAdvisorCheckResult
    TrustedAdvisorCheckResult (..),
    trustedAdvisorCheckResult,
    tacrCheckId,
    tacrTimestamp,
    tacrStatus,
    tacrResourcesSummary,
    tacrCategorySpecificSummary,
    tacrFlaggedResources,

    -- * TrustedAdvisorCheckSummary
    TrustedAdvisorCheckSummary (..),
    trustedAdvisorCheckSummary,
    tacsHasFlaggedResources,
    tacsCheckId,
    tacsTimestamp,
    tacsStatus,
    tacsResourcesSummary,
    tacsCategorySpecificSummary,

    -- * TrustedAdvisorCostOptimizingSummary
    TrustedAdvisorCostOptimizingSummary (..),
    trustedAdvisorCostOptimizingSummary,
    tacosEstimatedMonthlySavings,
    tacosEstimatedPercentMonthlySavings,

    -- * TrustedAdvisorResourceDetail
    TrustedAdvisorResourceDetail (..),
    trustedAdvisorResourceDetail,
    tardIsSuppressed,
    tardRegion,
    tardStatus,
    tardResourceId,
    tardMetadata,

    -- * TrustedAdvisorResourcesSummary
    TrustedAdvisorResourcesSummary (..),
    trustedAdvisorResourcesSummary,
    tarsResourcesProcessed,
    tarsResourcesFlagged,
    tarsResourcesIgnored,
    tarsResourcesSuppressed,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4
import Network.AWS.Support.Types.Attachment
import Network.AWS.Support.Types.AttachmentDetails
import Network.AWS.Support.Types.CaseDetails
import Network.AWS.Support.Types.Category
import Network.AWS.Support.Types.Communication
import Network.AWS.Support.Types.RecentCaseCommunications
import Network.AWS.Support.Types.SeverityLevel
import Network.AWS.Support.Types.SupportService
import Network.AWS.Support.Types.TrustedAdvisorCategorySpecificSummary
import Network.AWS.Support.Types.TrustedAdvisorCheckDescription
import Network.AWS.Support.Types.TrustedAdvisorCheckRefreshStatus
import Network.AWS.Support.Types.TrustedAdvisorCheckResult
import Network.AWS.Support.Types.TrustedAdvisorCheckSummary
import Network.AWS.Support.Types.TrustedAdvisorCostOptimizingSummary
import Network.AWS.Support.Types.TrustedAdvisorResourceDetail
import Network.AWS.Support.Types.TrustedAdvisorResourcesSummary

-- | API version @2013-04-15@ of the Amazon Support SDK configuration.
support :: Service
support =
  Service
    { _svcAbbrev = "Support",
      _svcSigner = v4,
      _svcPrefix = "support",
      _svcVersion = "2013-04-15",
      _svcEndpoint = defaultEndpoint support,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "Support",
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

-- | The expiration time of the attachment set has passed. The set expires 1 hour after it is created.
_AttachmentSetExpired :: AsError a => Getting (First ServiceError) a ServiceError
_AttachmentSetExpired =
  _MatchServiceError support "AttachmentSetExpired"

-- | The case creation limit for the account has been exceeded.
_CaseCreationLimitExceeded :: AsError a => Getting (First ServiceError) a ServiceError
_CaseCreationLimitExceeded =
  _MatchServiceError
    support
    "CaseCreationLimitExceeded"

-- | A limit for the size of an attachment set has been exceeded. The limits are three attachments and 5 MB per attachment.
_AttachmentSetSizeLimitExceeded :: AsError a => Getting (First ServiceError) a ServiceError
_AttachmentSetSizeLimitExceeded =
  _MatchServiceError
    support
    "AttachmentSetSizeLimitExceeded"

-- | An attachment set with the specified ID could not be found.
_AttachmentSetIdNotFound :: AsError a => Getting (First ServiceError) a ServiceError
_AttachmentSetIdNotFound =
  _MatchServiceError
    support
    "AttachmentSetIdNotFound"

-- | An internal server error occurred.
_InternalServerError :: AsError a => Getting (First ServiceError) a ServiceError
_InternalServerError =
  _MatchServiceError support "InternalServerError"

-- | The requested @caseId@ could not be located.
_CaseIdNotFound :: AsError a => Getting (First ServiceError) a ServiceError
_CaseIdNotFound =
  _MatchServiceError support "CaseIdNotFound"

-- | An attachment with the specified ID could not be found.
_AttachmentIdNotFound :: AsError a => Getting (First ServiceError) a ServiceError
_AttachmentIdNotFound =
  _MatchServiceError support "AttachmentIdNotFound"

-- | The limit for the number of attachment sets created in a short period of time has been exceeded.
_AttachmentLimitExceeded :: AsError a => Getting (First ServiceError) a ServiceError
_AttachmentLimitExceeded =
  _MatchServiceError
    support
    "AttachmentLimitExceeded"

-- | The limit for the number of 'DescribeAttachment' requests in a short period of time has been exceeded.
_DescribeAttachmentLimitExceeded :: AsError a => Getting (First ServiceError) a ServiceError
_DescribeAttachmentLimitExceeded =
  _MatchServiceError
    support
    "DescribeAttachmentLimitExceeded"
