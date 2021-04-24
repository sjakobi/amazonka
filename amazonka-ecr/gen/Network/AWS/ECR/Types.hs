{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECR.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECR.Types
  ( -- * Service Configuration
    ecr,

    -- * Errors
    _UploadNotFoundException,
    _ImageTagAlreadyExistsException,
    _TooManyTagsException,
    _RepositoryNotFoundException,
    _ImageAlreadyExistsException,
    _ScanNotFoundException,
    _ImageDigestDoesNotMatchException,
    _ImageNotFoundException,
    _LayerPartTooSmallException,
    _InvalidLayerException,
    _InvalidTagParameterException,
    _InvalidLayerPartException,
    _ReferencedImagesNotFoundException,
    _InvalidParameterException,
    _ValidationException,
    _LayersNotFoundException,
    _LimitExceededException,
    _RegistryPolicyNotFoundException,
    _LifecyclePolicyPreviewInProgressException,
    _EmptyUploadException,
    _RepositoryPolicyNotFoundException,
    _RepositoryAlreadyExistsException,
    _LifecyclePolicyPreviewNotFoundException,
    _UnsupportedImageTypeException,
    _RepositoryNotEmptyException,
    _LayerInaccessibleException,
    _LifecyclePolicyNotFoundException,
    _KMSException,
    _ServerException,
    _LayerAlreadyExistsException,

    -- * EncryptionType
    EncryptionType (..),

    -- * FindingSeverity
    FindingSeverity (..),

    -- * ImageActionType
    ImageActionType (..),

    -- * ImageFailureCode
    ImageFailureCode (..),

    -- * ImageTagMutability
    ImageTagMutability (..),

    -- * LayerAvailability
    LayerAvailability (..),

    -- * LayerFailureCode
    LayerFailureCode (..),

    -- * LifecyclePolicyPreviewStatus
    LifecyclePolicyPreviewStatus (..),

    -- * ScanStatus
    ScanStatus (..),

    -- * TagStatus
    TagStatus (..),

    -- * Attribute
    Attribute (..),
    attribute,
    aValue,
    aKey,

    -- * AuthorizationData
    AuthorizationData (..),
    authorizationData,
    adProxyEndpoint,
    adExpiresAt,
    adAuthorizationToken,

    -- * DescribeImagesFilter
    DescribeImagesFilter (..),
    describeImagesFilter,
    difTagStatus,

    -- * EncryptionConfiguration
    EncryptionConfiguration (..),
    encryptionConfiguration,
    ecKmsKey,
    ecEncryptionType,

    -- * Image
    Image (..),
    image,
    iImageManifest,
    iRegistryId,
    iRepositoryName,
    iImageId,
    iImageManifestMediaType,

    -- * ImageDetail
    ImageDetail (..),
    imageDetail,
    idImageDigest,
    idImageScanStatus,
    idImageTags,
    idRegistryId,
    idRepositoryName,
    idArtifactMediaType,
    idImageSizeInBytes,
    idImageManifestMediaType,
    idImagePushedAt,
    idImageScanFindingsSummary,

    -- * ImageFailure
    ImageFailure (..),
    imageFailure,
    ifFailureCode,
    ifImageId,
    ifFailureReason,

    -- * ImageIdentifier
    ImageIdentifier (..),
    imageIdentifier,
    iiImageDigest,
    iiImageTag,

    -- * ImageScanFinding
    ImageScanFinding (..),
    imageScanFinding,
    isfUri,
    isfSeverity,
    isfName,
    isfAttributes,
    isfDescription,

    -- * ImageScanFindings
    ImageScanFindings (..),
    imageScanFindings,
    isfFindings,
    isfImageScanCompletedAt,
    isfVulnerabilitySourceUpdatedAt,
    isfFindingSeverityCounts,

    -- * ImageScanFindingsSummary
    ImageScanFindingsSummary (..),
    imageScanFindingsSummary,
    isfsImageScanCompletedAt,
    isfsVulnerabilitySourceUpdatedAt,
    isfsFindingSeverityCounts,

    -- * ImageScanStatus
    ImageScanStatus (..),
    imageScanStatus,
    issStatus,
    issDescription,

    -- * ImageScanningConfiguration
    ImageScanningConfiguration (..),
    imageScanningConfiguration,
    iscScanOnPush,

    -- * Layer
    Layer (..),
    layer,
    lLayerSize,
    lLayerAvailability,
    lMediaType,
    lLayerDigest,

    -- * LayerFailure
    LayerFailure (..),
    layerFailure,
    lfFailureCode,
    lfFailureReason,
    lfLayerDigest,

    -- * LifecyclePolicyPreviewFilter
    LifecyclePolicyPreviewFilter (..),
    lifecyclePolicyPreviewFilter,
    lppfTagStatus,

    -- * LifecyclePolicyPreviewResult
    LifecyclePolicyPreviewResult (..),
    lifecyclePolicyPreviewResult,
    lpprImageDigest,
    lpprAppliedRulePriority,
    lpprImageTags,
    lpprAction,
    lpprImagePushedAt,

    -- * LifecyclePolicyPreviewSummary
    LifecyclePolicyPreviewSummary (..),
    lifecyclePolicyPreviewSummary,
    lppsExpiringImageTotalCount,

    -- * LifecyclePolicyRuleAction
    LifecyclePolicyRuleAction (..),
    lifecyclePolicyRuleAction,
    lpraType,

    -- * ListImagesFilter
    ListImagesFilter (..),
    listImagesFilter,
    lifTagStatus,

    -- * ReplicationConfiguration
    ReplicationConfiguration (..),
    replicationConfiguration,
    rcRules,

    -- * ReplicationDestination
    ReplicationDestination (..),
    replicationDestination,
    rdRegion,
    rdRegistryId,

    -- * ReplicationRule
    ReplicationRule (..),
    replicationRule,
    rrDestinations,

    -- * Repository
    Repository (..),
    repository,
    rEncryptionConfiguration,
    rRepositoryURI,
    rRegistryId,
    rCreatedAt,
    rRepositoryName,
    rRepositoryARN,
    rImageScanningConfiguration,
    rImageTagMutability,

    -- * Tag
    Tag (..),
    tag,
    tagKey,
    tagValue,
  )
where

import Network.AWS.ECR.Types.Attribute
import Network.AWS.ECR.Types.AuthorizationData
import Network.AWS.ECR.Types.DescribeImagesFilter
import Network.AWS.ECR.Types.EncryptionConfiguration
import Network.AWS.ECR.Types.EncryptionType
import Network.AWS.ECR.Types.FindingSeverity
import Network.AWS.ECR.Types.Image
import Network.AWS.ECR.Types.ImageActionType
import Network.AWS.ECR.Types.ImageDetail
import Network.AWS.ECR.Types.ImageFailure
import Network.AWS.ECR.Types.ImageFailureCode
import Network.AWS.ECR.Types.ImageIdentifier
import Network.AWS.ECR.Types.ImageScanFinding
import Network.AWS.ECR.Types.ImageScanFindings
import Network.AWS.ECR.Types.ImageScanFindingsSummary
import Network.AWS.ECR.Types.ImageScanStatus
import Network.AWS.ECR.Types.ImageScanningConfiguration
import Network.AWS.ECR.Types.ImageTagMutability
import Network.AWS.ECR.Types.Layer
import Network.AWS.ECR.Types.LayerAvailability
import Network.AWS.ECR.Types.LayerFailure
import Network.AWS.ECR.Types.LayerFailureCode
import Network.AWS.ECR.Types.LifecyclePolicyPreviewFilter
import Network.AWS.ECR.Types.LifecyclePolicyPreviewResult
import Network.AWS.ECR.Types.LifecyclePolicyPreviewStatus
import Network.AWS.ECR.Types.LifecyclePolicyPreviewSummary
import Network.AWS.ECR.Types.LifecyclePolicyRuleAction
import Network.AWS.ECR.Types.ListImagesFilter
import Network.AWS.ECR.Types.ReplicationConfiguration
import Network.AWS.ECR.Types.ReplicationDestination
import Network.AWS.ECR.Types.ReplicationRule
import Network.AWS.ECR.Types.Repository
import Network.AWS.ECR.Types.ScanStatus
import Network.AWS.ECR.Types.Tag
import Network.AWS.ECR.Types.TagStatus
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2015-09-21@ of the Amazon EC2 Container Registry SDK configuration.
ecr :: Service
ecr =
  Service
    { _svcAbbrev = "ECR",
      _svcSigner = v4,
      _svcPrefix = "api.ecr",
      _svcVersion = "2015-09-21",
      _svcEndpoint = defaultEndpoint ecr,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "ECR",
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

-- | The upload could not be found, or the specified upload ID is not valid for this repository.
_UploadNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_UploadNotFoundException =
  _MatchServiceError ecr "UploadNotFoundException"

-- | The specified image is tagged with a tag that already exists. The repository is configured for tag immutability.
_ImageTagAlreadyExistsException :: AsError a => Getting (First ServiceError) a ServiceError
_ImageTagAlreadyExistsException =
  _MatchServiceError
    ecr
    "ImageTagAlreadyExistsException"

-- | The list of tags on the repository is over the limit. The maximum number of tags that can be applied to a repository is 50.
_TooManyTagsException :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyTagsException =
  _MatchServiceError ecr "TooManyTagsException"

-- | The specified repository could not be found. Check the spelling of the specified repository and ensure that you are performing operations on the correct registry.
_RepositoryNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_RepositoryNotFoundException =
  _MatchServiceError
    ecr
    "RepositoryNotFoundException"

-- | The specified image has already been pushed, and there were no changes to the manifest or image tag after the last push.
_ImageAlreadyExistsException :: AsError a => Getting (First ServiceError) a ServiceError
_ImageAlreadyExistsException =
  _MatchServiceError
    ecr
    "ImageAlreadyExistsException"

-- | The specified image scan could not be found. Ensure that image scanning is enabled on the repository and try again.
_ScanNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ScanNotFoundException =
  _MatchServiceError ecr "ScanNotFoundException"

-- | The specified image digest does not match the digest that Amazon ECR calculated for the image.
_ImageDigestDoesNotMatchException :: AsError a => Getting (First ServiceError) a ServiceError
_ImageDigestDoesNotMatchException =
  _MatchServiceError
    ecr
    "ImageDigestDoesNotMatchException"

-- | The image requested does not exist in the specified repository.
_ImageNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ImageNotFoundException =
  _MatchServiceError ecr "ImageNotFoundException"

-- | Layer parts must be at least 5 MiB in size.
_LayerPartTooSmallException :: AsError a => Getting (First ServiceError) a ServiceError
_LayerPartTooSmallException =
  _MatchServiceError ecr "LayerPartTooSmallException"

-- | The layer digest calculation performed by Amazon ECR upon receipt of the image layer does not match the digest specified.
_InvalidLayerException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidLayerException =
  _MatchServiceError ecr "InvalidLayerException"

-- | An invalid parameter has been specified. Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.
_InvalidTagParameterException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidTagParameterException =
  _MatchServiceError
    ecr
    "InvalidTagParameterException"

-- | The layer part size is not valid, or the first byte specified is not consecutive to the last byte of a previous layer part upload.
_InvalidLayerPartException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidLayerPartException =
  _MatchServiceError ecr "InvalidLayerPartException"

-- | The manifest list is referencing an image that does not exist.
_ReferencedImagesNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ReferencedImagesNotFoundException =
  _MatchServiceError
    ecr
    "ReferencedImagesNotFoundException"

-- | The specified parameter is invalid. Review the available parameters for the API request.
_InvalidParameterException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidParameterException =
  _MatchServiceError ecr "InvalidParameterException"

-- | There was an exception validating this request.
_ValidationException :: AsError a => Getting (First ServiceError) a ServiceError
_ValidationException =
  _MatchServiceError ecr "ValidationException"

-- | The specified layers could not be found, or the specified layer is not valid for this repository.
_LayersNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_LayersNotFoundException =
  _MatchServiceError ecr "LayersNotFoundException"

-- | The operation did not succeed because it would have exceeded a service limit for your account. For more information, see <https://docs.aws.amazon.com/AmazonECR/latest/userguide/service-quotas.html Amazon ECR Service Quotas> in the Amazon Elastic Container Registry User Guide.
_LimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_LimitExceededException =
  _MatchServiceError ecr "LimitExceededException"

-- | The registry doesn't have an associated registry policy.
_RegistryPolicyNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_RegistryPolicyNotFoundException =
  _MatchServiceError
    ecr
    "RegistryPolicyNotFoundException"

-- | The previous lifecycle policy preview request has not completed. Wait and try again.
_LifecyclePolicyPreviewInProgressException :: AsError a => Getting (First ServiceError) a ServiceError
_LifecyclePolicyPreviewInProgressException =
  _MatchServiceError
    ecr
    "LifecyclePolicyPreviewInProgressException"

-- | The specified layer upload does not contain any layer parts.
_EmptyUploadException :: AsError a => Getting (First ServiceError) a ServiceError
_EmptyUploadException =
  _MatchServiceError ecr "EmptyUploadException"

-- | The specified repository and registry combination does not have an associated repository policy.
_RepositoryPolicyNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_RepositoryPolicyNotFoundException =
  _MatchServiceError
    ecr
    "RepositoryPolicyNotFoundException"

-- | The specified repository already exists in the specified registry.
_RepositoryAlreadyExistsException :: AsError a => Getting (First ServiceError) a ServiceError
_RepositoryAlreadyExistsException =
  _MatchServiceError
    ecr
    "RepositoryAlreadyExistsException"

-- | There is no dry run for this repository.
_LifecyclePolicyPreviewNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_LifecyclePolicyPreviewNotFoundException =
  _MatchServiceError
    ecr
    "LifecyclePolicyPreviewNotFoundException"

-- | The image is of a type that cannot be scanned.
_UnsupportedImageTypeException :: AsError a => Getting (First ServiceError) a ServiceError
_UnsupportedImageTypeException =
  _MatchServiceError
    ecr
    "UnsupportedImageTypeException"

-- | The specified repository contains images. To delete a repository that contains images, you must force the deletion with the @force@ parameter.
_RepositoryNotEmptyException :: AsError a => Getting (First ServiceError) a ServiceError
_RepositoryNotEmptyException =
  _MatchServiceError
    ecr
    "RepositoryNotEmptyException"

-- | The specified layer is not available because it is not associated with an image. Unassociated image layers may be cleaned up at any time.
_LayerInaccessibleException :: AsError a => Getting (First ServiceError) a ServiceError
_LayerInaccessibleException =
  _MatchServiceError ecr "LayerInaccessibleException"

-- | The lifecycle policy could not be found, and no policy is set to the repository.
_LifecyclePolicyNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_LifecyclePolicyNotFoundException =
  _MatchServiceError
    ecr
    "LifecyclePolicyNotFoundException"

-- | The operation failed due to a KMS exception.
_KMSException :: AsError a => Getting (First ServiceError) a ServiceError
_KMSException = _MatchServiceError ecr "KmsException"

-- | These errors are usually caused by a server-side issue.
_ServerException :: AsError a => Getting (First ServiceError) a ServiceError
_ServerException =
  _MatchServiceError ecr "ServerException"

-- | The image layer already exists in the associated repository.
_LayerAlreadyExistsException :: AsError a => Getting (First ServiceError) a ServiceError
_LayerAlreadyExistsException =
  _MatchServiceError
    ecr
    "LayerAlreadyExistsException"
