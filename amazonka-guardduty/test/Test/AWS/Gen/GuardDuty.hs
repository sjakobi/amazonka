{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.GuardDuty
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.GuardDuty where

import Data.Proxy
import Network.AWS.GuardDuty
import Test.AWS.Fixture
import Test.AWS.GuardDuty.Internal
import Test.AWS.Prelude
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestCreateMembers $
--             createMembers
--
--         , requestUpdateThreatIntelSet $
--             updateThreatIntelSet
--
--         , requestDeleteThreatIntelSet $
--             deleteThreatIntelSet
--
--         , requestGetInvitationsCount $
--             getInvitationsCount
--
--         , requestUnarchiveFindings $
--             unarchiveFindings
--
--         , requestEnableOrganizationAdminAccount $
--             enableOrganizationAdminAccount
--
--         , requestDeletePublishingDestination $
--             deletePublishingDestination
--
--         , requestUpdatePublishingDestination $
--             updatePublishingDestination
--
--         , requestArchiveFindings $
--             archiveFindings
--
--         , requestCreateFilter $
--             createFilter
--
--         , requestGetDetector $
--             getDetector
--
--         , requestListFindings $
--             listFindings
--
--         , requestUpdateFilter $
--             updateFilter
--
--         , requestDeleteFilter $
--             deleteFilter
--
--         , requestDisableOrganizationAdminAccount $
--             disableOrganizationAdminAccount
--
--         , requestAcceptInvitation $
--             acceptInvitation
--
--         , requestUpdateFindingsFeedback $
--             updateFindingsFeedback
--
--         , requestDescribeOrganizationConfiguration $
--             describeOrganizationConfiguration
--
--         , requestGetMasterAccount $
--             getMasterAccount
--
--         , requestUntagResource $
--             untagResource
--
--         , requestListDetectors $
--             listDetectors
--
--         , requestDescribePublishingDestination $
--             describePublishingDestination
--
--         , requestGetFindings $
--             getFindings
--
--         , requestTagResource $
--             tagResource
--
--         , requestGetFindingsStatistics $
--             getFindingsStatistics
--
--         , requestGetMembers $
--             getMembers
--
--         , requestDeleteIPSet $
--             deleteIPSet
--
--         , requestUpdateIPSet $
--             updateIPSet
--
--         , requestCreateThreatIntelSet $
--             createThreatIntelSet
--
--         , requestUpdateOrganizationConfiguration $
--             updateOrganizationConfiguration
--
--         , requestInviteMembers $
--             inviteMembers
--
--         , requestStopMonitoringMembers $
--             stopMonitoringMembers
--
--         , requestListThreatIntelSets $
--             listThreatIntelSets
--
--         , requestGetMemberDetectors $
--             getMemberDetectors
--
--         , requestStartMonitoringMembers $
--             startMonitoringMembers
--
--         , requestCreateIPSet $
--             createIPSet
--
--         , requestListOrganizationAdminAccounts $
--             listOrganizationAdminAccounts
--
--         , requestListPublishingDestinations $
--             listPublishingDestinations
--
--         , requestCreateSampleFindings $
--             createSampleFindings
--
--         , requestDisassociateMembers $
--             disassociateMembers
--
--         , requestCreatePublishingDestination $
--             createPublishingDestination
--
--         , requestListFilters $
--             listFilters
--
--         , requestDisassociateFromMasterAccount $
--             disassociateFromMasterAccount
--
--         , requestListMembers $
--             listMembers
--
--         , requestDeclineInvitations $
--             declineInvitations
--
--         , requestCreateDetector $
--             createDetector
--
--         , requestGetUsageStatistics $
--             getUsageStatistics
--
--         , requestGetFilter $
--             getFilter
--
--         , requestDeleteInvitations $
--             deleteInvitations
--
--         , requestUpdateDetector $
--             updateDetector
--
--         , requestDeleteDetector $
--             deleteDetector
--
--         , requestListInvitations $
--             listInvitations
--
--         , requestGetThreatIntelSet $
--             getThreatIntelSet
--
--         , requestUpdateMemberDetectors $
--             updateMemberDetectors
--
--         , requestGetIPSet $
--             getIPSet
--
--         , requestListTagsForResource $
--             listTagsForResource
--
--         , requestDeleteMembers $
--             deleteMembers
--
--         , requestListIPSets $
--             listIPSets
--
--           ]

