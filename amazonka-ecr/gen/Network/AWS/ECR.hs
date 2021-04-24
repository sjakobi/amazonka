{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECR
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __Amazon Elastic Container Registry__
--
-- Amazon Elastic Container Registry (Amazon ECR) is a managed container image registry service. Customers can use the familiar Docker CLI, or their preferred client, to push, pull, and manage images. Amazon ECR provides a secure, scalable, and reliable registry for your Docker or Open Container Initiative (OCI) images. Amazon ECR supports private repositories with resource-based permissions using IAM so that specific users or Amazon EC2 instances can access repositories and images.
module Network.AWS.ECR
  ( -- * Service Configuration
    ecr,

    -- * Errors
    -- $errors

    -- ** UploadNotFoundException
    _UploadNotFoundException,

    -- ** ImageTagAlreadyExistsException
    _ImageTagAlreadyExistsException,

    -- ** TooManyTagsException
    _TooManyTagsException,

    -- ** RepositoryNotFoundException
    _RepositoryNotFoundException,

    -- ** ImageAlreadyExistsException
    _ImageAlreadyExistsException,

    -- ** ScanNotFoundException
    _ScanNotFoundException,

    -- ** ImageDigestDoesNotMatchException
    _ImageDigestDoesNotMatchException,

    -- ** ImageNotFoundException
    _ImageNotFoundException,

    -- ** LayerPartTooSmallException
    _LayerPartTooSmallException,

    -- ** InvalidLayerException
    _InvalidLayerException,

    -- ** InvalidTagParameterException
    _InvalidTagParameterException,

    -- ** InvalidLayerPartException
    _InvalidLayerPartException,

    -- ** ReferencedImagesNotFoundException
    _ReferencedImagesNotFoundException,

    -- ** InvalidParameterException
    _InvalidParameterException,

    -- ** ValidationException
    _ValidationException,

    -- ** LayersNotFoundException
    _LayersNotFoundException,

    -- ** LimitExceededException
    _LimitExceededException,

    -- ** RegistryPolicyNotFoundException
    _RegistryPolicyNotFoundException,

    -- ** LifecyclePolicyPreviewInProgressException
    _LifecyclePolicyPreviewInProgressException,

    -- ** EmptyUploadException
    _EmptyUploadException,

    -- ** RepositoryPolicyNotFoundException
    _RepositoryPolicyNotFoundException,

    -- ** RepositoryAlreadyExistsException
    _RepositoryAlreadyExistsException,

    -- ** LifecyclePolicyPreviewNotFoundException
    _LifecyclePolicyPreviewNotFoundException,

    -- ** UnsupportedImageTypeException
    _UnsupportedImageTypeException,

    -- ** RepositoryNotEmptyException
    _RepositoryNotEmptyException,

    -- ** LayerInaccessibleException
    _LayerInaccessibleException,

    -- ** LifecyclePolicyNotFoundException
    _LifecyclePolicyNotFoundException,

    -- ** KMSException
    _KMSException,

    -- ** ServerException
    _ServerException,

    -- ** LayerAlreadyExistsException
    _LayerAlreadyExistsException,

    -- * Waiters
    -- $waiters

    -- ** ImageScanComplete
    imageScanComplete,

    -- ** LifecyclePolicyPreviewComplete
    lifecyclePolicyPreviewComplete,

    -- * Operations
    -- $operations

    -- ** UploadLayerPart
    module Network.AWS.ECR.UploadLayerPart,

    -- ** PutLifecyclePolicy
    module Network.AWS.ECR.PutLifecyclePolicy,

    -- ** PutRegistryPolicy
    module Network.AWS.ECR.PutRegistryPolicy,

    -- ** StartLifecyclePolicyPreview
    module Network.AWS.ECR.StartLifecyclePolicyPreview,

    -- ** DescribeRepositories (Paginated)
    module Network.AWS.ECR.DescribeRepositories,

    -- ** ListImages (Paginated)
    module Network.AWS.ECR.ListImages,

    -- ** PutImage
    module Network.AWS.ECR.PutImage,

    -- ** InitiateLayerUpload
    module Network.AWS.ECR.InitiateLayerUpload,

    -- ** GetRegistryPolicy
    module Network.AWS.ECR.GetRegistryPolicy,

    -- ** DeleteRepositoryPolicy
    module Network.AWS.ECR.DeleteRepositoryPolicy,

    -- ** DescribeImageScanFindings (Paginated)
    module Network.AWS.ECR.DescribeImageScanFindings,

    -- ** UntagResource
    module Network.AWS.ECR.UntagResource,

    -- ** SetRepositoryPolicy
    module Network.AWS.ECR.SetRepositoryPolicy,

    -- ** DescribeRegistry
    module Network.AWS.ECR.DescribeRegistry,

    -- ** TagResource
    module Network.AWS.ECR.TagResource,

    -- ** BatchDeleteImage
    module Network.AWS.ECR.BatchDeleteImage,

    -- ** PutImageScanningConfiguration
    module Network.AWS.ECR.PutImageScanningConfiguration,

    -- ** DeleteLifecyclePolicy
    module Network.AWS.ECR.DeleteLifecyclePolicy,

    -- ** DeleteRegistryPolicy
    module Network.AWS.ECR.DeleteRegistryPolicy,

    -- ** GetRepositoryPolicy
    module Network.AWS.ECR.GetRepositoryPolicy,

    -- ** DescribeImages (Paginated)
    module Network.AWS.ECR.DescribeImages,

    -- ** GetDownloadURLForLayer
    module Network.AWS.ECR.GetDownloadURLForLayer,

    -- ** CompleteLayerUpload
    module Network.AWS.ECR.CompleteLayerUpload,

    -- ** GetAuthorizationToken
    module Network.AWS.ECR.GetAuthorizationToken,

    -- ** CreateRepository
    module Network.AWS.ECR.CreateRepository,

    -- ** DeleteRepository
    module Network.AWS.ECR.DeleteRepository,

    -- ** BatchCheckLayerAvailability
    module Network.AWS.ECR.BatchCheckLayerAvailability,

    -- ** GetLifecyclePolicy
    module Network.AWS.ECR.GetLifecyclePolicy,

    -- ** StartImageScan
    module Network.AWS.ECR.StartImageScan,

    -- ** PutReplicationConfiguration
    module Network.AWS.ECR.PutReplicationConfiguration,

    -- ** BatchGetImage
    module Network.AWS.ECR.BatchGetImage,

    -- ** ListTagsForResource
    module Network.AWS.ECR.ListTagsForResource,

    -- ** PutImageTagMutability
    module Network.AWS.ECR.PutImageTagMutability,

    -- ** GetLifecyclePolicyPreview (Paginated)
    module Network.AWS.ECR.GetLifecyclePolicyPreview,

    -- * Types

    -- ** EncryptionType
    EncryptionType (..),

    -- ** FindingSeverity
    FindingSeverity (..),

    -- ** ImageActionType
    ImageActionType (..),

    -- ** ImageFailureCode
    ImageFailureCode (..),

    -- ** ImageTagMutability
    ImageTagMutability (..),

    -- ** LayerAvailability
    LayerAvailability (..),

    -- ** LayerFailureCode
    LayerFailureCode (..),

    -- ** LifecyclePolicyPreviewStatus
    LifecyclePolicyPreviewStatus (..),

    -- ** ScanStatus
    ScanStatus (..),

    -- ** TagStatus
    TagStatus (..),

    -- ** Attribute
    Attribute,
    attribute,
    aValue,
    aKey,

    -- ** AuthorizationData
    AuthorizationData,
    authorizationData,
    adProxyEndpoint,
    adExpiresAt,
    adAuthorizationToken,

    -- ** DescribeImagesFilter
    DescribeImagesFilter,
    describeImagesFilter,
    difTagStatus,

    -- ** EncryptionConfiguration
    EncryptionConfiguration,
    encryptionConfiguration,
    ecKmsKey,
    ecEncryptionType,

    -- ** Image
    Image,
    image,
    iImageManifest,
    iRegistryId,
    iRepositoryName,
    iImageId,
    iImageManifestMediaType,

    -- ** ImageDetail
    ImageDetail,
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

    -- ** ImageFailure
    ImageFailure,
    imageFailure,
    ifFailureCode,
    ifImageId,
    ifFailureReason,

    -- ** ImageIdentifier
    ImageIdentifier,
    imageIdentifier,
    iiImageDigest,
    iiImageTag,

    -- ** ImageScanFinding
    ImageScanFinding,
    imageScanFinding,
    isfUri,
    isfSeverity,
    isfName,
    isfAttributes,
    isfDescription,

    -- ** ImageScanFindings
    ImageScanFindings,
    imageScanFindings,
    isfFindings,
    isfImageScanCompletedAt,
    isfVulnerabilitySourceUpdatedAt,
    isfFindingSeverityCounts,

    -- ** ImageScanFindingsSummary
    ImageScanFindingsSummary,
    imageScanFindingsSummary,
    isfsImageScanCompletedAt,
    isfsVulnerabilitySourceUpdatedAt,
    isfsFindingSeverityCounts,

    -- ** ImageScanStatus
    ImageScanStatus,
    imageScanStatus,
    issStatus,
    issDescription,

    -- ** ImageScanningConfiguration
    ImageScanningConfiguration,
    imageScanningConfiguration,
    iscScanOnPush,

    -- ** Layer
    Layer,
    layer,
    lLayerSize,
    lLayerAvailability,
    lMediaType,
    lLayerDigest,

    -- ** LayerFailure
    LayerFailure,
    layerFailure,
    lfFailureCode,
    lfFailureReason,
    lfLayerDigest,

    -- ** LifecyclePolicyPreviewFilter
    LifecyclePolicyPreviewFilter,
    lifecyclePolicyPreviewFilter,
    lppfTagStatus,

    -- ** LifecyclePolicyPreviewResult
    LifecyclePolicyPreviewResult,
    lifecyclePolicyPreviewResult,
    lpprImageDigest,
    lpprAppliedRulePriority,
    lpprImageTags,
    lpprAction,
    lpprImagePushedAt,

    -- ** LifecyclePolicyPreviewSummary
    LifecyclePolicyPreviewSummary,
    lifecyclePolicyPreviewSummary,
    lppsExpiringImageTotalCount,

    -- ** LifecyclePolicyRuleAction
    LifecyclePolicyRuleAction,
    lifecyclePolicyRuleAction,
    lpraType,

    -- ** ListImagesFilter
    ListImagesFilter,
    listImagesFilter,
    lifTagStatus,

    -- ** ReplicationConfiguration
    ReplicationConfiguration,
    replicationConfiguration,
    rcRules,

    -- ** ReplicationDestination
    ReplicationDestination,
    replicationDestination,
    rdRegion,
    rdRegistryId,

    -- ** ReplicationRule
    ReplicationRule,
    replicationRule,
    rrDestinations,

    -- ** Repository
    Repository,
    repository,
    rEncryptionConfiguration,
    rRepositoryURI,
    rRegistryId,
    rCreatedAt,
    rRepositoryName,
    rRepositoryARN,
    rImageScanningConfiguration,
    rImageTagMutability,

    -- ** Tag
    Tag,
    tag,
    tagKey,
    tagValue,
  )
where

import Network.AWS.ECR.BatchCheckLayerAvailability
import Network.AWS.ECR.BatchDeleteImage
import Network.AWS.ECR.BatchGetImage
import Network.AWS.ECR.CompleteLayerUpload
import Network.AWS.ECR.CreateRepository
import Network.AWS.ECR.DeleteLifecyclePolicy
import Network.AWS.ECR.DeleteRegistryPolicy
import Network.AWS.ECR.DeleteRepository
import Network.AWS.ECR.DeleteRepositoryPolicy
import Network.AWS.ECR.DescribeImageScanFindings
import Network.AWS.ECR.DescribeImages
import Network.AWS.ECR.DescribeRegistry
import Network.AWS.ECR.DescribeRepositories
import Network.AWS.ECR.GetAuthorizationToken
import Network.AWS.ECR.GetDownloadURLForLayer
import Network.AWS.ECR.GetLifecyclePolicy
import Network.AWS.ECR.GetLifecyclePolicyPreview
import Network.AWS.ECR.GetRegistryPolicy
import Network.AWS.ECR.GetRepositoryPolicy
import Network.AWS.ECR.InitiateLayerUpload
import Network.AWS.ECR.ListImages
import Network.AWS.ECR.ListTagsForResource
import Network.AWS.ECR.PutImage
import Network.AWS.ECR.PutImageScanningConfiguration
import Network.AWS.ECR.PutImageTagMutability
import Network.AWS.ECR.PutLifecyclePolicy
import Network.AWS.ECR.PutRegistryPolicy
import Network.AWS.ECR.PutReplicationConfiguration
import Network.AWS.ECR.SetRepositoryPolicy
import Network.AWS.ECR.StartImageScan
import Network.AWS.ECR.StartLifecyclePolicyPreview
import Network.AWS.ECR.TagResource
import Network.AWS.ECR.Types
import Network.AWS.ECR.UntagResource
import Network.AWS.ECR.UploadLayerPart
import Network.AWS.ECR.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'ECR'.

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
