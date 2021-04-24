{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.Pinpoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.Pinpoint where

import Data.Proxy
import Network.AWS.Pinpoint
import Test.AWS.Fixture
import Test.AWS.Pinpoint.Internal
import Test.AWS.Prelude
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestDeleteVoiceTemplate $
--             deleteVoiceTemplate
--
--         , requestGetImportJobs $
--             getImportJobs
--
--         , requestUpdatePushTemplate $
--             updatePushTemplate
--
--         , requestDeleteCampaign $
--             deleteCampaign
--
--         , requestUpdateVoiceTemplate $
--             updateVoiceTemplate
--
--         , requestUpdateCampaign $
--             updateCampaign
--
--         , requestCreateRecommenderConfiguration $
--             createRecommenderConfiguration'
--
--         , requestUpdateTemplateActiveVersion $
--             updateTemplateActiveVersion
--
--         , requestDeletePushTemplate $
--             deletePushTemplate
--
--         , requestCreateJourney $
--             createJourney
--
--         , requestGetImportJob $
--             getImportJob
--
--         , requestGetSegmentVersions $
--             getSegmentVersions
--
--         , requestGetApps $
--             getApps
--
--         , requestGetSegmentImportJobs $
--             getSegmentImportJobs
--
--         , requestGetAPNSSandboxChannel $
--             getAPNSSandboxChannel
--
--         , requestSendMessages $
--             sendMessages
--
--         , requestCreateSmsTemplate $
--             createSmsTemplate
--
--         , requestRemoveAttributes $
--             removeAttributes
--
--         , requestGetAPNSChannel $
--             getAPNSChannel
--
--         , requestPhoneNumberValidate $
--             phoneNumberValidate
--
--         , requestGetEmailChannel $
--             getEmailChannel
--
--         , requestPutEventStream $
--             putEventStream
--
--         , requestGetJourneyExecutionActivityMetrics $
--             getJourneyExecutionActivityMetrics
--
--         , requestUpdateAPNSChannel $
--             updateAPNSChannel
--
--         , requestDeleteAPNSChannel $
--             deleteAPNSChannel
--
--         , requestGetBaiduChannel $
--             getBaiduChannel
--
--         , requestGetChannels $
--             getChannels
--
--         , requestGetRecommenderConfigurations $
--             getRecommenderConfigurations
--
--         , requestUpdateGCMChannel $
--             updateGCMChannel
--
--         , requestDeleteGCMChannel $
--             deleteGCMChannel
--
--         , requestGetJourneyExecutionMetrics $
--             getJourneyExecutionMetrics
--
--         , requestGetVoiceChannel $
--             getVoiceChannel
--
--         , requestUntagResource $
--             untagResource
--
--         , requestUpdateAPNSVoipSandboxChannel $
--             updateAPNSVoipSandboxChannel
--
--         , requestDeleteAPNSVoipSandboxChannel $
--             deleteAPNSVoipSandboxChannel
--
--         , requestGetVoiceTemplate $
--             getVoiceTemplate
--
--         , requestGetSmsChannel $
--             getSmsChannel
--
--         , requestTagResource $
--             tagResource
--
--         , requestGetEndpoint $
--             getEndpoint
--
--         , requestGetApplicationDateRangeKpi $
--             getApplicationDateRangeKpi
--
--         , requestGetADMChannel $
--             getADMChannel
--
--         , requestGetRecommenderConfiguration $
--             getRecommenderConfiguration
--
--         , requestGetSegmentExportJobs $
--             getSegmentExportJobs
--
--         , requestUpdateSegment $
--             updateSegment
--
--         , requestDeleteSegment $
--             deleteSegment
--
--         , requestCreatePushTemplate $
--             createPushTemplate
--
--         , requestDeleteADMChannel $
--             deleteADMChannel
--
--         , requestUpdateRecommenderConfiguration $
--             updateRecommenderConfiguration'
--
--         , requestDeleteEndpoint $
--             deleteEndpoint
--
--         , requestCreateCampaign $
--             createCampaign
--
--         , requestUpdateEndpoint $
--             updateEndpoint
--
--         , requestGetEmailTemplate $
--             getEmailTemplate
--
--         , requestDeleteRecommenderConfiguration $
--             deleteRecommenderConfiguration
--
--         , requestUpdateADMChannel $
--             updateADMChannel
--
--         , requestDeleteSmsChannel $
--             deleteSmsChannel
--
--         , requestGetJourneyDateRangeKpi $
--             getJourneyDateRangeKpi
--
--         , requestGetApp $
--             getApp
--
--         , requestCreateExportJob $
--             createExportJob
--
--         , requestGetUserEndpoints $
--             getUserEndpoints
--
--         , requestGetSegmentVersion $
--             getSegmentVersion
--
--         , requestUpdateSmsChannel $
--             updateSmsChannel
--
--         , requestCreateSegment $
--             createSegment
--
--         , requestDeleteSmsTemplate $
--             deleteSmsTemplate
--
--         , requestUpdateSmsTemplate $
--             updateSmsTemplate
--
--         , requestGetGCMChannel $
--             getGCMChannel
--
--         , requestDeleteVoiceChannel $
--             deleteVoiceChannel
--
--         , requestUpdateVoiceChannel $
--             updateVoiceChannel
--
--         , requestGetAPNSVoipSandboxChannel $
--             getAPNSVoipSandboxChannel
--
--         , requestDeleteJourney $
--             deleteJourney
--
--         , requestGetCampaignDateRangeKpi $
--             getCampaignDateRangeKpi
--
--         , requestUpdateJourney $
--             updateJourney
--
--         , requestListTemplates $
--             listTemplates
--
--         , requestDeleteBaiduChannel $
--             deleteBaiduChannel
--
--         , requestGetCampaignVersions $
--             getCampaignVersions
--
--         , requestGetApplicationSettings $
--             getApplicationSettings
--
--         , requestGetAPNSVoipChannel $
--             getAPNSVoipChannel
--
--         , requestListJourneys $
--             listJourneys
--
--         , requestDeleteEventStream $
--             deleteEventStream
--
--         , requestUpdateBaiduChannel $
--             updateBaiduChannel
--
--         , requestGetExportJobs $
--             getExportJobs
--
--         , requestGetSegments $
--             getSegments
--
--         , requestGetJourney $
--             getJourney
--
--         , requestPutEvents $
--             putEvents
--
--         , requestDeleteAPNSVoipChannel $
--             deleteAPNSVoipChannel
--
--         , requestUpdateAPNSVoipChannel $
--             updateAPNSVoipChannel
--
--         , requestCreateImportJob $
--             createImportJob
--
--         , requestUpdateEmailChannel $
--             updateEmailChannel
--
--         , requestGetEventStream $
--             getEventStream
--
--         , requestSendUsersMessages $
--             sendUsersMessages
--
--         , requestDeleteEmailChannel $
--             deleteEmailChannel
--
--         , requestUpdateApplicationSettings $
--             updateApplicationSettings
--
--         , requestUpdateJourneyState $
--             updateJourneyState
--
--         , requestListTemplateVersions $
--             listTemplateVersions
--
--         , requestDeleteAPNSSandboxChannel $
--             deleteAPNSSandboxChannel
--
--         , requestGetCampaignActivities $
--             getCampaignActivities
--
--         , requestUpdateAPNSSandboxChannel $
--             updateAPNSSandboxChannel
--
--         , requestGetCampaigns $
--             getCampaigns
--
--         , requestGetSmsTemplate $
--             getSmsTemplate
--
--         , requestGetPushTemplate $
--             getPushTemplate
--
--         , requestGetCampaign $
--             getCampaign
--
--         , requestDeleteApp $
--             deleteApp
--
--         , requestDeleteUserEndpoints $
--             deleteUserEndpoints
--
--         , requestCreateEmailTemplate $
--             createEmailTemplate
--
--         , requestUpdateEmailTemplate $
--             updateEmailTemplate
--
--         , requestDeleteEmailTemplate $
--             deleteEmailTemplate
--
--         , requestCreateApp $
--             createApp
--
--         , requestUpdateEndpointsBatch $
--             updateEndpointsBatch
--
--         , requestGetExportJob $
--             getExportJob
--
--         , requestGetSegment $
--             getSegment
--
--         , requestListTagsForResource $
--             listTagsForResource
--
--         , requestGetCampaignVersion $
--             getCampaignVersion
--
--         , requestCreateVoiceTemplate $
--             createVoiceTemplate
--
--           ]