--     , testGroup "response"
--         [ responseCreateMembers $
--             createMembersResponse
--
--         , responseUpdateThreatIntelSet $
--             updateThreatIntelSetResponse
--
--         , responseDeleteThreatIntelSet $
--             deleteThreatIntelSetResponse
--
--         , responseGetInvitationsCount $
--             getInvitationsCountResponse
--
--         , responseUnarchiveFindings $
--             unarchiveFindingsResponse
--
--         , responseEnableOrganizationAdminAccount $
--             enableOrganizationAdminAccountResponse
--
--         , responseDeletePublishingDestination $
--             deletePublishingDestinationResponse
--
--         , responseUpdatePublishingDestination $
--             updatePublishingDestinationResponse
--
--         , responseArchiveFindings $
--             archiveFindingsResponse
--
--         , responseCreateFilter $
--             createFilterResponse
--
--         , responseGetDetector $
--             getDetectorResponse
--
--         , responseListFindings $
--             listFindingsResponse
--
--         , responseUpdateFilter $
--             updateFilterResponse
--
--         , responseDeleteFilter $
--             deleteFilterResponse
--
--         , responseDisableOrganizationAdminAccount $
--             disableOrganizationAdminAccountResponse
--
--         , responseAcceptInvitation $
--             acceptInvitationResponse
--
--         , responseUpdateFindingsFeedback $
--             updateFindingsFeedbackResponse
--
--         , responseDescribeOrganizationConfiguration $
--             describeOrganizationConfigurationResponse
--
--         , responseGetMasterAccount $
--             getMasterAccountResponse
--
--         , responseUntagResource $
--             untagResourceResponse
--
--         , responseListDetectors $
--             listDetectorsResponse
--
--         , responseDescribePublishingDestination $
--             describePublishingDestinationResponse
--
--         , responseGetFindings $
--             getFindingsResponse
--
--         , responseTagResource $
--             tagResourceResponse
--
--         , responseGetFindingsStatistics $
--             getFindingsStatisticsResponse
--
--         , responseGetMembers $
--             getMembersResponse
--
--         , responseDeleteIPSet $
--             deleteIPSetResponse
--
--         , responseUpdateIPSet $
--             updateIPSetResponse
--
--         , responseCreateThreatIntelSet $
--             createThreatIntelSetResponse
--
--         , responseUpdateOrganizationConfiguration $
--             updateOrganizationConfigurationResponse
--
--         , responseInviteMembers $
--             inviteMembersResponse
--
--         , responseStopMonitoringMembers $
--             stopMonitoringMembersResponse
--
--         , responseListThreatIntelSets $
--             listThreatIntelSetsResponse
--
--         , responseGetMemberDetectors $
--             getMemberDetectorsResponse
--
--         , responseStartMonitoringMembers $
--             startMonitoringMembersResponse
--
--         , responseCreateIPSet $
--             createIPSetResponse
--
--         , responseListOrganizationAdminAccounts $
--             listOrganizationAdminAccountsResponse
--
--         , responseListPublishingDestinations $
--             listPublishingDestinationsResponse
--
--         , responseCreateSampleFindings $
--             createSampleFindingsResponse
--
--         , responseDisassociateMembers $
--             disassociateMembersResponse
--
--         , responseCreatePublishingDestination $
--             createPublishingDestinationResponse
--
--         , responseListFilters $
--             listFiltersResponse
--
--         , responseDisassociateFromMasterAccount $
--             disassociateFromMasterAccountResponse
--
--         , responseListMembers $
--             listMembersResponse
--
--         , responseDeclineInvitations $
--             declineInvitationsResponse
--
--         , responseCreateDetector $
--             createDetectorResponse
--
--         , responseGetUsageStatistics $
--             getUsageStatisticsResponse
--
--         , responseGetFilter $
--             getFilterResponse
--
--         , responseDeleteInvitations $
--             deleteInvitationsResponse
--
--         , responseUpdateDetector $
--             updateDetectorResponse
--
--         , responseDeleteDetector $
--             deleteDetectorResponse
--
--         , responseListInvitations $
--             listInvitationsResponse
--
--         , responseGetThreatIntelSet $
--             getThreatIntelSetResponse
--
--         , responseUpdateMemberDetectors $
--             updateMemberDetectorsResponse
--
--         , responseGetIPSet $
--             getIPSetResponse
--
--         , responseListTagsForResource $
--             listTagsForResourceResponse
--
--         , responseDeleteMembers $
--             deleteMembersResponse
--
--         , responseListIPSets $
--             listIPSetsResponse
--
--           ]
--     ]

-- Requests

