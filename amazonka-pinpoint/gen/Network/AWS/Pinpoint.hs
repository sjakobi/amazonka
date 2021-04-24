{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Amazon Pinpoint makes it easy to run targeted campaigns to drive user engagement in mobile apps. Amazon Pinpoint helps you understand user behavior, define which users to target, determine which messages to send, schedule the best time to deliver the messages, and then track the results of your campaign.
--
--
-- Targeted push notifications based on app usage trends and user behavior have become a popular approach for mobile app user engagement because response rates are often several times higher than tradition email marketing campaigns. By using targeted push notifications, you can increase message relevance and effectiveness, measure engagement, and continually improve your campaigns.
--
-- Getting started with Amazon Pinpoint is easy. First, AWS Mobile Hub guides you through the process to integrate the AWS Mobile SDK with your app. Next, you define your target segments, campaign message, and specify the delivery schedule. Once your campaign is running, Pinpoint provides metrics so you can run analytics and track the impact of your campaign.
--
-- With Amazon Pinpoint, there are no upfront setup costs, and no fixed monthly cost. You only pay for the number of users your campaign targets, the messages you send, and the events you collect, so you can start small and scale as your application grows.
module Network.AWS.Pinpoint
  ( -- * Service Configuration
    pinpoint,

    -- * Errors
    -- $errors

    -- ** NotFoundException
    _NotFoundException,

    -- ** BadRequestException
    _BadRequestException,

    -- ** PayloadTooLargeException
    _PayloadTooLargeException,

    -- ** InternalServerErrorException
    _InternalServerErrorException,

    -- ** ForbiddenException
    _ForbiddenException,

    -- ** ConflictException
    _ConflictException,

    -- ** MethodNotAllowedException
    _MethodNotAllowedException,

    -- ** TooManyRequestsException
    _TooManyRequestsException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** DeleteVoiceTemplate
    module Network.AWS.Pinpoint.DeleteVoiceTemplate,

    -- ** GetImportJobs
    module Network.AWS.Pinpoint.GetImportJobs,

    -- ** UpdatePushTemplate
    module Network.AWS.Pinpoint.UpdatePushTemplate,

    -- ** DeleteCampaign
    module Network.AWS.Pinpoint.DeleteCampaign,

    -- ** UpdateVoiceTemplate
    module Network.AWS.Pinpoint.UpdateVoiceTemplate,

    -- ** UpdateCampaign
    module Network.AWS.Pinpoint.UpdateCampaign,

    -- ** CreateRecommenderConfiguration
    module Network.AWS.Pinpoint.CreateRecommenderConfiguration,

    -- ** UpdateTemplateActiveVersion
    module Network.AWS.Pinpoint.UpdateTemplateActiveVersion,

    -- ** DeletePushTemplate
    module Network.AWS.Pinpoint.DeletePushTemplate,

    -- ** CreateJourney
    module Network.AWS.Pinpoint.CreateJourney,

    -- ** GetImportJob
    module Network.AWS.Pinpoint.GetImportJob,

    -- ** GetSegmentVersions
    module Network.AWS.Pinpoint.GetSegmentVersions,

    -- ** GetApps
    module Network.AWS.Pinpoint.GetApps,

    -- ** GetSegmentImportJobs
    module Network.AWS.Pinpoint.GetSegmentImportJobs,

    -- ** GetAPNSSandboxChannel
    module Network.AWS.Pinpoint.GetAPNSSandboxChannel,

    -- ** SendMessages
    module Network.AWS.Pinpoint.SendMessages,

    -- ** CreateSmsTemplate
    module Network.AWS.Pinpoint.CreateSmsTemplate,

    -- ** RemoveAttributes
    module Network.AWS.Pinpoint.RemoveAttributes,

    -- ** GetAPNSChannel
    module Network.AWS.Pinpoint.GetAPNSChannel,

    -- ** PhoneNumberValidate
    module Network.AWS.Pinpoint.PhoneNumberValidate,

    -- ** GetEmailChannel
    module Network.AWS.Pinpoint.GetEmailChannel,

    -- ** PutEventStream
    module Network.AWS.Pinpoint.PutEventStream,

    -- ** GetJourneyExecutionActivityMetrics
    module Network.AWS.Pinpoint.GetJourneyExecutionActivityMetrics,

    -- ** UpdateAPNSChannel
    module Network.AWS.Pinpoint.UpdateAPNSChannel,

    -- ** DeleteAPNSChannel
    module Network.AWS.Pinpoint.DeleteAPNSChannel,

    -- ** GetBaiduChannel
    module Network.AWS.Pinpoint.GetBaiduChannel,

    -- ** GetChannels
    module Network.AWS.Pinpoint.GetChannels,

    -- ** GetRecommenderConfigurations
    module Network.AWS.Pinpoint.GetRecommenderConfigurations,

    -- ** UpdateGCMChannel
    module Network.AWS.Pinpoint.UpdateGCMChannel,

    -- ** DeleteGCMChannel
    module Network.AWS.Pinpoint.DeleteGCMChannel,

    -- ** GetJourneyExecutionMetrics
    module Network.AWS.Pinpoint.GetJourneyExecutionMetrics,

    -- ** GetVoiceChannel
    module Network.AWS.Pinpoint.GetVoiceChannel,

    -- ** UntagResource
    module Network.AWS.Pinpoint.UntagResource,

    -- ** UpdateAPNSVoipSandboxChannel
    module Network.AWS.Pinpoint.UpdateAPNSVoipSandboxChannel,

    -- ** DeleteAPNSVoipSandboxChannel
    module Network.AWS.Pinpoint.DeleteAPNSVoipSandboxChannel,

    -- ** GetVoiceTemplate
    module Network.AWS.Pinpoint.GetVoiceTemplate,

    -- ** GetSmsChannel
    module Network.AWS.Pinpoint.GetSmsChannel,

    -- ** TagResource
    module Network.AWS.Pinpoint.TagResource,

    -- ** GetEndpoint
    module Network.AWS.Pinpoint.GetEndpoint,

    -- ** GetApplicationDateRangeKpi
    module Network.AWS.Pinpoint.GetApplicationDateRangeKpi,

    -- ** GetADMChannel
    module Network.AWS.Pinpoint.GetADMChannel,

    -- ** GetRecommenderConfiguration
    module Network.AWS.Pinpoint.GetRecommenderConfiguration,

    -- ** GetSegmentExportJobs
    module Network.AWS.Pinpoint.GetSegmentExportJobs,

    -- ** UpdateSegment
    module Network.AWS.Pinpoint.UpdateSegment,

    -- ** DeleteSegment
    module Network.AWS.Pinpoint.DeleteSegment,

    -- ** CreatePushTemplate
    module Network.AWS.Pinpoint.CreatePushTemplate,

    -- ** DeleteADMChannel
    module Network.AWS.Pinpoint.DeleteADMChannel,

    -- ** UpdateRecommenderConfiguration
    module Network.AWS.Pinpoint.UpdateRecommenderConfiguration,

    -- ** DeleteEndpoint
    module Network.AWS.Pinpoint.DeleteEndpoint,

    -- ** CreateCampaign
    module Network.AWS.Pinpoint.CreateCampaign,

    -- ** UpdateEndpoint
    module Network.AWS.Pinpoint.UpdateEndpoint,

    -- ** GetEmailTemplate
    module Network.AWS.Pinpoint.GetEmailTemplate,

    -- ** DeleteRecommenderConfiguration
    module Network.AWS.Pinpoint.DeleteRecommenderConfiguration,

    -- ** UpdateADMChannel
    module Network.AWS.Pinpoint.UpdateADMChannel,

    -- ** DeleteSmsChannel
    module Network.AWS.Pinpoint.DeleteSmsChannel,

    -- ** GetJourneyDateRangeKpi
    module Network.AWS.Pinpoint.GetJourneyDateRangeKpi,

    -- ** GetApp
    module Network.AWS.Pinpoint.GetApp,

    -- ** CreateExportJob
    module Network.AWS.Pinpoint.CreateExportJob,

    -- ** GetUserEndpoints
    module Network.AWS.Pinpoint.GetUserEndpoints,

    -- ** GetSegmentVersion
    module Network.AWS.Pinpoint.GetSegmentVersion,

    -- ** UpdateSmsChannel
    module Network.AWS.Pinpoint.UpdateSmsChannel,

    -- ** CreateSegment
    module Network.AWS.Pinpoint.CreateSegment,

    -- ** DeleteSmsTemplate
    module Network.AWS.Pinpoint.DeleteSmsTemplate,

    -- ** UpdateSmsTemplate
    module Network.AWS.Pinpoint.UpdateSmsTemplate,

    -- ** GetGCMChannel
    module Network.AWS.Pinpoint.GetGCMChannel,

    -- ** DeleteVoiceChannel
    module Network.AWS.Pinpoint.DeleteVoiceChannel,

    -- ** UpdateVoiceChannel
    module Network.AWS.Pinpoint.UpdateVoiceChannel,

    -- ** GetAPNSVoipSandboxChannel
    module Network.AWS.Pinpoint.GetAPNSVoipSandboxChannel,

    -- ** DeleteJourney
    module Network.AWS.Pinpoint.DeleteJourney,

    -- ** GetCampaignDateRangeKpi
    module Network.AWS.Pinpoint.GetCampaignDateRangeKpi,

    -- ** UpdateJourney
    module Network.AWS.Pinpoint.UpdateJourney,

    -- ** ListTemplates
    module Network.AWS.Pinpoint.ListTemplates,

    -- ** DeleteBaiduChannel
    module Network.AWS.Pinpoint.DeleteBaiduChannel,

    -- ** GetCampaignVersions
    module Network.AWS.Pinpoint.GetCampaignVersions,

    -- ** GetApplicationSettings
    module Network.AWS.Pinpoint.GetApplicationSettings,

    -- ** GetAPNSVoipChannel
    module Network.AWS.Pinpoint.GetAPNSVoipChannel,

    -- ** ListJourneys
    module Network.AWS.Pinpoint.ListJourneys,

    -- ** DeleteEventStream
    module Network.AWS.Pinpoint.DeleteEventStream,

    -- ** UpdateBaiduChannel
    module Network.AWS.Pinpoint.UpdateBaiduChannel,

    -- ** GetExportJobs
    module Network.AWS.Pinpoint.GetExportJobs,

    -- ** GetSegments
    module Network.AWS.Pinpoint.GetSegments,

    -- ** GetJourney
    module Network.AWS.Pinpoint.GetJourney,

    -- ** PutEvents
    module Network.AWS.Pinpoint.PutEvents,

    -- ** DeleteAPNSVoipChannel
    module Network.AWS.Pinpoint.DeleteAPNSVoipChannel,

    -- ** UpdateAPNSVoipChannel
    module Network.AWS.Pinpoint.UpdateAPNSVoipChannel,

    -- ** CreateImportJob
    module Network.AWS.Pinpoint.CreateImportJob,

    -- ** UpdateEmailChannel
    module Network.AWS.Pinpoint.UpdateEmailChannel,

    -- ** GetEventStream
    module Network.AWS.Pinpoint.GetEventStream,

    -- ** SendUsersMessages
    module Network.AWS.Pinpoint.SendUsersMessages,

    -- ** DeleteEmailChannel
    module Network.AWS.Pinpoint.DeleteEmailChannel,

    -- ** UpdateApplicationSettings
    module Network.AWS.Pinpoint.UpdateApplicationSettings,

    -- ** UpdateJourneyState
    module Network.AWS.Pinpoint.UpdateJourneyState,

    -- ** ListTemplateVersions
    module Network.AWS.Pinpoint.ListTemplateVersions,

    -- ** DeleteAPNSSandboxChannel
    module Network.AWS.Pinpoint.DeleteAPNSSandboxChannel,

    -- ** GetCampaignActivities
    module Network.AWS.Pinpoint.GetCampaignActivities,

    -- ** UpdateAPNSSandboxChannel
    module Network.AWS.Pinpoint.UpdateAPNSSandboxChannel,

    -- ** GetCampaigns
    module Network.AWS.Pinpoint.GetCampaigns,

    -- ** GetSmsTemplate
    module Network.AWS.Pinpoint.GetSmsTemplate,

    -- ** GetPushTemplate
    module Network.AWS.Pinpoint.GetPushTemplate,

    -- ** GetCampaign
    module Network.AWS.Pinpoint.GetCampaign,

    -- ** DeleteApp
    module Network.AWS.Pinpoint.DeleteApp,

    -- ** DeleteUserEndpoints
    module Network.AWS.Pinpoint.DeleteUserEndpoints,

    -- ** CreateEmailTemplate
    module Network.AWS.Pinpoint.CreateEmailTemplate,

    -- ** UpdateEmailTemplate
    module Network.AWS.Pinpoint.UpdateEmailTemplate,

    -- ** DeleteEmailTemplate
    module Network.AWS.Pinpoint.DeleteEmailTemplate,

    -- ** CreateApp
    module Network.AWS.Pinpoint.CreateApp,

    -- ** UpdateEndpointsBatch
    module Network.AWS.Pinpoint.UpdateEndpointsBatch,

    -- ** GetExportJob
    module Network.AWS.Pinpoint.GetExportJob,

    -- ** GetSegment
    module Network.AWS.Pinpoint.GetSegment,

    -- ** ListTagsForResource
    module Network.AWS.Pinpoint.ListTagsForResource,

    -- ** GetCampaignVersion
    module Network.AWS.Pinpoint.GetCampaignVersion,

    -- ** CreateVoiceTemplate
    module Network.AWS.Pinpoint.CreateVoiceTemplate,

    -- * Types

    -- ** Action
    Action (..),

    -- ** AttributeType
    AttributeType (..),

    -- ** CampaignStatus
    CampaignStatus (..),

    -- ** ChannelType
    ChannelType (..),

    -- ** DefinitionFormat
    DefinitionFormat (..),

    -- ** DeliveryStatus
    DeliveryStatus (..),

    -- ** DimensionType
    DimensionType (..),

    -- ** Duration
    Duration (..),

    -- ** EndpointTypesElement
    EndpointTypesElement (..),

    -- ** FilterType
    FilterType (..),

    -- ** Frequency
    Frequency (..),

    -- ** Include
    Include (..),

    -- ** JobStatus
    JobStatus (..),

    -- ** MessageType
    MessageType (..),

    -- ** Mode
    Mode (..),

    -- ** Operator
    Operator (..),

    -- ** RecencyType
    RecencyType (..),

    -- ** SegmentType
    SegmentType (..),

    -- ** SourceType
    SourceType (..),

    -- ** State
    State (..),

    -- ** TemplateType
    TemplateType (..),

    -- ** Type
    Type (..),

    -- ** ADMChannelRequest
    ADMChannelRequest,
    aDMChannelRequest,
    aEnabled,
    aClientSecret,
    aClientId,

    -- ** ADMChannelResponse
    ADMChannelResponse,
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

    -- ** ADMMessage
    ADMMessage,
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

    -- ** APNSChannelRequest
    APNSChannelRequest,
    apnsChannelRequest,
    apnscrDefaultAuthenticationMethod,
    apnscrTokenKey,
    apnscrBundleId,
    apnscrTeamId,
    apnscrEnabled,
    apnscrPrivateKey,
    apnscrTokenKeyId,
    apnscrCertificate,

    -- ** APNSChannelResponse
    APNSChannelResponse,
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

    -- ** APNSMessage
    APNSMessage,
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

    -- ** APNSPushNotificationTemplate
    APNSPushNotificationTemplate,
    apnsPushNotificationTemplate,
    apntTitle,
    apntBody,
    apntMediaURL,
    apntAction,
    apntSound,
    apntURL,
    apntRawContent,

    -- ** APNSSandboxChannelRequest
    APNSSandboxChannelRequest,
    apnsSandboxChannelRequest,
    apnsscrDefaultAuthenticationMethod,
    apnsscrTokenKey,
    apnsscrBundleId,
    apnsscrTeamId,
    apnsscrEnabled,
    apnsscrPrivateKey,
    apnsscrTokenKeyId,
    apnsscrCertificate,

    -- ** APNSSandboxChannelResponse
    APNSSandboxChannelResponse,
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

    -- ** APNSVoipChannelRequest
    APNSVoipChannelRequest,
    apnsVoipChannelRequest,
    avcrDefaultAuthenticationMethod,
    avcrTokenKey,
    avcrBundleId,
    avcrTeamId,
    avcrEnabled,
    avcrPrivateKey,
    avcrTokenKeyId,
    avcrCertificate,

    -- ** APNSVoipChannelResponse
    APNSVoipChannelResponse,
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

    -- ** APNSVoipSandboxChannelRequest
    APNSVoipSandboxChannelRequest,
    apnsVoipSandboxChannelRequest,
    avscrDefaultAuthenticationMethod,
    avscrTokenKey,
    avscrBundleId,
    avscrTeamId,
    avscrEnabled,
    avscrPrivateKey,
    avscrTokenKeyId,
    avscrCertificate,

    -- ** APNSVoipSandboxChannelResponse
    APNSVoipSandboxChannelResponse,
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

    -- ** ActivitiesResponse
    ActivitiesResponse,
    activitiesResponse,
    aNextToken,
    aItem,

    -- ** Activity
    Activity,
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

    -- ** ActivityResponse
    ActivityResponse,
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

    -- ** AddressConfiguration
    AddressConfiguration,
    addressConfiguration,
    acChannelType,
    acContext,
    acSubstitutions,
    acTitleOverride,
    acBodyOverride,
    acRawContent,

    -- ** AndroidPushNotificationTemplate
    AndroidPushNotificationTemplate,
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

    -- ** ApplicationDateRangeKpiResponse
    ApplicationDateRangeKpiResponse,
    applicationDateRangeKpiResponse,
    adrkrNextToken,
    adrkrKpiResult,
    adrkrKpiName,
    adrkrEndTime,
    adrkrStartTime,
    adrkrApplicationId,

    -- ** ApplicationResponse
    ApplicationResponse,
    applicationResponse,
    arTags,
    arId,
    arARN,
    arName,

    -- ** ApplicationSettingsResource
    ApplicationSettingsResource,
    applicationSettingsResource,
    asrLastModifiedDate,
    asrCampaignHook,
    asrQuietTime,
    asrLimits,
    asrApplicationId,

    -- ** ApplicationsResponse
    ApplicationsResponse,
    applicationsResponse,
    arNextToken,
    arItem,

    -- ** AttributeDimension
    AttributeDimension,
    attributeDimension,
    adAttributeType,
    adValues,

    -- ** AttributesResource
    AttributesResource,
    attributesResource,
    arAttributes,
    arAttributeType,
    arApplicationId,

    -- ** BaiduChannelRequest
    BaiduChannelRequest,
    baiduChannelRequest,
    bcrEnabled,
    bcrSecretKey,
    bcrAPIKey,

    -- ** BaiduChannelResponse
    BaiduChannelResponse,
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

    -- ** BaiduMessage
    BaiduMessage,
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

    -- ** BaseKpiResult
    BaseKpiResult,
    baseKpiResult,
    bkrRows,

    -- ** CampaignCustomMessage
    CampaignCustomMessage,
    campaignCustomMessage,
    ccmData,

    -- ** CampaignDateRangeKpiResponse
    CampaignDateRangeKpiResponse,
    campaignDateRangeKpiResponse,
    cdrkrNextToken,
    cdrkrKpiResult,
    cdrkrKpiName,
    cdrkrEndTime,
    cdrkrCampaignId,
    cdrkrStartTime,
    cdrkrApplicationId,

    -- ** CampaignEmailMessage
    CampaignEmailMessage,
    campaignEmailMessage,
    cemTitle,
    cemBody,
    cemHTMLBody,
    cemFromAddress,

    -- ** CampaignEventFilter
    CampaignEventFilter,
    campaignEventFilter,
    cefFilterType,
    cefDimensions,

    -- ** CampaignHook
    CampaignHook,
    campaignHook,
    chMode,
    chLambdaFunctionName,
    chWebURL,

    -- ** CampaignLimits
    CampaignLimits,
    campaignLimits,
    clTotal,
    clMessagesPerSecond,
    clDaily,
    clMaximumDuration,

    -- ** CampaignResponse
    CampaignResponse,
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

    -- ** CampaignSmsMessage
    CampaignSmsMessage,
    campaignSmsMessage,
    csmEntityId,
    csmBody,
    csmSenderId,
    csmMessageType,
    csmTemplateId,
    csmOriginationNumber,

    -- ** CampaignState
    CampaignState,
    campaignState,
    csCampaignStatus,

    -- ** CampaignsResponse
    CampaignsResponse,
    campaignsResponse,
    crNextToken,
    crItem,

    -- ** ChannelResponse
    ChannelResponse,
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

    -- ** ChannelsResponse
    ChannelsResponse,
    channelsResponse,
    crChannels,

    -- ** Condition
    Condition,
    condition,
    cOperator,
    cConditions,

    -- ** ConditionalSplitActivity
    ConditionalSplitActivity,
    conditionalSplitActivity,
    csaTrueActivity,
    csaCondition,
    csaEvaluationWaitTime,
    csaFalseActivity,

    -- ** CreateApplicationRequest
    CreateApplicationRequest,
    createApplicationRequest,
    carTags,
    carName,

    -- ** CreateRecommenderConfiguration
    CreateRecommenderConfiguration,
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

    -- ** CreateTemplateMessageBody
    CreateTemplateMessageBody,
    createTemplateMessageBody,
    ctmbMessage,
    ctmbARN,
    ctmbRequestId,

    -- ** CustomDeliveryConfiguration
    CustomDeliveryConfiguration,
    customDeliveryConfiguration,
    cdcEndpointTypes,
    cdcDeliveryURI,

    -- ** CustomMessageActivity
    CustomMessageActivity,
    customMessageActivity,
    cmaTemplateName,
    cmaMessageConfig,
    cmaDeliveryURI,
    cmaEndpointTypes,
    cmaNextActivity,
    cmaTemplateVersion,

    -- ** DefaultMessage
    DefaultMessage,
    defaultMessage,
    dmBody,
    dmSubstitutions,

    -- ** DefaultPushNotificationMessage
    DefaultPushNotificationMessage,
    defaultPushNotificationMessage,
    dpnmSilentPush,
    dpnmData,
    dpnmTitle,
    dpnmBody,
    dpnmSubstitutions,
    dpnmAction,
    dpnmURL,

    -- ** DefaultPushNotificationTemplate
    DefaultPushNotificationTemplate,
    defaultPushNotificationTemplate,
    dpntTitle,
    dpntBody,
    dpntAction,
    dpntSound,
    dpntURL,

    -- ** DirectMessageConfiguration
    DirectMessageConfiguration,
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

    -- ** EmailChannelRequest
    EmailChannelRequest,
    emailChannelRequest,
    emaRoleARN,
    emaEnabled,
    emaConfigurationSet,
    emaFromAddress,
    emaIdentity,

    -- ** EmailChannelResponse
    EmailChannelResponse,
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

    -- ** EmailMessage
    EmailMessage,
    emailMessage,
    emFeedbackForwardingAddress,
    emRawEmail,
    emBody,
    emSimpleEmail,
    emSubstitutions,
    emReplyToAddresses,
    emFromAddress,

    -- ** EmailMessageActivity
    EmailMessageActivity,
    emailMessageActivity,
    emaTemplateName,
    emaMessageConfig,
    emaNextActivity,
    emaTemplateVersion,

    -- ** EmailTemplateRequest
    EmailTemplateRequest,
    emailTemplateRequest,
    eTemplateDescription,
    eTextPart,
    eDefaultSubstitutions,
    eSubject,
    eTags,
    eRecommenderId,
    eHTMLPart,

    -- ** EmailTemplateResponse
    EmailTemplateResponse,
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

    -- ** EndpointBatchItem
    EndpointBatchItem,
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

    -- ** EndpointBatchRequest
    EndpointBatchRequest,
    endpointBatchRequest,
    ebrItem,

    -- ** EndpointDemographic
    EndpointDemographic,
    endpointDemographic,
    edModel,
    edPlatform,
    edAppVersion,
    edLocale,
    edPlatformVersion,
    edModelVersion,
    edTimezone,
    edMake,

    -- ** EndpointItemResponse
    EndpointItemResponse,
    endpointItemResponse,
    eMessage,
    eStatusCode,

    -- ** EndpointLocation
    EndpointLocation,
    endpointLocation,
    elLongitude,
    elLatitude,
    elPostalCode,
    elCity,
    elCountry,
    elRegion,

    -- ** EndpointMessageResult
    EndpointMessageResult,
    endpointMessageResult,
    emrStatusMessage,
    emrUpdatedToken,
    emrAddress,
    emrMessageId,
    emrDeliveryStatus,
    emrStatusCode,

    -- ** EndpointRequest
    EndpointRequest,
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

    -- ** EndpointResponse
    EndpointResponse,
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

    -- ** EndpointSendConfiguration
    EndpointSendConfiguration,
    endpointSendConfiguration,
    escContext,
    escSubstitutions,
    escTitleOverride,
    escBodyOverride,
    escRawContent,

    -- ** EndpointUser
    EndpointUser,
    endpointUser,
    euUserId,
    euUserAttributes,

    -- ** EndpointsResponse
    EndpointsResponse,
    endpointsResponse,
    erItem,

    -- ** Event
    Event,
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

    -- ** EventCondition
    EventCondition,
    eventCondition,
    ecMessageActivity,
    ecDimensions,

    -- ** EventDimensions
    EventDimensions,
    eventDimensions,
    edEventType,
    edAttributes,
    edMetrics,

    -- ** EventFilter
    EventFilter,
    eventFilter,
    efFilterType,
    efDimensions,

    -- ** EventItemResponse
    EventItemResponse,
    eventItemResponse,
    eirMessage,
    eirStatusCode,

    -- ** EventStartCondition
    EventStartCondition,
    eventStartCondition,
    escEventFilter,
    escSegmentId,

    -- ** EventStream
    EventStream,
    eventStream,
    esLastModifiedDate,
    esLastUpdatedBy,
    esExternalId,
    esApplicationId,
    esRoleARN,
    esDestinationStreamARN,

    -- ** EventsBatch
    EventsBatch,
    eventsBatch,
    ebEndpoint,
    ebEvents,

    -- ** EventsRequest
    EventsRequest,
    eventsRequest,
    erBatchItem,

    -- ** EventsResponse
    EventsResponse,
    eventsResponse,
    erResults,

    -- ** ExportJobRequest
    ExportJobRequest,
    exportJobRequest,
    eSegmentVersion,
    eSegmentId,
    eS3URLPrefix,
    eRoleARN,

    -- ** ExportJobResource
    ExportJobResource,
    exportJobResource,
    ejrSegmentVersion,
    ejrSegmentId,
    ejrS3URLPrefix,
    ejrRoleARN,

    -- ** ExportJobResponse
    ExportJobResponse,
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

    -- ** ExportJobsResponse
    ExportJobsResponse,
    exportJobsResponse,
    ejrNextToken,
    ejrItem,

    -- ** GCMChannelRequest
    GCMChannelRequest,
    gcmChannelRequest,
    gcrEnabled,
    gcrAPIKey,

    -- ** GCMChannelResponse
    GCMChannelResponse,
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

    -- ** GCMMessage
    GCMMessage,
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

    -- ** GPSCoordinates
    GPSCoordinates,
    gPSCoordinates,
    gpscLatitude,
    gpscLongitude,

    -- ** GPSPointDimension
    GPSPointDimension,
    gPSPointDimension,
    gpspdRangeInKilometers,
    gpspdCoordinates,

    -- ** HoldoutActivity
    HoldoutActivity,
    holdoutActivity,
    haNextActivity,
    haPercentage,

    -- ** ImportJobRequest
    ImportJobRequest,
    importJobRequest,
    iDefineSegment,
    iSegmentName,
    iRegisterEndpoints,
    iSegmentId,
    iExternalId,
    iFormat,
    iS3URL,
    iRoleARN,

    -- ** ImportJobResource
    ImportJobResource,
    importJobResource,
    ijrDefineSegment,
    ijrSegmentName,
    ijrRegisterEndpoints,
    ijrSegmentId,
    ijrExternalId,
    ijrFormat,
    ijrS3URL,
    ijrRoleARN,

    -- ** ImportJobResponse
    ImportJobResponse,
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

    -- ** ImportJobsResponse
    ImportJobsResponse,
    importJobsResponse,
    ijrNextToken,
    ijrItem,

    -- ** ItemResponse
    ItemResponse,
    itemResponse,
    irEventsItemResponse,
    irEndpointItemResponse,

    -- ** JourneyCustomMessage
    JourneyCustomMessage,
    journeyCustomMessage,
    jcmData,

    -- ** JourneyDateRangeKpiResponse
    JourneyDateRangeKpiResponse,
    journeyDateRangeKpiResponse,
    jdrkrNextToken,
    jdrkrKpiResult,
    jdrkrKpiName,
    jdrkrJourneyId,
    jdrkrEndTime,
    jdrkrStartTime,
    jdrkrApplicationId,

    -- ** JourneyEmailMessage
    JourneyEmailMessage,
    journeyEmailMessage,
    jemFromAddress,

    -- ** JourneyExecutionActivityMetricsResponse
    JourneyExecutionActivityMetricsResponse,
    journeyExecutionActivityMetricsResponse,
    jeamrMetrics,
    jeamrJourneyId,
    jeamrLastEvaluatedTime,
    jeamrJourneyActivityId,
    jeamrActivityType,
    jeamrApplicationId,

    -- ** JourneyExecutionMetricsResponse
    JourneyExecutionMetricsResponse,
    journeyExecutionMetricsResponse,
    jemrMetrics,
    jemrJourneyId,
    jemrLastEvaluatedTime,
    jemrApplicationId,

    -- ** JourneyLimits
    JourneyLimits,
    journeyLimits,
    jlEndpointReentryCap,
    jlMessagesPerSecond,
    jlDailyCap,

    -- ** JourneyPushMessage
    JourneyPushMessage,
    journeyPushMessage,
    jpmTimeToLive,

    -- ** JourneyResponse
    JourneyResponse,
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

    -- ** JourneySMSMessage
    JourneySMSMessage,
    journeySMSMessage,
    jsmsmEntityId,
    jsmsmSenderId,
    jsmsmMessageType,
    jsmsmTemplateId,
    jsmsmOriginationNumber,

    -- ** JourneySchedule
    JourneySchedule,
    journeySchedule,
    jsStartTime,
    jsEndTime,
    jsTimezone,

    -- ** JourneyStateRequest
    JourneyStateRequest,
    journeyStateRequest,
    jsrState,

    -- ** JourneysResponse
    JourneysResponse,
    journeysResponse,
    jrNextToken,
    jrItem,

    -- ** ListRecommenderConfigurationsResponse
    ListRecommenderConfigurationsResponse,
    listRecommenderConfigurationsResponse,
    lrcrNextToken,
    lrcrItem,

    -- ** Message
    Message,
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

    -- ** MessageBody
    MessageBody,
    messageBody,
    mbMessage,
    mbRequestId,

    -- ** MessageConfiguration
    MessageConfiguration,
    messageConfiguration,
    mcADMMessage,
    mcDefaultMessage,
    mcGCMMessage,
    mcAPNSMessage,
    mcEmailMessage,
    mcSMSMessage,
    mcBaiduMessage,
    mcCustomMessage,

    -- ** MessageRequest
    MessageRequest,
    messageRequest,
    mrEndpoints,
    mrContext,
    mrTraceId,
    mrAddresses,
    mrTemplateConfiguration,
    mrMessageConfiguration,

    -- ** MessageResponse
    MessageResponse,
    messageResponse,
    mrResult,
    mrRequestId,
    mrEndpointResult,
    mrApplicationId,

    -- ** MessageResult
    MessageResult,
    messageResult,
    mrStatusMessage,
    mrUpdatedToken,
    mrMessageId,
    mrDeliveryStatus,
    mrStatusCode,

    -- ** MetricDimension
    MetricDimension,
    metricDimension,
    mdComparisonOperator,
    mdValue,

    -- ** MultiConditionalBranch
    MultiConditionalBranch,
    multiConditionalBranch,
    mcbCondition,
    mcbNextActivity,

    -- ** MultiConditionalSplitActivity
    MultiConditionalSplitActivity,
    multiConditionalSplitActivity,
    mcsaDefaultActivity,
    mcsaEvaluationWaitTime,
    mcsaBranches,

    -- ** NumberValidateRequest
    NumberValidateRequest,
    numberValidateRequest,
    nvrPhoneNumber,
    nvrIsoCountryCode,

    -- ** NumberValidateResponse
    NumberValidateResponse,
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

    -- ** PublicEndpoint
    PublicEndpoint,
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

    -- ** PushMessageActivity
    PushMessageActivity,
    pushMessageActivity,
    pmaTemplateName,
    pmaMessageConfig,
    pmaNextActivity,
    pmaTemplateVersion,

    -- ** PushNotificationTemplateRequest
    PushNotificationTemplateRequest,
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

    -- ** PushNotificationTemplateResponse
    PushNotificationTemplateResponse,
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

    -- ** QuietTime
    QuietTime,
    quietTime,
    qtEnd,
    qtStart,

    -- ** RandomSplitActivity
    RandomSplitActivity,
    randomSplitActivity,
    rsaBranches,

    -- ** RandomSplitEntry
    RandomSplitEntry,
    randomSplitEntry,
    rsePercentage,
    rseNextActivity,

    -- ** RawEmail
    RawEmail,
    rawEmail,
    reData,

    -- ** RecencyDimension
    RecencyDimension,
    recencyDimension,
    rdDuration,
    rdRecencyType,

    -- ** RecommenderConfigurationResponse
    RecommenderConfigurationResponse,
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

    -- ** ResultRow
    ResultRow,
    resultRow,
    rrGroupedBys,
    rrValues,

    -- ** ResultRowValue
    ResultRowValue,
    resultRowValue,
    rrvType,
    rrvValue,
    rrvKey,

    -- ** SMSChannelRequest
    SMSChannelRequest,
    sMSChannelRequest,
    smscrEnabled,
    smscrShortCode,
    smscrSenderId,

    -- ** SMSChannelResponse
    SMSChannelResponse,
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

    -- ** SMSMessage
    SMSMessage,
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

    -- ** SMSMessageActivity
    SMSMessageActivity,
    sMSMessageActivity,
    smsmaTemplateName,
    smsmaMessageConfig,
    smsmaNextActivity,
    smsmaTemplateVersion,

    -- ** SMSTemplateRequest
    SMSTemplateRequest,
    sMSTemplateRequest,
    smstrTemplateDescription,
    smstrBody,
    smstrDefaultSubstitutions,
    smstrTags,
    smstrRecommenderId,

    -- ** SMSTemplateResponse
    SMSTemplateResponse,
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

    -- ** Schedule
    Schedule,
    schedule,
    sEventFilter,
    sIsLocalTime,
    sEndTime,
    sFrequency,
    sQuietTime,
    sTimezone,
    sStartTime,

    -- ** SegmentBehaviors
    SegmentBehaviors,
    segmentBehaviors,
    sbRecency,

    -- ** SegmentCondition
    SegmentCondition,
    segmentCondition,
    scSegmentId,

    -- ** SegmentDemographics
    SegmentDemographics,
    segmentDemographics,
    sdModel,
    sdPlatform,
    sdAppVersion,
    sdChannel,
    sdDeviceType,
    sdMake,

    -- ** SegmentDimensions
    SegmentDimensions,
    segmentDimensions,
    sdDemographic,
    sdAttributes,
    sdMetrics,
    sdBehavior,
    sdUserAttributes,
    sdLocation,

    -- ** SegmentGroup
    SegmentGroup,
    segmentGroup,
    sgDimensions,
    sgType,
    sgSourceSegments,
    sgSourceType,

    -- ** SegmentGroupList
    SegmentGroupList,
    segmentGroupList,
    sglGroups,
    sglInclude,

    -- ** SegmentImportResource
    SegmentImportResource,
    segmentImportResource,
    sirChannelCounts,
    sirFormat,
    sirS3URL,
    sirSize,
    sirExternalId,
    sirRoleARN,

    -- ** SegmentLocation
    SegmentLocation,
    segmentLocation,
    slGPSPoint,
    slCountry,

    -- ** SegmentReference
    SegmentReference,
    segmentReference,
    srVersion,
    srId,

    -- ** SegmentResponse
    SegmentResponse,
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

    -- ** SegmentsResponse
    SegmentsResponse,
    segmentsResponse,
    srNextToken,
    srItem,

    -- ** SendUsersMessageRequest
    SendUsersMessageRequest,
    sendUsersMessageRequest,
    sumrContext,
    sumrTraceId,
    sumrTemplateConfiguration,
    sumrMessageConfiguration,
    sumrUsers,

    -- ** SendUsersMessageResponse
    SendUsersMessageResponse,
    sendUsersMessageResponse,
    sumrResult,
    sumrRequestId,
    sumrApplicationId,

    -- ** Session
    Session,
    session,
    sesStopTimestamp,
    sesDuration,
    sesStartTimestamp,
    sesId,

    -- ** SetDimension
    SetDimension,
    setDimension,
    sdDimensionType,
    sdValues,

    -- ** SimpleCondition
    SimpleCondition,
    simpleCondition,
    scEventCondition,
    scSegmentDimensions,
    scSegmentCondition,

    -- ** SimpleEmail
    SimpleEmail,
    simpleEmail,
    seTextPart,
    seSubject,
    seHTMLPart,

    -- ** SimpleEmailPart
    SimpleEmailPart,
    simpleEmailPart,
    sepData,
    sepCharset,

    -- ** StartCondition
    StartCondition,
    startCondition,
    scEventStartCondition,
    scDescription,
    scSegmentStartCondition,

    -- ** TagsModel
    TagsModel,
    tagsModel,
    tmTags,

    -- ** Template
    Template,
    template,
    tVersion,
    tName,

    -- ** TemplateActiveVersionRequest
    TemplateActiveVersionRequest,
    templateActiveVersionRequest,
    tavrVersion,

    -- ** TemplateConfiguration
    TemplateConfiguration,
    templateConfiguration,
    tcEmailTemplate,
    tcVoiceTemplate,
    tcSMSTemplate,
    tcPushTemplate,

    -- ** TemplateResponse
    TemplateResponse,
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

    -- ** TemplateVersionResponse
    TemplateVersionResponse,
    templateVersionResponse,
    tvrTemplateDescription,
    tvrVersion,
    tvrDefaultSubstitutions,
    tvrLastModifiedDate,
    tvrCreationDate,
    tvrTemplateName,
    tvrTemplateType,

    -- ** TemplateVersionsResponse
    TemplateVersionsResponse,
    templateVersionsResponse,
    tvrNextToken,
    tvrMessage,
    tvrRequestId,
    tvrItem,

    -- ** TemplatesResponse
    TemplatesResponse,
    templatesResponse,
    trNextToken,
    trItem,

    -- ** TreatmentResource
    TreatmentResource,
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

    -- ** UpdateAttributesRequest
    UpdateAttributesRequest,
    updateAttributesRequest,
    uarBlacklist,

    -- ** UpdateRecommenderConfiguration
    UpdateRecommenderConfiguration,
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

    -- ** VoiceChannelRequest
    VoiceChannelRequest,
    voiceChannelRequest,
    vEnabled,

    -- ** VoiceChannelResponse
    VoiceChannelResponse,
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

    -- ** VoiceMessage
    VoiceMessage,
    voiceMessage,
    vmLanguageCode,
    vmVoiceId,
    vmBody,
    vmSubstitutions,
    vmOriginationNumber,

    -- ** VoiceTemplateRequest
    VoiceTemplateRequest,
    voiceTemplateRequest,
    vtrLanguageCode,
    vtrTemplateDescription,
    vtrVoiceId,
    vtrBody,
    vtrDefaultSubstitutions,
    vtrTags,

    -- ** VoiceTemplateResponse
    VoiceTemplateResponse,
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

    -- ** WaitActivity
    WaitActivity,
    waitActivity,
    waWaitTime,
    waNextActivity,

    -- ** WaitTime
    WaitTime,
    waitTime,
    wtWaitUntil,
    wtWaitFor,

    -- ** WriteApplicationSettingsRequest
    WriteApplicationSettingsRequest,
    writeApplicationSettingsRequest,
    wasrCampaignHook,
    wasrCloudWatchMetricsEnabled,
    wasrEventTaggingEnabled,
    wasrQuietTime,
    wasrLimits,

    -- ** WriteCampaignRequest
    WriteCampaignRequest,
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

    -- ** WriteEventStream
    WriteEventStream,
    writeEventStream,
    wesRoleARN,
    wesDestinationStreamARN,

    -- ** WriteJourneyRequest
    WriteJourneyRequest,
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

    -- ** WriteSegmentRequest
    WriteSegmentRequest,
    writeSegmentRequest,
    wsrSegmentGroups,
    wsrName,
    wsrTags,
    wsrDimensions,

    -- ** WriteTreatmentResource
    WriteTreatmentResource,
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

import Network.AWS.Pinpoint.CreateApp
import Network.AWS.Pinpoint.CreateCampaign
import Network.AWS.Pinpoint.CreateEmailTemplate
import Network.AWS.Pinpoint.CreateExportJob
import Network.AWS.Pinpoint.CreateImportJob
import Network.AWS.Pinpoint.CreateJourney
import Network.AWS.Pinpoint.CreatePushTemplate
import Network.AWS.Pinpoint.CreateRecommenderConfiguration
import Network.AWS.Pinpoint.CreateSegment
import Network.AWS.Pinpoint.CreateSmsTemplate
import Network.AWS.Pinpoint.CreateVoiceTemplate
import Network.AWS.Pinpoint.DeleteADMChannel
import Network.AWS.Pinpoint.DeleteAPNSChannel
import Network.AWS.Pinpoint.DeleteAPNSSandboxChannel
import Network.AWS.Pinpoint.DeleteAPNSVoipChannel
import Network.AWS.Pinpoint.DeleteAPNSVoipSandboxChannel
import Network.AWS.Pinpoint.DeleteApp
import Network.AWS.Pinpoint.DeleteBaiduChannel
import Network.AWS.Pinpoint.DeleteCampaign
import Network.AWS.Pinpoint.DeleteEmailChannel
import Network.AWS.Pinpoint.DeleteEmailTemplate
import Network.AWS.Pinpoint.DeleteEndpoint
import Network.AWS.Pinpoint.DeleteEventStream
import Network.AWS.Pinpoint.DeleteGCMChannel
import Network.AWS.Pinpoint.DeleteJourney
import Network.AWS.Pinpoint.DeletePushTemplate
import Network.AWS.Pinpoint.DeleteRecommenderConfiguration
import Network.AWS.Pinpoint.DeleteSegment
import Network.AWS.Pinpoint.DeleteSmsChannel
import Network.AWS.Pinpoint.DeleteSmsTemplate
import Network.AWS.Pinpoint.DeleteUserEndpoints
import Network.AWS.Pinpoint.DeleteVoiceChannel
import Network.AWS.Pinpoint.DeleteVoiceTemplate
import Network.AWS.Pinpoint.GetADMChannel
import Network.AWS.Pinpoint.GetAPNSChannel
import Network.AWS.Pinpoint.GetAPNSSandboxChannel
import Network.AWS.Pinpoint.GetAPNSVoipChannel
import Network.AWS.Pinpoint.GetAPNSVoipSandboxChannel
import Network.AWS.Pinpoint.GetApp
import Network.AWS.Pinpoint.GetApplicationDateRangeKpi
import Network.AWS.Pinpoint.GetApplicationSettings
import Network.AWS.Pinpoint.GetApps
import Network.AWS.Pinpoint.GetBaiduChannel
import Network.AWS.Pinpoint.GetCampaign
import Network.AWS.Pinpoint.GetCampaignActivities
import Network.AWS.Pinpoint.GetCampaignDateRangeKpi
import Network.AWS.Pinpoint.GetCampaignVersion
import Network.AWS.Pinpoint.GetCampaignVersions
import Network.AWS.Pinpoint.GetCampaigns
import Network.AWS.Pinpoint.GetChannels
import Network.AWS.Pinpoint.GetEmailChannel
import Network.AWS.Pinpoint.GetEmailTemplate
import Network.AWS.Pinpoint.GetEndpoint
import Network.AWS.Pinpoint.GetEventStream
import Network.AWS.Pinpoint.GetExportJob
import Network.AWS.Pinpoint.GetExportJobs
import Network.AWS.Pinpoint.GetGCMChannel
import Network.AWS.Pinpoint.GetImportJob
import Network.AWS.Pinpoint.GetImportJobs
import Network.AWS.Pinpoint.GetJourney
import Network.AWS.Pinpoint.GetJourneyDateRangeKpi
import Network.AWS.Pinpoint.GetJourneyExecutionActivityMetrics
import Network.AWS.Pinpoint.GetJourneyExecutionMetrics
import Network.AWS.Pinpoint.GetPushTemplate
import Network.AWS.Pinpoint.GetRecommenderConfiguration
import Network.AWS.Pinpoint.GetRecommenderConfigurations
import Network.AWS.Pinpoint.GetSegment
import Network.AWS.Pinpoint.GetSegmentExportJobs
import Network.AWS.Pinpoint.GetSegmentImportJobs
import Network.AWS.Pinpoint.GetSegmentVersion
import Network.AWS.Pinpoint.GetSegmentVersions
import Network.AWS.Pinpoint.GetSegments
import Network.AWS.Pinpoint.GetSmsChannel
import Network.AWS.Pinpoint.GetSmsTemplate
import Network.AWS.Pinpoint.GetUserEndpoints
import Network.AWS.Pinpoint.GetVoiceChannel
import Network.AWS.Pinpoint.GetVoiceTemplate
import Network.AWS.Pinpoint.ListJourneys
import Network.AWS.Pinpoint.ListTagsForResource
import Network.AWS.Pinpoint.ListTemplateVersions
import Network.AWS.Pinpoint.ListTemplates
import Network.AWS.Pinpoint.PhoneNumberValidate
import Network.AWS.Pinpoint.PutEventStream
import Network.AWS.Pinpoint.PutEvents
import Network.AWS.Pinpoint.RemoveAttributes
import Network.AWS.Pinpoint.SendMessages
import Network.AWS.Pinpoint.SendUsersMessages
import Network.AWS.Pinpoint.TagResource
import Network.AWS.Pinpoint.Types
import Network.AWS.Pinpoint.UntagResource
import Network.AWS.Pinpoint.UpdateADMChannel
import Network.AWS.Pinpoint.UpdateAPNSChannel
import Network.AWS.Pinpoint.UpdateAPNSSandboxChannel
import Network.AWS.Pinpoint.UpdateAPNSVoipChannel
import Network.AWS.Pinpoint.UpdateAPNSVoipSandboxChannel
import Network.AWS.Pinpoint.UpdateApplicationSettings
import Network.AWS.Pinpoint.UpdateBaiduChannel
import Network.AWS.Pinpoint.UpdateCampaign
import Network.AWS.Pinpoint.UpdateEmailChannel
import Network.AWS.Pinpoint.UpdateEmailTemplate
import Network.AWS.Pinpoint.UpdateEndpoint
import Network.AWS.Pinpoint.UpdateEndpointsBatch
import Network.AWS.Pinpoint.UpdateGCMChannel
import Network.AWS.Pinpoint.UpdateJourney
import Network.AWS.Pinpoint.UpdateJourneyState
import Network.AWS.Pinpoint.UpdatePushTemplate
import Network.AWS.Pinpoint.UpdateRecommenderConfiguration
import Network.AWS.Pinpoint.UpdateSegment
import Network.AWS.Pinpoint.UpdateSmsChannel
import Network.AWS.Pinpoint.UpdateSmsTemplate
import Network.AWS.Pinpoint.UpdateTemplateActiveVersion
import Network.AWS.Pinpoint.UpdateVoiceChannel
import Network.AWS.Pinpoint.UpdateVoiceTemplate
import Network.AWS.Pinpoint.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'Pinpoint'.

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