--     , testGroup "response"
--         [ responseDeleteVoiceTemplate $
--             deleteVoiceTemplateResponse
--
--         , responseGetImportJobs $
--             getImportJobsResponse
--
--         , responseUpdatePushTemplate $
--             updatePushTemplateResponse
--
--         , responseDeleteCampaign $
--             deleteCampaignResponse
--
--         , responseUpdateVoiceTemplate $
--             updateVoiceTemplateResponse
--
--         , responseUpdateCampaign $
--             updateCampaignResponse
--
--         , responseCreateRecommenderConfiguration $
--             createRecommenderConfigurationResponse
--
--         , responseUpdateTemplateActiveVersion $
--             updateTemplateActiveVersionResponse
--
--         , responseDeletePushTemplate $
--             deletePushTemplateResponse
--
--         , responseCreateJourney $
--             createJourneyResponse
--
--         , responseGetImportJob $
--             getImportJobResponse
--
--         , responseGetSegmentVersions $
--             getSegmentVersionsResponse
--
--         , responseGetApps $
--             getAppsResponse
--
--         , responseGetSegmentImportJobs $
--             getSegmentImportJobsResponse
--
--         , responseGetAPNSSandboxChannel $
--             getAPNSSandboxChannelResponse
--
--         , responseSendMessages $
--             sendMessagesResponse
--
--         , responseCreateSmsTemplate $
--             createSmsTemplateResponse
--
--         , responseRemoveAttributes $
--             removeAttributesResponse
--
--         , responseGetAPNSChannel $
--             getAPNSChannelResponse
--
--         , responsePhoneNumberValidate $
--             phoneNumberValidateResponse
--
--         , responseGetEmailChannel $
--             getEmailChannelResponse
--
--         , responsePutEventStream $
--             putEventStreamResponse
--
--         , responseGetJourneyExecutionActivityMetrics $
--             getJourneyExecutionActivityMetricsResponse
--
--         , responseUpdateAPNSChannel $
--             updateAPNSChannelResponse
--
--         , responseDeleteAPNSChannel $
--             deleteAPNSChannelResponse
--
--         , responseGetBaiduChannel $
--             getBaiduChannelResponse
--
--         , responseGetChannels $
--             getChannelsResponse
--
--         , responseGetRecommenderConfigurations $
--             getRecommenderConfigurationsResponse
--
--         , responseUpdateGCMChannel $
--             updateGCMChannelResponse
--
--         , responseDeleteGCMChannel $
--             deleteGCMChannelResponse
--
--         , responseGetJourneyExecutionMetrics $
--             getJourneyExecutionMetricsResponse
--
--         , responseGetVoiceChannel $
--             getVoiceChannelResponse
--
--         , responseUntagResource $
--             untagResourceResponse
--
--         , responseUpdateAPNSVoipSandboxChannel $
--             updateAPNSVoipSandboxChannelResponse
--
--         , responseDeleteAPNSVoipSandboxChannel $
--             deleteAPNSVoipSandboxChannelResponse
--
--         , responseGetVoiceTemplate $
--             getVoiceTemplateResponse
--
--         , responseGetSmsChannel $
--             getSmsChannelResponse
--
--         , responseTagResource $
--             tagResourceResponse
--
--         , responseGetEndpoint $
--             getEndpointResponse
--
--         , responseGetApplicationDateRangeKpi $
--             getApplicationDateRangeKpiResponse
--
--         , responseGetADMChannel $
--             getADMChannelResponse
--
--         , responseGetRecommenderConfiguration $
--             getRecommenderConfigurationResponse
--
--         , responseGetSegmentExportJobs $
--             getSegmentExportJobsResponse
--
--         , responseUpdateSegment $
--             updateSegmentResponse
--
--         , responseDeleteSegment $
--             deleteSegmentResponse
--
--         , responseCreatePushTemplate $
--             createPushTemplateResponse
--
--         , responseDeleteADMChannel $
--             deleteADMChannelResponse
--
--         , responseUpdateRecommenderConfiguration $
--             updateRecommenderConfigurationResponse
--
--         , responseDeleteEndpoint $
--             deleteEndpointResponse
--
--         , responseCreateCampaign $
--             createCampaignResponse
--
--         , responseUpdateEndpoint $
--             updateEndpointResponse
--
--         , responseGetEmailTemplate $
--             getEmailTemplateResponse
--
--         , responseDeleteRecommenderConfiguration $
--             deleteRecommenderConfigurationResponse
--
--         , responseUpdateADMChannel $
--             updateADMChannelResponse
--
--         , responseDeleteSmsChannel $
--             deleteSmsChannelResponse
--
--         , responseGetJourneyDateRangeKpi $
--             getJourneyDateRangeKpiResponse
--
--         , responseGetApp $
--             getAppResponse
--
--         , responseCreateExportJob $
--             createExportJobResponse
--
--         , responseGetUserEndpoints $
--             getUserEndpointsResponse
--
--         , responseGetSegmentVersion $
--             getSegmentVersionResponse
--
--         , responseUpdateSmsChannel $
--             updateSmsChannelResponse
--
--         , responseCreateSegment $
--             createSegmentResponse
--
--         , responseDeleteSmsTemplate $
--             deleteSmsTemplateResponse
--
--         , responseUpdateSmsTemplate $
--             updateSmsTemplateResponse
--
--         , responseGetGCMChannel $
--             getGCMChannelResponse
--
--         , responseDeleteVoiceChannel $
--             deleteVoiceChannelResponse
--
--         , responseUpdateVoiceChannel $
--             updateVoiceChannelResponse
--
--         , responseGetAPNSVoipSandboxChannel $
--             getAPNSVoipSandboxChannelResponse
--
--         , responseDeleteJourney $
--             deleteJourneyResponse
--
--         , responseGetCampaignDateRangeKpi $
--             getCampaignDateRangeKpiResponse
--
--         , responseUpdateJourney $
--             updateJourneyResponse
--
--         , responseListTemplates $
--             listTemplatesResponse
--
--         , responseDeleteBaiduChannel $
--             deleteBaiduChannelResponse
--
--         , responseGetCampaignVersions $
--             getCampaignVersionsResponse
--
--         , responseGetApplicationSettings $
--             getApplicationSettingsResponse
--
--         , responseGetAPNSVoipChannel $
--             getAPNSVoipChannelResponse
--
--         , responseListJourneys $
--             listJourneysResponse
--
--         , responseDeleteEventStream $
--             deleteEventStreamResponse
--
--         , responseUpdateBaiduChannel $
--             updateBaiduChannelResponse
--
--         , responseGetExportJobs $
--             getExportJobsResponse
--
--         , responseGetSegments $
--             getSegmentsResponse
--
--         , responseGetJourney $
--             getJourneyResponse
--
--         , responsePutEvents $
--             putEventsResponse
--
--         , responseDeleteAPNSVoipChannel $
--             deleteAPNSVoipChannelResponse
--
--         , responseUpdateAPNSVoipChannel $
--             updateAPNSVoipChannelResponse
--
--         , responseCreateImportJob $
--             createImportJobResponse
--
--         , responseUpdateEmailChannel $
--             updateEmailChannelResponse
--
--         , responseGetEventStream $
--             getEventStreamResponse
--
--         , responseSendUsersMessages $
--             sendUsersMessagesResponse
--
--         , responseDeleteEmailChannel $
--             deleteEmailChannelResponse
--
--         , responseUpdateApplicationSettings $
--             updateApplicationSettingsResponse
--
--         , responseUpdateJourneyState $
--             updateJourneyStateResponse
--
--         , responseListTemplateVersions $
--             listTemplateVersionsResponse
--
--         , responseDeleteAPNSSandboxChannel $
--             deleteAPNSSandboxChannelResponse
--
--         , responseGetCampaignActivities $
--             getCampaignActivitiesResponse
--
--         , responseUpdateAPNSSandboxChannel $
--             updateAPNSSandboxChannelResponse
--
--         , responseGetCampaigns $
--             getCampaignsResponse
--
--         , responseGetSmsTemplate $
--             getSmsTemplateResponse
--
--         , responseGetPushTemplate $
--             getPushTemplateResponse
--
--         , responseGetCampaign $
--             getCampaignResponse
--
--         , responseDeleteApp $
--             deleteAppResponse
--
--         , responseDeleteUserEndpoints $
--             deleteUserEndpointsResponse
--
--         , responseCreateEmailTemplate $
--             createEmailTemplateResponse
--
--         , responseUpdateEmailTemplate $
--             updateEmailTemplateResponse
--
--         , responseDeleteEmailTemplate $
--             deleteEmailTemplateResponse
--
--         , responseCreateApp $
--             createAppResponse
--
--         , responseUpdateEndpointsBatch $
--             updateEndpointsBatchResponse
--
--         , responseGetExportJob $
--             getExportJobResponse
--
--         , responseGetSegment $
--             getSegmentResponse
--
--         , responseListTagsForResource $
--             listTagsForResourceResponse
--
--         , responseGetCampaignVersion $
--             getCampaignVersionResponse
--
--         , responseCreateVoiceTemplate $
--             createVoiceTemplateResponse
--
--           ]
--     ]

-- Requests

requestDeleteVoiceTemplate :: DeleteVoiceTemplate -> TestTree
requestDeleteVoiceTemplate =
  req
    "DeleteVoiceTemplate"
    "fixture/DeleteVoiceTemplate.yaml"

requestGetImportJobs :: GetImportJobs -> TestTree
requestGetImportJobs =
  req
    "GetImportJobs"
    "fixture/GetImportJobs.yaml"

requestUpdatePushTemplate :: UpdatePushTemplate -> TestTree
requestUpdatePushTemplate =
  req
    "UpdatePushTemplate"
    "fixture/UpdatePushTemplate.yaml"