requestCreateMembers :: CreateMembers -> TestTree
requestCreateMembers =
  req
    "CreateMembers"
    "fixture/CreateMembers.yaml"

requestUpdateThreatIntelSet :: UpdateThreatIntelSet -> TestTree
requestUpdateThreatIntelSet =
  req
    "UpdateThreatIntelSet"
    "fixture/UpdateThreatIntelSet.yaml"

requestDeleteThreatIntelSet :: DeleteThreatIntelSet -> TestTree
requestDeleteThreatIntelSet =
  req
    "DeleteThreatIntelSet"
    "fixture/DeleteThreatIntelSet.yaml"

requestGetInvitationsCount :: GetInvitationsCount -> TestTree
requestGetInvitationsCount =
  req
    "GetInvitationsCount"
    "fixture/GetInvitationsCount.yaml"

requestUnarchiveFindings :: UnarchiveFindings -> TestTree
requestUnarchiveFindings =
  req
    "UnarchiveFindings"
    "fixture/UnarchiveFindings.yaml"

requestEnableOrganizationAdminAccount :: EnableOrganizationAdminAccount -> TestTree
requestEnableOrganizationAdminAccount =
  req
    "EnableOrganizationAdminAccount"
    "fixture/EnableOrganizationAdminAccount.yaml"

requestDeletePublishingDestination :: DeletePublishingDestination -> TestTree
requestDeletePublishingDestination =
  req
    "DeletePublishingDestination"
    "fixture/DeletePublishingDestination.yaml"

requestUpdatePublishingDestination :: UpdatePublishingDestination -> TestTree
requestUpdatePublishingDestination =
  req
    "UpdatePublishingDestination"
    "fixture/UpdatePublishingDestination.yaml"

requestArchiveFindings :: ArchiveFindings -> TestTree
requestArchiveFindings =
  req
    "ArchiveFindings"
    "fixture/ArchiveFindings.yaml"

requestCreateFilter :: CreateFilter -> TestTree
requestCreateFilter =
  req
    "CreateFilter"
    "fixture/CreateFilter.yaml"

requestGetDetector :: GetDetector -> TestTree
requestGetDetector =
  req
    "GetDetector"
    "fixture/GetDetector.yaml"

requestListFindings :: ListFindings -> TestTree
requestListFindings =
  req
    "ListFindings"
    "fixture/ListFindings.yaml"

requestUpdateFilter :: UpdateFilter -> TestTree
requestUpdateFilter =
  req
    "UpdateFilter"
    "fixture/UpdateFilter.yaml"

requestDeleteFilter :: DeleteFilter -> TestTree
requestDeleteFilter =
  req
    "DeleteFilter"
    "fixture/DeleteFilter.yaml"

requestDisableOrganizationAdminAccount :: DisableOrganizationAdminAccount -> TestTree
requestDisableOrganizationAdminAccount =
  req
    "DisableOrganizationAdminAccount"
    "fixture/DisableOrganizationAdminAccount.yaml"

requestAcceptInvitation :: AcceptInvitation -> TestTree
requestAcceptInvitation =
  req
    "AcceptInvitation"
    "fixture/AcceptInvitation.yaml"

requestUpdateFindingsFeedback :: UpdateFindingsFeedback -> TestTree
requestUpdateFindingsFeedback =
  req
    "UpdateFindingsFeedback"
    "fixture/UpdateFindingsFeedback.yaml"

requestDescribeOrganizationConfiguration :: DescribeOrganizationConfiguration -> TestTree
requestDescribeOrganizationConfiguration =
  req
    "DescribeOrganizationConfiguration"
    "fixture/DescribeOrganizationConfiguration.yaml"

requestGetMasterAccount :: GetMasterAccount -> TestTree
requestGetMasterAccount =
  req
    "GetMasterAccount"
    "fixture/GetMasterAccount.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource =
  req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestListDetectors :: ListDetectors -> TestTree
requestListDetectors =
  req
    "ListDetectors"
    "fixture/ListDetectors.yaml"

requestDescribePublishingDestination :: DescribePublishingDestination -> TestTree
requestDescribePublishingDestination =
  req
    "DescribePublishingDestination"
    "fixture/DescribePublishingDestination.yaml"

requestGetFindings :: GetFindings -> TestTree
requestGetFindings =
  req
    "GetFindings"
    "fixture/GetFindings.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource =
  req
    "TagResource"
    "fixture/TagResource.yaml"

