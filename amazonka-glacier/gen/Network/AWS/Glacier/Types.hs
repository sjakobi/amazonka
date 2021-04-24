{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glacier.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glacier.Types
  ( -- * Service Configuration
    glacier,

    -- * Errors
    _ServiceUnavailableException,
    _PolicyEnforcedException,
    _InvalidParameterValueException,
    _LimitExceededException,
    _MissingParameterValueException,
    _InsufficientCapacityException,
    _ResourceNotFoundException,
    _RequestTimeoutException,

    -- * ActionCode
    ActionCode (..),

    -- * CannedACL
    CannedACL (..),

    -- * EncryptionType
    EncryptionType (..),

    -- * ExpressionType
    ExpressionType (..),

    -- * FileHeaderInfo
    FileHeaderInfo (..),

    -- * Permission
    Permission (..),

    -- * QuoteFields
    QuoteFields (..),

    -- * StatusCode
    StatusCode (..),

    -- * StorageClass
    StorageClass (..),

    -- * Type
    Type (..),

    -- * ArchiveCreationOutput
    ArchiveCreationOutput (..),
    archiveCreationOutput,
    acoArchiveId,
    acoLocation,
    acoChecksum,

    -- * CSVInput
    CSVInput (..),
    csvInput,
    ciRecordDelimiter,
    ciQuoteCharacter,
    ciFileHeaderInfo,
    ciFieldDelimiter,
    ciComments,
    ciQuoteEscapeCharacter,

    -- * CSVOutput
    CSVOutput (..),
    csvOutput,
    coRecordDelimiter,
    coQuoteCharacter,
    coFieldDelimiter,
    coQuoteFields,
    coQuoteEscapeCharacter,

    -- * DataRetrievalPolicy
    DataRetrievalPolicy (..),
    dataRetrievalPolicy,
    drpRules,

    -- * DataRetrievalRule
    DataRetrievalRule (..),
    dataRetrievalRule,
    drrBytesPerHour,
    drrStrategy,

    -- * DescribeVaultOutput
    DescribeVaultOutput (..),
    describeVaultOutput,
    dvoLastInventoryDate,
    dvoCreationDate,
    dvoVaultName,
    dvoVaultARN,
    dvoSizeInBytes,
    dvoNumberOfArchives,

    -- * Encryption
    Encryption (..),
    encryption,
    eEncryptionType,
    eKMSKeyId,
    eKMSContext,

    -- * GlacierJobDescription
    GlacierJobDescription (..),
    glacierJobDescription,
    gjdSHA256TreeHash,
    gjdStatusMessage,
    gjdJobDescription,
    gjdRetrievalByteRange,
    gjdCreationDate,
    gjdJobOutputPath,
    gjdSelectParameters,
    gjdVaultARN,
    gjdArchiveId,
    gjdSNSTopic,
    gjdInventorySizeInBytes,
    gjdStatusCode,
    gjdArchiveSizeInBytes,
    gjdAction,
    gjdInventoryRetrievalParameters,
    gjdCompletionDate,
    gjdArchiveSHA256TreeHash,
    gjdCompleted,
    gjdJobId,
    gjdOutputLocation,
    gjdTier,

    -- * Grant
    Grant (..),
    grant,
    gGrantee,
    gPermission,

    -- * Grantee
    Grantee (..),
    grantee,
    gURI,
    gId,
    gDisplayName,
    gEmailAddress,
    gType,

    -- * InputSerialization
    InputSerialization (..),
    inputSerialization,
    isCsv,

    -- * InventoryRetrievalJobDescription
    InventoryRetrievalJobDescription (..),
    inventoryRetrievalJobDescription,
    irjdStartDate,
    irjdFormat,
    irjdEndDate,
    irjdLimit,
    irjdMarker,

    -- * InventoryRetrievalJobInput
    InventoryRetrievalJobInput (..),
    inventoryRetrievalJobInput,
    irjiStartDate,
    irjiEndDate,
    irjiLimit,
    irjiMarker,

    -- * JobParameters
    JobParameters (..),
    jobParameters,
    jpRetrievalByteRange,
    jpFormat,
    jpSelectParameters,
    jpArchiveId,
    jpSNSTopic,
    jpDescription,
    jpInventoryRetrievalParameters,
    jpType,
    jpOutputLocation,
    jpTier,

    -- * OutputLocation
    OutputLocation (..),
    outputLocation,
    olS3,

    -- * OutputSerialization
    OutputSerialization (..),
    outputSerialization,
    osCsv,

    -- * PartListElement
    PartListElement (..),
    partListElement,
    pleSHA256TreeHash,
    pleRangeInBytes,

    -- * ProvisionedCapacityDescription
    ProvisionedCapacityDescription (..),
    provisionedCapacityDescription,
    pcdStartDate,
    pcdCapacityId,
    pcdExpirationDate,

    -- * S3Location
    S3Location (..),
    s3Location,
    slBucketName,
    slPrefix,
    slCannedACL,
    slEncryption,
    slStorageClass,
    slUserMetadata,
    slAccessControlList,
    slTagging,

    -- * SelectParameters
    SelectParameters (..),
    selectParameters,
    spExpressionType,
    spOutputSerialization,
    spInputSerialization,
    spExpression,

    -- * UploadListElement
    UploadListElement (..),
    uploadListElement,
    ulePartSizeInBytes,
    uleCreationDate,
    uleVaultARN,
    uleArchiveDescription,
    uleMultipartUploadId,

    -- * VaultAccessPolicy
    VaultAccessPolicy (..),
    vaultAccessPolicy,
    vapPolicy,

    -- * VaultLockPolicy
    VaultLockPolicy (..),
    vaultLockPolicy,
    vlpPolicy,

    -- * VaultNotificationConfig
    VaultNotificationConfig (..),
    vaultNotificationConfig,
    vncEvents,
    vncSNSTopic,
  )
where

import Network.AWS.Glacier.Types.ActionCode
import Network.AWS.Glacier.Types.ArchiveCreationOutput
import Network.AWS.Glacier.Types.CSVInput
import Network.AWS.Glacier.Types.CSVOutput
import Network.AWS.Glacier.Types.CannedACL
import Network.AWS.Glacier.Types.DataRetrievalPolicy
import Network.AWS.Glacier.Types.DataRetrievalRule
import Network.AWS.Glacier.Types.DescribeVaultOutput
import Network.AWS.Glacier.Types.Encryption
import Network.AWS.Glacier.Types.EncryptionType
import Network.AWS.Glacier.Types.ExpressionType
import Network.AWS.Glacier.Types.FileHeaderInfo
import Network.AWS.Glacier.Types.GlacierJobDescription
import Network.AWS.Glacier.Types.Grant
import Network.AWS.Glacier.Types.Grantee
import Network.AWS.Glacier.Types.InputSerialization
import Network.AWS.Glacier.Types.InventoryRetrievalJobDescription
import Network.AWS.Glacier.Types.InventoryRetrievalJobInput
import Network.AWS.Glacier.Types.JobParameters
import Network.AWS.Glacier.Types.OutputLocation
import Network.AWS.Glacier.Types.OutputSerialization
import Network.AWS.Glacier.Types.PartListElement
import Network.AWS.Glacier.Types.Permission
import Network.AWS.Glacier.Types.ProvisionedCapacityDescription
import Network.AWS.Glacier.Types.QuoteFields
import Network.AWS.Glacier.Types.S3Location
import Network.AWS.Glacier.Types.SelectParameters
import Network.AWS.Glacier.Types.StatusCode
import Network.AWS.Glacier.Types.StorageClass
import Network.AWS.Glacier.Types.Type
import Network.AWS.Glacier.Types.UploadListElement
import Network.AWS.Glacier.Types.VaultAccessPolicy
import Network.AWS.Glacier.Types.VaultLockPolicy
import Network.AWS.Glacier.Types.VaultNotificationConfig
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2012-06-01@ of the Amazon Glacier SDK configuration.
glacier :: Service
glacier =
  Service
    { _svcAbbrev = "Glacier",
      _svcSigner = v4,
      _svcPrefix = "glacier",
      _svcVersion = "2012-06-01",
      _svcEndpoint = defaultEndpoint glacier,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "Glacier",
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
          (hasCode "RequestTimeoutException" . hasStatus 408)
          e =
        Just "timeouts"
      | has
          (hasCode "ThrottlingException" . hasStatus 400)
          e =
        Just "throttling_exception"
      | has (hasCode "Throttling" . hasStatus 400) e =
        Just "throttling"
      | otherwise = Nothing

-- | Returned if the service cannot complete the request.
_ServiceUnavailableException :: AsError a => Getting (First ServiceError) a ServiceError
_ServiceUnavailableException =
  _MatchServiceError
    glacier
    "ServiceUnavailableException"
    . hasStatus 500

-- | Returned if a retrieval job would exceed the current data policy's retrieval rate limit. For more information about data retrieval policies,
_PolicyEnforcedException :: AsError a => Getting (First ServiceError) a ServiceError
_PolicyEnforcedException =
  _MatchServiceError
    glacier
    "PolicyEnforcedException"
    . hasStatus 400

-- | Returned if a parameter of the request is incorrectly specified.
_InvalidParameterValueException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidParameterValueException =
  _MatchServiceError
    glacier
    "InvalidParameterValueException"
    . hasStatus 400

-- | Returned if the request results in a vault or account limit being exceeded.
_LimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_LimitExceededException =
  _MatchServiceError glacier "LimitExceededException"
    . hasStatus 400

-- | Returned if a required header or parameter is missing from the request.
_MissingParameterValueException :: AsError a => Getting (First ServiceError) a ServiceError
_MissingParameterValueException =
  _MatchServiceError
    glacier
    "MissingParameterValueException"
    . hasStatus 400

-- | Returned if there is insufficient capacity to process this expedited request. This error only applies to expedited retrievals and not to standard or bulk retrievals.
_InsufficientCapacityException :: AsError a => Getting (First ServiceError) a ServiceError
_InsufficientCapacityException =
  _MatchServiceError
    glacier
    "InsufficientCapacityException"
    . hasStatus 400

-- | Returned if the specified resource (such as a vault, upload ID, or job ID) doesn't exist.
_ResourceNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotFoundException =
  _MatchServiceError
    glacier
    "ResourceNotFoundException"
    . hasStatus 404

-- | Returned if, when uploading an archive, Amazon S3 Glacier times out while receiving the upload.
_RequestTimeoutException :: AsError a => Getting (First ServiceError) a ServiceError
_RequestTimeoutException =
  _MatchServiceError
    glacier
    "RequestTimeoutException"
    . hasStatus 408