requestDeleteCampaign :: DeleteCampaign -> TestTree
requestDeleteCampaign =
  req
    "DeleteCampaign"
    "fixture/DeleteCampaign.yaml"

requestUpdateVoiceTemplate :: UpdateVoiceTemplate -> TestTree
requestUpdateVoiceTemplate =
  req
    "UpdateVoiceTemplate"
    "fixture/UpdateVoiceTemplate.yaml"

requestUpdateCampaign :: UpdateCampaign -> TestTree
requestUpdateCampaign =
  req
    "UpdateCampaign"
    "fixture/UpdateCampaign.yaml"

requestCreateRecommenderConfiguration :: CreateRecommenderConfiguration' -> TestTree
requestCreateRecommenderConfiguration =
  req
    "CreateRecommenderConfiguration"
    "fixture/CreateRecommenderConfiguration.yaml"

requestUpdateTemplateActiveVersion :: UpdateTemplateActiveVersion -> TestTree
requestUpdateTemplateActiveVersion =
  req
    "UpdateTemplateActiveVersion"
    "fixture/UpdateTemplateActiveVersion.yaml"

requestDeletePushTemplate :: DeletePushTemplate -> TestTree
requestDeletePushTemplate =
  req
    "DeletePushTemplate"
    "fixture/DeletePushTemplate.yaml"

requestCreateJourney :: CreateJourney -> TestTree
requestCreateJourney =
  req
    "CreateJourney"
    "fixture/CreateJourney.yaml"

requestGetImportJob :: GetImportJob -> TestTree
requestGetImportJob =
  req
    "GetImportJob"
    "fixture/GetImportJob.yaml"

requestGetSegmentVersions :: GetSegmentVersions -> TestTree
requestGetSegmentVersions =
  req
    "GetSegmentVersions"
    "fixture/GetSegmentVersions.yaml"

requestGetApps :: GetApps -> TestTree
requestGetApps =
  req
    "GetApps"
    "fixture/GetApps.yaml"

requestGetSegmentImportJobs :: GetSegmentImportJobs -> TestTree
requestGetSegmentImportJobs =
  req
    "GetSegmentImportJobs"
    "fixture/GetSegmentImportJobs.yaml"

requestGetAPNSSandboxChannel :: GetAPNSSandboxChannel -> TestTree
requestGetAPNSSandboxChannel =
  req
    "GetAPNSSandboxChannel"
    "fixture/GetAPNSSandboxChannel.yaml"

requestSendMessages :: SendMessages -> TestTree
requestSendMessages =
  req
    "SendMessages"
    "fixture/SendMessages.yaml"

requestCreateSmsTemplate :: CreateSmsTemplate -> TestTree
requestCreateSmsTemplate =
  req
    "CreateSmsTemplate"
    "fixture/CreateSmsTemplate.yaml"

requestRemoveAttributes :: RemoveAttributes -> TestTree
requestRemoveAttributes =
  req
    "RemoveAttributes"
    "fixture/RemoveAttributes.yaml"

requestGetAPNSChannel :: GetAPNSChannel -> TestTree
requestGetAPNSChannel =
  req
    "GetAPNSChannel"
    "fixture/GetAPNSChannel.yaml"

requestPhoneNumberValidate :: PhoneNumberValidate -> TestTree
requestPhoneNumberValidate =
  req
    "PhoneNumberValidate"
    "fixture/PhoneNumberValidate.yaml"

requestGetEmailChannel :: GetEmailChannel -> TestTree
requestGetEmailChannel =
  req
    "GetEmailChannel"
    "fixture/GetEmailChannel.yaml"

requestPutEventStream :: PutEventStream -> TestTree
requestPutEventStream =
  req
    "PutEventStream"
    "fixture/PutEventStream.yaml"

requestGetJourneyExecutionActivityMetrics :: GetJourneyExecutionActivityMetrics -> TestTree
requestGetJourneyExecutionActivityMetrics =
  req
    "GetJourneyExecutionActivityMetrics"
    "fixture/GetJourneyExecutionActivityMetrics.yaml"

requestUpdateAPNSChannel :: UpdateAPNSChannel -> TestTree
requestUpdateAPNSChannel =
  req
    "UpdateAPNSChannel"
    "fixture/UpdateAPNSChannel.yaml"

requestDeleteAPNSChannel :: DeleteAPNSChannel -> TestTree
requestDeleteAPNSChannel =
  req
    "DeleteAPNSChannel"
    "fixture/DeleteAPNSChannel.yaml"

requestGetBaiduChannel :: GetBaiduChannel -> TestTree
requestGetBaiduChannel =
  req
    "GetBaiduChannel"
    "fixture/GetBaiduChannel.yaml"

requestGetChannels :: GetChannels -> TestTree
requestGetChannels =
  req
    "GetChannels"
    "fixture/GetChannels.yaml"

requestGetRecommenderConfigurations :: GetRecommenderConfigurations -> TestTree
requestGetRecommenderConfigurations =
  req
    "GetRecommenderConfigurations"
    "fixture/GetRecommenderConfigurations.yaml"

requestUpdateGCMChannel :: UpdateGCMChannel -> TestTree
requestUpdateGCMChannel =
  req
    "UpdateGCMChannel"
    "fixture/UpdateGCMChannel.yaml"

requestDeleteGCMChannel :: DeleteGCMChannel -> TestTree
requestDeleteGCMChannel =
  req
    "DeleteGCMChannel"
    "fixture/DeleteGCMChannel.yaml"

requestGetJourneyExecutionMetrics :: GetJourneyExecutionMetrics -> TestTree
requestGetJourneyExecutionMetrics =
  req
    "GetJourneyExecutionMetrics"
    "fixture/GetJourneyExecutionMetrics.yaml"

requestGetVoiceChannel :: GetVoiceChannel -> TestTree
requestGetVoiceChannel =
  req
    "GetVoiceChannel"
    "fixture/GetVoiceChannel.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource =
  req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestUpdateAPNSVoipSandboxChannel :: UpdateAPNSVoipSandboxChannel -> TestTree
requestUpdateAPNSVoipSandboxChannel =
  req
    "UpdateAPNSVoipSandboxChannel"
    "fixture/UpdateAPNSVoipSandboxChannel.yaml"

requestDeleteAPNSVoipSandboxChannel :: DeleteAPNSVoipSandboxChannel -> TestTree
requestDeleteAPNSVoipSandboxChannel =
  req
    "DeleteAPNSVoipSandboxChannel"
    "fixture/DeleteAPNSVoipSandboxChannel.yaml"

requestGetVoiceTemplate :: GetVoiceTemplate -> TestTree
requestGetVoiceTemplate =
  req
    "GetVoiceTemplate"
    "fixture/GetVoiceTemplate.yaml"

requestGetSmsChannel :: GetSmsChannel -> TestTree
requestGetSmsChannel =
  req
    "GetSmsChannel"
    "fixture/GetSmsChannel.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource =
  req
    "TagResource"
    "fixture/TagResource.yaml"

requestGetEndpoint :: GetEndpoint -> TestTree
requestGetEndpoint =
  req
    "GetEndpoint"
    "fixture/GetEndpoint.yaml"

requestGetApplicationDateRangeKpi :: GetApplicationDateRangeKpi -> TestTree
requestGetApplicationDateRangeKpi =
  req
    "GetApplicationDateRangeKpi"
    "fixture/GetApplicationDateRangeKpi.yaml"

requestGetADMChannel :: GetADMChannel -> TestTree
requestGetADMChannel =
  req
    "GetADMChannel"
    "fixture/GetADMChannel.yaml"

requestGetRecommenderConfiguration :: GetRecommenderConfiguration -> TestTree
requestGetRecommenderConfiguration =
  req
    "GetRecommenderConfiguration"
    "fixture/GetRecommenderConfiguration.yaml"

requestGetSegmentExportJobs :: GetSegmentExportJobs -> TestTree
requestGetSegmentExportJobs =
  req
    "GetSegmentExportJobs"
    "fixture/GetSegmentExportJobs.yaml"

requestUpdateSegment :: UpdateSegment -> TestTree
requestUpdateSegment =
  req
    "UpdateSegment"
    "fixture/UpdateSegment.yaml"

requestDeleteSegment :: DeleteSegment -> TestTree
requestDeleteSegment =
  req
    "DeleteSegment"
    "fixture/DeleteSegment.yaml"

requestCreatePushTemplate :: CreatePushTemplate -> TestTree
requestCreatePushTemplate =
  req
    "CreatePushTemplate"
    "fixture/CreatePushTemplate.yaml"

requestDeleteADMChannel :: DeleteADMChannel -> TestTree
requestDeleteADMChannel =
  req
    "DeleteADMChannel"
    "fixture/DeleteADMChannel.yaml"

requestUpdateRecommenderConfiguration :: UpdateRecommenderConfiguration' -> TestTree
requestUpdateRecommenderConfiguration =
  req
    "UpdateRecommenderConfiguration"
    "fixture/UpdateRecommenderConfiguration.yaml"