requestGetFindingsStatistics :: GetFindingsStatistics -> TestTree
requestGetFindingsStatistics =
  req
    "GetFindingsStatistics"
    "fixture/GetFindingsStatistics.yaml"

requestGetMembers :: GetMembers -> TestTree
requestGetMembers =
  req
    "GetMembers"
    "fixture/GetMembers.yaml"

requestDeleteIPSet :: DeleteIPSet -> TestTree
requestDeleteIPSet =
  req
    "DeleteIPSet"
    "fixture/DeleteIPSet.yaml"

requestUpdateIPSet :: UpdateIPSet -> TestTree
requestUpdateIPSet =
  req
    "UpdateIPSet"
    "fixture/UpdateIPSet.yaml"

requestCreateThreatIntelSet :: CreateThreatIntelSet -> TestTree
requestCreateThreatIntelSet =
  req
    "CreateThreatIntelSet"
    "fixture/CreateThreatIntelSet.yaml"

requestUpdateOrganizationConfiguration :: UpdateOrganizationConfiguration -> TestTree
requestUpdateOrganizationConfiguration =
  req
    "UpdateOrganizationConfiguration"
    "fixture/UpdateOrganizationConfiguration.yaml"

requestInviteMembers :: InviteMembers -> TestTree
requestInviteMembers =
  req
    "InviteMembers"
    "fixture/InviteMembers.yaml"

requestStopMonitoringMembers :: StopMonitoringMembers -> TestTree
requestStopMonitoringMembers =
  req
    "StopMonitoringMembers"
    "fixture/StopMonitoringMembers.yaml"

requestListThreatIntelSets :: ListThreatIntelSets -> TestTree
requestListThreatIntelSets =
  req
    "ListThreatIntelSets"
    "fixture/ListThreatIntelSets.yaml"

requestGetMemberDetectors :: GetMemberDetectors -> TestTree
requestGetMemberDetectors =
  req
    "GetMemberDetectors"
    "fixture/GetMemberDetectors.yaml"

requestStartMonitoringMembers :: StartMonitoringMembers -> TestTree
requestStartMonitoringMembers =
  req
    "StartMonitoringMembers"
    "fixture/StartMonitoringMembers.yaml"

requestCreateIPSet :: CreateIPSet -> TestTree
requestCreateIPSet =
  req
    "CreateIPSet"
    "fixture/CreateIPSet.yaml"

requestListOrganizationAdminAccounts :: ListOrganizationAdminAccounts -> TestTree
requestListOrganizationAdminAccounts =
  req
    "ListOrganizationAdminAccounts"
    "fixture/ListOrganizationAdminAccounts.yaml"

requestListPublishingDestinations :: ListPublishingDestinations -> TestTree
requestListPublishingDestinations =
  req
    "ListPublishingDestinations"
    "fixture/ListPublishingDestinations.yaml"

requestCreateSampleFindings :: CreateSampleFindings -> TestTree
requestCreateSampleFindings =
  req
    "CreateSampleFindings"
    "fixture/CreateSampleFindings.yaml"

requestDisassociateMembers :: DisassociateMembers -> TestTree
requestDisassociateMembers =
  req
    "DisassociateMembers"
    "fixture/DisassociateMembers.yaml"

requestCreatePublishingDestination :: CreatePublishingDestination -> TestTree
requestCreatePublishingDestination =
  req
    "CreatePublishingDestination"
    "fixture/CreatePublishingDestination.yaml"

requestListFilters :: ListFilters -> TestTree
requestListFilters =
  req
    "ListFilters"
    "fixture/ListFilters.yaml"

requestDisassociateFromMasterAccount :: DisassociateFromMasterAccount -> TestTree
requestDisassociateFromMasterAccount =
  req
    "DisassociateFromMasterAccount"
    "fixture/DisassociateFromMasterAccount.yaml"

requestListMembers :: ListMembers -> TestTree
requestListMembers =
  req
    "ListMembers"
    "fixture/ListMembers.yaml"

requestDeclineInvitations :: DeclineInvitations -> TestTree
requestDeclineInvitations =
  req
    "DeclineInvitations"
    "fixture/DeclineInvitations.yaml"

requestCreateDetector :: CreateDetector -> TestTree
requestCreateDetector =
  req
    "CreateDetector"
    "fixture/CreateDetector.yaml"

requestGetUsageStatistics :: GetUsageStatistics -> TestTree
requestGetUsageStatistics =
  req
    "GetUsageStatistics"
    "fixture/GetUsageStatistics.yaml"

