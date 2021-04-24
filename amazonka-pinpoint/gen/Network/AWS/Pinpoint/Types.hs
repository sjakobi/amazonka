{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types
  ( -- * Service Configuration
    pinpoint,

    -- * Errors
    _NotFoundException,
    _BadRequestException,
    _PayloadTooLargeException,
    _InternalServerErrorException,
    _ForbiddenException,
    _ConflictException,
    _MethodNotAllowedException,
    _TooManyRequestsException,

    -- * Action
    Action (..),

    -- * AttributeType
    AttributeType (..),

    -- * CampaignStatus
    CampaignStatus (..),

    -- * ChannelType
    ChannelType (..),

    -- * DefinitionFormat
    DefinitionFormat (..),

    -- * DeliveryStatus
    DeliveryStatus (..),

    -- * DimensionType
    DimensionType (..),

    -- * Duration
    Duration (..),

    -- * EndpointTypesElement
    EndpointTypesElement (..),

    -- * FilterType
    FilterType (..),

    -- * Frequency
    Frequency (..),

    -- * Include
    Include (..),

    -- * JobStatus
    JobStatus (..),

    -- * MessageType
    MessageType (..),

    -- * Mode
    Mode (..),

    -- * Operator
    Operator (..),

    -- * RecencyType
    RecencyType (..),

    -- * SegmentType
    SegmentType (..),

    -- * SourceType
    SourceType (..),

    -- * State
    State (..),

    -- * TemplateType
    TemplateType (..),

    -- * Type
    Type (..),

    -- * ADMChannelRequest
    ADMChannelRequest (..),
    aDMChannelRequest,
    aEnabled,
    aClientSecret,
    aClientId,

    -- * ADMChannelResponse
    ADMChannelResponse (..),
    aDMChannelResponse,
    admcrLastModifiedDate,
    admcrApplicationId,
    admcrHasCredential,
    admcrId,
    admcrCreationDate,
    admcrEnabled,
    admcrVersion,
    admcrIsArchived,
    admcrLastModifiedBy,
    admcrPlatform,

    -- * ADMMessage
    ADMMessage (..),
    aDMMessage,
    admmSilentPush,
    admmImageIconURL,
    admmExpiresAfter,
    admmData,
    admmTitle,
    admmIconReference,
    admmBody,
    admmConsolidationKey,
    admmSubstitutions,
    admmImageURL,
    admmMD5,
    admmAction,
    admmSound,
    admmURL,
    admmSmallImageIconURL,
    admmRawContent,

    -- * APNSChannelRequest
    APNSChannelRequest (..),
    apnsChannelRequest,
    apnscrDefaultAuthenticationMethod,
    apnscrTokenKey,
    apnscrBundleId,
    apnscrTeamId,
    apnscrEnabled,
    apnscrPrivateKey,
    apnscrTokenKeyId,
    apnscrCertificate,

    -- * APNSChannelResponse
    APNSChannelResponse (..),
    apnsChannelResponse,
    acrLastModifiedDate,
    acrApplicationId,
    acrDefaultAuthenticationMethod,
    acrHasCredential,
    acrHasTokenKey,
    acrId,
    acrCreationDate,
    acrEnabled,
    acrVersion,
    acrIsArchived,
    acrLastModifiedBy,
    acrPlatform,

    -- * APNSMessage
    APNSMessage (..),
    apnsMessage,
    amSilentPush,
    amCollapseId,
    amData,
    amCategory,
    amTitle,
    amBody,
    amTimeToLive,
    amAPNSPushType,
    amPreferredAuthenticationMethod,
    amPriority,
    amMediaURL,
    amSubstitutions,
    amAction,
    amSound,
    amThreadId,
    amURL,
    amRawContent,
    amBadge,

    -- * APNSPushNotificationTemplate
    APNSPushNotificationTemplate (..),
    apnsPushNotificationTemplate,
    apntTitle,
    apntBody,
    apntMediaURL,
    apntAction,
    apntSound,
    apntURL,
    apntRawContent,

    -- * APNSSandboxChannelRequest
    APNSSandboxChannelRequest (..),
    apnsSandboxChannelRequest,
    apnsscrDefaultAuthenticationMethod,
    apnsscrTokenKey,
    apnsscrBundleId,
    apnsscrTeamId,
    apnsscrEnabled,
    apnsscrPrivateKey,
    apnsscrTokenKeyId,
    apnsscrCertificate,

    -- * APNSSandboxChannelResponse
    APNSSandboxChannelResponse (..),
    apnsSandboxChannelResponse,
    ascrLastModifiedDate,
    ascrApplicationId,
    ascrDefaultAuthenticationMethod,
    ascrHasCredential,
    ascrHasTokenKey,
    ascrId,
    ascrCreationDate,
    ascrEnabled,
    ascrVersion,
    ascrIsArchived,
    ascrLastModifiedBy,
    ascrPlatform,

    -- * APNSVoipChannelRequest
    APNSVoipChannelRequest (..),
    apnsVoipChannelRequest,
    avcrDefaultAuthenticationMethod,
    avcrTokenKey,
    avcrBundleId,
    avcrTeamId,
    avcrEnabled,
    avcrPrivateKey,
    avcrTokenKeyId,
    avcrCertificate,

    -- * APNSVoipChannelResponse
    APNSVoipChannelResponse (..),
    apnsVoipChannelResponse,
    apnsvcrLastModifiedDate,
    apnsvcrApplicationId,
    apnsvcrDefaultAuthenticationMethod,
    apnsvcrHasCredential,
    apnsvcrHasTokenKey,
    apnsvcrId,
    apnsvcrCreationDate,
    apnsvcrEnabled,
    apnsvcrVersion,
    apnsvcrIsArchived,
    apnsvcrLastModifiedBy,
    apnsvcrPlatform,

    -- * APNSVoipSandboxChannelRequest
    APNSVoipSandboxChannelRequest (..),
    apnsVoipSandboxChannelRequest,
    avscrDefaultAuthenticationMethod,
    avscrTokenKey,
    avscrBundleId,
    avscrTeamId,
    avscrEnabled,
    avscrPrivateKey,
    avscrTokenKeyId,
    avscrCertificate,

    -- * APNSVoipSandboxChannelResponse
    APNSVoipSandboxChannelResponse (..),
    apnsVoipSandboxChannelResponse,
    apnsvscrLastModifiedDate,
    apnsvscrApplicationId,
    apnsvscrDefaultAuthenticationMethod,
    apnsvscrHasCredential,
    apnsvscrHasTokenKey,
    apnsvscrId,
    apnsvscrCreationDate,
    apnsvscrEnabled,
    apnsvscrVersion,
    apnsvscrIsArchived,
    apnsvscrLastModifiedBy,
    apnsvscrPlatform,

    -- * ActivitiesResponse
    ActivitiesResponse (..),
    activitiesResponse,
    aNextToken,
    aItem,

    -- * Activity
    Activity (..),
    activity,
    aConditionalSplit,
    aPUSH,
    aCUSTOM,
    aWait,
    aMultiCondition,
    aEMAIL,
    aHoldout,
    aRandomSplit,
    aDescription,
    aSMS,

    -- * ActivityResponse
    ActivityResponse (..),
    activityResponse,
    aEnd,
    aSuccessfulEndpointCount,
    aResult,
    aTimezonesCompletedCount,
    aState,
    aTimezonesTotalCount,
    aTreatmentId,
    aScheduledStart,
    aStart,
    aTotalEndpointCount,
    aCampaignId,
    aId,
    aApplicationId,

    -- * AddressConfiguration
    AddressConfiguration (..),
    addressConfiguration,
    acChannelType,
    acContext,
    acSubstitutions,
    acTitleOverride,
    acBodyOverride,
    acRawContent,

    -- * AndroidPushNotificationTemplate
    AndroidPushNotificationTemplate (..),
    androidPushNotificationTemplate,
    aImageIconURL,
    aTitle,
    aBody,
    aImageURL,
    aAction,
    aSound,
    aURL,
    aSmallImageIconURL,
    aRawContent,

    -- * ApplicationDateRangeKpiResponse
    ApplicationDateRangeKpiResponse (..),
    applicationDateRangeKpiResponse,
    adrkrNextToken,
    adrkrKpiResult,
    adrkrKpiName,
    adrkrEndTime,
    adrkrStartTime,
    adrkrApplicationId,

    -- * ApplicationResponse
    ApplicationResponse (..),
    applicationResponse,
    arTags,
    arId,
    arARN,
    arName,

    -- * ApplicationSettingsResource
    ApplicationSettingsResource (..),
    applicationSettingsResource,
    asrLastModifiedDate,
    asrCampaignHook,
    asrQuietTime,
    asrLimits,
    asrApplicationId,

    -- * ApplicationsResponse
    ApplicationsResponse (..),
    applicationsResponse,
    arNextToken,
    arItem,

    -- * AttributeDimension
    AttributeDimension (..),
    attributeDimension,
    adAttributeType,
    adValues,

    -- * AttributesResource
    AttributesResource (..),
    attributesResource,
    arAttributes,
    arAttributeType,
    arApplicationId,

    -- * BaiduChannelRequest
    BaiduChannelRequest (..),
    baiduChannelRequest,
    bcrEnabled,
    bcrSecretKey,
    bcrAPIKey,

    -- * BaiduChannelResponse
    BaiduChannelResponse (..),
    baiduChannelResponse,
    bLastModifiedDate,
    bApplicationId,
    bHasCredential,
    bId,
    bCreationDate,
    bEnabled,
    bVersion,
    bIsArchived,
    bLastModifiedBy,
    bCredential,
    bPlatform,

    -- * BaiduMessage
    BaiduMessage (..),
    baiduMessage,
    bmSilentPush,
    bmImageIconURL,
    bmData,
    bmTitle,
    bmIconReference,
    bmBody,
    bmTimeToLive,
    bmSubstitutions,
    bmImageURL,
    bmAction,
    bmSound,
    bmURL,
    bmSmallImageIconURL,
    bmRawContent,

    -- * BaseKpiResult
    BaseKpiResult (..),
    baseKpiResult,
    bkrRows,

    -- * CampaignCustomMessage
    CampaignCustomMessage (..),
    campaignCustomMessage,
    ccmData,

    -- * CampaignDateRangeKpiResponse
    CampaignDateRangeKpiResponse (..),
    campaignDateRangeKpiResponse,
    cdrkrNextToken,
    cdrkrKpiResult,
    cdrkrKpiName,
    cdrkrEndTime,
    cdrkrCampaignId,
    cdrkrStartTime,
    cdrkrApplicationId,

    -- * CampaignEmailMessage
    CampaignEmailMessage (..),
    campaignEmailMessage,
    cemTitle,
    cemBody,
    cemHTMLBody,
    cemFromAddress,

    -- * CampaignEventFilter
    CampaignEventFilter (..),
    campaignEventFilter,
    cefFilterType,
    cefDimensions,

    -- * CampaignHook
    CampaignHook (..),
    campaignHook,
    chMode,
    chLambdaFunctionName,
    chWebURL,

    -- * CampaignLimits
    CampaignLimits (..),
    campaignLimits,
    clTotal,
    clMessagesPerSecond,
    clDaily,
    clMaximumDuration,

    -- * CampaignResponse
    CampaignResponse (..),
    campaignResponse,
    crAdditionalTreatments,
    crHook,
    crVersion,
    crCustomDeliveryConfiguration,
    crState,
    crName,
    crDefaultState,
    crIsPaused,
    crTags,
    crLimits,
    crDescription,
    crTreatmentName,
    crMessageConfiguration,
    crTemplateConfiguration,
    crSchedule,
    crHoldoutPercent,
    crTreatmentDescription,
    crLastModifiedDate,
    crCreationDate,
    crSegmentId,
    crSegmentVersion,
    crId,
    crARN,
    crApplicationId,

    -- * CampaignSmsMessage
    CampaignSmsMessage (..),
    campaignSmsMessage,
    csmEntityId,
    csmBody,
    csmSenderId,
    csmMessageType,
    csmTemplateId,
    csmOriginationNumber,

    -- * CampaignState
    CampaignState (..),
    campaignState,
    csCampaignStatus,

    -- * CampaignsResponse
    CampaignsResponse (..),
    campaignsResponse,
    crNextToken,
    crItem,

    -- * ChannelResponse
    ChannelResponse (..),
    channelResponse,
    cLastModifiedDate,
    cApplicationId,
    cHasCredential,
    cId,
    cCreationDate,
    cEnabled,
    cVersion,
    cIsArchived,
    cLastModifiedBy,

    -- * ChannelsResponse
    ChannelsResponse (..),
    channelsResponse,
    crChannels,

    -- * Condition
    Condition (..),
    condition,
    cOperator,
    cConditions,

    -- * ConditionalSplitActivity
    ConditionalSplitActivity (..),
    conditionalSplitActivity,
    csaTrueActivity,
    csaCondition,
    csaEvaluationWaitTime,
    csaFalseActivity,

    -- * CreateApplicationRequest
    CreateApplicationRequest (..),
    createApplicationRequest,
    carTags,
    carName,

    -- * CreateRecommenderConfiguration
    CreateRecommenderConfiguration (..),
    createRecommenderConfiguration,
    crcRecommendationsDisplayName,
    crcRecommendationTransformerURI,
    crcAttributes,
    crcName,
    crcRecommendationsPerMessage,
    crcDescription,
    crcRecommendationProviderIdType,
    crcRecommendationProviderURI,
    crcRecommendationProviderRoleARN,

    -- * CreateTemplateMessageBody
    CreateTemplateMessageBody (..),
    createTemplateMessageBody,
    ctmbMessage,
    ctmbARN,
    ctmbRequestId,

    -- * CustomDeliveryConfiguration
    CustomDeliveryConfiguration (..),
    customDeliveryConfiguration,
    cdcEndpointTypes,
    cdcDeliveryURI,

    -- * CustomMessageActivity
    CustomMessageActivity (..),
    customMessageActivity,
    cmaTemplateName,
    cmaMessageConfig,
    cmaDeliveryURI,
    cmaEndpointTypes,
    cmaNextActivity,
    cmaTemplateVersion,

    -- * DefaultMessage
    DefaultMessage (..),
    defaultMessage,
    dmBody,
    dmSubstitutions,

    -- * DefaultPushNotificationMessage
    DefaultPushNotificationMessage (..),
    defaultPushNotificationMessage,
    dpnmSilentPush,
    dpnmData,
    dpnmTitle,
    dpnmBody,
    dpnmSubstitutions,
    dpnmAction,
    dpnmURL,

    -- * DefaultPushNotificationTemplate
    DefaultPushNotificationTemplate (..),
    defaultPushNotificationTemplate,
    dpntTitle,
    dpntBody,
    dpntAction,
    dpntSound,
    dpntURL,

    -- * DirectMessageConfiguration
    DirectMessageConfiguration (..),
    directMessageConfiguration,
    dmcADMMessage,
    dmcDefaultMessage,
    dmcVoiceMessage,
    dmcGCMMessage,
    dmcAPNSMessage,
    dmcEmailMessage,
    dmcSMSMessage,
    dmcDefaultPushNotificationMessage,
    dmcBaiduMessage,

    -- * EmailChannelRequest
    EmailChannelRequest (..),
    emailChannelRequest,
    emaRoleARN,
    emaEnabled,
    emaConfigurationSet,
    emaFromAddress,
    emaIdentity,

    -- * EmailChannelResponse
    EmailChannelResponse (..),
    emailChannelResponse,
    ecrLastModifiedDate,
    ecrApplicationId,
    ecrRoleARN,
    ecrHasCredential,
    ecrIdentity,
    ecrId,
    ecrCreationDate,
    ecrEnabled,
    ecrVersion,
    ecrMessagesPerSecond,
    ecrIsArchived,
    ecrFromAddress,
    ecrLastModifiedBy,
    ecrConfigurationSet,
    ecrPlatform,

    -- * EmailMessage
    EmailMessage (..),
    emailMessage,
    emFeedbackForwardingAddress,
    emRawEmail,
    emBody,
    emSimpleEmail,
    emSubstitutions,
    emReplyToAddresses,
    emFromAddress,

    -- * EmailMessageActivity
    EmailMessageActivity (..),
    emailMessageActivity,
    emaTemplateName,
    emaMessageConfig,
    emaNextActivity,
    emaTemplateVersion,

    -- * EmailTemplateRequest
    EmailTemplateRequest (..),
    emailTemplateRequest,
    eTemplateDescription,
    eTextPart,
    eDefaultSubstitutions,
    eSubject,
    eTags,
    eRecommenderId,
    eHTMLPart,

    -- * EmailTemplateResponse
    EmailTemplateResponse (..),
    emailTemplateResponse,
    etrTemplateDescription,
    etrARN,
    etrVersion,
    etrTextPart,
    etrDefaultSubstitutions,
    etrSubject,
    etrTags,
    etrRecommenderId,
    etrHTMLPart,
    etrLastModifiedDate,
    etrCreationDate,
    etrTemplateName,
    etrTemplateType,

    -- * EndpointBatchItem
    EndpointBatchItem (..),
    endpointBatchItem,
    ebiUser,
    ebiAddress,
    ebiChannelType,
    ebiId,
    ebiOptOut,
    ebiDemographic,
    ebiAttributes,
    ebiEndpointStatus,
    ebiMetrics,
    ebiRequestId,
    ebiEffectiveDate,
    ebiLocation,

    -- * EndpointBatchRequest
    EndpointBatchRequest (..),
    endpointBatchRequest,
    ebrItem,

    -- * EndpointDemographic
    EndpointDemographic (..),
    endpointDemographic,
    edModel,
    edPlatform,
    edAppVersion,
    edLocale,
    edPlatformVersion,
    edModelVersion,
    edTimezone,
    edMake,

    -- * EndpointItemResponse
    EndpointItemResponse (..),
    endpointItemResponse,
    eMessage,
    eStatusCode,

    -- * EndpointLocation
    EndpointLocation (..),
    endpointLocation,
    elLongitude,
    elLatitude,
    elPostalCode,
    elCity,
    elCountry,
    elRegion,

    -- * EndpointMessageResult
    EndpointMessageResult (..),
    endpointMessageResult,
    emrStatusMessage,
    emrUpdatedToken,
    emrAddress,
    emrMessageId,
    emrDeliveryStatus,
    emrStatusCode,

    -- * EndpointRequest
    EndpointRequest (..),
    endpointRequest,
    endUser,
    endAddress,
    endChannelType,
    endOptOut,
    endDemographic,
    endAttributes,
    endEndpointStatus,
    endMetrics,
    endRequestId,
    endEffectiveDate,
    endLocation,

    -- * EndpointResponse
    EndpointResponse (..),
    endpointResponse,
    erApplicationId,
    erUser,
    erAddress,
    erChannelType,
    erCohortId,
    erId,
    erCreationDate,
    erOptOut,
    erDemographic,
    erAttributes,
    erEndpointStatus,
    erMetrics,
    erRequestId,
    erEffectiveDate,
    erLocation,

    -- * EndpointSendConfiguration
    EndpointSendConfiguration (..),
    endpointSendConfiguration,
    escContext,
    escSubstitutions,
    escTitleOverride,
    escBodyOverride,
    escRawContent,

    -- * EndpointUser
    EndpointUser (..),
    endpointUser,
    euUserId,
    euUserAttributes,

    -- * EndpointsResponse
    EndpointsResponse (..),
    endpointsResponse,
    erItem,

    -- * Event
    Event (..),
    event,
    eClientSDKVersion,
    eAppTitle,
    eSDKName,
    eAttributes,
    eMetrics,
    eAppPackageName,
    eAppVersionCode,
    eSession,
    eEventType,
    eTimestamp,

    -- * EventCondition
    EventCondition (..),
    eventCondition,
    ecMessageActivity,
    ecDimensions,

    -- * EventDimensions
    EventDimensions (..),
    eventDimensions,
    edEventType,
    edAttributes,
    edMetrics,

    -- * EventFilter
    EventFilter (..),
    eventFilter,
    efFilterType,
    efDimensions,

    -- * EventItemResponse
    EventItemResponse (..),
    eventItemResponse,
    eirMessage,
    eirStatusCode,

    -- * EventStartCondition
    EventStartCondition (..),
    eventStartCondition,
    escEventFilter,
    escSegmentId,

    -- * EventStream
    EventStream (..),
    eventStream,
    esLastModifiedDate,
    esLastUpdatedBy,
    esExternalId,
    esApplicationId,
    esRoleARN,
    esDestinationStreamARN,

    -- * EventsBatch
    EventsBatch (..),
    eventsBatch,
    ebEndpoint,
    ebEvents,

    -- * EventsRequest
    EventsRequest (..),
    eventsRequest,
    erBatchItem,

    -- * EventsResponse
    EventsResponse (..),
    eventsResponse,
    erResults,

    -- * ExportJobRequest
    ExportJobRequest (..),
    exportJobRequest,
    eSegmentVersion,
    eSegmentId,
    eS3URLPrefix,
    eRoleARN,

    -- * ExportJobResource
    ExportJobResource (..),
    exportJobResource,
    ejrSegmentVersion,
    ejrSegmentId,
    ejrS3URLPrefix,
    ejrRoleARN,

    -- * ExportJobResponse
    ExportJobResponse (..),
    exportJobResponse,
    ejrTotalFailures,
    ejrFailures,
    ejrTotalProcessed,
    ejrFailedPieces,
    ejrCompletedPieces,
    ejrTotalPieces,
    ejrCompletionDate,
    ejrJobStatus,
    ejrCreationDate,
    ejrType,
    ejrDefinition,
    ejrId,
    ejrApplicationId,

    -- * ExportJobsResponse
    ExportJobsResponse (..),
    exportJobsResponse,
    ejrNextToken,
    ejrItem,

    -- * GCMChannelRequest
    GCMChannelRequest (..),
    gcmChannelRequest,
    gcrEnabled,
    gcrAPIKey,

    -- * GCMChannelResponse
    GCMChannelResponse (..),
    gcmChannelResponse,
    gcmcrLastModifiedDate,
    gcmcrApplicationId,
    gcmcrHasCredential,
    gcmcrId,
    gcmcrCreationDate,
    gcmcrEnabled,
    gcmcrVersion,
    gcmcrIsArchived,
    gcmcrLastModifiedBy,
    gcmcrCredential,
    gcmcrPlatform,

    -- * GCMMessage
    GCMMessage (..),
    gcmMessage,
    gmSilentPush,
    gmImageIconURL,
    gmCollapseKey,
    gmData,
    gmTitle,
    gmIconReference,
    gmBody,
    gmTimeToLive,
    gmPriority,
    gmSubstitutions,
    gmImageURL,
    gmAction,
    gmSound,
    gmURL,
    gmSmallImageIconURL,
    gmRestrictedPackageName,
    gmRawContent,

    -- * GPSCoordinates
    GPSCoordinates (..),
    gPSCoordinates,
    gpscLatitude,
    gpscLongitude,

    -- * GPSPointDimension
    GPSPointDimension (..),
    gPSPointDimension,
    gpspdRangeInKilometers,
    gpspdCoordinates,

    -- * HoldoutActivity
    HoldoutActivity (..),
    holdoutActivity,
    haNextActivity,
    haPercentage,

    -- * ImportJobRequest
    ImportJobRequest (..),
    importJobRequest,
    iDefineSegment,
    iSegmentName,
    iRegisterEndpoints,
    iSegmentId,
    iExternalId,
    iFormat,
    iS3URL,
    iRoleARN,

    -- * ImportJobResource
    ImportJobResource (..),
    importJobResource,
    ijrDefineSegment,
    ijrSegmentName,
    ijrRegisterEndpoints,
    ijrSegmentId,
    ijrExternalId,
    ijrFormat,
    ijrS3URL,
    ijrRoleARN,

    -- * ImportJobResponse
    ImportJobResponse (..),
    importJobResponse,
    ijrTotalFailures,
    ijrFailures,
    ijrTotalProcessed,
    ijrFailedPieces,
    ijrCompletedPieces,
    ijrTotalPieces,
    ijrCompletionDate,
    ijrJobStatus,
    ijrCreationDate,
    ijrType,
    ijrDefinition,
    ijrId,
    ijrApplicationId,

    -- * ImportJobsResponse
    ImportJobsResponse (..),
    importJobsResponse,
    ijrNextToken,
    ijrItem,

    -- * ItemResponse
    ItemResponse (..),
    itemResponse,
    irEventsItemResponse,
    irEndpointItemResponse,

    -- * JourneyCustomMessage
    JourneyCustomMessage (..),
    journeyCustomMessage,
    jcmData,

    -- * JourneyDateRangeKpiResponse
    JourneyDateRangeKpiResponse (..),
    journeyDateRangeKpiResponse,
    jdrkrNextToken,
    jdrkrKpiResult,
    jdrkrKpiName,
    jdrkrJourneyId,
    jdrkrEndTime,
    jdrkrStartTime,
    jdrkrApplicationId,

    -- * JourneyEmailMessage
    JourneyEmailMessage (..),
    journeyEmailMessage,
    jemFromAddress,

    -- * JourneyExecutionActivityMetricsResponse
    JourneyExecutionActivityMetricsResponse (..),
    journeyExecutionActivityMetricsResponse,
    jeamrMetrics,
    jeamrJourneyId,
    jeamrLastEvaluatedTime,
    jeamrJourneyActivityId,
    jeamrActivityType,
    jeamrApplicationId,

    -- * JourneyExecutionMetricsResponse
    JourneyExecutionMetricsResponse (..),
    journeyExecutionMetricsResponse,
    jemrMetrics,
    jemrJourneyId,
    jemrLastEvaluatedTime,
    jemrApplicationId,

    -- * JourneyLimits
    JourneyLimits (..),
    journeyLimits,
    jlEndpointReentryCap,
    jlMessagesPerSecond,
    jlDailyCap,

    -- * JourneyPushMessage
    JourneyPushMessage (..),
    journeyPushMessage,
    jpmTimeToLive,

    -- * JourneyResponse
    JourneyResponse (..),
    journeyResponse,
    jrLastModifiedDate,
    jrActivities,
    jrCreationDate,
    jrState,
    jrTags,
    jrQuietTime,
    jrRefreshFrequency,
    jrLimits,
    jrStartCondition,
    jrLocalTime,
    jrStartActivity,
    jrSchedule,
    jrName,
    jrId,
    jrApplicationId,

    -- * JourneySMSMessage
    JourneySMSMessage (..),
    journeySMSMessage,
    jsmsmEntityId,
    jsmsmSenderId,
    jsmsmMessageType,
    jsmsmTemplateId,
    jsmsmOriginationNumber,

    -- * JourneySchedule
    JourneySchedule (..),
    journeySchedule,
    jsStartTime,
    jsEndTime,
    jsTimezone,

    -- * JourneyStateRequest
    JourneyStateRequest (..),
    journeyStateRequest,
    jsrState,

    -- * JourneysResponse
    JourneysResponse (..),
    journeysResponse,
    jrNextToken,
    jrItem,

    -- * ListRecommenderConfigurationsResponse
    ListRecommenderConfigurationsResponse (..),
    listRecommenderConfigurationsResponse,
    lrcrNextToken,
    lrcrItem,

    -- * Message
    Message (..),
    message,
    mSilentPush,
    mImageIconURL,
    mTitle,
    mJSONBody,
    mBody,
    mTimeToLive,
    mMediaURL,
    mImageURL,
    mAction,
    mURL,
    mImageSmallIconURL,
    mRawContent,

    -- * MessageBody
    MessageBody (..),
    messageBody,
    mbMessage,
    mbRequestId,

    -- * MessageConfiguration
    MessageConfiguration (..),
    messageConfiguration,
    mcADMMessage,
    mcDefaultMessage,
    mcGCMMessage,
    mcAPNSMessage,
    mcEmailMessage,
    mcSMSMessage,
    mcBaiduMessage,
    mcCustomMessage,

    -- * MessageRequest
    MessageRequest (..),
    messageRequest,
    mrEndpoints,
    mrContext,
    mrTraceId,
    mrAddresses,
    mrTemplateConfiguration,
    mrMessageConfiguration,

    -- * MessageResponse
    MessageResponse (..),
    messageResponse,
    mrResult,
    mrRequestId,
    mrEndpointResult,
    mrApplicationId,

    -- * MessageResult
    MessageResult (..),
    messageResult,
    mrStatusMessage,
    mrUpdatedToken,
    mrMessageId,
    mrDeliveryStatus,
    mrStatusCode,

    -- * MetricDimension
    MetricDimension (..),
    metricDimension,
    mdComparisonOperator,
    mdValue,

    -- * MultiConditionalBranch
    MultiConditionalBranch (..),
    multiConditionalBranch,
    mcbCondition,
    mcbNextActivity,

    -- * MultiConditionalSplitActivity
    MultiConditionalSplitActivity (..),
    multiConditionalSplitActivity,
    mcsaDefaultActivity,
    mcsaEvaluationWaitTime,
    mcsaBranches,

    -- * NumberValidateRequest
    NumberValidateRequest (..),
    numberValidateRequest,
    nvrPhoneNumber,
    nvrIsoCountryCode,

    -- * NumberValidateResponse
    NumberValidateResponse (..),
    numberValidateResponse,
    nvrPhoneType,
    nvrOriginalPhoneNumber,
    nvrZipCode,
    nvrOriginalCountryCodeIso2,
    nvrCountryCodeIso2,
    nvrCounty,
    nvrCity,
    nvrCarrier,
    nvrPhoneTypeCode,
    nvrCleansedPhoneNumberNational,
    nvrCleansedPhoneNumberE164,
    nvrCountryCodeNumeric,
    nvrTimezone,
    nvrCountry,

    -- * PublicEndpoint
    PublicEndpoint (..),
    publicEndpoint,
    peUser,
    peAddress,
    peChannelType,
    peOptOut,
    peDemographic,
    peAttributes,
    peEndpointStatus,
    peMetrics,
    peRequestId,
    peEffectiveDate,
    peLocation,

    -- * PushMessageActivity
    PushMessageActivity (..),
    pushMessageActivity,
    pmaTemplateName,
    pmaMessageConfig,
    pmaNextActivity,
    pmaTemplateVersion,

    -- * PushNotificationTemplateRequest
    PushNotificationTemplateRequest (..),
    pushNotificationTemplateRequest,
    pntrTemplateDescription,
    pntrBaidu,
    pntrADM,
    pntrDefaultSubstitutions,
    pntrAPNS,
    pntrGCM,
    pntrTags,
    pntrRecommenderId,
    pntrDefault,

    -- * PushNotificationTemplateResponse
    PushNotificationTemplateResponse (..),
    pushNotificationTemplateResponse,
    pTemplateDescription,
    pBaidu,
    pADM,
    pARN,
    pVersion,
    pDefaultSubstitutions,
    pAPNS,
    pGCM,
    pTags,
    pRecommenderId,
    pDefault,
    pLastModifiedDate,
    pCreationDate,
    pTemplateType,
    pTemplateName,

    -- * QuietTime
    QuietTime (..),
    quietTime,
    qtEnd,
    qtStart,

    -- * RandomSplitActivity
    RandomSplitActivity (..),
    randomSplitActivity,
    rsaBranches,

    -- * RandomSplitEntry
    RandomSplitEntry (..),
    randomSplitEntry,
    rsePercentage,
    rseNextActivity,

    -- * RawEmail
    RawEmail (..),
    rawEmail,
    reData,

    -- * RecencyDimension
    RecencyDimension (..),
    recencyDimension,
    rdDuration,
    rdRecencyType,

    -- * RecommenderConfigurationResponse
    RecommenderConfigurationResponse (..),
    recommenderConfigurationResponse,
    rcrRecommendationsDisplayName,
    rcrRecommendationTransformerURI,
    rcrAttributes,
    rcrName,
    rcrRecommendationsPerMessage,
    rcrDescription,
    rcrRecommendationProviderIdType,
    rcrRecommendationProviderURI,
    rcrLastModifiedDate,
    rcrCreationDate,
    rcrRecommendationProviderRoleARN,
    rcrId,

    -- * ResultRow
    ResultRow (..),
    resultRow,
    rrGroupedBys,
    rrValues,

    -- * ResultRowValue
    ResultRowValue (..),
    resultRowValue,
    rrvType,
    rrvValue,
    rrvKey,

    -- * SMSChannelRequest
    SMSChannelRequest (..),
    sMSChannelRequest,
    smscrEnabled,
    smscrShortCode,
    smscrSenderId,

    -- * SMSChannelResponse
    SMSChannelResponse (..),
    sMSChannelResponse,
    smsLastModifiedDate,
    smsApplicationId,
    smsPromotionalMessagesPerSecond,
    smsHasCredential,
    smsId,
    smsCreationDate,
    smsEnabled,
    smsVersion,
    smsShortCode,
    smsIsArchived,
    smsSenderId,
    smsTransactionalMessagesPerSecond,
    smsLastModifiedBy,
    smsPlatform,

    -- * SMSMessage
    SMSMessage (..),
    sMSMessage,
    smsmKeyword,
    smsmEntityId,
    smsmBody,
    smsmMediaURL,
    smsmSubstitutions,
    smsmSenderId,
    smsmMessageType,
    smsmTemplateId,
    smsmOriginationNumber,

    -- * SMSMessageActivity
    SMSMessageActivity (..),
    sMSMessageActivity,
    smsmaTemplateName,
    smsmaMessageConfig,
    smsmaNextActivity,
    smsmaTemplateVersion,

    -- * SMSTemplateRequest
    SMSTemplateRequest (..),
    sMSTemplateRequest,
    smstrTemplateDescription,
    smstrBody,
    smstrDefaultSubstitutions,
    smstrTags,
    smstrRecommenderId,

    -- * SMSTemplateResponse
    SMSTemplateResponse (..),
    sMSTemplateResponse,
    smstrmTemplateDescription,
    smstrmBody,
    smstrmARN,
    smstrmVersion,
    smstrmDefaultSubstitutions,
    smstrmTags,
    smstrmRecommenderId,
    smstrmLastModifiedDate,
    smstrmCreationDate,
    smstrmTemplateName,
    smstrmTemplateType,

    -- * Schedule
    Schedule (..),
    schedule,
    sEventFilter,
    sIsLocalTime,
    sEndTime,
    sFrequency,
    sQuietTime,
    sTimezone,
    sStartTime,

    -- * SegmentBehaviors
    SegmentBehaviors (..),
    segmentBehaviors,
    sbRecency,

    -- * SegmentCondition
    SegmentCondition (..),
    segmentCondition,
    scSegmentId,

    -- * SegmentDemographics
    SegmentDemographics (..),
    segmentDemographics,
    sdModel,
    sdPlatform,
    sdAppVersion,
    sdChannel,
    sdDeviceType,
    sdMake,

    -- * SegmentDimensions
    SegmentDimensions (..),
    segmentDimensions,
    sdDemographic,
    sdAttributes,
    sdMetrics,
    sdBehavior,
    sdUserAttributes,
    sdLocation,

    -- * SegmentGroup
    SegmentGroup (..),
    segmentGroup,
    sgDimensions,
    sgType,
    sgSourceSegments,
    sgSourceType,

    -- * SegmentGroupList
    SegmentGroupList (..),
    segmentGroupList,
    sglGroups,
    sglInclude,

    -- * SegmentImportResource
    SegmentImportResource (..),
    segmentImportResource,
    sirChannelCounts,
    sirFormat,
    sirS3URL,
    sirSize,
    sirExternalId,
    sirRoleARN,

    -- * SegmentLocation
    SegmentLocation (..),
    segmentLocation,
    slGPSPoint,
    slCountry,

    -- * SegmentReference
    SegmentReference (..),
    segmentReference,
    srVersion,
    srId,

    -- * SegmentResponse
    SegmentResponse (..),
    segmentResponse,
    sLastModifiedDate,
    sSegmentGroups,
    sVersion,
    sName,
    sTags,
    sDimensions,
    sImportDefinition,
    sSegmentType,
    sCreationDate,
    sId,
    sARN,
    sApplicationId,

    -- * SegmentsResponse
    SegmentsResponse (..),
    segmentsResponse,
    srNextToken,
    srItem,

    -- * SendUsersMessageRequest
    SendUsersMessageRequest (..),
    sendUsersMessageRequest,
    sumrContext,
    sumrTraceId,
    sumrTemplateConfiguration,
    sumrMessageConfiguration,
    sumrUsers,

    -- * SendUsersMessageResponse
    SendUsersMessageResponse (..),
    sendUsersMessageResponse,
    sumrResult,
    sumrRequestId,
    sumrApplicationId,

    -- * Session
    Session (..),
    session,
    sesStopTimestamp,
    sesDuration,
    sesStartTimestamp,
    sesId,

    -- * SetDimension
    SetDimension (..),
    setDimension,
    sdDimensionType,
    sdValues,

    -- * SimpleCondition
    SimpleCondition (..),
    simpleCondition,
    scEventCondition,
    scSegmentDimensions,
    scSegmentCondition,

    -- * SimpleEmail
    SimpleEmail (..),
    simpleEmail,
    seTextPart,
    seSubject,
    seHTMLPart,

    -- * SimpleEmailPart
    SimpleEmailPart (..),
    simpleEmailPart,
    sepData,
    sepCharset,

    -- * StartCondition
    StartCondition (..),
    startCondition,
    scEventStartCondition,
    scDescription,
    scSegmentStartCondition,

    -- * TagsModel
    TagsModel (..),
    tagsModel,
    tmTags,

    -- * Template
    Template (..),
    template,
    tVersion,
    tName,

    -- * TemplateActiveVersionRequest
    TemplateActiveVersionRequest (..),
    templateActiveVersionRequest,
    tavrVersion,

    -- * TemplateConfiguration
    TemplateConfiguration (..),
    templateConfiguration,
    tcEmailTemplate,
    tcVoiceTemplate,
    tcSMSTemplate,
    tcPushTemplate,

    -- * TemplateResponse
    TemplateResponse (..),
    templateResponse,
    trTemplateDescription,
    trARN,
    trVersion,
    trDefaultSubstitutions,
    trTags,
    trLastModifiedDate,
    trCreationDate,
    trTemplateName,
    trTemplateType,

    -- * TemplateVersionResponse
    TemplateVersionResponse (..),
    templateVersionResponse,
    tvrTemplateDescription,
    tvrVersion,
    tvrDefaultSubstitutions,
    tvrLastModifiedDate,
    tvrCreationDate,
    tvrTemplateName,
    tvrTemplateType,

    -- * TemplateVersionsResponse
    TemplateVersionsResponse (..),
    templateVersionsResponse,
    tvrNextToken,
    tvrMessage,
    tvrRequestId,
    tvrItem,

    -- * TemplatesResponse
    TemplatesResponse (..),
    templatesResponse,
    trNextToken,
    trItem,

    -- * TreatmentResource
    TreatmentResource (..),
    treatmentResource,
    trCustomDeliveryConfiguration,
    trState,
    trTreatmentName,
    trMessageConfiguration,
    trTemplateConfiguration,
    trSchedule,
    trTreatmentDescription,
    trId,
    trSizePercent,

    -- * UpdateAttributesRequest
    UpdateAttributesRequest (..),
    updateAttributesRequest,
    uarBlacklist,

    -- * UpdateRecommenderConfiguration
    UpdateRecommenderConfiguration (..),
    updateRecommenderConfiguration,
    urcRecommendationsDisplayName,
    urcRecommendationTransformerURI,
    urcAttributes,
    urcName,
    urcRecommendationsPerMessage,
    urcDescription,
    urcRecommendationProviderIdType,
    urcRecommendationProviderURI,
    urcRecommendationProviderRoleARN,

    -- * VoiceChannelRequest
    VoiceChannelRequest (..),
    voiceChannelRequest,
    vEnabled,

    -- * VoiceChannelResponse
    VoiceChannelResponse (..),
    voiceChannelResponse,
    vcrLastModifiedDate,
    vcrApplicationId,
    vcrHasCredential,
    vcrId,
    vcrCreationDate,
    vcrEnabled,
    vcrVersion,
    vcrIsArchived,
    vcrLastModifiedBy,
    vcrPlatform,

    -- * VoiceMessage
    VoiceMessage (..),
    voiceMessage,
    vmLanguageCode,
    vmVoiceId,
    vmBody,
    vmSubstitutions,
    vmOriginationNumber,

    -- * VoiceTemplateRequest
    VoiceTemplateRequest (..),
    voiceTemplateRequest,
    vtrLanguageCode,
    vtrTemplateDescription,
    vtrVoiceId,
    vtrBody,
    vtrDefaultSubstitutions,
    vtrTags,

    -- * VoiceTemplateResponse
    VoiceTemplateResponse (..),
    voiceTemplateResponse,
    vLanguageCode,
    vTemplateDescription,
    vVoiceId,
    vBody,
    vARN,
    vVersion,
    vDefaultSubstitutions,
    vTags,
    vLastModifiedDate,
    vCreationDate,
    vTemplateName,
    vTemplateType,

    -- * WaitActivity
    WaitActivity (..),
    waitActivity,
    waWaitTime,
    waNextActivity,

    -- * WaitTime
    WaitTime (..),
    waitTime,
    wtWaitUntil,
    wtWaitFor,

    -- * WriteApplicationSettingsRequest
    WriteApplicationSettingsRequest (..),
    writeApplicationSettingsRequest,
    wasrCampaignHook,
    wasrCloudWatchMetricsEnabled,
    wasrEventTaggingEnabled,
    wasrQuietTime,
    wasrLimits,

    -- * WriteCampaignRequest
    WriteCampaignRequest (..),
    writeCampaignRequest,
    wcrAdditionalTreatments,
    wcrHook,
    wcrCustomDeliveryConfiguration,
    wcrName,
    wcrIsPaused,
    wcrTags,
    wcrSegmentVersion,
    wcrLimits,
    wcrSegmentId,
    wcrDescription,
    wcrTreatmentName,
    wcrMessageConfiguration,
    wcrTemplateConfiguration,
    wcrSchedule,
    wcrHoldoutPercent,
    wcrTreatmentDescription,

    -- * WriteEventStream
    WriteEventStream (..),
    writeEventStream,
    wesRoleARN,
    wesDestinationStreamARN,

    -- * WriteJourneyRequest
    WriteJourneyRequest (..),
    writeJourneyRequest,
    wjrLastModifiedDate,
    wjrActivities,
    wjrCreationDate,
    wjrState,
    wjrQuietTime,
    wjrRefreshFrequency,
    wjrLimits,
    wjrStartCondition,
    wjrLocalTime,
    wjrStartActivity,
    wjrSchedule,
    wjrName,

    -- * WriteSegmentRequest
    WriteSegmentRequest (..),
    writeSegmentRequest,
    wsrSegmentGroups,
    wsrName,
    wsrTags,
    wsrDimensions,

    -- * WriteTreatmentResource
    WriteTreatmentResource (..),
    writeTreatmentResource,
    wtrCustomDeliveryConfiguration,
    wtrTreatmentName,
    wtrMessageConfiguration,
    wtrTemplateConfiguration,
    wtrSchedule,
    wtrTreatmentDescription,
    wtrSizePercent,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.ADMChannelRequest
import Network.AWS.Pinpoint.Types.ADMChannelResponse
import Network.AWS.Pinpoint.Types.ADMMessage
import Network.AWS.Pinpoint.Types.APNSChannelRequest
import Network.AWS.Pinpoint.Types.APNSChannelResponse
import Network.AWS.Pinpoint.Types.APNSMessage
import Network.AWS.Pinpoint.Types.APNSPushNotificationTemplate
import Network.AWS.Pinpoint.Types.APNSSandboxChannelRequest
import Network.AWS.Pinpoint.Types.APNSSandboxChannelResponse
import Network.AWS.Pinpoint.Types.APNSVoipChannelRequest
import Network.AWS.Pinpoint.Types.APNSVoipChannelResponse
import Network.AWS.Pinpoint.Types.APNSVoipSandboxChannelRequest
import Network.AWS.Pinpoint.Types.APNSVoipSandboxChannelResponse
import Network.AWS.Pinpoint.Types.Action
import Network.AWS.Pinpoint.Types.ActivitiesResponse
import Network.AWS.Pinpoint.Types.Activity
import Network.AWS.Pinpoint.Types.ActivityResponse
import Network.AWS.Pinpoint.Types.AddressConfiguration
import Network.AWS.Pinpoint.Types.AndroidPushNotificationTemplate
import Network.AWS.Pinpoint.Types.ApplicationDateRangeKpiResponse
import Network.AWS.Pinpoint.Types.ApplicationResponse
import Network.AWS.Pinpoint.Types.ApplicationSettingsResource
import Network.AWS.Pinpoint.Types.ApplicationsResponse
import Network.AWS.Pinpoint.Types.AttributeDimension
import Network.AWS.Pinpoint.Types.AttributeType
import Network.AWS.Pinpoint.Types.AttributesResource
import Network.AWS.Pinpoint.Types.BaiduChannelRequest
import Network.AWS.Pinpoint.Types.BaiduChannelResponse
import Network.AWS.Pinpoint.Types.BaiduMessage
import Network.AWS.Pinpoint.Types.BaseKpiResult
import Network.AWS.Pinpoint.Types.CampaignCustomMessage
import Network.AWS.Pinpoint.Types.CampaignDateRangeKpiResponse
import Network.AWS.Pinpoint.Types.CampaignEmailMessage
import Network.AWS.Pinpoint.Types.CampaignEventFilter
import Network.AWS.Pinpoint.Types.CampaignHook
import Network.AWS.Pinpoint.Types.CampaignLimits
import Network.AWS.Pinpoint.Types.CampaignResponse
import Network.AWS.Pinpoint.Types.CampaignSmsMessage
import Network.AWS.Pinpoint.Types.CampaignState
import Network.AWS.Pinpoint.Types.CampaignStatus
import Network.AWS.Pinpoint.Types.CampaignsResponse
import Network.AWS.Pinpoint.Types.ChannelResponse
import Network.AWS.Pinpoint.Types.ChannelType
import Network.AWS.Pinpoint.Types.ChannelsResponse
import Network.AWS.Pinpoint.Types.Condition
import Network.AWS.Pinpoint.Types.ConditionalSplitActivity
import Network.AWS.Pinpoint.Types.CreateApplicationRequest
import Network.AWS.Pinpoint.Types.CreateRecommenderConfiguration
import Network.AWS.Pinpoint.Types.CreateTemplateMessageBody
import Network.AWS.Pinpoint.Types.CustomDeliveryConfiguration
import Network.AWS.Pinpoint.Types.CustomMessageActivity
import Network.AWS.Pinpoint.Types.DefaultMessage
import Network.AWS.Pinpoint.Types.DefaultPushNotificationMessage
import Network.AWS.Pinpoint.Types.DefaultPushNotificationTemplate
import Network.AWS.Pinpoint.Types.DefinitionFormat
import Network.AWS.Pinpoint.Types.DeliveryStatus
import Network.AWS.Pinpoint.Types.DimensionType
import Network.AWS.Pinpoint.Types.DirectMessageConfiguration
import Network.AWS.Pinpoint.Types.Duration
import Network.AWS.Pinpoint.Types.EmailChannelRequest
import Network.AWS.Pinpoint.Types.EmailChannelResponse
import Network.AWS.Pinpoint.Types.EmailMessage
import Network.AWS.Pinpoint.Types.EmailMessageActivity
import Network.AWS.Pinpoint.Types.EmailTemplateRequest
import Network.AWS.Pinpoint.Types.EmailTemplateResponse
import Network.AWS.Pinpoint.Types.EndpointBatchItem
import Network.AWS.Pinpoint.Types.EndpointBatchRequest
import Network.AWS.Pinpoint.Types.EndpointDemographic
import Network.AWS.Pinpoint.Types.EndpointItemResponse
import Network.AWS.Pinpoint.Types.EndpointLocation
import Network.AWS.Pinpoint.Types.EndpointMessageResult
import Network.AWS.Pinpoint.Types.EndpointRequest
import Network.AWS.Pinpoint.Types.EndpointResponse
import Network.AWS.Pinpoint.Types.EndpointSendConfiguration
import Network.AWS.Pinpoint.Types.EndpointTypesElement
import Network.AWS.Pinpoint.Types.EndpointUser
import Network.AWS.Pinpoint.Types.EndpointsResponse
import Network.AWS.Pinpoint.Types.Event
import Network.AWS.Pinpoint.Types.EventCondition
import Network.AWS.Pinpoint.Types.EventDimensions
import Network.AWS.Pinpoint.Types.EventFilter
import Network.AWS.Pinpoint.Types.EventItemResponse
import Network.AWS.Pinpoint.Types.EventStartCondition
import Network.AWS.Pinpoint.Types.EventStream
import Network.AWS.Pinpoint.Types.EventsBatch
import Network.AWS.Pinpoint.Types.EventsRequest
import Network.AWS.Pinpoint.Types.EventsResponse
import Network.AWS.Pinpoint.Types.ExportJobRequest
import Network.AWS.Pinpoint.Types.ExportJobResource
import Network.AWS.Pinpoint.Types.ExportJobResponse
import Network.AWS.Pinpoint.Types.ExportJobsResponse
import Network.AWS.Pinpoint.Types.FilterType
import Network.AWS.Pinpoint.Types.Frequency
import Network.AWS.Pinpoint.Types.GCMChannelRequest
import Network.AWS.Pinpoint.Types.GCMChannelResponse
import Network.AWS.Pinpoint.Types.GCMMessage
import Network.AWS.Pinpoint.Types.GPSCoordinates
import Network.AWS.Pinpoint.Types.GPSPointDimension
import Network.AWS.Pinpoint.Types.HoldoutActivity
import Network.AWS.Pinpoint.Types.ImportJobRequest
import Network.AWS.Pinpoint.Types.ImportJobResource
import Network.AWS.Pinpoint.Types.ImportJobResponse
import Network.AWS.Pinpoint.Types.ImportJobsResponse
import Network.AWS.Pinpoint.Types.Include
import Network.AWS.Pinpoint.Types.ItemResponse
import Network.AWS.Pinpoint.Types.JobStatus
import Network.AWS.Pinpoint.Types.JourneyCustomMessage
import Network.AWS.Pinpoint.Types.JourneyDateRangeKpiResponse
import Network.AWS.Pinpoint.Types.JourneyEmailMessage
import Network.AWS.Pinpoint.Types.JourneyExecutionActivityMetricsResponse
import Network.AWS.Pinpoint.Types.JourneyExecutionMetricsResponse
import Network.AWS.Pinpoint.Types.JourneyLimits
import Network.AWS.Pinpoint.Types.JourneyPushMessage
import Network.AWS.Pinpoint.Types.JourneyResponse
import Network.AWS.Pinpoint.Types.JourneySMSMessage
import Network.AWS.Pinpoint.Types.JourneySchedule
import Network.AWS.Pinpoint.Types.JourneyStateRequest
import Network.AWS.Pinpoint.Types.JourneysResponse
import Network.AWS.Pinpoint.Types.ListRecommenderConfigurationsResponse
import Network.AWS.Pinpoint.Types.Message
import Network.AWS.Pinpoint.Types.MessageBody
import Network.AWS.Pinpoint.Types.MessageConfiguration
import Network.AWS.Pinpoint.Types.MessageRequest
import Network.AWS.Pinpoint.Types.MessageResponse
import Network.AWS.Pinpoint.Types.MessageResult
import Network.AWS.Pinpoint.Types.MessageType
import Network.AWS.Pinpoint.Types.MetricDimension
import Network.AWS.Pinpoint.Types.Mode
import Network.AWS.Pinpoint.Types.MultiConditionalBranch
import Network.AWS.Pinpoint.Types.MultiConditionalSplitActivity
import Network.AWS.Pinpoint.Types.NumberValidateRequest
import Network.AWS.Pinpoint.Types.NumberValidateResponse
import Network.AWS.Pinpoint.Types.Operator
import Network.AWS.Pinpoint.Types.PublicEndpoint
import Network.AWS.Pinpoint.Types.PushMessageActivity
import Network.AWS.Pinpoint.Types.PushNotificationTemplateRequest
import Network.AWS.Pinpoint.Types.PushNotificationTemplateResponse
import Network.AWS.Pinpoint.Types.QuietTime
import Network.AWS.Pinpoint.Types.RandomSplitActivity
import Network.AWS.Pinpoint.Types.RandomSplitEntry
import Network.AWS.Pinpoint.Types.RawEmail
import Network.AWS.Pinpoint.Types.RecencyDimension
import Network.AWS.Pinpoint.Types.RecencyType
import Network.AWS.Pinpoint.Types.RecommenderConfigurationResponse
import Network.AWS.Pinpoint.Types.ResultRow
import Network.AWS.Pinpoint.Types.ResultRowValue
import Network.AWS.Pinpoint.Types.SMSChannelRequest
import Network.AWS.Pinpoint.Types.SMSChannelResponse
import Network.AWS.Pinpoint.Types.SMSMessage
import Network.AWS.Pinpoint.Types.SMSMessageActivity
import Network.AWS.Pinpoint.Types.SMSTemplateRequest
import Network.AWS.Pinpoint.Types.SMSTemplateResponse
import Network.AWS.Pinpoint.Types.Schedule
import Network.AWS.Pinpoint.Types.SegmentBehaviors
import Network.AWS.Pinpoint.Types.SegmentCondition
import Network.AWS.Pinpoint.Types.SegmentDemographics
import Network.AWS.Pinpoint.Types.SegmentDimensions
import Network.AWS.Pinpoint.Types.SegmentGroup
import Network.AWS.Pinpoint.Types.SegmentGroupList
import Network.AWS.Pinpoint.Types.SegmentImportResource
import Network.AWS.Pinpoint.Types.SegmentLocation
import Network.AWS.Pinpoint.Types.SegmentReference
import Network.AWS.Pinpoint.Types.SegmentResponse
import Network.AWS.Pinpoint.Types.SegmentType
import Network.AWS.Pinpoint.Types.SegmentsResponse
import Network.AWS.Pinpoint.Types.SendUsersMessageRequest
import Network.AWS.Pinpoint.Types.SendUsersMessageResponse
import Network.AWS.Pinpoint.Types.Session
import Network.AWS.Pinpoint.Types.SetDimension
import Network.AWS.Pinpoint.Types.SimpleCondition
import Network.AWS.Pinpoint.Types.SimpleEmail
import Network.AWS.Pinpoint.Types.SimpleEmailPart
import Network.AWS.Pinpoint.Types.SourceType
import Network.AWS.Pinpoint.Types.StartCondition
import Network.AWS.Pinpoint.Types.State
import Network.AWS.Pinpoint.Types.TagsModel
import Network.AWS.Pinpoint.Types.Template
import Network.AWS.Pinpoint.Types.TemplateActiveVersionRequest
import Network.AWS.Pinpoint.Types.TemplateConfiguration
import Network.AWS.Pinpoint.Types.TemplateResponse
import Network.AWS.Pinpoint.Types.TemplateType
import Network.AWS.Pinpoint.Types.TemplateVersionResponse
import Network.AWS.Pinpoint.Types.TemplateVersionsResponse
import Network.AWS.Pinpoint.Types.TemplatesResponse
import Network.AWS.Pinpoint.Types.TreatmentResource
import Network.AWS.Pinpoint.Types.Type
import Network.AWS.Pinpoint.Types.UpdateAttributesRequest
import Network.AWS.Pinpoint.Types.UpdateRecommenderConfiguration
import Network.AWS.Pinpoint.Types.VoiceChannelRequest
import Network.AWS.Pinpoint.Types.VoiceChannelResponse
import Network.AWS.Pinpoint.Types.VoiceMessage
import Network.AWS.Pinpoint.Types.VoiceTemplateRequest
import Network.AWS.Pinpoint.Types.VoiceTemplateResponse
import Network.AWS.Pinpoint.Types.WaitActivity
import Network.AWS.Pinpoint.Types.WaitTime
import Network.AWS.Pinpoint.Types.WriteApplicationSettingsRequest
import Network.AWS.Pinpoint.Types.WriteCampaignRequest
import Network.AWS.Pinpoint.Types.WriteEventStream
import Network.AWS.Pinpoint.Types.WriteJourneyRequest
import Network.AWS.Pinpoint.Types.WriteSegmentRequest
import Network.AWS.Pinpoint.Types.WriteTreatmentResource
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2016-12-01@ of the Amazon Pinpoint SDK configuration.
pinpoint :: Service
pinpoint =
  Service
    { _svcAbbrev = "Pinpoint",
      _svcSigner = v4,
      _svcPrefix = "pinpoint",
      _svcVersion = "2016-12-01",
      _svcEndpoint = defaultEndpoint pinpoint,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "Pinpoint",
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

-- | Provides information about an API request or response.
_NotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_NotFoundException =
  _MatchServiceError pinpoint "NotFoundException"
    . hasStatus 404

-- | Provides information about an API request or response.
_BadRequestException :: AsError a => Getting (First ServiceError) a ServiceError
_BadRequestException =
  _MatchServiceError pinpoint "BadRequestException"
    . hasStatus 400

-- | Provides information about an API request or response.
_PayloadTooLargeException :: AsError a => Getting (First ServiceError) a ServiceError
_PayloadTooLargeException =
  _MatchServiceError
    pinpoint
    "PayloadTooLargeException"
    . hasStatus 413

-- | Provides information about an API request or response.
_InternalServerErrorException :: AsError a => Getting (First ServiceError) a ServiceError
_InternalServerErrorException =
  _MatchServiceError
    pinpoint
    "InternalServerErrorException"
    . hasStatus 500

-- | Provides information about an API request or response.
_ForbiddenException :: AsError a => Getting (First ServiceError) a ServiceError
_ForbiddenException =
  _MatchServiceError pinpoint "ForbiddenException"
    . hasStatus 403

-- | Provides information about an API request or response.
_ConflictException :: AsError a => Getting (First ServiceError) a ServiceError
_ConflictException =
  _MatchServiceError pinpoint "ConflictException"
    . hasStatus 409

-- | Provides information about an API request or response.
_MethodNotAllowedException :: AsError a => Getting (First ServiceError) a ServiceError
_MethodNotAllowedException =
  _MatchServiceError
    pinpoint
    "MethodNotAllowedException"
    . hasStatus 405

-- | Provides information about an API request or response.
_TooManyRequestsException :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyRequestsException =
  _MatchServiceError
    pinpoint
    "TooManyRequestsException"
    . hasStatus 429
