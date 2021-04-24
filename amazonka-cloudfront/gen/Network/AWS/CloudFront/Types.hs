{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFront.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types
  ( -- * Service Configuration
    cloudFront,

    -- * Errors
    _RealtimeLogConfigAlreadyExists,
    _FieldLevelEncryptionConfigAlreadyExists,
    _IllegalDelete,
    _InvalidResponseCode,
    _IllegalUpdate,
    _InvalidIfMatchVersion,
    _DistributionAlreadyExists,
    _IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior,
    _InvalidErrorCode,
    _InvalidTagging,
    _TooManyOriginCustomHeaders,
    _InvalidOriginReadTimeout,
    _MissingBody,
    _FieldLevelEncryptionProfileInUse,
    _TooManyDistributionsAssociatedToCachePolicy,
    _InvalidLocationCode,
    _KeyGroupAlreadyExists,
    _TrustedKeyGroupDoesNotExist,
    _InvalidRequiredProtocol,
    _TooManyHeadersInForwardedValues,
    _TooManyFieldLevelEncryptionEncryptionEntities,
    _ResourceInUse,
    _InvalidViewerCertificate,
    _NoSuchDistribution,
    _InvalidMinimumProtocolVersion,
    _StreamingDistributionNotDisabled,
    _OriginRequestPolicyAlreadyExists,
    _TooManyCookiesInCachePolicy,
    _CachePolicyInUse,
    _TooManyLambdaFunctionAssociations,
    _CloudFrontOriginAccessIdentityAlreadyExists,
    _InvalidRelativePath,
    _NoSuchOrigin,
    _NoSuchInvalidation,
    _PublicKeyAlreadyExists,
    _TooManyDistributionsAssociatedToOriginRequestPolicy,
    _TooManyFieldLevelEncryptionConfigs,
    _TooManyFieldLevelEncryptionFieldPatterns,
    _TooManyFieldLevelEncryptionContentTypeProfiles,
    _BatchTooLarge,
    _NoSuchRealtimeLogConfig,
    _InvalidOrigin,
    _TooManyCachePolicies,
    _TooManyPublicKeysInKeyGroup,
    _NoSuchFieldLevelEncryptionConfig,
    _TooManyCookieNamesInWhiteList,
    _RealtimeLogConfigInUse,
    _InvalidForwardCookies,
    _FieldLevelEncryptionConfigInUse,
    _TooManyTrustedSigners,
    _InvalidHeadersForS3Origin,
    _InconsistentQuantities,
    _TooManyCookiesInOriginRequestPolicy,
    _InvalidProtocolSettings,
    _TooManyQueryStringParameters,
    _CannotChangeImmutablePublicKeyFields,
    _NoSuchCloudFrontOriginAccessIdentity,
    _TooManyPublicKeys,
    _TrustedSignerDoesNotExist,
    _TooManyInvalidationsInProgress,
    _NoSuchPublicKey,
    _DistributionNotDisabled,
    _TooManyCloudFrontOriginAccessIdentities,
    _InvalidOriginAccessIdentity,
    _PreconditionFailed,
    _TooManyFieldLevelEncryptionProfiles,
    _InvalidQueryStringParameters,
    _TooManyCacheBehaviors,
    _TooManyOriginRequestPolicies,
    _NoSuchFieldLevelEncryptionProfile,
    _TooManyKeyGroups,
    _TooManyDistributionsAssociatedToFieldLevelEncryptionConfig,
    _TooManyQueryStringsInOriginRequestPolicy,
    _TooManyDistributionsWithSingleFunctionARN,
    _InvalidGeoRestrictionParameter,
    _TooManyHeadersInOriginRequestPolicy,
    _TooManyCertificates,
    _NoSuchOriginRequestPolicy,
    _TooManyDistributionsWithLambdaAssociations,
    _InvalidDefaultRootObject,
    _OriginRequestPolicyInUse,
    _TooManyStreamingDistributionCNAMEs,
    _FieldLevelEncryptionProfileSizeExceeded,
    _NoSuchResource,
    _FieldLevelEncryptionProfileAlreadyExists,
    _TooManyDistributions,
    _InvalidTTLOrder,
    _AccessDenied,
    _QueryArgProfileEmpty,
    _TooManyQueryStringsInCachePolicy,
    _TooManyOrigins,
    _TooManyHeadersInCachePolicy,
    _StreamingDistributionAlreadyExists,
    _NoSuchCachePolicy,
    _TooManyKeyGroupsAssociatedToDistribution,
    _TooManyRealtimeLogConfigs,
    _TooManyDistributionsAssociatedToKeyGroup,
    _InvalidLambdaFunctionAssociation,
    _CachePolicyAlreadyExists,
    _TooManyFieldLevelEncryptionQueryArgProfiles,
    _PublicKeyInUse,
    _CNAMEAlreadyExists,
    _InvalidWebACLId,
    _CloudFrontOriginAccessIdentityInUse,
    _TooManyOriginGroupsPerDistribution,
    _TooManyDistributionCNAMEs,
    _NoSuchStreamingDistribution,
    _InvalidOriginKeepaliveTimeout,
    _TooManyStreamingDistributions,
    _InvalidArgument,

    -- * CachePolicyCookieBehavior
    CachePolicyCookieBehavior (..),

    -- * CachePolicyHeaderBehavior
    CachePolicyHeaderBehavior (..),

    -- * CachePolicyQueryStringBehavior
    CachePolicyQueryStringBehavior (..),

    -- * CachePolicyType
    CachePolicyType (..),

    -- * CertificateSource
    CertificateSource (..),

    -- * EventType
    EventType (..),

    -- * Format
    Format (..),

    -- * GeoRestrictionType
    GeoRestrictionType (..),

    -- * HTTPVersion
    HTTPVersion (..),

    -- * ICPRecordalStatus
    ICPRecordalStatus (..),

    -- * ItemSelection
    ItemSelection (..),

    -- * Method
    Method (..),

    -- * MinimumProtocolVersion
    MinimumProtocolVersion (..),

    -- * OriginProtocolPolicy
    OriginProtocolPolicy (..),

    -- * OriginRequestPolicyCookieBehavior
    OriginRequestPolicyCookieBehavior (..),

    -- * OriginRequestPolicyHeaderBehavior
    OriginRequestPolicyHeaderBehavior (..),

    -- * OriginRequestPolicyQueryStringBehavior
    OriginRequestPolicyQueryStringBehavior (..),

    -- * OriginRequestPolicyType
    OriginRequestPolicyType (..),

    -- * PriceClass
    PriceClass (..),

    -- * RealtimeMetricsSubscriptionStatus
    RealtimeMetricsSubscriptionStatus (..),

    -- * SSLProtocol
    SSLProtocol (..),

    -- * SSLSupportMethod
    SSLSupportMethod (..),

    -- * ViewerProtocolPolicy
    ViewerProtocolPolicy (..),

    -- * ActiveTrustedKeyGroups
    ActiveTrustedKeyGroups (..),
    activeTrustedKeyGroups,
    atkgItems,
    atkgEnabled,
    atkgQuantity,

    -- * ActiveTrustedSigners
    ActiveTrustedSigners (..),
    activeTrustedSigners,
    atsItems,
    atsEnabled,
    atsQuantity,

    -- * AliasICPRecordal
    AliasICPRecordal (..),
    aliasICPRecordal,
    aicprICPRecordalStatus,
    aicprCNAME,

    -- * Aliases
    Aliases (..),
    aliases,
    aItems,
    aQuantity,

    -- * AllowedMethods
    AllowedMethods (..),
    allowedMethods,
    amCachedMethods,
    amQuantity,
    amItems,

    -- * CacheBehavior
    CacheBehavior (..),
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

    -- * CacheBehaviors
    CacheBehaviors (..),
    cacheBehaviors,
    cbItems,
    cbQuantity,

    -- * CachePolicy
    CachePolicy (..),
    cachePolicy,
    cpId,
    cpLastModifiedTime,
    cpCachePolicyConfig,

    -- * CachePolicyConfig
    CachePolicyConfig (..),
    cachePolicyConfig,
    cpcComment,
    cpcMaxTTL,
    cpcParametersInCacheKeyAndForwardedToOrigin,
    cpcDefaultTTL,
    cpcName,
    cpcMinTTL,

    -- * CachePolicyCookiesConfig
    CachePolicyCookiesConfig (..),
    cachePolicyCookiesConfig,
    cpccCookies,
    cpccCookieBehavior,

    -- * CachePolicyHeadersConfig
    CachePolicyHeadersConfig (..),
    cachePolicyHeadersConfig,
    cphcHeaders,
    cphcHeaderBehavior,

    -- * CachePolicyList
    CachePolicyList (..),
    cachePolicyList,
    cplItems,
    cplNextMarker,
    cplMaxItems,
    cplQuantity,

    -- * CachePolicyQueryStringsConfig
    CachePolicyQueryStringsConfig (..),
    cachePolicyQueryStringsConfig,
    cpqscQueryStrings,
    cpqscQueryStringBehavior,

    -- * CachePolicySummary
    CachePolicySummary (..),
    cachePolicySummary,
    cpsType,
    cpsCachePolicy,

    -- * CachedMethods
    CachedMethods (..),
    cachedMethods,
    cmQuantity,
    cmItems,

    -- * CloudFrontOriginAccessIdentity
    CloudFrontOriginAccessIdentity (..),
    cloudFrontOriginAccessIdentity,
    cfoaiCloudFrontOriginAccessIdentityConfig,
    cfoaiId,
    cfoaiS3CanonicalUserId,

    -- * CloudFrontOriginAccessIdentityConfig
    CloudFrontOriginAccessIdentityConfig (..),
    cloudFrontOriginAccessIdentityConfig,
    cfoaicCallerReference,
    cfoaicComment,

    -- * CloudFrontOriginAccessIdentityList
    CloudFrontOriginAccessIdentityList (..),
    cloudFrontOriginAccessIdentityList,
    cfoailItems,
    cfoailNextMarker,
    cfoailMarker,
    cfoailMaxItems,
    cfoailIsTruncated,
    cfoailQuantity,

    -- * CloudFrontOriginAccessIdentitySummary
    CloudFrontOriginAccessIdentitySummary (..),
    cloudFrontOriginAccessIdentitySummary,
    cfoaisId,
    cfoaisS3CanonicalUserId,
    cfoaisComment,

    -- * ContentTypeProfile
    ContentTypeProfile (..),
    contentTypeProfile,
    ctpProfileId,
    ctpFormat,
    ctpContentType,

    -- * ContentTypeProfileConfig
    ContentTypeProfileConfig (..),
    contentTypeProfileConfig,
    ctpcContentTypeProfiles,
    ctpcForwardWhenContentTypeIsUnknown,

    -- * ContentTypeProfiles
    ContentTypeProfiles (..),
    contentTypeProfiles,
    ctpItems,
    ctpQuantity,

    -- * CookieNames
    CookieNames (..),
    cookieNames,
    cnItems,
    cnQuantity,

    -- * CookiePreference
    CookiePreference (..),
    cookiePreference,
    cpWhitelistedNames,
    cpForward,

    -- * CustomErrorResponse
    CustomErrorResponse (..),
    customErrorResponse,
    cerErrorCachingMinTTL,
    cerResponseCode,
    cerResponsePagePath,
    cerErrorCode,

    -- * CustomErrorResponses
    CustomErrorResponses (..),
    customErrorResponses,
    cerItems,
    cerQuantity,

    -- * CustomHeaders
    CustomHeaders (..),
    customHeaders,
    chItems,
    chQuantity,

    -- * CustomOriginConfig
    CustomOriginConfig (..),
    customOriginConfig,
    cocOriginKeepaliveTimeout,
    cocOriginSSLProtocols,
    cocOriginReadTimeout,
    cocHTTPPort,
    cocHTTPSPort,
    cocOriginProtocolPolicy,

    -- * DefaultCacheBehavior
    DefaultCacheBehavior (..),
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

    -- * Distribution
    Distribution (..),
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

    -- * DistributionConfig
    DistributionConfig (..),
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

    -- * DistributionConfigWithTags
    DistributionConfigWithTags (..),
    distributionConfigWithTags,
    dcwtDistributionConfig,
    dcwtTags,

    -- * DistributionIdList
    DistributionIdList (..),
    distributionIdList,
    dilItems,
    dilNextMarker,
    dilMarker,
    dilMaxItems,
    dilIsTruncated,
    dilQuantity,

    -- * DistributionList
    DistributionList (..),
    distributionList,
    dlItems,
    dlNextMarker,
    dlMarker,
    dlMaxItems,
    dlIsTruncated,
    dlQuantity,

    -- * DistributionSummary
    DistributionSummary (..),
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

    -- * EncryptionEntities
    EncryptionEntities (..),
    encryptionEntities,
    eeItems,
    eeQuantity,

    -- * EncryptionEntity
    EncryptionEntity (..),
    encryptionEntity,
    eePublicKeyId,
    eeProviderId,
    eeFieldPatterns,

    -- * EndPoint
    EndPoint (..),
    endPoint,
    epKinesisStreamConfig,
    epStreamType,

    -- * FieldLevelEncryption
    FieldLevelEncryption (..),
    fieldLevelEncryption,
    fleId,
    fleLastModifiedTime,
    fleFieldLevelEncryptionConfig,

    -- * FieldLevelEncryptionConfig
    FieldLevelEncryptionConfig (..),
    fieldLevelEncryptionConfig,
    flecComment,
    flecContentTypeProfileConfig,
    flecQueryArgProfileConfig,
    flecCallerReference,

    -- * FieldLevelEncryptionList
    FieldLevelEncryptionList (..),
    fieldLevelEncryptionList,
    flelItems,
    flelNextMarker,
    flelMaxItems,
    flelQuantity,

    -- * FieldLevelEncryptionProfile
    FieldLevelEncryptionProfile (..),
    fieldLevelEncryptionProfile,
    flepId,
    flepLastModifiedTime,
    flepFieldLevelEncryptionProfileConfig,

    -- * FieldLevelEncryptionProfileConfig
    FieldLevelEncryptionProfileConfig (..),
    fieldLevelEncryptionProfileConfig,
    flepcComment,
    flepcName,
    flepcCallerReference,
    flepcEncryptionEntities,

    -- * FieldLevelEncryptionProfileList
    FieldLevelEncryptionProfileList (..),
    fieldLevelEncryptionProfileList,
    fleplItems,
    fleplNextMarker,
    fleplMaxItems,
    fleplQuantity,

    -- * FieldLevelEncryptionProfileSummary
    FieldLevelEncryptionProfileSummary (..),
    fieldLevelEncryptionProfileSummary,
    flepsComment,
    flepsId,
    flepsLastModifiedTime,
    flepsName,
    flepsEncryptionEntities,

    -- * FieldLevelEncryptionSummary
    FieldLevelEncryptionSummary (..),
    fieldLevelEncryptionSummary,
    flesComment,
    flesContentTypeProfileConfig,
    flesQueryArgProfileConfig,
    flesId,
    flesLastModifiedTime,

    -- * FieldPatterns
    FieldPatterns (..),
    fieldPatterns,
    fpItems,
    fpQuantity,

    -- * ForwardedValues
    ForwardedValues (..),
    forwardedValues,
    fvQueryStringCacheKeys,
    fvHeaders,
    fvQueryString,
    fvCookies,

    -- * GeoRestriction
    GeoRestriction (..),
    geoRestriction,
    grItems,
    grRestrictionType,
    grQuantity,

    -- * Headers
    Headers (..),
    headers,
    hItems,
    hQuantity,

    -- * Invalidation
    Invalidation (..),
    invalidation,
    iId,
    iStatus,
    iCreateTime,
    iInvalidationBatch,

    -- * InvalidationBatch
    InvalidationBatch (..),
    invalidationBatch,
    ibPaths,
    ibCallerReference,

    -- * InvalidationList
    InvalidationList (..),
    invalidationList,
    ilItems,
    ilNextMarker,
    ilMarker,
    ilMaxItems,
    ilIsTruncated,
    ilQuantity,

    -- * InvalidationSummary
    InvalidationSummary (..),
    invalidationSummary,
    isId,
    isCreateTime,
    isStatus,

    -- * KGKeyPairIds
    KGKeyPairIds (..),
    kGKeyPairIds,
    kgkpiKeyPairIds,
    kgkpiKeyGroupId,

    -- * KeyGroup
    KeyGroup (..),
    keyGroup,
    kgId,
    kgLastModifiedTime,
    kgKeyGroupConfig,

    -- * KeyGroupConfig
    KeyGroupConfig (..),
    keyGroupConfig,
    kgcComment,
    kgcName,
    kgcItems,

    -- * KeyGroupList
    KeyGroupList (..),
    keyGroupList,
    kglItems,
    kglNextMarker,
    kglMaxItems,
    kglQuantity,

    -- * KeyGroupSummary
    KeyGroupSummary (..),
    keyGroupSummary,
    kgsKeyGroup,

    -- * KeyPairIds
    KeyPairIds (..),
    keyPairIds,
    kpiItems,
    kpiQuantity,

    -- * KinesisStreamConfig
    KinesisStreamConfig (..),
    kinesisStreamConfig,
    kscRoleARN,
    kscStreamARN,

    -- * LambdaFunctionAssociation
    LambdaFunctionAssociation (..),
    lambdaFunctionAssociation,
    lfaIncludeBody,
    lfaLambdaFunctionARN,
    lfaEventType,

    -- * LambdaFunctionAssociations
    LambdaFunctionAssociations (..),
    lambdaFunctionAssociations,
    lfaItems,
    lfaQuantity,

    -- * LoggingConfig
    LoggingConfig (..),
    loggingConfig,
    lcEnabled,
    lcIncludeCookies,
    lcBucket,
    lcPrefix,

    -- * MonitoringSubscription
    MonitoringSubscription (..),
    monitoringSubscription,
    msRealtimeMetricsSubscriptionConfig,

    -- * Origin
    Origin (..),
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

    -- * OriginCustomHeader
    OriginCustomHeader (..),
    originCustomHeader,
    ochHeaderName,
    ochHeaderValue,

    -- * OriginGroup
    OriginGroup (..),
    originGroup,
    ogId,
    ogFailoverCriteria,
    ogMembers,

    -- * OriginGroupFailoverCriteria
    OriginGroupFailoverCriteria (..),
    originGroupFailoverCriteria,
    ogfcStatusCodes,

    -- * OriginGroupMember
    OriginGroupMember (..),
    originGroupMember,
    ogmOriginId,

    -- * OriginGroupMembers
    OriginGroupMembers (..),
    originGroupMembers,
    ogmQuantity,
    ogmItems,

    -- * OriginGroups
    OriginGroups (..),
    originGroups,
    ogItems,
    ogQuantity,

    -- * OriginRequestPolicy
    OriginRequestPolicy (..),
    originRequestPolicy,
    orpId,
    orpLastModifiedTime,
    orpOriginRequestPolicyConfig,

    -- * OriginRequestPolicyConfig
    OriginRequestPolicyConfig (..),
    originRequestPolicyConfig,
    orpcComment,
    orpcName,
    orpcHeadersConfig,
    orpcCookiesConfig,
    orpcQueryStringsConfig,

    -- * OriginRequestPolicyCookiesConfig
    OriginRequestPolicyCookiesConfig (..),
    originRequestPolicyCookiesConfig,
    orpccCookies,
    orpccCookieBehavior,

    -- * OriginRequestPolicyHeadersConfig
    OriginRequestPolicyHeadersConfig (..),
    originRequestPolicyHeadersConfig,
    orphcHeaders,
    orphcHeaderBehavior,

    -- * OriginRequestPolicyList
    OriginRequestPolicyList (..),
    originRequestPolicyList,
    orplItems,
    orplNextMarker,
    orplMaxItems,
    orplQuantity,

    -- * OriginRequestPolicyQueryStringsConfig
    OriginRequestPolicyQueryStringsConfig (..),
    originRequestPolicyQueryStringsConfig,
    orpqscQueryStrings,
    orpqscQueryStringBehavior,

    -- * OriginRequestPolicySummary
    OriginRequestPolicySummary (..),
    originRequestPolicySummary,
    orpsType,
    orpsOriginRequestPolicy,

    -- * OriginSSLProtocols
    OriginSSLProtocols (..),
    originSSLProtocols,
    ospQuantity,
    ospItems,

    -- * OriginShield
    OriginShield (..),
    originShield,
    osOriginShieldRegion,
    osEnabled,

    -- * Origins
    Origins (..),
    origins,
    oQuantity,
    oItems,

    -- * ParametersInCacheKeyAndForwardedToOrigin
    ParametersInCacheKeyAndForwardedToOrigin (..),
    parametersInCacheKeyAndForwardedToOrigin,
    pickaftoEnableAcceptEncodingBrotli,
    pickaftoEnableAcceptEncodingGzip,
    pickaftoHeadersConfig,
    pickaftoCookiesConfig,
    pickaftoQueryStringsConfig,

    -- * Paths
    Paths (..),
    paths,
    pItems,
    pQuantity,

    -- * PublicKey
    PublicKey (..),
    publicKey,
    pkId,
    pkCreatedTime,
    pkPublicKeyConfig,

    -- * PublicKeyConfig
    PublicKeyConfig (..),
    publicKeyConfig,
    pkcComment,
    pkcCallerReference,
    pkcName,
    pkcEncodedKey,

    -- * PublicKeyList
    PublicKeyList (..),
    publicKeyList,
    pklItems,
    pklNextMarker,
    pklMaxItems,
    pklQuantity,

    -- * PublicKeySummary
    PublicKeySummary (..),
    publicKeySummary,
    pksComment,
    pksId,
    pksName,
    pksCreatedTime,
    pksEncodedKey,

    -- * QueryArgProfile
    QueryArgProfile (..),
    queryArgProfile,
    qapQueryArg,
    qapProfileId,

    -- * QueryArgProfileConfig
    QueryArgProfileConfig (..),
    queryArgProfileConfig,
    qapcQueryArgProfiles,
    qapcForwardWhenQueryArgProfileIsUnknown,

    -- * QueryArgProfiles
    QueryArgProfiles (..),
    queryArgProfiles,
    qapItems,
    qapQuantity,

    -- * QueryStringCacheKeys
    QueryStringCacheKeys (..),
    queryStringCacheKeys,
    qsckItems,
    qsckQuantity,

    -- * QueryStringNames
    QueryStringNames (..),
    queryStringNames,
    qsnItems,
    qsnQuantity,

    -- * RealtimeLogConfig
    RealtimeLogConfig (..),
    realtimeLogConfig,
    rlcARN,
    rlcName,
    rlcSamplingRate,
    rlcEndPoints,
    rlcFields,

    -- * RealtimeLogConfigs
    RealtimeLogConfigs (..),
    realtimeLogConfigs,
    rlcItems,
    rlcNextMarker,
    rlcMaxItems,
    rlcIsTruncated,
    rlcMarker,

    -- * RealtimeMetricsSubscriptionConfig
    RealtimeMetricsSubscriptionConfig (..),
    realtimeMetricsSubscriptionConfig,
    rmscRealtimeMetricsSubscriptionStatus,

    -- * Restrictions
    Restrictions (..),
    restrictions,
    rGeoRestriction,

    -- * S3Origin
    S3Origin (..),
    s3Origin,
    soDomainName,
    soOriginAccessIdentity,

    -- * S3OriginConfig
    S3OriginConfig (..),
    s3OriginConfig,
    socOriginAccessIdentity,

    -- * Signer
    Signer (..),
    signer,
    sAWSAccountNumber,
    sKeyPairIds,

    -- * StatusCodes
    StatusCodes (..),
    statusCodes,
    scQuantity,
    scItems,

    -- * StreamingDistribution
    StreamingDistribution (..),
    streamingDistribution,
    sdLastModifiedTime,
    sdId,
    sdARN,
    sdStatus,
    sdDomainName,
    sdActiveTrustedSigners,
    sdStreamingDistributionConfig,

    -- * StreamingDistributionConfig
    StreamingDistributionConfig (..),
    streamingDistributionConfig,
    sdcPriceClass,
    sdcLogging,
    sdcAliases,
    sdcCallerReference,
    sdcS3Origin,
    sdcComment,
    sdcTrustedSigners,
    sdcEnabled,

    -- * StreamingDistributionConfigWithTags
    StreamingDistributionConfigWithTags (..),
    streamingDistributionConfigWithTags,
    sdcwtStreamingDistributionConfig,
    sdcwtTags,

    -- * StreamingDistributionList
    StreamingDistributionList (..),
    streamingDistributionList,
    sdlItems,
    sdlNextMarker,
    sdlMarker,
    sdlMaxItems,
    sdlIsTruncated,
    sdlQuantity,

    -- * StreamingDistributionSummary
    StreamingDistributionSummary (..),
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

    -- * StreamingLoggingConfig
    StreamingLoggingConfig (..),
    streamingLoggingConfig,
    slcEnabled,
    slcBucket,
    slcPrefix,

    -- * Tag
    Tag (..),
    tag,
    tagValue,
    tagKey,

    -- * TagKeys
    TagKeys (..),
    tagKeys,
    tkItems,

    -- * Tags
    Tags (..),
    tags,
    tItems,

    -- * TrustedKeyGroups
    TrustedKeyGroups (..),
    trustedKeyGroups,
    tkgItems,
    tkgEnabled,
    tkgQuantity,

    -- * TrustedSigners
    TrustedSigners (..),
    trustedSigners,
    tsItems,
    tsEnabled,
    tsQuantity,

    -- * ViewerCertificate
    ViewerCertificate (..),
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

import Network.AWS.CloudFront.Types.ActiveTrustedKeyGroups
import Network.AWS.CloudFront.Types.ActiveTrustedSigners
import Network.AWS.CloudFront.Types.AliasICPRecordal
import Network.AWS.CloudFront.Types.Aliases
import Network.AWS.CloudFront.Types.AllowedMethods
import Network.AWS.CloudFront.Types.CacheBehavior
import Network.AWS.CloudFront.Types.CacheBehaviors
import Network.AWS.CloudFront.Types.CachePolicy
import Network.AWS.CloudFront.Types.CachePolicyConfig
import Network.AWS.CloudFront.Types.CachePolicyCookieBehavior
import Network.AWS.CloudFront.Types.CachePolicyCookiesConfig
import Network.AWS.CloudFront.Types.CachePolicyHeaderBehavior
import Network.AWS.CloudFront.Types.CachePolicyHeadersConfig
import Network.AWS.CloudFront.Types.CachePolicyList
import Network.AWS.CloudFront.Types.CachePolicyQueryStringBehavior
import Network.AWS.CloudFront.Types.CachePolicyQueryStringsConfig
import Network.AWS.CloudFront.Types.CachePolicySummary
import Network.AWS.CloudFront.Types.CachePolicyType
import Network.AWS.CloudFront.Types.CachedMethods
import Network.AWS.CloudFront.Types.CertificateSource
import Network.AWS.CloudFront.Types.CloudFrontOriginAccessIdentity
import Network.AWS.CloudFront.Types.CloudFrontOriginAccessIdentityConfig
import Network.AWS.CloudFront.Types.CloudFrontOriginAccessIdentityList
import Network.AWS.CloudFront.Types.CloudFrontOriginAccessIdentitySummary
import Network.AWS.CloudFront.Types.ContentTypeProfile
import Network.AWS.CloudFront.Types.ContentTypeProfileConfig
import Network.AWS.CloudFront.Types.ContentTypeProfiles
import Network.AWS.CloudFront.Types.CookieNames
import Network.AWS.CloudFront.Types.CookiePreference
import Network.AWS.CloudFront.Types.CustomErrorResponse
import Network.AWS.CloudFront.Types.CustomErrorResponses
import Network.AWS.CloudFront.Types.CustomHeaders
import Network.AWS.CloudFront.Types.CustomOriginConfig
import Network.AWS.CloudFront.Types.DefaultCacheBehavior
import Network.AWS.CloudFront.Types.Distribution
import Network.AWS.CloudFront.Types.DistributionConfig
import Network.AWS.CloudFront.Types.DistributionConfigWithTags
import Network.AWS.CloudFront.Types.DistributionIdList
import Network.AWS.CloudFront.Types.DistributionList
import Network.AWS.CloudFront.Types.DistributionSummary
import Network.AWS.CloudFront.Types.EncryptionEntities
import Network.AWS.CloudFront.Types.EncryptionEntity
import Network.AWS.CloudFront.Types.EndPoint
import Network.AWS.CloudFront.Types.EventType
import Network.AWS.CloudFront.Types.FieldLevelEncryption
import Network.AWS.CloudFront.Types.FieldLevelEncryptionConfig
import Network.AWS.CloudFront.Types.FieldLevelEncryptionList
import Network.AWS.CloudFront.Types.FieldLevelEncryptionProfile
import Network.AWS.CloudFront.Types.FieldLevelEncryptionProfileConfig
import Network.AWS.CloudFront.Types.FieldLevelEncryptionProfileList
import Network.AWS.CloudFront.Types.FieldLevelEncryptionProfileSummary
import Network.AWS.CloudFront.Types.FieldLevelEncryptionSummary
import Network.AWS.CloudFront.Types.FieldPatterns
import Network.AWS.CloudFront.Types.Format
import Network.AWS.CloudFront.Types.ForwardedValues
import Network.AWS.CloudFront.Types.GeoRestriction
import Network.AWS.CloudFront.Types.GeoRestrictionType
import Network.AWS.CloudFront.Types.HTTPVersion
import Network.AWS.CloudFront.Types.Headers
import Network.AWS.CloudFront.Types.ICPRecordalStatus
import Network.AWS.CloudFront.Types.Invalidation
import Network.AWS.CloudFront.Types.InvalidationBatch
import Network.AWS.CloudFront.Types.InvalidationList
import Network.AWS.CloudFront.Types.InvalidationSummary
import Network.AWS.CloudFront.Types.ItemSelection
import Network.AWS.CloudFront.Types.KGKeyPairIds
import Network.AWS.CloudFront.Types.KeyGroup
import Network.AWS.CloudFront.Types.KeyGroupConfig
import Network.AWS.CloudFront.Types.KeyGroupList
import Network.AWS.CloudFront.Types.KeyGroupSummary
import Network.AWS.CloudFront.Types.KeyPairIds
import Network.AWS.CloudFront.Types.KinesisStreamConfig
import Network.AWS.CloudFront.Types.LambdaFunctionAssociation
import Network.AWS.CloudFront.Types.LambdaFunctionAssociations
import Network.AWS.CloudFront.Types.LoggingConfig
import Network.AWS.CloudFront.Types.Method
import Network.AWS.CloudFront.Types.MinimumProtocolVersion
import Network.AWS.CloudFront.Types.MonitoringSubscription
import Network.AWS.CloudFront.Types.Origin
import Network.AWS.CloudFront.Types.OriginCustomHeader
import Network.AWS.CloudFront.Types.OriginGroup
import Network.AWS.CloudFront.Types.OriginGroupFailoverCriteria
import Network.AWS.CloudFront.Types.OriginGroupMember
import Network.AWS.CloudFront.Types.OriginGroupMembers
import Network.AWS.CloudFront.Types.OriginGroups
import Network.AWS.CloudFront.Types.OriginProtocolPolicy
import Network.AWS.CloudFront.Types.OriginRequestPolicy
import Network.AWS.CloudFront.Types.OriginRequestPolicyConfig
import Network.AWS.CloudFront.Types.OriginRequestPolicyCookieBehavior
import Network.AWS.CloudFront.Types.OriginRequestPolicyCookiesConfig
import Network.AWS.CloudFront.Types.OriginRequestPolicyHeaderBehavior
import Network.AWS.CloudFront.Types.OriginRequestPolicyHeadersConfig
import Network.AWS.CloudFront.Types.OriginRequestPolicyList
import Network.AWS.CloudFront.Types.OriginRequestPolicyQueryStringBehavior
import Network.AWS.CloudFront.Types.OriginRequestPolicyQueryStringsConfig
import Network.AWS.CloudFront.Types.OriginRequestPolicySummary
import Network.AWS.CloudFront.Types.OriginRequestPolicyType
import Network.AWS.CloudFront.Types.OriginSSLProtocols
import Network.AWS.CloudFront.Types.OriginShield
import Network.AWS.CloudFront.Types.Origins
import Network.AWS.CloudFront.Types.ParametersInCacheKeyAndForwardedToOrigin
import Network.AWS.CloudFront.Types.Paths
import Network.AWS.CloudFront.Types.PriceClass
import Network.AWS.CloudFront.Types.PublicKey
import Network.AWS.CloudFront.Types.PublicKeyConfig
import Network.AWS.CloudFront.Types.PublicKeyList
import Network.AWS.CloudFront.Types.PublicKeySummary
import Network.AWS.CloudFront.Types.QueryArgProfile
import Network.AWS.CloudFront.Types.QueryArgProfileConfig
import Network.AWS.CloudFront.Types.QueryArgProfiles
import Network.AWS.CloudFront.Types.QueryStringCacheKeys
import Network.AWS.CloudFront.Types.QueryStringNames
import Network.AWS.CloudFront.Types.RealtimeLogConfig
import Network.AWS.CloudFront.Types.RealtimeLogConfigs
import Network.AWS.CloudFront.Types.RealtimeMetricsSubscriptionConfig
import Network.AWS.CloudFront.Types.RealtimeMetricsSubscriptionStatus
import Network.AWS.CloudFront.Types.Restrictions
import Network.AWS.CloudFront.Types.S3Origin
import Network.AWS.CloudFront.Types.S3OriginConfig
import Network.AWS.CloudFront.Types.SSLProtocol
import Network.AWS.CloudFront.Types.SSLSupportMethod
import Network.AWS.CloudFront.Types.Signer
import Network.AWS.CloudFront.Types.StatusCodes
import Network.AWS.CloudFront.Types.StreamingDistribution
import Network.AWS.CloudFront.Types.StreamingDistributionConfig
import Network.AWS.CloudFront.Types.StreamingDistributionConfigWithTags
import Network.AWS.CloudFront.Types.StreamingDistributionList
import Network.AWS.CloudFront.Types.StreamingDistributionSummary
import Network.AWS.CloudFront.Types.StreamingLoggingConfig
import Network.AWS.CloudFront.Types.Tag
import Network.AWS.CloudFront.Types.TagKeys
import Network.AWS.CloudFront.Types.Tags
import Network.AWS.CloudFront.Types.TrustedKeyGroups
import Network.AWS.CloudFront.Types.TrustedSigners
import Network.AWS.CloudFront.Types.ViewerCertificate
import Network.AWS.CloudFront.Types.ViewerProtocolPolicy
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2020-05-31@ of the Amazon CloudFront SDK configuration.
cloudFront :: Service
cloudFront =
  Service
    { _svcAbbrev = "CloudFront",
      _svcSigner = v4,
      _svcPrefix = "cloudfront",
      _svcVersion = "2020-05-31",
      _svcEndpoint = defaultEndpoint cloudFront,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseXMLError "CloudFront",
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

-- | A real-time log configuration with this name already exists. You must provide a unique name. To modify an existing real-time log configuration, use @UpdateRealtimeLogConfig@ .
_RealtimeLogConfigAlreadyExists :: AsError a => Getting (First ServiceError) a ServiceError
_RealtimeLogConfigAlreadyExists =
  _MatchServiceError
    cloudFront
    "RealtimeLogConfigAlreadyExists"
    . hasStatus 409

-- | The specified configuration for field-level encryption already exists.
_FieldLevelEncryptionConfigAlreadyExists :: AsError a => Getting (First ServiceError) a ServiceError
_FieldLevelEncryptionConfigAlreadyExists =
  _MatchServiceError
    cloudFront
    "FieldLevelEncryptionConfigAlreadyExists"
    . hasStatus 409

-- | You cannot delete a managed policy.
_IllegalDelete :: AsError a => Getting (First ServiceError) a ServiceError
_IllegalDelete =
  _MatchServiceError cloudFront "IllegalDelete"
    . hasStatus 400

-- | A response code is not valid.
_InvalidResponseCode :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidResponseCode =
  _MatchServiceError cloudFront "InvalidResponseCode"
    . hasStatus 400

-- | The update contains modifications that are not allowed.
_IllegalUpdate :: AsError a => Getting (First ServiceError) a ServiceError
_IllegalUpdate =
  _MatchServiceError cloudFront "IllegalUpdate"
    . hasStatus 400

-- | The @If-Match@ version is missing or not valid.
_InvalidIfMatchVersion :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidIfMatchVersion =
  _MatchServiceError
    cloudFront
    "InvalidIfMatchVersion"
    . hasStatus 400

-- | The caller reference you attempted to create the distribution with is associated with another distribution.
_DistributionAlreadyExists :: AsError a => Getting (First ServiceError) a ServiceError
_DistributionAlreadyExists =
  _MatchServiceError
    cloudFront
    "DistributionAlreadyExists"
    . hasStatus 409

-- | The specified configuration for field-level encryption can't be associated with the specified cache behavior.
_IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior :: AsError a => Getting (First ServiceError) a ServiceError
_IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior =
  _MatchServiceError
    cloudFront
    "IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior"
    . hasStatus 400

-- | An invalid error code was specified.
_InvalidErrorCode :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidErrorCode =
  _MatchServiceError cloudFront "InvalidErrorCode"
    . hasStatus 400

-- | The tagging specified is not valid.
_InvalidTagging :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidTagging =
  _MatchServiceError cloudFront "InvalidTagging"
    . hasStatus 400

-- | Your request contains too many origin custom headers.
_TooManyOriginCustomHeaders :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyOriginCustomHeaders =
  _MatchServiceError
    cloudFront
    "TooManyOriginCustomHeaders"
    . hasStatus 400

-- | The read timeout specified for the origin is not valid.
_InvalidOriginReadTimeout :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidOriginReadTimeout =
  _MatchServiceError
    cloudFront
    "InvalidOriginReadTimeout"
    . hasStatus 400

-- | This operation requires a body. Ensure that the body is present and the @Content-Type@ header is set.
_MissingBody :: AsError a => Getting (First ServiceError) a ServiceError
_MissingBody =
  _MatchServiceError cloudFront "MissingBody"
    . hasStatus 400

-- | The specified profile for field-level encryption is in use.
_FieldLevelEncryptionProfileInUse :: AsError a => Getting (First ServiceError) a ServiceError
_FieldLevelEncryptionProfileInUse =
  _MatchServiceError
    cloudFront
    "FieldLevelEncryptionProfileInUse"
    . hasStatus 409

-- | The maximum number of distributions have been associated with the specified cache policy. For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html Quotas> (formerly known as limits) in the /Amazon CloudFront Developer Guide/ .
_TooManyDistributionsAssociatedToCachePolicy :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyDistributionsAssociatedToCachePolicy =
  _MatchServiceError
    cloudFront
    "TooManyDistributionsAssociatedToCachePolicy"
    . hasStatus 400

-- | The location code specified is not valid.
_InvalidLocationCode :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidLocationCode =
  _MatchServiceError cloudFront "InvalidLocationCode"
    . hasStatus 400

-- | A key group with this name already exists. You must provide a unique name. To modify an existing key group, use @UpdateKeyGroup@ .
_KeyGroupAlreadyExists :: AsError a => Getting (First ServiceError) a ServiceError
_KeyGroupAlreadyExists =
  _MatchServiceError
    cloudFront
    "KeyGroupAlreadyExists"
    . hasStatus 409

-- | The specified key group does not exist.
_TrustedKeyGroupDoesNotExist :: AsError a => Getting (First ServiceError) a ServiceError
_TrustedKeyGroupDoesNotExist =
  _MatchServiceError
    cloudFront
    "TrustedKeyGroupDoesNotExist"
    . hasStatus 400

-- | This operation requires the HTTPS protocol. Ensure that you specify the HTTPS protocol in your request, or omit the @RequiredProtocols@ element from your distribution configuration.
_InvalidRequiredProtocol :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidRequiredProtocol =
  _MatchServiceError
    cloudFront
    "InvalidRequiredProtocol"
    . hasStatus 400

-- | Your request contains too many headers in forwarded values.
_TooManyHeadersInForwardedValues :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyHeadersInForwardedValues =
  _MatchServiceError
    cloudFront
    "TooManyHeadersInForwardedValues"
    . hasStatus 400

-- | The maximum number of encryption entities for field-level encryption have been created.
_TooManyFieldLevelEncryptionEncryptionEntities :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyFieldLevelEncryptionEncryptionEntities =
  _MatchServiceError
    cloudFront
    "TooManyFieldLevelEncryptionEncryptionEntities"
    . hasStatus 400

-- | Cannot delete this resource because it is in use.
_ResourceInUse :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceInUse =
  _MatchServiceError cloudFront "ResourceInUse"
    . hasStatus 409

-- | A viewer certificate specified is not valid.
_InvalidViewerCertificate :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidViewerCertificate =
  _MatchServiceError
    cloudFront
    "InvalidViewerCertificate"
    . hasStatus 400

-- | The specified distribution does not exist.
_NoSuchDistribution :: AsError a => Getting (First ServiceError) a ServiceError
_NoSuchDistribution =
  _MatchServiceError cloudFront "NoSuchDistribution"
    . hasStatus 404

-- | The minimum protocol version specified is not valid.
_InvalidMinimumProtocolVersion :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidMinimumProtocolVersion =
  _MatchServiceError
    cloudFront
    "InvalidMinimumProtocolVersion"
    . hasStatus 400

-- | The specified CloudFront distribution is not disabled. You must disable the distribution before you can delete it.
_StreamingDistributionNotDisabled :: AsError a => Getting (First ServiceError) a ServiceError
_StreamingDistributionNotDisabled =
  _MatchServiceError
    cloudFront
    "StreamingDistributionNotDisabled"
    . hasStatus 409

-- | An origin request policy with this name already exists. You must provide a unique name. To modify an existing origin request policy, use @UpdateOriginRequestPolicy@ .
_OriginRequestPolicyAlreadyExists :: AsError a => Getting (First ServiceError) a ServiceError
_OriginRequestPolicyAlreadyExists =
  _MatchServiceError
    cloudFront
    "OriginRequestPolicyAlreadyExists"
    . hasStatus 409

-- | The number of cookies in the cache policy exceeds the maximum. For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html Quotas> (formerly known as limits) in the /Amazon CloudFront Developer Guide/ .
_TooManyCookiesInCachePolicy :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyCookiesInCachePolicy =
  _MatchServiceError
    cloudFront
    "TooManyCookiesInCachePolicy"
    . hasStatus 400

-- | Cannot delete the cache policy because it is attached to one or more cache behaviors.
_CachePolicyInUse :: AsError a => Getting (First ServiceError) a ServiceError
_CachePolicyInUse =
  _MatchServiceError cloudFront "CachePolicyInUse"
    . hasStatus 409

-- | Your request contains more Lambda function associations than are allowed per distribution.
_TooManyLambdaFunctionAssociations :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyLambdaFunctionAssociations =
  _MatchServiceError
    cloudFront
    "TooManyLambdaFunctionAssociations"
    . hasStatus 400

-- | If the @CallerReference@ is a value you already sent in a previous request to create an identity but the content of the @CloudFrontOriginAccessIdentityConfig@ is different from the original request, CloudFront returns a @CloudFrontOriginAccessIdentityAlreadyExists@ error.
_CloudFrontOriginAccessIdentityAlreadyExists :: AsError a => Getting (First ServiceError) a ServiceError
_CloudFrontOriginAccessIdentityAlreadyExists =
  _MatchServiceError
    cloudFront
    "CloudFrontOriginAccessIdentityAlreadyExists"
    . hasStatus 409

-- | The relative path is too big, is not URL-encoded, or does not begin with a slash (/).
_InvalidRelativePath :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidRelativePath =
  _MatchServiceError cloudFront "InvalidRelativePath"
    . hasStatus 400

-- | No origin exists with the specified @Origin Id@ .
_NoSuchOrigin :: AsError a => Getting (First ServiceError) a ServiceError
_NoSuchOrigin =
  _MatchServiceError cloudFront "NoSuchOrigin"
    . hasStatus 404

-- | The specified invalidation does not exist.
_NoSuchInvalidation :: AsError a => Getting (First ServiceError) a ServiceError
_NoSuchInvalidation =
  _MatchServiceError cloudFront "NoSuchInvalidation"
    . hasStatus 404

-- | The specified public key already exists.
_PublicKeyAlreadyExists :: AsError a => Getting (First ServiceError) a ServiceError
_PublicKeyAlreadyExists =
  _MatchServiceError
    cloudFront
    "PublicKeyAlreadyExists"
    . hasStatus 409

-- | The maximum number of distributions have been associated with the specified origin request policy. For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html Quotas> (formerly known as limits) in the /Amazon CloudFront Developer Guide/ .
_TooManyDistributionsAssociatedToOriginRequestPolicy :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyDistributionsAssociatedToOriginRequestPolicy =
  _MatchServiceError
    cloudFront
    "TooManyDistributionsAssociatedToOriginRequestPolicy"
    . hasStatus 400

-- | The maximum number of configurations for field-level encryption have been created.
_TooManyFieldLevelEncryptionConfigs :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyFieldLevelEncryptionConfigs =
  _MatchServiceError
    cloudFront
    "TooManyFieldLevelEncryptionConfigs"
    . hasStatus 400

-- | The maximum number of field patterns for field-level encryption have been created.
_TooManyFieldLevelEncryptionFieldPatterns :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyFieldLevelEncryptionFieldPatterns =
  _MatchServiceError
    cloudFront
    "TooManyFieldLevelEncryptionFieldPatterns"
    . hasStatus 400

-- | The maximum number of content type profiles for field-level encryption have been created.
_TooManyFieldLevelEncryptionContentTypeProfiles :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyFieldLevelEncryptionContentTypeProfiles =
  _MatchServiceError
    cloudFront
    "TooManyFieldLevelEncryptionContentTypeProfiles"
    . hasStatus 400

-- | Invalidation batch specified is too large.
_BatchTooLarge :: AsError a => Getting (First ServiceError) a ServiceError
_BatchTooLarge =
  _MatchServiceError cloudFront "BatchTooLarge"
    . hasStatus 413

-- | The real-time log configuration does not exist.
_NoSuchRealtimeLogConfig :: AsError a => Getting (First ServiceError) a ServiceError
_NoSuchRealtimeLogConfig =
  _MatchServiceError
    cloudFront
    "NoSuchRealtimeLogConfig"
    . hasStatus 404

-- | The Amazon S3 origin server specified does not refer to a valid Amazon S3 bucket.
_InvalidOrigin :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidOrigin =
  _MatchServiceError cloudFront "InvalidOrigin"
    . hasStatus 400

-- | You have reached the maximum number of cache policies for this AWS account. For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html Quotas> (formerly known as limits) in the /Amazon CloudFront Developer Guide/ .
_TooManyCachePolicies :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyCachePolicies =
  _MatchServiceError
    cloudFront
    "TooManyCachePolicies"
    . hasStatus 400

-- | The number of public keys in this key group is more than the maximum allowed. For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html Quotas> (formerly known as limits) in the /Amazon CloudFront Developer Guide/ .
_TooManyPublicKeysInKeyGroup :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyPublicKeysInKeyGroup =
  _MatchServiceError
    cloudFront
    "TooManyPublicKeysInKeyGroup"
    . hasStatus 400

-- | The specified configuration for field-level encryption doesn't exist.
_NoSuchFieldLevelEncryptionConfig :: AsError a => Getting (First ServiceError) a ServiceError
_NoSuchFieldLevelEncryptionConfig =
  _MatchServiceError
    cloudFront
    "NoSuchFieldLevelEncryptionConfig"
    . hasStatus 404

-- | Your request contains more cookie names in the whitelist than are allowed per cache behavior.
_TooManyCookieNamesInWhiteList :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyCookieNamesInWhiteList =
  _MatchServiceError
    cloudFront
    "TooManyCookieNamesInWhiteList"
    . hasStatus 400

-- | Cannot delete the real-time log configuration because it is attached to one or more cache behaviors.
_RealtimeLogConfigInUse :: AsError a => Getting (First ServiceError) a ServiceError
_RealtimeLogConfigInUse =
  _MatchServiceError
    cloudFront
    "RealtimeLogConfigInUse"
    . hasStatus 400

-- | Your request contains forward cookies option which doesn't match with the expectation for the @whitelisted@ list of cookie names. Either list of cookie names has been specified when not allowed or list of cookie names is missing when expected.
_InvalidForwardCookies :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidForwardCookies =
  _MatchServiceError
    cloudFront
    "InvalidForwardCookies"
    . hasStatus 400

-- | The specified configuration for field-level encryption is in use.
_FieldLevelEncryptionConfigInUse :: AsError a => Getting (First ServiceError) a ServiceError
_FieldLevelEncryptionConfigInUse =
  _MatchServiceError
    cloudFront
    "FieldLevelEncryptionConfigInUse"
    . hasStatus 409

-- | Your request contains more trusted signers than are allowed per distribution.
_TooManyTrustedSigners :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyTrustedSigners =
  _MatchServiceError
    cloudFront
    "TooManyTrustedSigners"
    . hasStatus 400

-- | The headers specified are not valid for an Amazon S3 origin.
_InvalidHeadersForS3Origin :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidHeadersForS3Origin =
  _MatchServiceError
    cloudFront
    "InvalidHeadersForS3Origin"
    . hasStatus 400

-- | The value of @Quantity@ and the size of @Items@ don't match.
_InconsistentQuantities :: AsError a => Getting (First ServiceError) a ServiceError
_InconsistentQuantities =
  _MatchServiceError
    cloudFront
    "InconsistentQuantities"
    . hasStatus 400

-- | The number of cookies in the origin request policy exceeds the maximum. For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html Quotas> (formerly known as limits) in the /Amazon CloudFront Developer Guide/ .
_TooManyCookiesInOriginRequestPolicy :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyCookiesInOriginRequestPolicy =
  _MatchServiceError
    cloudFront
    "TooManyCookiesInOriginRequestPolicy"
    . hasStatus 400

-- | You cannot specify SSLv3 as the minimum protocol version if you only want to support only clients that support Server Name Indication (SNI).
_InvalidProtocolSettings :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidProtocolSettings =
  _MatchServiceError
    cloudFront
    "InvalidProtocolSettings"
    . hasStatus 400

-- | Your request contains too many query string parameters.
_TooManyQueryStringParameters :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyQueryStringParameters =
  _MatchServiceError
    cloudFront
    "TooManyQueryStringParameters"
    . hasStatus 400

-- | You can't change the value of a public key.
_CannotChangeImmutablePublicKeyFields :: AsError a => Getting (First ServiceError) a ServiceError
_CannotChangeImmutablePublicKeyFields =
  _MatchServiceError
    cloudFront
    "CannotChangeImmutablePublicKeyFields"
    . hasStatus 400

-- | The specified origin access identity does not exist.
_NoSuchCloudFrontOriginAccessIdentity :: AsError a => Getting (First ServiceError) a ServiceError
_NoSuchCloudFrontOriginAccessIdentity =
  _MatchServiceError
    cloudFront
    "NoSuchCloudFrontOriginAccessIdentity"
    . hasStatus 404

-- | The maximum number of public keys for field-level encryption have been created. To create a new public key, delete one of the existing keys.
_TooManyPublicKeys :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyPublicKeys =
  _MatchServiceError cloudFront "TooManyPublicKeys"
    . hasStatus 400

-- | One or more of your trusted signers don't exist.
_TrustedSignerDoesNotExist :: AsError a => Getting (First ServiceError) a ServiceError
_TrustedSignerDoesNotExist =
  _MatchServiceError
    cloudFront
    "TrustedSignerDoesNotExist"
    . hasStatus 400

-- | You have exceeded the maximum number of allowable InProgress invalidation batch requests, or invalidation objects.
_TooManyInvalidationsInProgress :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyInvalidationsInProgress =
  _MatchServiceError
    cloudFront
    "TooManyInvalidationsInProgress"
    . hasStatus 400

-- | The specified public key doesn't exist.
_NoSuchPublicKey :: AsError a => Getting (First ServiceError) a ServiceError
_NoSuchPublicKey =
  _MatchServiceError cloudFront "NoSuchPublicKey"
    . hasStatus 404

-- | The specified CloudFront distribution is not disabled. You must disable the distribution before you can delete it.
_DistributionNotDisabled :: AsError a => Getting (First ServiceError) a ServiceError
_DistributionNotDisabled =
  _MatchServiceError
    cloudFront
    "DistributionNotDisabled"
    . hasStatus 409

-- | Processing your request would cause you to exceed the maximum number of origin access identities allowed.
_TooManyCloudFrontOriginAccessIdentities :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyCloudFrontOriginAccessIdentities =
  _MatchServiceError
    cloudFront
    "TooManyCloudFrontOriginAccessIdentities"
    . hasStatus 400

-- | The origin access identity is not valid or doesn't exist.
_InvalidOriginAccessIdentity :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidOriginAccessIdentity =
  _MatchServiceError
    cloudFront
    "InvalidOriginAccessIdentity"
    . hasStatus 400

-- | The precondition given in one or more of the request header fields evaluated to @false@ .
_PreconditionFailed :: AsError a => Getting (First ServiceError) a ServiceError
_PreconditionFailed =
  _MatchServiceError cloudFront "PreconditionFailed"
    . hasStatus 412

-- | The maximum number of profiles for field-level encryption have been created.
_TooManyFieldLevelEncryptionProfiles :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyFieldLevelEncryptionProfiles =
  _MatchServiceError
    cloudFront
    "TooManyFieldLevelEncryptionProfiles"
    . hasStatus 400

-- | The query string parameters specified are not valid.
_InvalidQueryStringParameters :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidQueryStringParameters =
  _MatchServiceError
    cloudFront
    "InvalidQueryStringParameters"
    . hasStatus 400

-- | You cannot create more cache behaviors for the distribution.
_TooManyCacheBehaviors :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyCacheBehaviors =
  _MatchServiceError
    cloudFront
    "TooManyCacheBehaviors"
    . hasStatus 400

-- | You have reached the maximum number of origin request policies for this AWS account. For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html Quotas> (formerly known as limits) in the /Amazon CloudFront Developer Guide/ .
_TooManyOriginRequestPolicies :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyOriginRequestPolicies =
  _MatchServiceError
    cloudFront
    "TooManyOriginRequestPolicies"
    . hasStatus 400

-- | The specified profile for field-level encryption doesn't exist.
_NoSuchFieldLevelEncryptionProfile :: AsError a => Getting (First ServiceError) a ServiceError
_NoSuchFieldLevelEncryptionProfile =
  _MatchServiceError
    cloudFront
    "NoSuchFieldLevelEncryptionProfile"
    . hasStatus 404

-- | You have reached the maximum number of key groups for this AWS account. For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html Quotas> (formerly known as limits) in the /Amazon CloudFront Developer Guide/ .
_TooManyKeyGroups :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyKeyGroups =
  _MatchServiceError cloudFront "TooManyKeyGroups"
    . hasStatus 400

-- | The maximum number of distributions have been associated with the specified configuration for field-level encryption.
_TooManyDistributionsAssociatedToFieldLevelEncryptionConfig :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyDistributionsAssociatedToFieldLevelEncryptionConfig =
  _MatchServiceError
    cloudFront
    "TooManyDistributionsAssociatedToFieldLevelEncryptionConfig"
    . hasStatus 400

-- | The number of query strings in the origin request policy exceeds the maximum. For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html Quotas> (formerly known as limits) in the /Amazon CloudFront Developer Guide/ .
_TooManyQueryStringsInOriginRequestPolicy :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyQueryStringsInOriginRequestPolicy =
  _MatchServiceError
    cloudFront
    "TooManyQueryStringsInOriginRequestPolicy"
    . hasStatus 400

-- | The maximum number of distributions have been associated with the specified Lambda function.
_TooManyDistributionsWithSingleFunctionARN :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyDistributionsWithSingleFunctionARN =
  _MatchServiceError
    cloudFront
    "TooManyDistributionsWithSingleFunctionARN"
    . hasStatus 400

-- | The specified geo restriction parameter is not valid.
_InvalidGeoRestrictionParameter :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidGeoRestrictionParameter =
  _MatchServiceError
    cloudFront
    "InvalidGeoRestrictionParameter"
    . hasStatus 400

-- | The number of headers in the origin request policy exceeds the maximum. For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html Quotas> (formerly known as limits) in the /Amazon CloudFront Developer Guide/ .
_TooManyHeadersInOriginRequestPolicy :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyHeadersInOriginRequestPolicy =
  _MatchServiceError
    cloudFront
    "TooManyHeadersInOriginRequestPolicy"
    . hasStatus 400

-- | You cannot create anymore custom SSL/TLS certificates.
_TooManyCertificates :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyCertificates =
  _MatchServiceError cloudFront "TooManyCertificates"
    . hasStatus 400

-- | The origin request policy does not exist.
_NoSuchOriginRequestPolicy :: AsError a => Getting (First ServiceError) a ServiceError
_NoSuchOriginRequestPolicy =
  _MatchServiceError
    cloudFront
    "NoSuchOriginRequestPolicy"
    . hasStatus 404

-- | Processing your request would cause the maximum number of distributions with Lambda function associations per owner to be exceeded.
_TooManyDistributionsWithLambdaAssociations :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyDistributionsWithLambdaAssociations =
  _MatchServiceError
    cloudFront
    "TooManyDistributionsWithLambdaAssociations"
    . hasStatus 400

-- | The default root object file name is too big or contains an invalid character.
_InvalidDefaultRootObject :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidDefaultRootObject =
  _MatchServiceError
    cloudFront
    "InvalidDefaultRootObject"
    . hasStatus 400

-- | Cannot delete the origin request policy because it is attached to one or more cache behaviors.
_OriginRequestPolicyInUse :: AsError a => Getting (First ServiceError) a ServiceError
_OriginRequestPolicyInUse =
  _MatchServiceError
    cloudFront
    "OriginRequestPolicyInUse"
    . hasStatus 409

-- | Your request contains more CNAMEs than are allowed per distribution.
_TooManyStreamingDistributionCNAMEs :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyStreamingDistributionCNAMEs =
  _MatchServiceError
    cloudFront
    "TooManyStreamingDistributionCNAMEs"
    . hasStatus 400

-- | The maximum size of a profile for field-level encryption was exceeded.
_FieldLevelEncryptionProfileSizeExceeded :: AsError a => Getting (First ServiceError) a ServiceError
_FieldLevelEncryptionProfileSizeExceeded =
  _MatchServiceError
    cloudFront
    "FieldLevelEncryptionProfileSizeExceeded"
    . hasStatus 400

-- | A resource that was specified is not valid.
_NoSuchResource :: AsError a => Getting (First ServiceError) a ServiceError
_NoSuchResource =
  _MatchServiceError cloudFront "NoSuchResource"
    . hasStatus 404

-- | The specified profile for field-level encryption already exists.
_FieldLevelEncryptionProfileAlreadyExists :: AsError a => Getting (First ServiceError) a ServiceError
_FieldLevelEncryptionProfileAlreadyExists =
  _MatchServiceError
    cloudFront
    "FieldLevelEncryptionProfileAlreadyExists"
    . hasStatus 409

-- | Processing your request would cause you to exceed the maximum number of distributions allowed.
_TooManyDistributions :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyDistributions =
  _MatchServiceError
    cloudFront
    "TooManyDistributions"
    . hasStatus 400

-- | The TTL order specified is not valid.
_InvalidTTLOrder :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidTTLOrder =
  _MatchServiceError cloudFront "InvalidTTLOrder"
    . hasStatus 400

-- | Access denied.
_AccessDenied :: AsError a => Getting (First ServiceError) a ServiceError
_AccessDenied =
  _MatchServiceError cloudFront "AccessDenied"
    . hasStatus 403

-- | No profile specified for the field-level encryption query argument.
_QueryArgProfileEmpty :: AsError a => Getting (First ServiceError) a ServiceError
_QueryArgProfileEmpty =
  _MatchServiceError
    cloudFront
    "QueryArgProfileEmpty"
    . hasStatus 400

-- | The number of query strings in the cache policy exceeds the maximum. For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html Quotas> (formerly known as limits) in the /Amazon CloudFront Developer Guide/ .
_TooManyQueryStringsInCachePolicy :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyQueryStringsInCachePolicy =
  _MatchServiceError
    cloudFront
    "TooManyQueryStringsInCachePolicy"
    . hasStatus 400

-- | You cannot create more origins for the distribution.
_TooManyOrigins :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyOrigins =
  _MatchServiceError cloudFront "TooManyOrigins"
    . hasStatus 400

-- | The number of headers in the cache policy exceeds the maximum. For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html Quotas> (formerly known as limits) in the /Amazon CloudFront Developer Guide/ .
_TooManyHeadersInCachePolicy :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyHeadersInCachePolicy =
  _MatchServiceError
    cloudFront
    "TooManyHeadersInCachePolicy"
    . hasStatus 400

-- | The caller reference you attempted to create the streaming distribution with is associated with another distribution
_StreamingDistributionAlreadyExists :: AsError a => Getting (First ServiceError) a ServiceError
_StreamingDistributionAlreadyExists =
  _MatchServiceError
    cloudFront
    "StreamingDistributionAlreadyExists"
    . hasStatus 409

-- | The cache policy does not exist.
_NoSuchCachePolicy :: AsError a => Getting (First ServiceError) a ServiceError
_NoSuchCachePolicy =
  _MatchServiceError cloudFront "NoSuchCachePolicy"
    . hasStatus 404

-- | The number of key groups referenced by this distribution is more than the maximum allowed. For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html Quotas> (formerly known as limits) in the /Amazon CloudFront Developer Guide/ .
_TooManyKeyGroupsAssociatedToDistribution :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyKeyGroupsAssociatedToDistribution =
  _MatchServiceError
    cloudFront
    "TooManyKeyGroupsAssociatedToDistribution"
    . hasStatus 400

-- | You have reached the maximum number of real-time log configurations for this AWS account. For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html Quotas> (formerly known as limits) in the /Amazon CloudFront Developer Guide/ .
_TooManyRealtimeLogConfigs :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyRealtimeLogConfigs =
  _MatchServiceError
    cloudFront
    "TooManyRealtimeLogConfigs"
    . hasStatus 400

-- | The number of distributions that reference this key group is more than the maximum allowed. For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html Quotas> (formerly known as limits) in the /Amazon CloudFront Developer Guide/ .
_TooManyDistributionsAssociatedToKeyGroup :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyDistributionsAssociatedToKeyGroup =
  _MatchServiceError
    cloudFront
    "TooManyDistributionsAssociatedToKeyGroup"
    . hasStatus 400

-- | The specified Lambda function association is invalid.
_InvalidLambdaFunctionAssociation :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidLambdaFunctionAssociation =
  _MatchServiceError
    cloudFront
    "InvalidLambdaFunctionAssociation"
    . hasStatus 400

-- | A cache policy with this name already exists. You must provide a unique name. To modify an existing cache policy, use @UpdateCachePolicy@ .
_CachePolicyAlreadyExists :: AsError a => Getting (First ServiceError) a ServiceError
_CachePolicyAlreadyExists =
  _MatchServiceError
    cloudFront
    "CachePolicyAlreadyExists"
    . hasStatus 409

-- | The maximum number of query arg profiles for field-level encryption have been created.
_TooManyFieldLevelEncryptionQueryArgProfiles :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyFieldLevelEncryptionQueryArgProfiles =
  _MatchServiceError
    cloudFront
    "TooManyFieldLevelEncryptionQueryArgProfiles"
    . hasStatus 400

-- | The specified public key is in use.
_PublicKeyInUse :: AsError a => Getting (First ServiceError) a ServiceError
_PublicKeyInUse =
  _MatchServiceError cloudFront "PublicKeyInUse"
    . hasStatus 409

-- | The CNAME specified is already defined for CloudFront.
_CNAMEAlreadyExists :: AsError a => Getting (First ServiceError) a ServiceError
_CNAMEAlreadyExists =
  _MatchServiceError cloudFront "CNAMEAlreadyExists"
    . hasStatus 409

-- | A web ACL ID specified is not valid. To specify a web ACL created using the latest version of AWS WAF, use the ACL ARN, for example @arn:aws:wafv2:us-east-1:123456789012:global/webacl/ExampleWebACL/473e64fd-f30b-4765-81a0-62ad96dd167a@ . To specify a web ACL created using AWS WAF Classic, use the ACL ID, for example @473e64fd-f30b-4765-81a0-62ad96dd167a@ .
_InvalidWebACLId :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidWebACLId =
  _MatchServiceError cloudFront "InvalidWebACLId"
    . hasStatus 400

-- | The Origin Access Identity specified is already in use.
_CloudFrontOriginAccessIdentityInUse :: AsError a => Getting (First ServiceError) a ServiceError
_CloudFrontOriginAccessIdentityInUse =
  _MatchServiceError
    cloudFront
    "CloudFrontOriginAccessIdentityInUse"
    . hasStatus 409

-- | Processing your request would cause you to exceed the maximum number of origin groups allowed.
_TooManyOriginGroupsPerDistribution :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyOriginGroupsPerDistribution =
  _MatchServiceError
    cloudFront
    "TooManyOriginGroupsPerDistribution"
    . hasStatus 400

-- | Your request contains more CNAMEs than are allowed per distribution.
_TooManyDistributionCNAMEs :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyDistributionCNAMEs =
  _MatchServiceError
    cloudFront
    "TooManyDistributionCNAMEs"
    . hasStatus 400

-- | The specified streaming distribution does not exist.
_NoSuchStreamingDistribution :: AsError a => Getting (First ServiceError) a ServiceError
_NoSuchStreamingDistribution =
  _MatchServiceError
    cloudFront
    "NoSuchStreamingDistribution"
    . hasStatus 404

-- | The keep alive timeout specified for the origin is not valid.
_InvalidOriginKeepaliveTimeout :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidOriginKeepaliveTimeout =
  _MatchServiceError
    cloudFront
    "InvalidOriginKeepaliveTimeout"
    . hasStatus 400

-- | Processing your request would cause you to exceed the maximum number of streaming distributions allowed.
_TooManyStreamingDistributions :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyStreamingDistributions =
  _MatchServiceError
    cloudFront
    "TooManyStreamingDistributions"
    . hasStatus 400

-- | An argument is invalid.
_InvalidArgument :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidArgument =
  _MatchServiceError cloudFront "InvalidArgument"
    . hasStatus 400