requestGetFilter :: GetFilter -> TestTree
requestGetFilter =
  req
    "GetFilter"
    "fixture/GetFilter.yaml"

requestDeleteInvitations :: DeleteInvitations -> TestTree
requestDeleteInvitations =
  req
    "DeleteInvitations"
    "fixture/DeleteInvitations.yaml"

requestUpdateDetector :: UpdateDetector -> TestTree
requestUpdateDetector =
  req
    "UpdateDetector"
    "fixture/UpdateDetector.yaml"

requestDeleteDetector :: DeleteDetector -> TestTree
requestDeleteDetector =
  req
    "DeleteDetector"
    "fixture/DeleteDetector.yaml"

requestListInvitations :: ListInvitations -> TestTree
requestListInvitations =
  req
    "ListInvitations"
    "fixture/ListInvitations.yaml"

requestGetThreatIntelSet :: GetThreatIntelSet -> TestTree
requestGetThreatIntelSet =
  req
    "GetThreatIntelSet"
    "fixture/GetThreatIntelSet.yaml"

requestUpdateMemberDetectors :: UpdateMemberDetectors -> TestTree
requestUpdateMemberDetectors =
  req
    "UpdateMemberDetectors"
    "fixture/UpdateMemberDetectors.yaml"

requestGetIPSet :: GetIPSet -> TestTree
requestGetIPSet =
  req
    "GetIPSet"
    "fixture/GetIPSet.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestDeleteMembers :: DeleteMembers -> TestTree
requestDeleteMembers =
  req
    "DeleteMembers"
    "fixture/DeleteMembers.yaml"

requestListIPSets :: ListIPSets -> TestTree
requestListIPSets =
  req
    "ListIPSets"
    "fixture/ListIPSets.yaml"

-- Responses

responseCreateMembers :: CreateMembersResponse -> TestTree
responseCreateMembers =
  res
    "CreateMembersResponse"
    "fixture/CreateMembersResponse.proto"
    guardDuty
    (Proxy :: Proxy CreateMembers)

responseUpdateThreatIntelSet :: UpdateThreatIntelSetResponse -> TestTree
responseUpdateThreatIntelSet =
  res
    "UpdateThreatIntelSetResponse"
    "fixture/UpdateThreatIntelSetResponse.proto"
    guardDuty
    (Proxy :: Proxy UpdateThreatIntelSet)

responseDeleteThreatIntelSet :: DeleteThreatIntelSetResponse -> TestTree
responseDeleteThreatIntelSet =
  res
    "DeleteThreatIntelSetResponse"
    "fixture/DeleteThreatIntelSetResponse.proto"
    guardDuty
    (Proxy :: Proxy DeleteThreatIntelSet)

responseGetInvitationsCount :: GetInvitationsCountResponse -> TestTree
responseGetInvitationsCount =
  res
    "GetInvitationsCountResponse"
    "fixture/GetInvitationsCountResponse.proto"
    guardDuty
    (Proxy :: Proxy GetInvitationsCount)

responseUnarchiveFindings :: UnarchiveFindingsResponse -> TestTree
responseUnarchiveFindings =
  res
    "UnarchiveFindingsResponse"
    "fixture/UnarchiveFindingsResponse.proto"
    guardDuty
    (Proxy :: Proxy UnarchiveFindings)

responseEnableOrganizationAdminAccount :: EnableOrganizationAdminAccountResponse -> TestTree
responseEnableOrganizationAdminAccount =
  res
    "EnableOrganizationAdminAccountResponse"
    "fixture/EnableOrganizationAdminAccountResponse.proto"
    guardDuty
    (Proxy :: Proxy EnableOrganizationAdminAccount)

responseDeletePublishingDestination :: DeletePublishingDestinationResponse -> TestTree
responseDeletePublishingDestination =
  res
    "DeletePublishingDestinationResponse"
    "fixture/DeletePublishingDestinationResponse.proto"
    guardDuty
    (Proxy :: Proxy DeletePublishingDestination)

responseUpdatePublishingDestination :: UpdatePublishingDestinationResponse -> TestTree
responseUpdatePublishingDestination =
  res
    "UpdatePublishingDestinationResponse"
    "fixture/UpdatePublishingDestinationResponse.proto"
    guardDuty
    (Proxy :: Proxy UpdatePublishingDestination)

responseArchiveFindings :: ArchiveFindingsResponse -> TestTree
responseArchiveFindings =
  res
    "ArchiveFindingsResponse"
    "fixture/ArchiveFindingsResponse.proto"
    guardDuty
    (Proxy :: Proxy ArchiveFindings)

