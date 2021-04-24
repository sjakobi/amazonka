{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFront
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Amazon CloudFront is a web service that speeds up distribution of your static and dynamic web content, for example, .html, .css, .php, image, and media files, to end users. CloudFront delivers your content through a worldwide network of edge locations. When an end user requests content that you're serving with CloudFront, the user is routed to the edge location that provides the lowest latency, so content is delivered with the best possible performance. If the content is already in that edge location, CloudFront delivers it immediately. If the content is not currently in that edge location, CloudFront retrieves it from an Amazon S3 bucket or an HTTP server (for example, a web server) that you have identified as the source for the definitive version of your content.
module Network.AWS.CloudFront
  ( -- * Service Configuration
    cloudFront,

    -- * Errors
    -- $errors

    -- ** RealtimeLogConfigAlreadyExists
    _RealtimeLogConfigAlreadyExists,

    -- ** FieldLevelEncryptionConfigAlreadyExists
    _FieldLevelEncryptionConfigAlreadyExists,

    -- ** IllegalDelete
    _IllegalDelete,

    -- ** InvalidResponseCode
    _InvalidResponseCode,

    -- ** IllegalUpdate
    _IllegalUpdate,

    -- ** InvalidIfMatchVersion
    _InvalidIfMatchVersion,

    -- ** DistributionAlreadyExists
    _DistributionAlreadyExists,

    -- ** IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior
    _IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior,

    -- ** InvalidErrorCode
    _InvalidErrorCode,

    -- ** InvalidTagging
    _InvalidTagging,

    -- ** TooManyOriginCustomHeaders
    _TooManyOriginCustomHeaders,

    -- ** InvalidOriginReadTimeout
    _InvalidOriginReadTimeout,

    -- ** MissingBody
    _MissingBody,

    -- ** FieldLevelEncryptionProfileInUse
    _FieldLevelEncryptionProfileInUse,

    -- ** TooManyDistributionsAssociatedToCachePolicy
    _TooManyDistributionsAssociatedToCachePolicy,

    -- ** InvalidLocationCode
    _InvalidLocationCode,

    -- ** KeyGroupAlreadyExists
    _KeyGroupAlreadyExists,

    -- ** TrustedKeyGroupDoesNotExist
    _TrustedKeyGroupDoesNotExist,

    -- ** InvalidRequiredProtocol
    _InvalidRequiredProtocol,

    -- ** TooManyHeadersInForwardedValues
    _TooManyHeadersInForwardedValues,

    -- ** TooManyFieldLevelEncryptionEncryptionEntities
    _TooManyFieldLevelEncryptionEncryptionEntities,

    -- ** ResourceInUse
    _ResourceInUse,

    -- ** InvalidViewerCertificate
    _InvalidViewerCertificate,

    -- ** NoSuchDistribution
    _NoSuchDistribution,

    -- ** InvalidMinimumProtocolVersion
    _InvalidMinimumProtocolVersion,

    -- ** StreamingDistributionNotDisabled
    _StreamingDistributionNotDisabled,

    -- ** OriginRequestPolicyAlreadyExists
    _OriginRequestPolicyAlreadyExists,

    -- ** TooManyCookiesInCachePolicy
    _TooManyCookiesInCachePolicy,

    -- ** CachePolicyInUse
    _CachePolicyInUse,

    -- ** TooManyLambdaFunctionAssociations
    _TooManyLambdaFunctionAssociations,

    -- ** CloudFrontOriginAccessIdentityAlreadyExists
    _CloudFrontOriginAccessIdentityAlreadyExists,

    -- ** InvalidRelativePath
    _InvalidRelativePath,

    -- ** NoSuchOrigin
    _NoSuchOrigin,

    -- ** NoSuchInvalidation
    _NoSuchInvalidation,

    -- ** PublicKeyAlreadyExists
    _PublicKeyAlreadyExists,

    -- ** TooManyDistributionsAssociatedToOriginRequestPolicy
    _TooManyDistributionsAssociatedToOriginRequestPolicy,

    -- ** TooManyFieldLevelEncryptionConfigs
    _TooManyFieldLevelEncryptionConfigs,

    -- ** TooManyFieldLevelEncryptionFieldPatterns
    _TooManyFieldLevelEncryptionFieldPatterns,

    -- ** TooManyFieldLevelEncryptionContentTypeProfiles
    _TooManyFieldLevelEncryptionContentTypeProfiles,

    -- ** BatchTooLarge
    _BatchTooLarge,

    -- ** NoSuchRealtimeLogConfig
    _NoSuchRealtimeLogConfig,

    -- ** InvalidOrigin
    _InvalidOrigin,

    -- ** TooManyCachePolicies
    _TooManyCachePolicies,

    -- ** TooManyPublicKeysInKeyGroup
    _TooManyPublicKeysInKeyGroup,

    -- ** NoSuchFieldLevelEncryptionConfig
    _NoSuchFieldLevelEncryptionConfig,

    -- ** TooManyCookieNamesInWhiteList
    _TooManyCookieNamesInWhiteList,

    -- ** RealtimeLogConfigInUse
    _RealtimeLogConfigInUse,

    -- ** InvalidForwardCookies
    _InvalidForwardCookies,

    -- ** FieldLevelEncryptionConfigInUse
    _FieldLevelEncryptionConfigInUse,

    -- ** TooManyTrustedSigners
    _TooManyTrustedSigners,

    -- ** InvalidHeadersForS3Origin
    _InvalidHeadersForS3Origin,

    -- ** InconsistentQuantities
    _InconsistentQuantities,

    -- ** TooManyCookiesInOriginRequestPolicy
    _TooManyCookiesInOriginRequestPolicy,

    -- ** InvalidProtocolSettings
    _InvalidProtocolSettings,

    -- ** TooManyQueryStringParameters
    _TooManyQueryStringParameters,

    -- ** CannotChangeImmutablePublicKeyFields
    _CannotChangeImmutablePublicKeyFields,

    -- ** NoSuchCloudFrontOriginAccessIdentity
    _NoSuchCloudFrontOriginAccessIdentity,

    -- ** TooManyPublicKeys
    _TooManyPublicKeys,

    -- ** TrustedSignerDoesNotExist
    _TrustedSignerDoesNotExist,

    -- ** TooManyInvalidationsInProgress
    _TooManyInvalidationsInProgress,

    -- ** NoSuchPublicKey
    _NoSuchPublicKey,

    -- ** DistributionNotDisabled
    _DistributionNotDisabled,

    -- ** TooManyCloudFrontOriginAccessIdentities
    _TooManyCloudFrontOriginAccessIdentities,

    -- ** InvalidOriginAccessIdentity
    _InvalidOriginAccessIdentity,

    -- ** PreconditionFailed
    _PreconditionFailed,

    -- ** TooManyFieldLevelEncryptionProfiles
    _TooManyFieldLevelEncryptionProfiles,

    -- ** InvalidQueryStringParameters
    _InvalidQueryStringParameters,

    -- ** TooManyCacheBehaviors
    _TooManyCacheBehaviors,

    -- ** TooManyOriginRequestPolicies
    _TooManyOriginRequestPolicies,

    -- ** NoSuchFieldLevelEncryptionProfile
    _NoSuchFieldLevelEncryptionProfile,

    -- ** TooManyKeyGroups
    _TooManyKeyGroups,

    -- ** TooManyDistributionsAssociatedToFieldLevelEncryptionConfig
    _TooManyDistributionsAssociatedToFieldLevelEncryptionConfig,

    -- ** TooManyQueryStringsInOriginRequestPolicy
    _TooManyQueryStringsInOriginRequestPolicy,

    -- ** TooManyDistributionsWithSingleFunctionARN
    _TooManyDistributionsWithSingleFunctionARN,

    -- ** InvalidGeoRestrictionParameter
    _InvalidGeoRestrictionParameter,

    -- ** TooManyHeadersInOriginRequestPolicy
    _TooManyHeadersInOriginRequestPolicy,

    -- ** TooManyCertificates
    _TooManyCertificates,

    -- ** NoSuchOriginRequestPolicy
    _NoSuchOriginRequestPolicy,

    -- ** TooManyDistributionsWithLambdaAssociations
    _TooManyDistributionsWithLambdaAssociations,

    -- ** InvalidDefaultRootObject
    _InvalidDefaultRootObject,

    -- ** OriginRequestPolicyInUse
    _OriginRequestPolicyInUse,

    -- ** TooManyStreamingDistributionCNAMEs
    _TooManyStreamingDistributionCNAMEs,

    -- ** FieldLevelEncryptionProfileSizeExceeded
    _FieldLevelEncryptionProfileSizeExceeded,

    -- ** NoSuchResource
    _NoSuchResource,

    -- ** FieldLevelEncryptionProfileAlreadyExists
    _FieldLevelEncryptionProfileAlreadyExists,

    -- ** TooManyDistributions
    _TooManyDistributions,

    -- ** InvalidTTLOrder
    _InvalidTTLOrder,

    -- ** AccessDenied
    _AccessDenied,

    -- ** QueryArgProfileEmpty
    _QueryArgProfileEmpty,

    -- ** TooManyQueryStringsInCachePolicy
    _TooManyQueryStringsInCachePolicy,

    -- ** TooManyOrigins
    _TooManyOrigins,

    -- ** TooManyHeadersInCachePolicy
    _TooManyHeadersInCachePolicy,

    -- ** StreamingDistributionAlreadyExists
    _StreamingDistributionAlreadyExists,

    -- ** NoSuchCachePolicy
    _NoSuchCachePolicy,

    -- ** TooManyKeyGroupsAssociatedToDistribution
    _TooManyKeyGroupsAssociatedToDistribution,

    -- ** TooManyRealtimeLogConfigs
    _TooManyRealtimeLogConfigs,

    -- ** TooManyDistributionsAssociatedToKeyGroup
    _TooManyDistributionsAssociatedToKeyGroup,

    -- ** InvalidLambdaFunctionAssociation
    _InvalidLambdaFunctionAssociation,

    -- ** CachePolicyAlreadyExists
    _CachePolicyAlreadyExists,

    -- ** TooManyFieldLevelEncryptionQueryArgProfiles
    _TooManyFieldLevelEncryptionQueryArgProfiles,

    -- ** PublicKeyInUse
    _PublicKeyInUse,

    -- ** CNAMEAlreadyExists
    _CNAMEAlreadyExists,

    -- ** InvalidWebACLId
    _InvalidWebACLId,

    -- ** CloudFrontOriginAccessIdentityInUse
    _CloudFrontOriginAccessIdentityInUse,

    -- ** TooManyOriginGroupsPerDistribution
    _TooManyOriginGroupsPerDistribution,

    -- ** TooManyDistributionCNAMEs
    _TooManyDistributionCNAMEs,

    -- ** NoSuchStreamingDistribution
    _NoSuchStreamingDistribution,

    -- ** InvalidOriginKeepaliveTimeout
    _InvalidOriginKeepaliveTimeout,

    -- ** TooManyStreamingDistributions
    _TooManyStreamingDistributions,

    -- ** InvalidArgument
    _InvalidArgument,

    -- * Waiters
    -- $waiters

    -- ** InvalidationCompleted
    invalidationCompleted,

    -- ** DistributionDeployed
    distributionDeployed,

    -- ** StreamingDistributionDeployed
    streamingDistributionDeployed,

    -- * Operations
    -- $operations

    -- ** UpdatePublicKey
    module Network.AWS.CloudFront.UpdatePublicKey,

    -- ** DeletePublicKey
    module Network.AWS.CloudFront.DeletePublicKey,

    -- ** ListPublicKeys
    module Network.AWS.CloudFront.ListPublicKeys,

    -- ** GetDistribution
    module Network.AWS.CloudFront.GetDistribution,

    -- ** GetKeyGroupConfig
    module Network.AWS.CloudFront.GetKeyGroupConfig,

    -- ** CreateFieldLevelEncryptionProfile
    module Network.AWS.CloudFront.CreateFieldLevelEncryptionProfile,

    -- ** GetMonitoringSubscription
    module Network.AWS.CloudFront.GetMonitoringSubscription,

    -- ** CreateOriginRequestPolicy
    module Network.AWS.CloudFront.CreateOriginRequestPolicy,

    -- ** ListDistributionsByCachePolicyId
    module Network.AWS.CloudFront.ListDistributionsByCachePolicyId,

    -- ** ListKeyGroups
    module Network.AWS.CloudFront.ListKeyGroups,

    -- ** ListOriginRequestPolicies
    module Network.AWS.CloudFront.ListOriginRequestPolicies,

    -- ** GetKeyGroup
    module Network.AWS.CloudFront.GetKeyGroup,

    -- ** GetDistributionConfig
    module Network.AWS.CloudFront.GetDistributionConfig,

    -- ** ListDistributions (Paginated)
    module Network.AWS.CloudFront.ListDistributions,

    -- ** UntagResource
    module Network.AWS.CloudFront.UntagResource,

    -- ** ListDistributionsByWebACLId
    module Network.AWS.CloudFront.ListDistributionsByWebACLId,

    -- ** GetCloudFrontOriginAccessIdentity
    module Network.AWS.CloudFront.GetCloudFrontOriginAccessIdentity,

    -- ** GetPublicKey
    module Network.AWS.CloudFront.GetPublicKey,

    -- ** ListRealtimeLogConfigs
    module Network.AWS.CloudFront.ListRealtimeLogConfigs,

    -- ** UpdateFieldLevelEncryptionConfig
    module Network.AWS.CloudFront.UpdateFieldLevelEncryptionConfig,

    -- ** CreateCachePolicy
    module Network.AWS.CloudFront.CreateCachePolicy,

    -- ** ListDistributionsByKeyGroup
    module Network.AWS.CloudFront.ListDistributionsByKeyGroup,

    -- ** TagResource
    module Network.AWS.CloudFront.TagResource,

    -- ** ListCachePolicies
    module Network.AWS.CloudFront.ListCachePolicies,

    -- ** ListDistributionsByOriginRequestPolicyId
    module Network.AWS.CloudFront.ListDistributionsByOriginRequestPolicyId,

    -- ** ListFieldLevelEncryptionConfigs
    module Network.AWS.CloudFront.ListFieldLevelEncryptionConfigs,

    -- ** DeleteFieldLevelEncryptionConfig
    module Network.AWS.CloudFront.DeleteFieldLevelEncryptionConfig,

    -- ** DeleteCachePolicy
    module Network.AWS.CloudFront.DeleteCachePolicy,

    -- ** GetFieldLevelEncryption
    module Network.AWS.CloudFront.GetFieldLevelEncryption,

    -- ** UpdateCachePolicy
    module Network.AWS.CloudFront.UpdateCachePolicy,

    -- ** GetInvalidation
    module Network.AWS.CloudFront.GetInvalidation,

    -- ** GetPublicKeyConfig
    module Network.AWS.CloudFront.GetPublicKeyConfig,

    -- ** GetCloudFrontOriginAccessIdentityConfig
    module Network.AWS.CloudFront.GetCloudFrontOriginAccessIdentityConfig,

    -- ** CreateStreamingDistribution
    module Network.AWS.CloudFront.CreateStreamingDistribution,

    -- ** DeleteCloudFrontOriginAccessIdentity
    module Network.AWS.CloudFront.DeleteCloudFrontOriginAccessIdentity,

    -- ** DeleteStreamingDistribution
    module Network.AWS.CloudFront.DeleteStreamingDistribution,

    -- ** GetFieldLevelEncryptionConfig
    module Network.AWS.CloudFront.GetFieldLevelEncryptionConfig,

    -- ** GetRealtimeLogConfig
    module Network.AWS.CloudFront.GetRealtimeLogConfig,

    -- ** UpdateCloudFrontOriginAccessIdentity
    module Network.AWS.CloudFront.UpdateCloudFrontOriginAccessIdentity,

    -- ** UpdateStreamingDistribution
    module Network.AWS.CloudFront.UpdateStreamingDistribution,

    -- ** ListStreamingDistributions (Paginated)
    module Network.AWS.CloudFront.ListStreamingDistributions,

    -- ** CreateKeyGroup
    module Network.AWS.CloudFront.CreateKeyGroup,

    -- ** UpdateOriginRequestPolicy
    module Network.AWS.CloudFront.UpdateOriginRequestPolicy,

    -- ** GetFieldLevelEncryptionProfileConfig
    module Network.AWS.CloudFront.GetFieldLevelEncryptionProfileConfig,

    -- ** DeleteOriginRequestPolicy
    module Network.AWS.CloudFront.DeleteOriginRequestPolicy,

    -- ** ListFieldLevelEncryptionProfiles
    module Network.AWS.CloudFront.ListFieldLevelEncryptionProfiles,

    -- ** DeleteFieldLevelEncryptionProfile
    module Network.AWS.CloudFront.DeleteFieldLevelEncryptionProfile,

    -- ** GetOriginRequestPolicyConfig
    module Network.AWS.CloudFront.GetOriginRequestPolicyConfig,

    -- ** UpdateKeyGroup
    module Network.AWS.CloudFront.UpdateKeyGroup,

    -- ** DeleteKeyGroup
    module Network.AWS.CloudFront.DeleteKeyGroup,

    -- ** CreateStreamingDistributionWithTags
    module Network.AWS.CloudFront.CreateStreamingDistributionWithTags,

    -- ** ListDistributionsByRealtimeLogConfig
    module Network.AWS.CloudFront.ListDistributionsByRealtimeLogConfig,

    -- ** UpdateFieldLevelEncryptionProfile
    module Network.AWS.CloudFront.UpdateFieldLevelEncryptionProfile,

    -- ** CreateDistribution
    module Network.AWS.CloudFront.CreateDistribution,

    -- ** DeleteMonitoringSubscription
    module Network.AWS.CloudFront.DeleteMonitoringSubscription,

    -- ** GetFieldLevelEncryptionProfile
    module Network.AWS.CloudFront.GetFieldLevelEncryptionProfile,

    -- ** CreateMonitoringSubscription
    module Network.AWS.CloudFront.CreateMonitoringSubscription,

    -- ** GetOriginRequestPolicy
    module Network.AWS.CloudFront.GetOriginRequestPolicy,

    -- ** UpdateDistribution
    module Network.AWS.CloudFront.UpdateDistribution,

    -- ** DeleteDistribution
    module Network.AWS.CloudFront.DeleteDistribution,

    -- ** DeleteRealtimeLogConfig
    module Network.AWS.CloudFront.DeleteRealtimeLogConfig,

    -- ** GetStreamingDistribution
    module Network.AWS.CloudFront.GetStreamingDistribution,

    -- ** CreateInvalidation
    module Network.AWS.CloudFront.CreateInvalidation,

    -- ** GetCachePolicyConfig
    module Network.AWS.CloudFront.GetCachePolicyConfig,

    -- ** UpdateRealtimeLogConfig
    module Network.AWS.CloudFront.UpdateRealtimeLogConfig,

    -- ** CreateRealtimeLogConfig
    module Network.AWS.CloudFront.CreateRealtimeLogConfig,

    -- ** CreateDistributionWithTags
    module Network.AWS.CloudFront.CreateDistributionWithTags,

    -- ** CreateFieldLevelEncryptionConfig
    module Network.AWS.CloudFront.CreateFieldLevelEncryptionConfig,

    -- ** ListInvalidations (Paginated)
    module Network.AWS.CloudFront.ListInvalidations,

    -- ** ListCloudFrontOriginAccessIdentities (Paginated)
    module Network.AWS.CloudFront.ListCloudFrontOriginAccessIdentities,

    -- ** ListTagsForResource
    module Network.AWS.CloudFront.ListTagsForResource,

    -- ** GetStreamingDistributionConfig
    module Network.AWS.CloudFront.GetStreamingDistributionConfig,

    -- ** GetCachePolicy
    module Network.AWS.CloudFront.GetCachePolicy,

    -- ** CreateCloudFrontOriginAccessIdentity
    module Network.AWS.CloudFront.CreateCloudFrontOriginAccessIdentity,

    -- ** CreatePublicKey
    module Network.AWS.CloudFront.CreatePublicKey,

    -- * Types

    -- ** CachePolicyCookieBehavior
    CachePolicyCookieBehavior (..),

    -- ** CachePolicyHeaderBehavior
    CachePolicyHeaderBehavior (..),

    -- ** CachePolicyQueryStringBehavior
    CachePolicyQueryStringBehavior (..),

    -- ** CachePolicyType
    CachePolicyType (..),

    -- ** CertificateSource
    CertificateSource (..),

    -- ** EventType
    EventType (..),

    -- ** Format
    Format (..),

    -- ** GeoRestrictionType
    GeoRestrictionType (..),

    -- ** HTTPVersion
    HTTPVersion (..),

    -- ** ICPRecordalStatus
    ICPRecordalStatus (..),

    -- ** ItemSelection
    ItemSelection (..),

    -- ** Method
    Method (..),

    -- ** MinimumProtocolVersion
    MinimumProtocolVersion (..),

    -- ** OriginProtocolPolicy
    OriginProtocolPolicy (..),

    -- ** OriginRequestPolicyCookieBehavior
    OriginRequestPolicyCookieBehavior (..),

    -- ** OriginRequestPolicyHeaderBehavior
    OriginRequestPolicyHeaderBehavior (..),

    -- ** OriginRequestPolicyQueryStringBehavior
    OriginRequestPolicyQueryStringBehavior (..),

    -- ** OriginRequestPolicyType
    OriginRequestPolicyType (..),

    -- ** PriceClass
    PriceClass (..),

    -- ** RealtimeMetricsSubscriptionStatus
    RealtimeMetricsSubscriptionStatus (..),

    -- ** SSLProtocol
    SSLProtocol (..),

    -- ** SSLSupportMethod
    SSLSupportMethod (..),

    -- ** ViewerProtocolPolicy
    ViewerProtocolPolicy (..),

    -- ** ActiveTrustedKeyGroups
    ActiveTrustedKeyGroups,
    activeTrustedKeyGroups,
    atkgItems,
    atkgEnabled,
    atkgQuantity,

    -- ** ActiveTrustedSigners
    ActiveTrustedSigners,
    activeTrustedSigners,
    atsItems,
    atsEnabled,
    atsQuantity,

    -- ** AliasICPRecordal
    AliasICPRecordal,
    aliasICPRecordal,
    aicprICPRecordalStatus,
    aicprCNAME,

    -- ** Aliases
    Aliases,
    aliases,
    aItems,
    aQuantity,

    -- ** AllowedMethods
    AllowedMethods,
    allowedMethods,
    amCachedMethods,
    amQuantity,
    amItems,

    -- ** CacheBehavior
    CacheBehavior,
    cacheBehavior,
    cbLambdaFunctionAssociations,
    cbAllowedMethods,
    cbCachePolicyId,
    cbSmoothStreaming,
    cbFieldLevelEncryptionId,
    cbOriginRequestPolicyId,
    cbMaxTTL,
    cbForwardedValues,
    cbDefaultTTL,
    cbRealtimeLogConfigARN,
    cbMinTTL,
    cbCompress,
    cbTrustedKeyGroups,
    cbTrustedSigners,
    cbPathPattern,
    cbTargetOriginId,
    cbViewerProtocolPolicy,

    -- ** CacheBehaviors
    CacheBehaviors,
    cacheBehaviors,
    cbItems,
    cbQuantity,

    -- ** CachePolicy
    CachePolicy,
    cachePolicy,
    cpId,
    cpLastModifiedTime,
    cpCachePolicyConfig,

    -- ** CachePolicyConfig
    CachePolicyConfig,
    cachePolicyConfig,
    cpcComment,
    cpcMaxTTL,
    cpcParametersInCacheKeyAndForwardedToOrigin,
    cpcDefaultTTL,
    cpcName,
    cpcMinTTL,

    -- ** CachePolicyCookiesConfig
    CachePolicyCookiesConfig,
    cachePolicyCookiesConfig,
    cpccCookies,
    cpccCookieBehavior,

    -- ** CachePolicyHeadersConfig
    CachePolicyHeadersConfig,
    cachePolicyHeadersConfig,
    cphcHeaders,
    cphcHeaderBehavior,

    -- ** CachePolicyList
    CachePolicyList,
    cachePolicyList,
    cplItems,
    cplNextMarker,
    cplMaxItems,
    cplQuantity,

    -- ** CachePolicyQueryStringsConfig
    CachePolicyQueryStringsConfig,
    cachePolicyQueryStringsConfig,
    cpqscQueryStrings,
    cpqscQueryStringBehavior,

    -- ** CachePolicySummary
    CachePolicySummary,
    cachePolicySummary,
    cpsType,
    cpsCachePolicy,

    -- ** CachedMethods
    CachedMethods,
    cachedMethods,
    cmQuantity,
    cmItems,

    -- ** CloudFrontOriginAccessIdentity
    CloudFrontOriginAccessIdentity,
    cloudFrontOriginAccessIdentity,
    cfoaiCloudFrontOriginAccessIdentityConfig,
    cfoaiId,
    cfoaiS3CanonicalUserId,

    -- ** CloudFrontOriginAccessIdentityConfig
    CloudFrontOriginAccessIdentityConfig,
    cloudFrontOriginAccessIdentityConfig,
    cfoaicCallerReference,
    cfoaicComment,

    -- ** CloudFrontOriginAccessIdentityList
    CloudFrontOriginAccessIdentityList,
    cloudFrontOriginAccessIdentityList,
    cfoailItems,
    cfoailNextMarker,
    cfoailMarker,
    cfoailMaxItems,
    cfoailIsTruncated,
    cfoailQuantity,

    -- ** CloudFrontOriginAccessIdentitySummary
    CloudFrontOriginAccessIdentitySummary,
    cloudFrontOriginAccessIdentitySummary,
    cfoaisId,
    cfoaisS3CanonicalUserId,
    cfoaisComment,

    -- ** ContentTypeProfile
    ContentTypeProfile,
    contentTypeProfile,
    ctpProfileId,
    ctpFormat,
    ctpContentType,

    -- ** ContentTypeProfileConfig
    ContentTypeProfileConfig,
    contentTypeProfileConfig,
    ctpcContentTypeProfiles,
    ctpcForwardWhenContentTypeIsUnknown,

    -- ** ContentTypeProfiles
    ContentTypeProfiles,
    contentTypeProfiles,
    ctpItems,
    ctpQuantity,

    -- ** CookieNames
    CookieNames,
    cookieNames,
    cnItems,
    cnQuantity,

    -- ** CookiePreference
    CookiePreference,
    cookiePreference,
    cpWhitelistedNames,
    cpForward,

    -- ** CustomErrorResponse
    CustomErrorResponse,
    customErrorResponse,
    cerErrorCachingMinTTL,
    cerResponseCode,
    cerResponsePagePath,
    cerErrorCode,

    -- ** CustomErrorResponses
    CustomErrorResponses,
    customErrorResponses,
    cerItems,
    cerQuantity,

    -- ** CustomHeaders
    CustomHeaders,
    customHeaders,
    chItems,
    chQuantity,

    -- ** CustomOriginConfig
    CustomOriginConfig,
    customOriginConfig,
    cocOriginKeepaliveTimeout,
    cocOriginSSLProtocols,
    cocOriginReadTimeout,
    cocHTTPPort,
    cocHTTPSPort,
    cocOriginProtocolPolicy,

    -- ** DefaultCacheBehavior
    DefaultCacheBehavior,
    defaultCacheBehavior,
    dcbLambdaFunctionAssociations,
    dcbAllowedMethods,
    dcbCachePolicyId,
    dcbSmoothStreaming,
    dcbFieldLevelEncryptionId,
    dcbOriginRequestPolicyId,
    dcbMaxTTL,
    dcbForwardedValues,
    dcbDefaultTTL,
    dcbRealtimeLogConfigARN,
    dcbMinTTL,
    dcbCompress,
    dcbTrustedKeyGroups,
    dcbTrustedSigners,
    dcbTargetOriginId,
    dcbViewerProtocolPolicy,

    -- ** Distribution
    Distribution,
    distribution,
    dAliasICPRecordals,
    dActiveTrustedSigners,
    dActiveTrustedKeyGroups,
    dId,
    dARN,
    dStatus,
    dLastModifiedTime,
    dInProgressInvalidationBatches,
    dDomainName,
    dDistributionConfig,

    -- ** DistributionConfig
    DistributionConfig,
    distributionConfig,
    dcViewerCertificate,
    dcCustomErrorResponses,
    dcWebACLId,
    dcPriceClass,
    dcLogging,
    dcOriginGroups,
    dcRestrictions,
    dcIsIPV6Enabled,
    dcCacheBehaviors,
    dcDefaultRootObject,
    dcAliases,
    dcHTTPVersion,
    dcCallerReference,
    dcOrigins,
    dcDefaultCacheBehavior,
    dcComment,
    dcEnabled,

    -- ** DistributionConfigWithTags
    DistributionConfigWithTags,
    distributionConfigWithTags,
    dcwtDistributionConfig,
    dcwtTags,

    -- ** DistributionIdList
    DistributionIdList,
    distributionIdList,
    dilItems,
    dilNextMarker,
    dilMarker,
    dilMaxItems,
    dilIsTruncated,
    dilQuantity,

    -- ** DistributionList
    DistributionList,
    distributionList,
    dlItems,
    dlNextMarker,
    dlMarker,
    dlMaxItems,
    dlIsTruncated,
    dlQuantity,

    -- ** DistributionSummary
    DistributionSummary,
    distributionSummary,
    dsAliasICPRecordals,
    dsOriginGroups,
    dsId,
    dsARN,
    dsStatus,
    dsLastModifiedTime,
    dsDomainName,
    dsAliases,
    dsOrigins,
    dsDefaultCacheBehavior,
    dsCacheBehaviors,
    dsCustomErrorResponses,
    dsComment,
    dsPriceClass,
    dsEnabled,
    dsViewerCertificate,
    dsRestrictions,
    dsWebACLId,
    dsHTTPVersion,
    dsIsIPV6Enabled,

    -- ** EncryptionEntities
    EncryptionEntities,
    encryptionEntities,
    eeItems,
    eeQuantity,

    -- ** EncryptionEntity
    EncryptionEntity,
    encryptionEntity,
    eePublicKeyId,
    eeProviderId,
    eeFieldPatterns,

    -- ** EndPoint
    EndPoint,
    endPoint,
    epKinesisStreamConfig,
    epStreamType,

    -- ** FieldLevelEncryption
    FieldLevelEncryption,
    fieldLevelEncryption,
    fleId,
    fleLastModifiedTime,
    fleFieldLevelEncryptionConfig,

    -- ** FieldLevelEncryptionConfig
    FieldLevelEncryptionConfig,
    fieldLevelEncryptionConfig,
    flecComment,
    flecContentTypeProfileConfig,
    flecQueryArgProfileConfig,
    flecCallerReference,

    -- ** FieldLevelEncryptionList
    FieldLevelEncryptionList,
    fieldLevelEncryptionList,
    flelItems,
    flelNextMarker,
    flelMaxItems,
    flelQuantity,

    -- ** FieldLevelEncryptionProfile
    FieldLevelEncryptionProfile,
    fieldLevelEncryptionProfile,
    flepId,
    flepLastModifiedTime,
    flepFieldLevelEncryptionProfileConfig,

    -- ** FieldLevelEncryptionProfileConfig
    FieldLevelEncryptionProfileConfig,
    fieldLevelEncryptionProfileConfig,
    flepcComment,
    flepcName,
    flepcCallerReference,
    flepcEncryptionEntities,

    -- ** FieldLevelEncryptionProfileList
    FieldLevelEncryptionProfileList,
    fieldLevelEncryptionProfileList,
    fleplItems,
    fleplNextMarker,
    fleplMaxItems,
    fleplQuantity,

    -- ** FieldLevelEncryptionProfileSummary
    FieldLevelEncryptionProfileSummary,
    fieldLevelEncryptionProfileSummary,
    flepsComment,
    flepsId,
    flepsLastModifiedTime,
    flepsName,
    flepsEncryptionEntities,

    -- ** FieldLevelEncryptionSummary
    FieldLevelEncryptionSummary,
    fieldLevelEncryptionSummary,
    flesComment,
    flesContentTypeProfileConfig,
    flesQueryArgProfileConfig,
    flesId,
    flesLastModifiedTime,

    -- ** FieldPatterns
    FieldPatterns,
    fieldPatterns,
    fpItems,
    fpQuantity,

    -- ** ForwardedValues
    ForwardedValues,
    forwardedValues,
    fvQueryStringCacheKeys,
    fvHeaders,
    fvQueryString,
    fvCookies,

    -- ** GeoRestriction
    GeoRestriction,
    geoRestriction,
    grItems,
    grRestrictionType,
    grQuantity,

    -- ** Headers
    Headers,
    headers,
    hItems,
    hQuantity,

    -- ** Invalidation
    Invalidation,
    invalidation,
    iId,
    iStatus,
    iCreateTime,
    iInvalidationBatch,

    -- ** InvalidationBatch
    InvalidationBatch,
    invalidationBatch,
    ibPaths,
    ibCallerReference,

    -- ** InvalidationList
    InvalidationList,
    invalidationList,
    ilItems,
    ilNextMarker,
    ilMarker,
    ilMaxItems,
    ilIsTruncated,
    ilQuantity,

    -- ** InvalidationSummary
    InvalidationSummary,
    invalidationSummary,
    isId,
    isCreateTime,
    isStatus,

    -- ** KGKeyPairIds
    KGKeyPairIds,
    kGKeyPairIds,
    kgkpiKeyPairIds,
    kgkpiKeyGroupId,

    -- ** KeyGroup
    KeyGroup,
    keyGroup,
    kgId,
    kgLastModifiedTime,
    kgKeyGroupConfig,

    -- ** KeyGroupConfig
    KeyGroupConfig,
    keyGroupConfig,
    kgcComment,
    kgcName,
    kgcItems,

    -- ** KeyGroupList
    KeyGroupList,
    keyGroupList,
    kglItems,
    kglNextMarker,
    kglMaxItems,
    kglQuantity,

    -- ** KeyGroupSummary
    KeyGroupSummary,
    keyGroupSummary,
    kgsKeyGroup,

    -- ** KeyPairIds
    KeyPairIds,
    keyPairIds,
    kpiItems,
    kpiQuantity,

    -- ** KinesisStreamConfig
    KinesisStreamConfig,
    kinesisStreamConfig,
    kscRoleARN,
    kscStreamARN,

    -- ** LambdaFunctionAssociation
    LambdaFunctionAssociation,
    lambdaFunctionAssociation,
    lfaIncludeBody,
    lfaLambdaFunctionARN,
    lfaEventType,

    -- ** LambdaFunctionAssociations
    LambdaFunctionAssociations,
    lambdaFunctionAssociations,
    lfaItems,
    lfaQuantity,

    -- ** LoggingConfig
    LoggingConfig,
    loggingConfig,
    lcEnabled,
    lcIncludeCookies,
    lcBucket,
    lcPrefix,

    -- ** MonitoringSubscription
    MonitoringSubscription,
    monitoringSubscription,
    msRealtimeMetricsSubscriptionConfig,

    -- ** Origin
    Origin,
    origin,
    oOriginPath,
    oConnectionAttempts,
    oConnectionTimeout,
    oCustomHeaders,
    oS3OriginConfig,
    oOriginShield,
    oCustomOriginConfig,
    oId,
    oDomainName,

    -- ** OriginCustomHeader
    OriginCustomHeader,
    originCustomHeader,
    ochHeaderName,
    ochHeaderValue,

    -- ** OriginGroup
    OriginGroup,
    originGroup,
    ogId,
    ogFailoverCriteria,
    ogMembers,

    -- ** OriginGroupFailoverCriteria
    OriginGroupFailoverCriteria,
    originGroupFailoverCriteria,
    ogfcStatusCodes,

    -- ** OriginGroupMember
    OriginGroupMember,
    originGroupMember,
    ogmOriginId,

    -- ** OriginGroupMembers
    OriginGroupMembers,
    originGroupMembers,
    ogmQuantity,
    ogmItems,

    -- ** OriginGroups
    OriginGroups,
    originGroups,
    ogItems,
    ogQuantity,

    -- ** OriginRequestPolicy
    OriginRequestPolicy,
    originRequestPolicy,
    orpId,
    orpLastModifiedTime,
    orpOriginRequestPolicyConfig,

    -- ** OriginRequestPolicyConfig
    OriginRequestPolicyConfig,
    originRequestPolicyConfig,
    orpcComment,
    orpcName,
    orpcHeadersConfig,
    orpcCookiesConfig,
    orpcQueryStringsConfig,

    -- ** OriginRequestPolicyCookiesConfig
    OriginRequestPolicyCookiesConfig,
    originRequestPolicyCookiesConfig,
    orpccCookies,
    orpccCookieBehavior,

    -- ** OriginRequestPolicyHeadersConfig
    OriginRequestPolicyHeadersConfig,
    originRequestPolicyHeadersConfig,
    orphcHeaders,
    orphcHeaderBehavior,

    -- ** OriginRequestPolicyList
    OriginRequestPolicyList,
    originRequestPolicyList,
    orplItems,
    orplNextMarker,
    orplMaxItems,
    orplQuantity,

    -- ** OriginRequestPolicyQueryStringsConfig
    OriginRequestPolicyQueryStringsConfig,
    originRequestPolicyQueryStringsConfig,
    orpqscQueryStrings,
    orpqscQueryStringBehavior,

    -- ** OriginRequestPolicySummary
    OriginRequestPolicySummary,
    originRequestPolicySummary,
    orpsType,
    orpsOriginRequestPolicy,

    -- ** OriginSSLProtocols
    OriginSSLProtocols,
    originSSLProtocols,
    ospQuantity,
    ospItems,

    -- ** OriginShield
    OriginShield,
    originShield,
    osOriginShieldRegion,
    osEnabled,

    -- ** Origins
    Origins,
    origins,
    oQuantity,
    oItems,

    -- ** ParametersInCacheKeyAndForwardedToOrigin
    ParametersInCacheKeyAndForwardedToOrigin,
    parametersInCacheKeyAndForwardedToOrigin,
    pickaftoEnableAcceptEncodingBrotli,
    pickaftoEnableAcceptEncodingGzip,
    pickaftoHeadersConfig,
    pickaftoCookiesConfig,
    pickaftoQueryStringsConfig,

    -- ** Paths
    Paths,
    paths,
    pItems,
    pQuantity,

    -- ** PublicKey
    PublicKey,
    publicKey,
    pkId,
    pkCreatedTime,
    pkPublicKeyConfig,

    -- ** PublicKeyConfig
    PublicKeyConfig,
    publicKeyConfig,
    pkcComment,
    pkcCallerReference,
    pkcName,
    pkcEncodedKey,

    -- ** PublicKeyList
    PublicKeyList,
    publicKeyList,
    pklItems,
    pklNextMarker,
    pklMaxItems,
    pklQuantity,

    -- ** PublicKeySummary
    PublicKeySummary,
    publicKeySummary,
    pksComment,
    pksId,
    pksName,
    pksCreatedTime,
    pksEncodedKey,

    -- ** QueryArgProfile
    QueryArgProfile,
    queryArgProfile,
    qapQueryArg,
    qapProfileId,

    -- ** QueryArgProfileConfig
    QueryArgProfileConfig,
    queryArgProfileConfig,
    qapcQueryArgProfiles,
    qapcForwardWhenQueryArgProfileIsUnknown,

    -- ** QueryArgProfiles
    QueryArgProfiles,
    queryArgProfiles,
    qapItems,
    qapQuantity,

    -- ** QueryStringCacheKeys
    QueryStringCacheKeys,
    queryStringCacheKeys,
    qsckItems,
    qsckQuantity,

    -- ** QueryStringNames
    QueryStringNames,
    queryStringNames,
    qsnItems,
    qsnQuantity,

    -- ** RealtimeLogConfig
    RealtimeLogConfig,
    realtimeLogConfig,
    rlcARN,
    rlcName,
    rlcSamplingRate,
    rlcEndPoints,
    rlcFields,

    -- ** RealtimeLogConfigs
    RealtimeLogConfigs,
    realtimeLogConfigs,
    rlcItems,
    rlcNextMarker,
    rlcMaxItems,
    rlcIsTruncated,
    rlcMarker,

    -- ** RealtimeMetricsSubscriptionConfig
    RealtimeMetricsSubscriptionConfig,
    realtimeMetricsSubscriptionConfig,
    rmscRealtimeMetricsSubscriptionStatus,

    -- ** Restrictions
    Restrictions,
    restrictions,
    rGeoRestriction,

    -- ** S3Origin
    S3Origin,
    s3Origin,
    soDomainName,
    soOriginAccessIdentity,

    -- ** S3OriginConfig
    S3OriginConfig,
    s3OriginConfig,
    socOriginAccessIdentity,

    -- ** Signer
    Signer,
    signer,
    sAWSAccountNumber,
    sKeyPairIds,

    -- ** StatusCodes
    StatusCodes,
    statusCodes,
    scQuantity,
    scItems,

    -- ** StreamingDistribution
    StreamingDistribution,
    streamingDistribution,
    sdLastModifiedTime,
    sdId,
    sdARN,
    sdStatus,
    sdDomainName,
    sdActiveTrustedSigners,
    sdStreamingDistributionConfig,

    -- ** StreamingDistributionConfig
    StreamingDistributionConfig,
    streamingDistributionConfig,
    sdcPriceClass,
    sdcLogging,
    sdcAliases,
    sdcCallerReference,
    sdcS3Origin,
    sdcComment,
    sdcTrustedSigners,
    sdcEnabled,

    -- ** StreamingDistributionConfigWithTags
    StreamingDistributionConfigWithTags,
    streamingDistributionConfigWithTags,
    sdcwtStreamingDistributionConfig,
    sdcwtTags,

    -- ** StreamingDistributionList
    StreamingDistributionList,
    streamingDistributionList,
    sdlItems,
    sdlNextMarker,
    sdlMarker,
    sdlMaxItems,
    sdlIsTruncated,
    sdlQuantity,

    -- ** StreamingDistributionSummary
    StreamingDistributionSummary,
    streamingDistributionSummary,
    sdsId,
    sdsARN,
    sdsStatus,
    sdsLastModifiedTime,
    sdsDomainName,
    sdsS3Origin,
    sdsAliases,
    sdsTrustedSigners,
    sdsComment,
    sdsPriceClass,
    sdsEnabled,

    -- ** StreamingLoggingConfig
    StreamingLoggingConfig,
    streamingLoggingConfig,
    slcEnabled,
    slcBucket,
    slcPrefix,

    -- ** Tag
    Tag,
    tag,
    tagValue,
    tagKey,

    -- ** TagKeys
    TagKeys,
    tagKeys,
    tkItems,

    -- ** Tags
    Tags,
    tags,
    tItems,

    -- ** TrustedKeyGroups
    TrustedKeyGroups,
    trustedKeyGroups,
    tkgItems,
    tkgEnabled,
    tkgQuantity,

    -- ** TrustedSigners
    TrustedSigners,
    trustedSigners,
    tsItems,
    tsEnabled,
    tsQuantity,

    -- ** ViewerCertificate
    ViewerCertificate,
    viewerCertificate,
    vcSSLSupportMethod,
    vcCloudFrontDefaultCertificate,
    vcIAMCertificateId,
    vcACMCertificateARN,
    vcCertificateSource,
    vcCertificate,
    vcMinimumProtocolVersion,
  )
where

import Network.AWS.CloudFront.CreateCachePolicy
import Network.AWS.CloudFront.CreateCloudFrontOriginAccessIdentity
import Network.AWS.CloudFront.CreateDistribution
import Network.AWS.CloudFront.CreateDistributionWithTags
import Network.AWS.CloudFront.CreateFieldLevelEncryptionConfig
import Network.AWS.CloudFront.CreateFieldLevelEncryptionProfile
import Network.AWS.CloudFront.CreateInvalidation
import Network.AWS.CloudFront.CreateKeyGroup
import Network.AWS.CloudFront.CreateMonitoringSubscription
import Network.AWS.CloudFront.CreateOriginRequestPolicy
import Network.AWS.CloudFront.CreatePublicKey
import Network.AWS.CloudFront.CreateRealtimeLogConfig
import Network.AWS.CloudFront.CreateStreamingDistribution
import Network.AWS.CloudFront.CreateStreamingDistributionWithTags
import Network.AWS.CloudFront.DeleteCachePolicy
import Network.AWS.CloudFront.DeleteCloudFrontOriginAccessIdentity
import Network.AWS.CloudFront.DeleteDistribution
import Network.AWS.CloudFront.DeleteFieldLevelEncryptionConfig
import Network.AWS.CloudFront.DeleteFieldLevelEncryptionProfile
import Network.AWS.CloudFront.DeleteKeyGroup
import Network.AWS.CloudFront.DeleteMonitoringSubscription
import Network.AWS.CloudFront.DeleteOriginRequestPolicy
import Network.AWS.CloudFront.DeletePublicKey
import Network.AWS.CloudFront.DeleteRealtimeLogConfig
import Network.AWS.CloudFront.DeleteStreamingDistribution
import Network.AWS.CloudFront.GetCachePolicy
import Network.AWS.CloudFront.GetCachePolicyConfig
import Network.AWS.CloudFront.GetCloudFrontOriginAccessIdentity
import Network.AWS.CloudFront.GetCloudFrontOriginAccessIdentityConfig
import Network.AWS.CloudFront.GetDistribution
import Network.AWS.CloudFront.GetDistributionConfig
import Network.AWS.CloudFront.GetFieldLevelEncryption
import Network.AWS.CloudFront.GetFieldLevelEncryptionConfig
import Network.AWS.CloudFront.GetFieldLevelEncryptionProfile
import Network.AWS.CloudFront.GetFieldLevelEncryptionProfileConfig
import Network.AWS.CloudFront.GetInvalidation
import Network.AWS.CloudFront.GetKeyGroup
import Network.AWS.CloudFront.GetKeyGroupConfig
import Network.AWS.CloudFront.GetMonitoringSubscription
import Network.AWS.CloudFront.GetOriginRequestPolicy
import Network.AWS.CloudFront.GetOriginRequestPolicyConfig
import Network.AWS.CloudFront.GetPublicKey
import Network.AWS.CloudFront.GetPublicKeyConfig
import Network.AWS.CloudFront.GetRealtimeLogConfig
import Network.AWS.CloudFront.GetStreamingDistribution
import Network.AWS.CloudFront.GetStreamingDistributionConfig
import Network.AWS.CloudFront.ListCachePolicies
import Network.AWS.CloudFront.ListCloudFrontOriginAccessIdentities
import Network.AWS.CloudFront.ListDistributions
import Network.AWS.CloudFront.ListDistributionsByCachePolicyId
import Network.AWS.CloudFront.ListDistributionsByKeyGroup
import Network.AWS.CloudFront.ListDistributionsByOriginRequestPolicyId
import Network.AWS.CloudFront.ListDistributionsByRealtimeLogConfig
import Network.AWS.CloudFront.ListDistributionsByWebACLId
import Network.AWS.CloudFront.ListFieldLevelEncryptionConfigs
import Network.AWS.CloudFront.ListFieldLevelEncryptionProfiles
import Network.AWS.CloudFront.ListInvalidations
import Network.AWS.CloudFront.ListKeyGroups
import Network.AWS.CloudFront.ListOriginRequestPolicies
import Network.AWS.CloudFront.ListPublicKeys
import Network.AWS.CloudFront.ListRealtimeLogConfigs
import Network.AWS.CloudFront.ListStreamingDistributions
import Network.AWS.CloudFront.ListTagsForResource
import Network.AWS.CloudFront.TagResource
import Network.AWS.CloudFront.Types
import Network.AWS.CloudFront.UntagResource
import Network.AWS.CloudFront.UpdateCachePolicy
import Network.AWS.CloudFront.UpdateCloudFrontOriginAccessIdentity
import Network.AWS.CloudFront.UpdateDistribution
import Network.AWS.CloudFront.UpdateFieldLevelEncryptionConfig
import Network.AWS.CloudFront.UpdateFieldLevelEncryptionProfile
import Network.AWS.CloudFront.UpdateKeyGroup
import Network.AWS.CloudFront.UpdateOriginRequestPolicy
import Network.AWS.CloudFront.UpdatePublicKey
import Network.AWS.CloudFront.UpdateRealtimeLogConfig
import Network.AWS.CloudFront.UpdateStreamingDistribution
import Network.AWS.CloudFront.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'CloudFront'.

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