requestDeleteEndpoint :: DeleteEndpoint -> TestTree
requestDeleteEndpoint =
  req
    "DeleteEndpoint"
    "fixture/DeleteEndpoint.yaml"

requestCreateCampaign :: CreateCampaign -> TestTree
requestCreateCampaign =
  req
    "CreateCampaign"
    "fixture/CreateCampaign.yaml"

requestUpdateEndpoint :: UpdateEndpoint -> TestTree
requestUpdateEndpoint =
  req
    "UpdateEndpoint"
    "fixture/UpdateEndpoint.yaml"

requestGetEmailTemplate :: GetEmailTemplate -> TestTree
requestGetEmailTemplate =
  req
    "GetEmailTemplate"
    "fixture/GetEmailTemplate.yaml"

requestDeleteRecommenderConfiguration :: DeleteRecommenderConfiguration -> TestTree
requestDeleteRecommenderConfiguration =
  req
    "DeleteRecommenderConfiguration"
    "fixture/DeleteRecommenderConfiguration.yaml"

requestUpdateADMChannel :: UpdateADMChannel -> TestTree
requestUpdateADMChannel =
  req
    "UpdateADMChannel"
    "fixture/UpdateADMChannel.yaml"

requestDeleteSmsChannel :: DeleteSmsChannel -> TestTree
requestDeleteSmsChannel =
  req
    "DeleteSmsChannel"
    "fixture/DeleteSmsChannel.yaml"

requestGetJourneyDateRangeKpi :: GetJourneyDateRangeKpi -> TestTree
requestGetJourneyDateRangeKpi =
  req
    "GetJourneyDateRangeKpi"
    "fixture/GetJourneyDateRangeKpi.yaml"

requestGetApp :: GetApp -> TestTree
requestGetApp =
  req
    "GetApp"
    "fixture/GetApp.yaml"

requestCreateExportJob :: CreateExportJob -> TestTree
requestCreateExportJob =
  req
    "CreateExportJob"
    "fixture/CreateExportJob.yaml"

requestGetUserEndpoints :: GetUserEndpoints -> TestTree
requestGetUserEndpoints =
  req
    "GetUserEndpoints"
    "fixture/GetUserEndpoints.yaml"

requestGetSegmentVersion :: GetSegmentVersion -> TestTree
requestGetSegmentVersion =
  req
    "GetSegmentVersion"
    "fixture/GetSegmentVersion.yaml"

requestUpdateSmsChannel :: UpdateSmsChannel -> TestTree
requestUpdateSmsChannel =
  req
    "UpdateSmsChannel"
    "fixture/UpdateSmsChannel.yaml"

requestCreateSegment :: CreateSegment -> TestTree
requestCreateSegment =
  req
    "CreateSegment"
    "fixture/CreateSegment.yaml"

requestDeleteSmsTemplate :: DeleteSmsTemplate -> TestTree
requestDeleteSmsTemplate =
  req
    "DeleteSmsTemplate"
    "fixture/DeleteSmsTemplate.yaml"

requestUpdateSmsTemplate :: UpdateSmsTemplate -> TestTree
requestUpdateSmsTemplate =
  req
    "UpdateSmsTemplate"
    "fixture/UpdateSmsTemplate.yaml"

requestGetGCMChannel :: GetGCMChannel -> TestTree
requestGetGCMChannel =
  req
    "GetGCMChannel"
    "fixture/GetGCMChannel.yaml"

requestDeleteVoiceChannel :: DeleteVoiceChannel -> TestTree
requestDeleteVoiceChannel =
  req
    "DeleteVoiceChannel"
    "fixture/DeleteVoiceChannel.yaml"

requestUpdateVoiceChannel :: UpdateVoiceChannel -> TestTree
requestUpdateVoiceChannel =
  req
    "UpdateVoiceChannel"
    "fixture/UpdateVoiceChannel.yaml"

requestGetAPNSVoipSandboxChannel :: GetAPNSVoipSandboxChannel -> TestTree
requestGetAPNSVoipSandboxChannel =
  req
    "GetAPNSVoipSandboxChannel"
    "fixture/GetAPNSVoipSandboxChannel.yaml"

requestDeleteJourney :: DeleteJourney -> TestTree
requestDeleteJourney =
  req
    "DeleteJourney"
    "fixture/DeleteJourney.yaml"

requestGetCampaignDateRangeKpi :: GetCampaignDateRangeKpi -> TestTree
requestGetCampaignDateRangeKpi =
  req
    "GetCampaignDateRangeKpi"
    "fixture/GetCampaignDateRangeKpi.yaml"

requestUpdateJourney :: UpdateJourney -> TestTree
requestUpdateJourney =
  req
    "UpdateJourney"
    "fixture/UpdateJourney.yaml"

requestListTemplates :: ListTemplates -> TestTree
requestListTemplates =
  req
    "ListTemplates"
    "fixture/ListTemplates.yaml"

requestDeleteBaiduChannel :: DeleteBaiduChannel -> TestTree
requestDeleteBaiduChannel =
  req
    "DeleteBaiduChannel"
    "fixture/DeleteBaiduChannel.yaml"

requestGetCampaignVersions :: GetCampaignVersions -> TestTree
requestGetCampaignVersions =
  req
    "GetCampaignVersions"
    "fixture/GetCampaignVersions.yaml"

requestGetApplicationSettings :: GetApplicationSettings -> TestTree
requestGetApplicationSettings =
  req
    "GetApplicationSettings"
    "fixture/GetApplicationSettings.yaml"

requestGetAPNSVoipChannel :: GetAPNSVoipChannel -> TestTree
requestGetAPNSVoipChannel =
  req
    "GetAPNSVoipChannel"
    "fixture/GetAPNSVoipChannel.yaml"

requestListJourneys :: ListJourneys -> TestTree
requestListJourneys =
  req
    "ListJourneys"
    "fixture/ListJourneys.yaml"

requestDeleteEventStream :: DeleteEventStream -> TestTree
requestDeleteEventStream =
  req
    "DeleteEventStream"
    "fixture/DeleteEventStream.yaml"

requestUpdateBaiduChannel :: UpdateBaiduChannel -> TestTree
requestUpdateBaiduChannel =
  req
    "UpdateBaiduChannel"
    "fixture/UpdateBaiduChannel.yaml"

requestGetExportJobs :: GetExportJobs -> TestTree
requestGetExportJobs =
  req
    "GetExportJobs"
    "fixture/GetExportJobs.yaml"

requestGetSegments :: GetSegments -> TestTree
requestGetSegments =
  req
    "GetSegments"
    "fixture/GetSegments.yaml"

requestGetJourney :: GetJourney -> TestTree
requestGetJourney =
  req
    "GetJourney"
    "fixture/GetJourney.yaml"

requestPutEvents :: PutEvents -> TestTree
requestPutEvents =
  req
    "PutEvents"
    "fixture/PutEvents.yaml"

requestDeleteAPNSVoipChannel :: DeleteAPNSVoipChannel -> TestTree
requestDeleteAPNSVoipChannel =
  req
    "DeleteAPNSVoipChannel"
    "fixture/DeleteAPNSVoipChannel.yaml"

requestUpdateAPNSVoipChannel :: UpdateAPNSVoipChannel -> TestTree
requestUpdateAPNSVoipChannel =
  req
    "UpdateAPNSVoipChannel"
    "fixture/UpdateAPNSVoipChannel.yaml"

requestCreateImportJob :: CreateImportJob -> TestTree
requestCreateImportJob =
  req
    "CreateImportJob"
    "fixture/CreateImportJob.yaml"

requestUpdateEmailChannel :: UpdateEmailChannel -> TestTree
requestUpdateEmailChannel =
  req
    "UpdateEmailChannel"
    "fixture/UpdateEmailChannel.yaml"

requestGetEventStream :: GetEventStream -> TestTree
requestGetEventStream =
  req
    "GetEventStream"
    "fixture/GetEventStream.yaml"

requestSendUsersMessages :: SendUsersMessages -> TestTree
requestSendUsersMessages =
  req
    "SendUsersMessages"
    "fixture/SendUsersMessages.yaml"

requestDeleteEmailChannel :: DeleteEmailChannel -> TestTree
requestDeleteEmailChannel =
  req
    "DeleteEmailChannel"
    "fixture/DeleteEmailChannel.yaml"

requestUpdateApplicationSettings :: UpdateApplicationSettings -> TestTree
requestUpdateApplicationSettings =
  req
    "UpdateApplicationSettings"
    "fixture/UpdateApplicationSettings.yaml"

requestUpdateJourneyState :: UpdateJourneyState -> TestTree
requestUpdateJourneyState =
  req
    "UpdateJourneyState"
    "fixture/UpdateJourneyState.yaml"

requestListTemplateVersions :: ListTemplateVersions -> TestTree
requestListTemplateVersions =
  req
    "ListTemplateVersions"
    "fixture/ListTemplateVersions.yaml"