responseCreateFilter :: CreateFilterResponse -> TestTree
responseCreateFilter =
  res
    "CreateFilterResponse"
    "fixture/CreateFilterResponse.proto"
    guardDuty
    (Proxy :: Proxy CreateFilter)

responseGetDetector :: GetDetectorResponse -> TestTree
responseGetDetector =
  res
    "GetDetectorResponse"
    "fixture/GetDetectorResponse.proto"
    guardDuty
    (Proxy :: Proxy GetDetector)

responseListFindings :: ListFindingsResponse -> TestTree
responseListFindings =
  res
    "ListFindingsResponse"
    "fixture/ListFindingsResponse.proto"
    guardDuty
    (Proxy :: Proxy ListFindings)

responseUpdateFilter :: UpdateFilterResponse -> TestTree
responseUpdateFilter =
  res
    "UpdateFilterResponse"
    "fixture/UpdateFilterResponse.proto"
    guardDuty
    (Proxy :: Proxy UpdateFilter)

responseDeleteFilter :: DeleteFilterResponse -> TestTree
responseDeleteFilter =
  res
    "DeleteFilterResponse"
    "fixture/DeleteFilterResponse.proto"
    guardDuty
    (Proxy :: Proxy DeleteFilter)

responseDisableOrganizationAdminAccount :: DisableOrganizationAdminAccountResponse -> TestTree
responseDisableOrganizationAdminAccount =
  res
    "DisableOrganizationAdminAccountResponse"
    "fixture/DisableOrganizationAdminAccountResponse.proto"
    guardDuty
    (Proxy :: Proxy DisableOrganizationAdminAccount)

responseAcceptInvitation :: AcceptInvitationResponse -> TestTree
responseAcceptInvitation =
  res
    "AcceptInvitationResponse"
    "fixture/AcceptInvitationResponse.proto"
    guardDuty
    (Proxy :: Proxy AcceptInvitation)

responseUpdateFindingsFeedback :: UpdateFindingsFeedbackResponse -> TestTree
responseUpdateFindingsFeedback =
  res
    "UpdateFindingsFeedbackResponse"
    "fixture/UpdateFindingsFeedbackResponse.proto"
    guardDuty
    (Proxy :: Proxy UpdateFindingsFeedback)

responseDescribeOrganizationConfiguration :: DescribeOrganizationConfigurationResponse -> TestTree
responseDescribeOrganizationConfiguration =
  res
    "DescribeOrganizationConfigurationResponse"
    "fixture/DescribeOrganizationConfigurationResponse.proto"
    guardDuty
    (Proxy :: Proxy DescribeOrganizationConfiguration)

responseGetMasterAccount :: GetMasterAccountResponse -> TestTree
responseGetMasterAccount =
  res
    "GetMasterAccountResponse"
    "fixture/GetMasterAccountResponse.proto"
    guardDuty
    (Proxy :: Proxy GetMasterAccount)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    guardDuty
    (Proxy :: Proxy UntagResource)

responseListDetectors :: ListDetectorsResponse -> TestTree
responseListDetectors =
  res
    "ListDetectorsResponse"
    "fixture/ListDetectorsResponse.proto"
    guardDuty
    (Proxy :: Proxy ListDetectors)

responseDescribePublishingDestination :: DescribePublishingDestinationResponse -> TestTree
responseDescribePublishingDestination =
  res
    "DescribePublishingDestinationResponse"
    "fixture/DescribePublishingDestinationResponse.proto"
    guardDuty
    (Proxy :: Proxy DescribePublishingDestination)

responseGetFindings :: GetFindingsResponse -> TestTree
responseGetFindings =
  res
    "GetFindingsResponse"
    "fixture/GetFindingsResponse.proto"
    guardDuty
    (Proxy :: Proxy GetFindings)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    guardDuty
    (Proxy :: Proxy TagResource)

responseGetFindingsStatistics :: GetFindingsStatisticsResponse -> TestTree
responseGetFindingsStatistics =
  res
    "GetFindingsStatisticsResponse"
    "fixture/GetFindingsStatisticsResponse.proto"
    guardDuty
    (Proxy :: Proxy GetFindingsStatistics)

responseGetMembers :: GetMembersResponse -> TestTree
responseGetMembers =
  res
    "GetMembersResponse"
    "fixture/GetMembersResponse.proto"
    guardDuty
    (Proxy :: Proxy GetMembers)

responseDeleteIPSet :: DeleteIPSetResponse -> TestTree
responseDeleteIPSet =
  res
    "DeleteIPSetResponse"
    "fixture/DeleteIPSetResponse.proto"
    guardDuty
    (Proxy :: Proxy DeleteIPSet)

responseUpdateIPSet :: UpdateIPSetResponse -> TestTree
responseUpdateIPSet =
  res
    "UpdateIPSetResponse"
    "fixture/UpdateIPSetResponse.proto"
    guardDuty
    (Proxy :: Proxy UpdateIPSet)

responseCreateThreatIntelSet :: CreateThreatIntelSetResponse -> TestTree
responseCreateThreatIntelSet =
  res
    "CreateThreatIntelSetResponse"
    "fixture/CreateThreatIntelSetResponse.proto"
    guardDuty
    (Proxy :: Proxy CreateThreatIntelSet)

responseUpdateOrganizationConfiguration :: UpdateOrganizationConfigurationResponse -> TestTree
responseUpdateOrganizationConfiguration =
  res
    "UpdateOrganizationConfigurationResponse"
    "fixture/UpdateOrganizationConfigurationResponse.proto"
    guardDuty
    (Proxy :: Proxy UpdateOrganizationConfiguration)

responseInviteMembers :: InviteMembersResponse -> TestTree
responseInviteMembers =
  res
    "InviteMembersResponse"
    "fixture/InviteMembersResponse.proto"
    guardDuty
    (Proxy :: Proxy InviteMembers)

responseStopMonitoringMembers :: StopMonitoringMembersResponse -> TestTree
responseStopMonitoringMembers =
  res
    "StopMonitoringMembersResponse"
    "fixture/StopMonitoringMembersResponse.proto"
    guardDuty
    (Proxy :: Proxy StopMonitoringMembers)

responseListThreatIntelSets :: ListThreatIntelSetsResponse -> TestTree
responseListThreatIntelSets =
  res
    "ListThreatIntelSetsResponse"
    "fixture/ListThreatIntelSetsResponse.proto"
    guardDuty
    (Proxy :: Proxy ListThreatIntelSets)

responseGetMemberDetectors :: GetMemberDetectorsResponse -> TestTree
responseGetMemberDetectors =
  res
    "GetMemberDetectorsResponse"
    "fixture/GetMemberDetectorsResponse.proto"
    guardDuty
    (Proxy :: Proxy GetMemberDetectors)

responseStartMonitoringMembers :: StartMonitoringMembersResponse -> TestTree
responseStartMonitoringMembers =
  res
    "StartMonitoringMembersResponse"
    "fixture/StartMonitoringMembersResponse.proto"
    guardDuty
    (Proxy :: Proxy StartMonitoringMembers)

responseCreateIPSet :: CreateIPSetResponse -> TestTree
responseCreateIPSet =
  res
    "CreateIPSetResponse"
    "fixture/CreateIPSetResponse.proto"
    guardDuty
    (Proxy :: Proxy CreateIPSet)

responseListOrganizationAdminAccounts :: ListOrganizationAdminAccountsResponse -> TestTree
responseListOrganizationAdminAccounts =
  res
    "ListOrganizationAdminAccountsResponse"
    "fixture/ListOrganizationAdminAccountsResponse.proto"
    guardDuty
    (Proxy :: Proxy ListOrganizationAdminAccounts)

responseListPublishingDestinations :: ListPublishingDestinationsResponse -> TestTree
responseListPublishingDestinations =
  res
    "ListPublishingDestinationsResponse"
    "fixture/ListPublishingDestinationsResponse.proto"
    guardDuty
    (Proxy :: Proxy ListPublishingDestinations)

responseCreateSampleFindings :: CreateSampleFindingsResponse -> TestTree
responseCreateSampleFindings =
  res
    "CreateSampleFindingsResponse"
    "fixture/CreateSampleFindingsResponse.proto"
    guardDuty
    (Proxy :: Proxy CreateSampleFindings)

responseDisassociateMembers :: DisassociateMembersResponse -> TestTree
responseDisassociateMembers =
  res
    "DisassociateMembersResponse"
    "fixture/DisassociateMembersResponse.proto"
    guardDuty
    (Proxy :: Proxy DisassociateMembers)

responseCreatePublishingDestination :: CreatePublishingDestinationResponse -> TestTree
responseCreatePublishingDestination =
  res
    "CreatePublishingDestinationResponse"
    "fixture/CreatePublishingDestinationResponse.proto"
    guardDuty
    (Proxy :: Proxy CreatePublishingDestination)