requestDeleteAPNSSandboxChannel :: DeleteAPNSSandboxChannel -> TestTree
requestDeleteAPNSSandboxChannel =
  req
    "DeleteAPNSSandboxChannel"
    "fixture/DeleteAPNSSandboxChannel.yaml"

requestGetCampaignActivities :: GetCampaignActivities -> TestTree
requestGetCampaignActivities =
  req
    "GetCampaignActivities"
    "fixture/GetCampaignActivities.yaml"

requestUpdateAPNSSandboxChannel :: UpdateAPNSSandboxChannel -> TestTree
requestUpdateAPNSSandboxChannel =
  req
    "UpdateAPNSSandboxChannel"
    "fixture/UpdateAPNSSandboxChannel.yaml"

requestGetCampaigns :: GetCampaigns -> TestTree
requestGetCampaigns =
  req
    "GetCampaigns"
    "fixture/GetCampaigns.yaml"

requestGetSmsTemplate :: GetSmsTemplate -> TestTree
requestGetSmsTemplate =
  req
    "GetSmsTemplate"
    "fixture/GetSmsTemplate.yaml"

requestGetPushTemplate :: GetPushTemplate -> TestTree
requestGetPushTemplate =
  req
    "GetPushTemplate"
    "fixture/GetPushTemplate.yaml"

requestGetCampaign :: GetCampaign -> TestTree
requestGetCampaign =
  req
    "GetCampaign"
    "fixture/GetCampaign.yaml"

requestDeleteApp :: DeleteApp -> TestTree
requestDeleteApp =
  req
    "DeleteApp"
    "fixture/DeleteApp.yaml"

requestDeleteUserEndpoints :: DeleteUserEndpoints -> TestTree
requestDeleteUserEndpoints =
  req
    "DeleteUserEndpoints"
    "fixture/DeleteUserEndpoints.yaml"

requestCreateEmailTemplate :: CreateEmailTemplate -> TestTree
requestCreateEmailTemplate =
  req
    "CreateEmailTemplate"
    "fixture/CreateEmailTemplate.yaml"

requestUpdateEmailTemplate :: UpdateEmailTemplate -> TestTree
requestUpdateEmailTemplate =
  req
    "UpdateEmailTemplate"
    "fixture/UpdateEmailTemplate.yaml"

requestDeleteEmailTemplate :: DeleteEmailTemplate -> TestTree
requestDeleteEmailTemplate =
  req
    "DeleteEmailTemplate"
    "fixture/DeleteEmailTemplate.yaml"

requestCreateApp :: CreateApp -> TestTree
requestCreateApp =
  req
    "CreateApp"
    "fixture/CreateApp.yaml"

requestUpdateEndpointsBatch :: UpdateEndpointsBatch -> TestTree
requestUpdateEndpointsBatch =
  req
    "UpdateEndpointsBatch"
    "fixture/UpdateEndpointsBatch.yaml"

requestGetExportJob :: GetExportJob -> TestTree
requestGetExportJob =
  req
    "GetExportJob"
    "fixture/GetExportJob.yaml"

requestGetSegment :: GetSegment -> TestTree
requestGetSegment =
  req
    "GetSegment"
    "fixture/GetSegment.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestGetCampaignVersion :: GetCampaignVersion -> TestTree
requestGetCampaignVersion =
  req
    "GetCampaignVersion"
    "fixture/GetCampaignVersion.yaml"

requestCreateVoiceTemplate :: CreateVoiceTemplate -> TestTree
requestCreateVoiceTemplate =
  req
    "CreateVoiceTemplate"
    "fixture/CreateVoiceTemplate.yaml"

-- Responses

responseDeleteVoiceTemplate :: DeleteVoiceTemplateResponse -> TestTree
responseDeleteVoiceTemplate =
  res
    "DeleteVoiceTemplateResponse"
    "fixture/DeleteVoiceTemplateResponse.proto"
    pinpoint
    (Proxy :: Proxy DeleteVoiceTemplate)

responseGetImportJobs :: GetImportJobsResponse -> TestTree
responseGetImportJobs =
  res
    "GetImportJobsResponse"
    "fixture/GetImportJobsResponse.proto"
    pinpoint
    (Proxy :: Proxy GetImportJobs)

responseUpdatePushTemplate :: UpdatePushTemplateResponse -> TestTree
responseUpdatePushTemplate =
  res
    "UpdatePushTemplateResponse"
    "fixture/UpdatePushTemplateResponse.proto"
    pinpoint
    (Proxy :: Proxy UpdatePushTemplate)

responseDeleteCampaign :: DeleteCampaignResponse -> TestTree
responseDeleteCampaign =
  res
    "DeleteCampaignResponse"
    "fixture/DeleteCampaignResponse.proto"
    pinpoint
    (Proxy :: Proxy DeleteCampaign)

responseUpdateVoiceTemplate :: UpdateVoiceTemplateResponse -> TestTree
responseUpdateVoiceTemplate =
  res
    "UpdateVoiceTemplateResponse"
    "fixture/UpdateVoiceTemplateResponse.proto"
    pinpoint
    (Proxy :: Proxy UpdateVoiceTemplate)

responseUpdateCampaign :: UpdateCampaignResponse -> TestTree
responseUpdateCampaign =
  res
    "UpdateCampaignResponse"
    "fixture/UpdateCampaignResponse.proto"
    pinpoint
    (Proxy :: Proxy UpdateCampaign)