responseListFilters :: ListFiltersResponse -> TestTree
responseListFilters =
  res
    "ListFiltersResponse"
    "fixture/ListFiltersResponse.proto"
    guardDuty
    (Proxy :: Proxy ListFilters)

responseDisassociateFromMasterAccount :: DisassociateFromMasterAccountResponse -> TestTree
responseDisassociateFromMasterAccount =
  res
    "DisassociateFromMasterAccountResponse"
    "fixture/DisassociateFromMasterAccountResponse.proto"
    guardDuty
    (Proxy :: Proxy DisassociateFromMasterAccount)

responseListMembers :: ListMembersResponse -> TestTree
responseListMembers =
  res
    "ListMembersResponse"
    "fixture/ListMembersResponse.proto"
    guardDuty
    (Proxy :: Proxy ListMembers)

responseDeclineInvitations :: DeclineInvitationsResponse -> TestTree
responseDeclineInvitations =
  res
    "DeclineInvitationsResponse"
    "fixture/DeclineInvitationsResponse.proto"
    guardDuty
    (Proxy :: Proxy DeclineInvitations)

responseCreateDetector :: CreateDetectorResponse -> TestTree
responseCreateDetector =
  res
    "CreateDetectorResponse"
    "fixture/CreateDetectorResponse.proto"
    guardDuty
    (Proxy :: Proxy CreateDetector)

responseGetUsageStatistics :: GetUsageStatisticsResponse -> TestTree
responseGetUsageStatistics =
  res
    "GetUsageStatisticsResponse"
    "fixture/GetUsageStatisticsResponse.proto"
    guardDuty
    (Proxy :: Proxy GetUsageStatistics)

responseGetFilter :: GetFilterResponse -> TestTree
responseGetFilter =
  res
    "GetFilterResponse"
    "fixture/GetFilterResponse.proto"
    guardDuty
    (Proxy :: Proxy GetFilter)

responseDeleteInvitations :: DeleteInvitationsResponse -> TestTree
responseDeleteInvitations =
  res
    "DeleteInvitationsResponse"
    "fixture/DeleteInvitationsResponse.proto"
    guardDuty
    (Proxy :: Proxy DeleteInvitations)

responseUpdateDetector :: UpdateDetectorResponse -> TestTree
responseUpdateDetector =
  res
    "UpdateDetectorResponse"
    "fixture/UpdateDetectorResponse.proto"
    guardDuty
    (Proxy :: Proxy UpdateDetector)

responseDeleteDetector :: DeleteDetectorResponse -> TestTree
responseDeleteDetector =
  res
    "DeleteDetectorResponse"
    "fixture/DeleteDetectorResponse.proto"
    guardDuty
    (Proxy :: Proxy DeleteDetector)

responseListInvitations :: ListInvitationsResponse -> TestTree
responseListInvitations =
  res
    "ListInvitationsResponse"
    "fixture/ListInvitationsResponse.proto"
    guardDuty
    (Proxy :: Proxy ListInvitations)

responseGetThreatIntelSet :: GetThreatIntelSetResponse -> TestTree
responseGetThreatIntelSet =
  res
    "GetThreatIntelSetResponse"
    "fixture/GetThreatIntelSetResponse.proto"
    guardDuty
    (Proxy :: Proxy GetThreatIntelSet)

responseUpdateMemberDetectors :: UpdateMemberDetectorsResponse -> TestTree
responseUpdateMemberDetectors =
  res
    "UpdateMemberDetectorsResponse"
    "fixture/UpdateMemberDetectorsResponse.proto"
    guardDuty
    (Proxy :: Proxy UpdateMemberDetectors)

responseGetIPSet :: GetIPSetResponse -> TestTree
responseGetIPSet =
  res
    "GetIPSetResponse"
    "fixture/GetIPSetResponse.proto"
    guardDuty
    (Proxy :: Proxy GetIPSet)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    guardDuty
    (Proxy :: Proxy ListTagsForResource)

responseDeleteMembers :: DeleteMembersResponse -> TestTree
responseDeleteMembers =
  res
    "DeleteMembersResponse"
    "fixture/DeleteMembersResponse.proto"
    guardDuty
    (Proxy :: Proxy DeleteMembers)

responseListIPSets :: ListIPSetsResponse -> TestTree
responseListIPSets =
  res
    "ListIPSetsResponse"
    "fixture/ListIPSetsResponse.proto"
    guardDuty
    (Proxy :: Proxy ListIPSets)