responseCreateRecommenderConfiguration :: CreateRecommenderConfigurationResponse -> TestTree
responseCreateRecommenderConfiguration =
  res
    "CreateRecommenderConfigurationResponse"
    "fixture/CreateRecommenderConfigurationResponse.proto"
    pinpoint
    (Proxy :: Proxy CreateRecommenderConfiguration')

responseUpdateTemplateActiveVersion :: UpdateTemplateActiveVersionResponse -> TestTree
responseUpdateTemplateActiveVersion =
  res
    "UpdateTemplateActiveVersionResponse"
    "fixture/UpdateTemplateActiveVersionResponse.proto"
    pinpoint
    (Proxy :: Proxy UpdateTemplateActiveVersion)

responseDeletePushTemplate :: DeletePushTemplateResponse -> TestTree
responseDeletePushTemplate =
  res
    "DeletePushTemplateResponse"
    "fixture/DeletePushTemplateResponse.proto"
    pinpoint
    (Proxy :: Proxy DeletePushTemplate)

responseCreateJourney :: CreateJourneyResponse -> TestTree
responseCreateJourney =
  res
    "CreateJourneyResponse"
    "fixture/CreateJourneyResponse.proto"
    pinpoint
    (Proxy :: Proxy CreateJourney)

responseGetImportJob :: GetImportJobResponse -> TestTree
responseGetImportJob =
  res
    "GetImportJobResponse"
    "fixture/GetImportJobResponse.proto"
    pinpoint
    (Proxy :: Proxy GetImportJob)

responseGetSegmentVersions :: GetSegmentVersionsResponse -> TestTree
responseGetSegmentVersions =
  res
    "GetSegmentVersionsResponse"
    "fixture/GetSegmentVersionsResponse.proto"
    pinpoint
    (Proxy :: Proxy GetSegmentVersions)

responseGetApps :: GetAppsResponse -> TestTree
responseGetApps =
  res
    "GetAppsResponse"
    "fixture/GetAppsResponse.proto"
    pinpoint
    (Proxy :: Proxy GetApps)

responseGetSegmentImportJobs :: GetSegmentImportJobsResponse -> TestTree
responseGetSegmentImportJobs =
  res
    "GetSegmentImportJobsResponse"
    "fixture/GetSegmentImportJobsResponse.proto"
    pinpoint
    (Proxy :: Proxy GetSegmentImportJobs)

responseGetAPNSSandboxChannel :: GetAPNSSandboxChannelResponse -> TestTree
responseGetAPNSSandboxChannel =
  res
    "GetAPNSSandboxChannelResponse"
    "fixture/GetAPNSSandboxChannelResponse.proto"
    pinpoint
    (Proxy :: Proxy GetAPNSSandboxChannel)

responseSendMessages :: SendMessagesResponse -> TestTree
responseSendMessages =
  res
    "SendMessagesResponse"
    "fixture/SendMessagesResponse.proto"
    pinpoint
    (Proxy :: Proxy SendMessages)

responseCreateSmsTemplate :: CreateSmsTemplateResponse -> TestTree
responseCreateSmsTemplate =
  res
    "CreateSmsTemplateResponse"
    "fixture/CreateSmsTemplateResponse.proto"
    pinpoint
    (Proxy :: Proxy CreateSmsTemplate)

responseRemoveAttributes :: RemoveAttributesResponse -> TestTree
responseRemoveAttributes =
  res
    "RemoveAttributesResponse"
    "fixture/RemoveAttributesResponse.proto"
    pinpoint
    (Proxy :: Proxy RemoveAttributes)

responseGetAPNSChannel :: GetAPNSChannelResponse -> TestTree
responseGetAPNSChannel =
  res
    "GetAPNSChannelResponse"
    "fixture/GetAPNSChannelResponse.proto"
    pinpoint
    (Proxy :: Proxy GetAPNSChannel)

responsePhoneNumberValidate :: PhoneNumberValidateResponse -> TestTree
responsePhoneNumberValidate =
  res
    "PhoneNumberValidateResponse"
    "fixture/PhoneNumberValidateResponse.proto"
    pinpoint
    (Proxy :: Proxy PhoneNumberValidate)

responseGetEmailChannel :: GetEmailChannelResponse -> TestTree
responseGetEmailChannel =
  res
    "GetEmailChannelResponse"
    "fixture/GetEmailChannelResponse.proto"
    pinpoint
    (Proxy :: Proxy GetEmailChannel)

responsePutEventStream :: PutEventStreamResponse -> TestTree
responsePutEventStream =
  res
    "PutEventStreamResponse"
    "fixture/PutEventStreamResponse.proto"
    pinpoint
    (Proxy :: Proxy PutEventStream)

responseGetJourneyExecutionActivityMetrics :: GetJourneyExecutionActivityMetricsResponse -> TestTree
responseGetJourneyExecutionActivityMetrics =
  res
    "GetJourneyExecutionActivityMetricsResponse"
    "fixture/GetJourneyExecutionActivityMetricsResponse.proto"
    pinpoint
    (Proxy :: Proxy GetJourneyExecutionActivityMetrics)

responseUpdateAPNSChannel :: UpdateAPNSChannelResponse -> TestTree
responseUpdateAPNSChannel =
  res
    "UpdateAPNSChannelResponse"
    "fixture/UpdateAPNSChannelResponse.proto"
    pinpoint
    (Proxy :: Proxy UpdateAPNSChannel)

responseDeleteAPNSChannel :: DeleteAPNSChannelResponse -> TestTree
responseDeleteAPNSChannel =
  res
    "DeleteAPNSChannelResponse"
    "fixture/DeleteAPNSChannelResponse.proto"
    pinpoint
    (Proxy :: Proxy DeleteAPNSChannel)

responseGetBaiduChannel :: GetBaiduChannelResponse -> TestTree
responseGetBaiduChannel =
  res
    "GetBaiduChannelResponse"
    "fixture/GetBaiduChannelResponse.proto"
    pinpoint
    (Proxy :: Proxy GetBaiduChannel)

responseGetChannels :: GetChannelsResponse -> TestTree
responseGetChannels =
  res
    "GetChannelsResponse"
    "fixture/GetChannelsResponse.proto"
    pinpoint
    (Proxy :: Proxy GetChannels)

responseGetRecommenderConfigurations :: GetRecommenderConfigurationsResponse -> TestTree
responseGetRecommenderConfigurations =
  res
    "GetRecommenderConfigurationsResponse"
    "fixture/GetRecommenderConfigurationsResponse.proto"
    pinpoint
    (Proxy :: Proxy GetRecommenderConfigurations)

responseUpdateGCMChannel :: UpdateGCMChannelResponse -> TestTree
responseUpdateGCMChannel =
  res
    "UpdateGCMChannelResponse"
    "fixture/UpdateGCMChannelResponse.proto"
    pinpoint
    (Proxy :: Proxy UpdateGCMChannel)

responseDeleteGCMChannel :: DeleteGCMChannelResponse -> TestTree
responseDeleteGCMChannel =
  res
    "DeleteGCMChannelResponse"
    "fixture/DeleteGCMChannelResponse.proto"
    pinpoint
    (Proxy :: Proxy DeleteGCMChannel)

responseGetJourneyExecutionMetrics :: GetJourneyExecutionMetricsResponse -> TestTree
responseGetJourneyExecutionMetrics =
  res
    "GetJourneyExecutionMetricsResponse"
    "fixture/GetJourneyExecutionMetricsResponse.proto"
    pinpoint
    (Proxy :: Proxy GetJourneyExecutionMetrics)

responseGetVoiceChannel :: GetVoiceChannelResponse -> TestTree
responseGetVoiceChannel =
  res
    "GetVoiceChannelResponse"
    "fixture/GetVoiceChannelResponse.proto"
    pinpoint
    (Proxy :: Proxy GetVoiceChannel)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    pinpoint
    (Proxy :: Proxy UntagResource)

responseUpdateAPNSVoipSandboxChannel :: UpdateAPNSVoipSandboxChannelResponse -> TestTree
responseUpdateAPNSVoipSandboxChannel =
  res
    "UpdateAPNSVoipSandboxChannelResponse"
    "fixture/UpdateAPNSVoipSandboxChannelResponse.proto"
    pinpoint
    (Proxy :: Proxy UpdateAPNSVoipSandboxChannel)

responseDeleteAPNSVoipSandboxChannel :: DeleteAPNSVoipSandboxChannelResponse -> TestTree
responseDeleteAPNSVoipSandboxChannel =
  res
    "DeleteAPNSVoipSandboxChannelResponse"
    "fixture/DeleteAPNSVoipSandboxChannelResponse.proto"
    pinpoint
    (Proxy :: Proxy DeleteAPNSVoipSandboxChannel)

responseGetVoiceTemplate :: GetVoiceTemplateResponse -> TestTree
responseGetVoiceTemplate =
  res
    "GetVoiceTemplateResponse"
    "fixture/GetVoiceTemplateResponse.proto"
    pinpoint
    (Proxy :: Proxy GetVoiceTemplate)

responseGetSmsChannel :: GetSmsChannelResponse -> TestTree
responseGetSmsChannel =
  res
    "GetSmsChannelResponse"
    "fixture/GetSmsChannelResponse.proto"
    pinpoint
    (Proxy :: Proxy GetSmsChannel)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    pinpoint
    (Proxy :: Proxy TagResource)

responseGetEndpoint :: GetEndpointResponse -> TestTree
responseGetEndpoint =
  res
    "GetEndpointResponse"
    "fixture/GetEndpointResponse.proto"
    pinpoint
    (Proxy :: Proxy GetEndpoint)

responseGetApplicationDateRangeKpi :: GetApplicationDateRangeKpiResponse -> TestTree
responseGetApplicationDateRangeKpi =
  res
    "GetApplicationDateRangeKpiResponse"
    "fixture/GetApplicationDateRangeKpiResponse.proto"
    pinpoint
    (Proxy :: Proxy GetApplicationDateRangeKpi)

responseGetADMChannel :: GetADMChannelResponse -> TestTree
responseGetADMChannel =
  res
    "GetADMChannelResponse"
    "fixture/GetADMChannelResponse.proto"
    pinpoint
    (Proxy :: Proxy GetADMChannel)

responseGetRecommenderConfiguration :: GetRecommenderConfigurationResponse -> TestTree
responseGetRecommenderConfiguration =
  res
    "GetRecommenderConfigurationResponse"
    "fixture/GetRecommenderConfigurationResponse.proto"
    pinpoint
    (Proxy :: Proxy GetRecommenderConfiguration)

responseGetSegmentExportJobs :: GetSegmentExportJobsResponse -> TestTree
responseGetSegmentExportJobs =
  res
    "GetSegmentExportJobsResponse"
    "fixture/GetSegmentExportJobsResponse.proto"
    pinpoint
    (Proxy :: Proxy GetSegmentExportJobs)

responseUpdateSegment :: UpdateSegmentResponse -> TestTree
responseUpdateSegment =
  res
    "UpdateSegmentResponse"
    "fixture/UpdateSegmentResponse.proto"
    pinpoint
    (Proxy :: Proxy UpdateSegment)

responseDeleteSegment :: DeleteSegmentResponse -> TestTree
responseDeleteSegment =
  res
    "DeleteSegmentResponse"
    "fixture/DeleteSegmentResponse.proto"
    pinpoint
    (Proxy :: Proxy DeleteSegment)

responseCreatePushTemplate :: CreatePushTemplateResponse -> TestTree
responseCreatePushTemplate =
  res
    "CreatePushTemplateResponse"
    "fixture/CreatePushTemplateResponse.proto"
    pinpoint
    (Proxy :: Proxy CreatePushTemplate)

responseDeleteADMChannel :: DeleteADMChannelResponse -> TestTree
responseDeleteADMChannel =
  res
    "DeleteADMChannelResponse"
    "fixture/DeleteADMChannelResponse.proto"
    pinpoint
    (Proxy :: Proxy DeleteADMChannel)

responseUpdateRecommenderConfiguration :: UpdateRecommenderConfigurationResponse -> TestTree
responseUpdateRecommenderConfiguration =
  res
    "UpdateRecommenderConfigurationResponse"
    "fixture/UpdateRecommenderConfigurationResponse.proto"
    pinpoint
    (Proxy :: Proxy UpdateRecommenderConfiguration')

responseDeleteEndpoint :: DeleteEndpointResponse -> TestTree
responseDeleteEndpoint =
  res
    "DeleteEndpointResponse"
    "fixture/DeleteEndpointResponse.proto"
    pinpoint
    (Proxy :: Proxy DeleteEndpoint)

responseCreateCampaign :: CreateCampaignResponse -> TestTree
responseCreateCampaign =
  res
    "CreateCampaignResponse"
    "fixture/CreateCampaignResponse.proto"
    pinpoint
    (Proxy :: Proxy CreateCampaign)

responseUpdateEndpoint :: UpdateEndpointResponse -> TestTree
responseUpdateEndpoint =
  res
    "UpdateEndpointResponse"
    "fixture/UpdateEndpointResponse.proto"
    pinpoint
    (Proxy :: Proxy UpdateEndpoint)

responseGetEmailTemplate :: GetEmailTemplateResponse -> TestTree
responseGetEmailTemplate =
  res
    "GetEmailTemplateResponse"
    "fixture/GetEmailTemplateResponse.proto"
    pinpoint
    (Proxy :: Proxy GetEmailTemplate)

responseDeleteRecommenderConfiguration :: DeleteRecommenderConfigurationResponse -> TestTree
responseDeleteRecommenderConfiguration =
  res
    "DeleteRecommenderConfigurationResponse"
    "fixture/DeleteRecommenderConfigurationResponse.proto"
    pinpoint
    (Proxy :: Proxy DeleteRecommenderConfiguration)

responseUpdateADMChannel :: UpdateADMChannelResponse -> TestTree
responseUpdateADMChannel =
  res
    "UpdateADMChannelResponse"
    "fixture/UpdateADMChannelResponse.proto"
    pinpoint
    (Proxy :: Proxy UpdateADMChannel)

responseDeleteSmsChannel :: DeleteSmsChannelResponse -> TestTree
responseDeleteSmsChannel =
  res
    "DeleteSmsChannelResponse"
    "fixture/DeleteSmsChannelResponse.proto"
    pinpoint
    (Proxy :: Proxy DeleteSmsChannel)

responseGetJourneyDateRangeKpi :: GetJourneyDateRangeKpiResponse -> TestTree
responseGetJourneyDateRangeKpi =
  res
    "GetJourneyDateRangeKpiResponse"
    "fixture/GetJourneyDateRangeKpiResponse.proto"
    pinpoint
    (Proxy :: Proxy GetJourneyDateRangeKpi)

responseGetApp :: GetAppResponse -> TestTree
responseGetApp =
  res
    "GetAppResponse"
    "fixture/GetAppResponse.proto"
    pinpoint
    (Proxy :: Proxy GetApp)

responseCreateExportJob :: CreateExportJobResponse -> TestTree
responseCreateExportJob =
  res
    "CreateExportJobResponse"
    "fixture/CreateExportJobResponse.proto"
    pinpoint
    (Proxy :: Proxy CreateExportJob)

responseGetUserEndpoints :: GetUserEndpointsResponse -> TestTree
responseGetUserEndpoints =
  res
    "GetUserEndpointsResponse"
    "fixture/GetUserEndpointsResponse.proto"
    pinpoint
    (Proxy :: Proxy GetUserEndpoints)

responseGetSegmentVersion :: GetSegmentVersionResponse -> TestTree
responseGetSegmentVersion =
  res
    "GetSegmentVersionResponse"
    "fixture/GetSegmentVersionResponse.proto"
    pinpoint
    (Proxy :: Proxy GetSegmentVersion)

responseUpdateSmsChannel :: UpdateSmsChannelResponse -> TestTree
responseUpdateSmsChannel =
  res
    "UpdateSmsChannelResponse"
    "fixture/UpdateSmsChannelResponse.proto"
    pinpoint
    (Proxy :: Proxy UpdateSmsChannel)

responseCreateSegment :: CreateSegmentResponse -> TestTree
responseCreateSegment =
  res
    "CreateSegmentResponse"
    "fixture/CreateSegmentResponse.proto"
    pinpoint
    (Proxy :: Proxy CreateSegment)

responseDeleteSmsTemplate :: DeleteSmsTemplateResponse -> TestTree
responseDeleteSmsTemplate =
  res
    "DeleteSmsTemplateResponse"
    "fixture/DeleteSmsTemplateResponse.proto"
    pinpoint
    (Proxy :: Proxy DeleteSmsTemplate)

responseUpdateSmsTemplate :: UpdateSmsTemplateResponse -> TestTree
responseUpdateSmsTemplate =
  res
    "UpdateSmsTemplateResponse"
    "fixture/UpdateSmsTemplateResponse.proto"
    pinpoint
    (Proxy :: Proxy UpdateSmsTemplate)

responseGetGCMChannel :: GetGCMChannelResponse -> TestTree
responseGetGCMChannel =
  res
    "GetGCMChannelResponse"
    "fixture/GetGCMChannelResponse.proto"
    pinpoint
    (Proxy :: Proxy GetGCMChannel)

responseDeleteVoiceChannel :: DeleteVoiceChannelResponse -> TestTree
responseDeleteVoiceChannel =
  res
    "DeleteVoiceChannelResponse"
    "fixture/DeleteVoiceChannelResponse.proto"
    pinpoint
    (Proxy :: Proxy DeleteVoiceChannel)

responseUpdateVoiceChannel :: UpdateVoiceChannelResponse -> TestTree
responseUpdateVoiceChannel =
  res
    "UpdateVoiceChannelResponse"
    "fixture/UpdateVoiceChannelResponse.proto"
    pinpoint
    (Proxy :: Proxy UpdateVoiceChannel)

responseGetAPNSVoipSandboxChannel :: GetAPNSVoipSandboxChannelResponse -> TestTree
responseGetAPNSVoipSandboxChannel =
  res
    "GetAPNSVoipSandboxChannelResponse"
    "fixture/GetAPNSVoipSandboxChannelResponse.proto"
    pinpoint
    (Proxy :: Proxy GetAPNSVoipSandboxChannel)

responseDeleteJourney :: DeleteJourneyResponse -> TestTree
responseDeleteJourney =
  res
    "DeleteJourneyResponse"
    "fixture/DeleteJourneyResponse.proto"
    pinpoint
    (Proxy :: Proxy DeleteJourney)

responseGetCampaignDateRangeKpi :: GetCampaignDateRangeKpiResponse -> TestTree
responseGetCampaignDateRangeKpi =
  res
    "GetCampaignDateRangeKpiResponse"
    "fixture/GetCampaignDateRangeKpiResponse.proto"
    pinpoint
    (Proxy :: Proxy GetCampaignDateRangeKpi)

responseUpdateJourney :: UpdateJourneyResponse -> TestTree
responseUpdateJourney =
  res
    "UpdateJourneyResponse"
    "fixture/UpdateJourneyResponse.proto"
    pinpoint
    (Proxy :: Proxy UpdateJourney)

responseListTemplates :: ListTemplatesResponse -> TestTree
responseListTemplates =
  res
    "ListTemplatesResponse"
    "fixture/ListTemplatesResponse.proto"
    pinpoint
    (Proxy :: Proxy ListTemplates)

responseDeleteBaiduChannel :: DeleteBaiduChannelResponse -> TestTree
responseDeleteBaiduChannel =
  res
    "DeleteBaiduChannelResponse"
    "fixture/DeleteBaiduChannelResponse.proto"
    pinpoint
    (Proxy :: Proxy DeleteBaiduChannel)

responseGetCampaignVersions :: GetCampaignVersionsResponse -> TestTree
responseGetCampaignVersions =
  res
    "GetCampaignVersionsResponse"
    "fixture/GetCampaignVersionsResponse.proto"
    pinpoint
    (Proxy :: Proxy GetCampaignVersions)

responseGetApplicationSettings :: GetApplicationSettingsResponse -> TestTree
responseGetApplicationSettings =
  res
    "GetApplicationSettingsResponse"
    "fixture/GetApplicationSettingsResponse.proto"
    pinpoint
    (Proxy :: Proxy GetApplicationSettings)

responseGetAPNSVoipChannel :: GetAPNSVoipChannelResponse -> TestTree
responseGetAPNSVoipChannel =
  res
    "GetAPNSVoipChannelResponse"
    "fixture/GetAPNSVoipChannelResponse.proto"
    pinpoint
    (Proxy :: Proxy GetAPNSVoipChannel)

responseListJourneys :: ListJourneysResponse -> TestTree
responseListJourneys =
  res
    "ListJourneysResponse"
    "fixture/ListJourneysResponse.proto"
    pinpoint
    (Proxy :: Proxy ListJourneys)

responseDeleteEventStream :: DeleteEventStreamResponse -> TestTree
responseDeleteEventStream =
  res
    "DeleteEventStreamResponse"
    "fixture/DeleteEventStreamResponse.proto"
    pinpoint
    (Proxy :: Proxy DeleteEventStream)

responseUpdateBaiduChannel :: UpdateBaiduChannelResponse -> TestTree
responseUpdateBaiduChannel =
  res
    "UpdateBaiduChannelResponse"
    "fixture/UpdateBaiduChannelResponse.proto"
    pinpoint
    (Proxy :: Proxy UpdateBaiduChannel)

responseGetExportJobs :: GetExportJobsResponse -> TestTree
responseGetExportJobs =
  res
    "GetExportJobsResponse"
    "fixture/GetExportJobsResponse.proto"
    pinpoint
    (Proxy :: Proxy GetExportJobs)

responseGetSegments :: GetSegmentsResponse -> TestTree
responseGetSegments =
  res
    "GetSegmentsResponse"
    "fixture/GetSegmentsResponse.proto"
    pinpoint
    (Proxy :: Proxy GetSegments)

responseGetJourney :: GetJourneyResponse -> TestTree
responseGetJourney =
  res
    "GetJourneyResponse"
    "fixture/GetJourneyResponse.proto"
    pinpoint
    (Proxy :: Proxy GetJourney)

responsePutEvents :: PutEventsResponse -> TestTree
responsePutEvents =
  res
    "PutEventsResponse"
    "fixture/PutEventsResponse.proto"
    pinpoint
    (Proxy :: Proxy PutEvents)

responseDeleteAPNSVoipChannel :: DeleteAPNSVoipChannelResponse -> TestTree
responseDeleteAPNSVoipChannel =
  res
    "DeleteAPNSVoipChannelResponse"
    "fixture/DeleteAPNSVoipChannelResponse.proto"
    pinpoint
    (Proxy :: Proxy DeleteAPNSVoipChannel)

responseUpdateAPNSVoipChannel :: UpdateAPNSVoipChannelResponse -> TestTree
responseUpdateAPNSVoipChannel =
  res
    "UpdateAPNSVoipChannelResponse"
    "fixture/UpdateAPNSVoipChannelResponse.proto"
    pinpoint
    (Proxy :: Proxy UpdateAPNSVoipChannel)

responseCreateImportJob :: CreateImportJobResponse -> TestTree
responseCreateImportJob =
  res
    "CreateImportJobResponse"
    "fixture/CreateImportJobResponse.proto"
    pinpoint
    (Proxy :: Proxy CreateImportJob)

responseUpdateEmailChannel :: UpdateEmailChannelResponse -> TestTree
responseUpdateEmailChannel =
  res
    "UpdateEmailChannelResponse"
    "fixture/UpdateEmailChannelResponse.proto"
    pinpoint
    (Proxy :: Proxy UpdateEmailChannel)

responseGetEventStream :: GetEventStreamResponse -> TestTree
responseGetEventStream =
  res
    "GetEventStreamResponse"
    "fixture/GetEventStreamResponse.proto"
    pinpoint
    (Proxy :: Proxy GetEventStream)

responseSendUsersMessages :: SendUsersMessagesResponse -> TestTree
responseSendUsersMessages =
  res
    "SendUsersMessagesResponse"
    "fixture/SendUsersMessagesResponse.proto"
    pinpoint
    (Proxy :: Proxy SendUsersMessages)

responseDeleteEmailChannel :: DeleteEmailChannelResponse -> TestTree
responseDeleteEmailChannel =
  res
    "DeleteEmailChannelResponse"
    "fixture/DeleteEmailChannelResponse.proto"
    pinpoint
    (Proxy :: Proxy DeleteEmailChannel)

responseUpdateApplicationSettings :: UpdateApplicationSettingsResponse -> TestTree
responseUpdateApplicationSettings =
  res
    "UpdateApplicationSettingsResponse"
    "fixture/UpdateApplicationSettingsResponse.proto"
    pinpoint
    (Proxy :: Proxy UpdateApplicationSettings)

responseUpdateJourneyState :: UpdateJourneyStateResponse -> TestTree
responseUpdateJourneyState =
  res
    "UpdateJourneyStateResponse"
    "fixture/UpdateJourneyStateResponse.proto"
    pinpoint
    (Proxy :: Proxy UpdateJourneyState)

responseListTemplateVersions :: ListTemplateVersionsResponse -> TestTree
responseListTemplateVersions =
  res
    "ListTemplateVersionsResponse"
    "fixture/ListTemplateVersionsResponse.proto"
    pinpoint
    (Proxy :: Proxy ListTemplateVersions)

responseDeleteAPNSSandboxChannel :: DeleteAPNSSandboxChannelResponse -> TestTree
responseDeleteAPNSSandboxChannel =
  res
    "DeleteAPNSSandboxChannelResponse"
    "fixture/DeleteAPNSSandboxChannelResponse.proto"
    pinpoint
    (Proxy :: Proxy DeleteAPNSSandboxChannel)

responseGetCampaignActivities :: GetCampaignActivitiesResponse -> TestTree
responseGetCampaignActivities =
  res
    "GetCampaignActivitiesResponse"
    "fixture/GetCampaignActivitiesResponse.proto"
    pinpoint
    (Proxy :: Proxy GetCampaignActivities)

responseUpdateAPNSSandboxChannel :: UpdateAPNSSandboxChannelResponse -> TestTree
responseUpdateAPNSSandboxChannel =
  res
    "UpdateAPNSSandboxChannelResponse"
    "fixture/UpdateAPNSSandboxChannelResponse.proto"
    pinpoint
    (Proxy :: Proxy UpdateAPNSSandboxChannel)

responseGetCampaigns :: GetCampaignsResponse -> TestTree
responseGetCampaigns =
  res
    "GetCampaignsResponse"
    "fixture/GetCampaignsResponse.proto"
    pinpoint
    (Proxy :: Proxy GetCampaigns)

responseGetSmsTemplate :: GetSmsTemplateResponse -> TestTree
responseGetSmsTemplate =
  res
    "GetSmsTemplateResponse"
    "fixture/GetSmsTemplateResponse.proto"
    pinpoint
    (Proxy :: Proxy GetSmsTemplate)

responseGetPushTemplate :: GetPushTemplateResponse -> TestTree
responseGetPushTemplate =
  res
    "GetPushTemplateResponse"
    "fixture/GetPushTemplateResponse.proto"
    pinpoint
    (Proxy :: Proxy GetPushTemplate)

responseGetCampaign :: GetCampaignResponse -> TestTree
responseGetCampaign =
  res
    "GetCampaignResponse"
    "fixture/GetCampaignResponse.proto"
    pinpoint
    (Proxy :: Proxy GetCampaign)

responseDeleteApp :: DeleteAppResponse -> TestTree
responseDeleteApp =
  res
    "DeleteAppResponse"
    "fixture/DeleteAppResponse.proto"
    pinpoint
    (Proxy :: Proxy DeleteApp)

responseDeleteUserEndpoints :: DeleteUserEndpointsResponse -> TestTree
responseDeleteUserEndpoints =
  res
    "DeleteUserEndpointsResponse"
    "fixture/DeleteUserEndpointsResponse.proto"
    pinpoint
    (Proxy :: Proxy DeleteUserEndpoints)

responseCreateEmailTemplate :: CreateEmailTemplateResponse -> TestTree
responseCreateEmailTemplate =
  res
    "CreateEmailTemplateResponse"
    "fixture/CreateEmailTemplateResponse.proto"
    pinpoint
    (Proxy :: Proxy CreateEmailTemplate)

responseUpdateEmailTemplate :: UpdateEmailTemplateResponse -> TestTree
responseUpdateEmailTemplate =
  res
    "UpdateEmailTemplateResponse"
    "fixture/UpdateEmailTemplateResponse.proto"
    pinpoint
    (Proxy :: Proxy UpdateEmailTemplate)

responseDeleteEmailTemplate :: DeleteEmailTemplateResponse -> TestTree
responseDeleteEmailTemplate =
  res
    "DeleteEmailTemplateResponse"
    "fixture/DeleteEmailTemplateResponse.proto"
    pinpoint
    (Proxy :: Proxy DeleteEmailTemplate)

responseCreateApp :: CreateAppResponse -> TestTree
responseCreateApp =
  res
    "CreateAppResponse"
    "fixture/CreateAppResponse.proto"
    pinpoint
    (Proxy :: Proxy CreateApp)

responseUpdateEndpointsBatch :: UpdateEndpointsBatchResponse -> TestTree
responseUpdateEndpointsBatch =
  res
    "UpdateEndpointsBatchResponse"
    "fixture/UpdateEndpointsBatchResponse.proto"
    pinpoint
    (Proxy :: Proxy UpdateEndpointsBatch)

responseGetExportJob :: GetExportJobResponse -> TestTree
responseGetExportJob =
  res
    "GetExportJobResponse"
    "fixture/GetExportJobResponse.proto"
    pinpoint
    (Proxy :: Proxy GetExportJob)

responseGetSegment :: GetSegmentResponse -> TestTree
responseGetSegment =
  res
    "GetSegmentResponse"
    "fixture/GetSegmentResponse.proto"
    pinpoint
    (Proxy :: Proxy GetSegment)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    pinpoint
    (Proxy :: Proxy ListTagsForResource)

responseGetCampaignVersion :: GetCampaignVersionResponse -> TestTree
responseGetCampaignVersion =
  res
    "GetCampaignVersionResponse"
    "fixture/GetCampaignVersionResponse.proto"
    pinpoint
    (Proxy :: Proxy GetCampaignVersion)

responseCreateVoiceTemplate :: CreateVoiceTemplateResponse -> TestTree
responseCreateVoiceTemplate =
  res
    "CreateVoiceTemplateResponse"
    "fixture/CreateVoiceTemplateResponse.proto"
    pinpoint
    (Proxy :: Proxy CreateVoiceTemplate)
