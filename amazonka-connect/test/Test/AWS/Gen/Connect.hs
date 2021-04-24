{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.Connect
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.Connect where

import Data.Proxy
import Network.AWS.Connect
import Test.AWS.Connect.Internal
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestSuspendContactRecording $
--             suspendContactRecording
--
--         , requestUpdateQueueName $
--             updateQueueName
--
--         , requestCreateQuickConnect $
--             createQuickConnect
--
--         , requestUpdateUserRoutingProfile $
--             updateUserRoutingProfile
--
--         , requestUpdateUserHierarchyGroupName $
--             updateUserHierarchyGroupName
--
--         , requestUpdateContactFlowName $
--             updateContactFlowName
--
--         , requestListSecurityProfiles $
--             listSecurityProfiles
--
--         , requestDescribeInstance $
--             describeInstance
--
--         , requestListInstanceAttributes $
--             listInstanceAttributes
--
--         , requestListLambdaFunctions $
--             listLambdaFunctions
--
--         , requestUpdateRoutingProfileQueues $
--             updateRoutingProfileQueues
--
--         , requestAssociateRoutingProfileQueues $
--             associateRoutingProfileQueues
--
--         , requestGetContactAttributes $
--             getContactAttributes
--
--         , requestListLexBots $
--             listLexBots
--
--         , requestAssociateLambdaFunction $
--             associateLambdaFunction
--
--         , requestListApprovedOrigins $
--             listApprovedOrigins
--
--         , requestAssociateInstanceStorageConfig $
--             associateInstanceStorageConfig
--
--         , requestCreateContactFlow $
--             createContactFlow
--
--         , requestUpdateUserPhoneConfig $
--             updateUserPhoneConfig
--
--         , requestUpdateContactAttributes $
--             updateContactAttributes
--
--         , requestListRoutingProfiles $
--             listRoutingProfiles
--
--         , requestDeleteUseCase $
--             deleteUseCase
--
--         , requestDescribeQuickConnect $
--             describeQuickConnect
--
--         , requestListQueueQuickConnects $
--             listQueueQuickConnects
--
--         , requestCreateRoutingProfile $
--             createRoutingProfile
--
--         , requestAssociateApprovedOrigin $
--             associateApprovedOrigin
--
--         , requestDisassociateQueueQuickConnects $
--             disassociateQueueQuickConnects
--
--         , requestUpdateRoutingProfileConcurrency $
--             updateRoutingProfileConcurrency
--
--         , requestUpdateQueueOutboundCallerConfig $
--             updateQueueOutboundCallerConfig
--
--         , requestDisassociateSecurityKey $
--             disassociateSecurityKey
--
--         , requestUntagResource $
--             untagResource
--
--         , requestGetCurrentMetricData $
--             getCurrentMetricData
--
--         , requestUpdateQuickConnectConfig $
--             updateQuickConnectConfig
--
--         , requestListInstances $
--             listInstances
--
--         , requestListQueues $
--             listQueues
--
--         , requestDeleteInstance $
--             deleteInstance
--
--         , requestTagResource $
--             tagResource
--
--         , requestStopContact $
--             stopContact
--
--         , requestCreateUserHierarchyGroup $
--             createUserHierarchyGroup
--
--         , requestStartContactRecording $
--             startContactRecording
--
--         , requestCreateUser $
--             createUser
--
--         , requestAssociateSecurityKey $
--             associateSecurityKey
--
--         , requestAssociateQueueQuickConnects $
--             associateQueueQuickConnects
--
--         , requestStopContactRecording $
--             stopContactRecording
--
--         , requestDisassociateApprovedOrigin $
--             disassociateApprovedOrigin
--
--         , requestUpdateQuickConnectName $
--             updateQuickConnectName
--
--         , requestDescribeRoutingProfile $
--             describeRoutingProfile
--
--         , requestListQuickConnects $
--             listQuickConnects
--
--         , requestDisassociateLexBot $
--             disassociateLexBot
--
--         , requestDeleteQuickConnect $
--             deleteQuickConnect
--
--         , requestListRoutingProfileQueues $
--             listRoutingProfileQueues
--
--         , requestUpdateUserHierarchy $
--             updateUserHierarchy
--
--         , requestDisassociateLambdaFunction $
--             disassociateLambdaFunction
--
--         , requestUpdateQueueMaxContacts $
--             updateQueueMaxContacts
--
--         , requestDescribeInstanceStorageConfig $
--             describeInstanceStorageConfig
--
--         , requestUpdateQueueHoursOfOperation $
--             updateQueueHoursOfOperation
--
--         , requestDisassociateRoutingProfileQueues $
--             disassociateRoutingProfileQueues
--
--         , requestDescribeContactFlow $
--             describeContactFlow
--
--         , requestUpdateQueueStatus $
--             updateQueueStatus
--
--         , requestDescribeQueue $
--             describeQueue
--
--         , requestAssociateLexBot $
--             associateLexBot
--
--         , requestUpdateInstanceAttribute $
--             updateInstanceAttribute
--
--         , requestDescribeUser $
--             describeUser
--
--         , requestDescribeUserHierarchyGroup $
--             describeUserHierarchyGroup
--
--         , requestResumeContactRecording $
--             resumeContactRecording
--
--         , requestUpdateRoutingProfileName $
--             updateRoutingProfileName
--
--         , requestStartChatContact $
--             startChatContact
--
--         , requestDeleteIntegrationAssociation $
--             deleteIntegrationAssociation
--
--         , requestListPhoneNumbers $
--             listPhoneNumbers
--
--         , requestListIntegrationAssociations $
--             listIntegrationAssociations
--
--         , requestListUseCases $
--             listUseCases
--
--         , requestUpdateUserSecurityProfiles $
--             updateUserSecurityProfiles
--
--         , requestDescribeUserHierarchyStructure $
--             describeUserHierarchyStructure
--
--         , requestListHoursOfOperations $
--             listHoursOfOperations
--
--         , requestCreateUseCase $
--             createUseCase
--
--         , requestListContactFlows $
--             listContactFlows
--
--         , requestUpdateInstanceStorageConfig $
--             updateInstanceStorageConfig
--
--         , requestListInstanceStorageConfigs $
--             listInstanceStorageConfigs
--
--         , requestCreateIntegrationAssociation $
--             createIntegrationAssociation
--
--         , requestDeleteUserHierarchyGroup $
--             deleteUserHierarchyGroup
--
--         , requestDeleteUser $
--             deleteUser
--
--         , requestDisassociateInstanceStorageConfig $
--             disassociateInstanceStorageConfig
--
--         , requestListUserHierarchyGroups $
--             listUserHierarchyGroups
--
--         , requestUpdateUserIdentityInfo $
--             updateUserIdentityInfo
--
--         , requestListUsers $
--             listUsers
--
--         , requestGetFederationToken $
--             getFederationToken
--
--         , requestDescribeInstanceAttribute $
--             describeInstanceAttribute
--
--         , requestListSecurityKeys $
--             listSecurityKeys
--
--         , requestUpdateRoutingProfileDefaultOutboundQueue $
--             updateRoutingProfileDefaultOutboundQueue
--
--         , requestCreateQueue $
--             createQueue
--
--         , requestCreateInstance $
--             createInstance
--
--         , requestStartTaskContact $
--             startTaskContact
--
--         , requestListPrompts $
--             listPrompts
--
--         , requestListTagsForResource $
--             listTagsForResource
--
--         , requestStartOutboundVoiceContact $
--             startOutboundVoiceContact
--
--         , requestUpdateUserHierarchyStructure $
--             updateUserHierarchyStructure
--
--         , requestUpdateContactFlowContent $
--             updateContactFlowContent
--
--         , requestGetMetricData $
--             getMetricData
--
--         , requestDescribeHoursOfOperation $
--             describeHoursOfOperation
--
--           ]

--     , testGroup "response"
--         [ responseSuspendContactRecording $
--             suspendContactRecordingResponse
--
--         , responseUpdateQueueName $
--             updateQueueNameResponse
--
--         , responseCreateQuickConnect $
--             createQuickConnectResponse
--
--         , responseUpdateUserRoutingProfile $
--             updateUserRoutingProfileResponse
--
--         , responseUpdateUserHierarchyGroupName $
--             updateUserHierarchyGroupNameResponse
--
--         , responseUpdateContactFlowName $
--             updateContactFlowNameResponse
--
--         , responseListSecurityProfiles $
--             listSecurityProfilesResponse
--
--         , responseDescribeInstance $
--             describeInstanceResponse
--
--         , responseListInstanceAttributes $
--             listInstanceAttributesResponse
--
--         , responseListLambdaFunctions $
--             listLambdaFunctionsResponse
--
--         , responseUpdateRoutingProfileQueues $
--             updateRoutingProfileQueuesResponse
--
--         , responseAssociateRoutingProfileQueues $
--             associateRoutingProfileQueuesResponse
--
--         , responseGetContactAttributes $
--             getContactAttributesResponse
--
--         , responseListLexBots $
--             listLexBotsResponse
--
--         , responseAssociateLambdaFunction $
--             associateLambdaFunctionResponse
--
--         , responseListApprovedOrigins $
--             listApprovedOriginsResponse
--
--         , responseAssociateInstanceStorageConfig $
--             associateInstanceStorageConfigResponse
--
--         , responseCreateContactFlow $
--             createContactFlowResponse
--
--         , responseUpdateUserPhoneConfig $
--             updateUserPhoneConfigResponse
--
--         , responseUpdateContactAttributes $
--             updateContactAttributesResponse
--
--         , responseListRoutingProfiles $
--             listRoutingProfilesResponse
--
--         , responseDeleteUseCase $
--             deleteUseCaseResponse
--
--         , responseDescribeQuickConnect $
--             describeQuickConnectResponse
--
--         , responseListQueueQuickConnects $
--             listQueueQuickConnectsResponse
--
--         , responseCreateRoutingProfile $
--             createRoutingProfileResponse
--
--         , responseAssociateApprovedOrigin $
--             associateApprovedOriginResponse
--
--         , responseDisassociateQueueQuickConnects $
--             disassociateQueueQuickConnectsResponse
--
--         , responseUpdateRoutingProfileConcurrency $
--             updateRoutingProfileConcurrencyResponse
--
--         , responseUpdateQueueOutboundCallerConfig $
--             updateQueueOutboundCallerConfigResponse
--
--         , responseDisassociateSecurityKey $
--             disassociateSecurityKeyResponse
--
--         , responseUntagResource $
--             untagResourceResponse
--
--         , responseGetCurrentMetricData $
--             getCurrentMetricDataResponse
--
--         , responseUpdateQuickConnectConfig $
--             updateQuickConnectConfigResponse
--
--         , responseListInstances $
--             listInstancesResponse
--
--         , responseListQueues $
--             listQueuesResponse
--
--         , responseDeleteInstance $
--             deleteInstanceResponse
--
--         , responseTagResource $
--             tagResourceResponse
--
--         , responseStopContact $
--             stopContactResponse
--
--         , responseCreateUserHierarchyGroup $
--             createUserHierarchyGroupResponse
--
--         , responseStartContactRecording $
--             startContactRecordingResponse
--
--         , responseCreateUser $
--             createUserResponse
--
--         , responseAssociateSecurityKey $
--             associateSecurityKeyResponse
--
--         , responseAssociateQueueQuickConnects $
--             associateQueueQuickConnectsResponse
--
--         , responseStopContactRecording $
--             stopContactRecordingResponse
--
--         , responseDisassociateApprovedOrigin $
--             disassociateApprovedOriginResponse
--
--         , responseUpdateQuickConnectName $
--             updateQuickConnectNameResponse
--
--         , responseDescribeRoutingProfile $
--             describeRoutingProfileResponse
--
--         , responseListQuickConnects $
--             listQuickConnectsResponse
--
--         , responseDisassociateLexBot $
--             disassociateLexBotResponse
--
--         , responseDeleteQuickConnect $
--             deleteQuickConnectResponse
--
--         , responseListRoutingProfileQueues $
--             listRoutingProfileQueuesResponse
--
--         , responseUpdateUserHierarchy $
--             updateUserHierarchyResponse
--
--         , responseDisassociateLambdaFunction $
--             disassociateLambdaFunctionResponse
--
--         , responseUpdateQueueMaxContacts $
--             updateQueueMaxContactsResponse
--
--         , responseDescribeInstanceStorageConfig $
--             describeInstanceStorageConfigResponse
--
--         , responseUpdateQueueHoursOfOperation $
--             updateQueueHoursOfOperationResponse
--
--         , responseDisassociateRoutingProfileQueues $
--             disassociateRoutingProfileQueuesResponse
--
--         , responseDescribeContactFlow $
--             describeContactFlowResponse
--
--         , responseUpdateQueueStatus $
--             updateQueueStatusResponse
--
--         , responseDescribeQueue $
--             describeQueueResponse
--
--         , responseAssociateLexBot $
--             associateLexBotResponse
--
--         , responseUpdateInstanceAttribute $
--             updateInstanceAttributeResponse
--
--         , responseDescribeUser $
--             describeUserResponse
--
--         , responseDescribeUserHierarchyGroup $
--             describeUserHierarchyGroupResponse
--
--         , responseResumeContactRecording $
--             resumeContactRecordingResponse
--
--         , responseUpdateRoutingProfileName $
--             updateRoutingProfileNameResponse
--
--         , responseStartChatContact $
--             startChatContactResponse
--
--         , responseDeleteIntegrationAssociation $
--             deleteIntegrationAssociationResponse
--
--         , responseListPhoneNumbers $
--             listPhoneNumbersResponse
--
--         , responseListIntegrationAssociations $
--             listIntegrationAssociationsResponse
--
--         , responseListUseCases $
--             listUseCasesResponse
--
--         , responseUpdateUserSecurityProfiles $
--             updateUserSecurityProfilesResponse
--
--         , responseDescribeUserHierarchyStructure $
--             describeUserHierarchyStructureResponse
--
--         , responseListHoursOfOperations $
--             listHoursOfOperationsResponse
--
--         , responseCreateUseCase $
--             createUseCaseResponse
--
--         , responseListContactFlows $
--             listContactFlowsResponse
--
--         , responseUpdateInstanceStorageConfig $
--             updateInstanceStorageConfigResponse
--
--         , responseListInstanceStorageConfigs $
--             listInstanceStorageConfigsResponse
--
--         , responseCreateIntegrationAssociation $
--             createIntegrationAssociationResponse
--
--         , responseDeleteUserHierarchyGroup $
--             deleteUserHierarchyGroupResponse
--
--         , responseDeleteUser $
--             deleteUserResponse
--
--         , responseDisassociateInstanceStorageConfig $
--             disassociateInstanceStorageConfigResponse
--
--         , responseListUserHierarchyGroups $
--             listUserHierarchyGroupsResponse
--
--         , responseUpdateUserIdentityInfo $
--             updateUserIdentityInfoResponse
--
--         , responseListUsers $
--             listUsersResponse
--
--         , responseGetFederationToken $
--             getFederationTokenResponse
--
--         , responseDescribeInstanceAttribute $
--             describeInstanceAttributeResponse
--
--         , responseListSecurityKeys $
--             listSecurityKeysResponse
--
--         , responseUpdateRoutingProfileDefaultOutboundQueue $
--             updateRoutingProfileDefaultOutboundQueueResponse
--
--         , responseCreateQueue $
--             createQueueResponse
--
--         , responseCreateInstance $
--             createInstanceResponse
--
--         , responseStartTaskContact $
--             startTaskContactResponse
--
--         , responseListPrompts $
--             listPromptsResponse
--
--         , responseListTagsForResource $
--             listTagsForResourceResponse
--
--         , responseStartOutboundVoiceContact $
--             startOutboundVoiceContactResponse
--
--         , responseUpdateUserHierarchyStructure $
--             updateUserHierarchyStructureResponse
--
--         , responseUpdateContactFlowContent $
--             updateContactFlowContentResponse
--
--         , responseGetMetricData $
--             getMetricDataResponse
--
--         , responseDescribeHoursOfOperation $
--             describeHoursOfOperationResponse
--
--           ]
--     ]

-- Requests

requestSuspendContactRecording :: SuspendContactRecording -> TestTree
requestSuspendContactRecording =
  req
    "SuspendContactRecording"
    "fixture/SuspendContactRecording.yaml"

requestUpdateQueueName :: UpdateQueueName -> TestTree
requestUpdateQueueName =
  req
    "UpdateQueueName"
    "fixture/UpdateQueueName.yaml"

requestCreateQuickConnect :: CreateQuickConnect -> TestTree
requestCreateQuickConnect =
  req
    "CreateQuickConnect"
    "fixture/CreateQuickConnect.yaml"

requestUpdateUserRoutingProfile :: UpdateUserRoutingProfile -> TestTree
requestUpdateUserRoutingProfile =
  req
    "UpdateUserRoutingProfile"
    "fixture/UpdateUserRoutingProfile.yaml"

requestUpdateUserHierarchyGroupName :: UpdateUserHierarchyGroupName -> TestTree
requestUpdateUserHierarchyGroupName =
  req
    "UpdateUserHierarchyGroupName"
    "fixture/UpdateUserHierarchyGroupName.yaml"

requestUpdateContactFlowName :: UpdateContactFlowName -> TestTree
requestUpdateContactFlowName =
  req
    "UpdateContactFlowName"
    "fixture/UpdateContactFlowName.yaml"

requestListSecurityProfiles :: ListSecurityProfiles -> TestTree
requestListSecurityProfiles =
  req
    "ListSecurityProfiles"
    "fixture/ListSecurityProfiles.yaml"

requestDescribeInstance :: DescribeInstance -> TestTree
requestDescribeInstance =
  req
    "DescribeInstance"
    "fixture/DescribeInstance.yaml"

requestListInstanceAttributes :: ListInstanceAttributes -> TestTree
requestListInstanceAttributes =
  req
    "ListInstanceAttributes"
    "fixture/ListInstanceAttributes.yaml"

requestListLambdaFunctions :: ListLambdaFunctions -> TestTree
requestListLambdaFunctions =
  req
    "ListLambdaFunctions"
    "fixture/ListLambdaFunctions.yaml"

requestUpdateRoutingProfileQueues :: UpdateRoutingProfileQueues -> TestTree
requestUpdateRoutingProfileQueues =
  req
    "UpdateRoutingProfileQueues"
    "fixture/UpdateRoutingProfileQueues.yaml"

requestAssociateRoutingProfileQueues :: AssociateRoutingProfileQueues -> TestTree
requestAssociateRoutingProfileQueues =
  req
    "AssociateRoutingProfileQueues"
    "fixture/AssociateRoutingProfileQueues.yaml"

requestGetContactAttributes :: GetContactAttributes -> TestTree
requestGetContactAttributes =
  req
    "GetContactAttributes"
    "fixture/GetContactAttributes.yaml"

requestListLexBots :: ListLexBots -> TestTree
requestListLexBots =
  req
    "ListLexBots"
    "fixture/ListLexBots.yaml"

requestAssociateLambdaFunction :: AssociateLambdaFunction -> TestTree
requestAssociateLambdaFunction =
  req
    "AssociateLambdaFunction"
    "fixture/AssociateLambdaFunction.yaml"

requestListApprovedOrigins :: ListApprovedOrigins -> TestTree
requestListApprovedOrigins =
  req
    "ListApprovedOrigins"
    "fixture/ListApprovedOrigins.yaml"

requestAssociateInstanceStorageConfig :: AssociateInstanceStorageConfig -> TestTree
requestAssociateInstanceStorageConfig =
  req
    "AssociateInstanceStorageConfig"
    "fixture/AssociateInstanceStorageConfig.yaml"

requestCreateContactFlow :: CreateContactFlow -> TestTree
requestCreateContactFlow =
  req
    "CreateContactFlow"
    "fixture/CreateContactFlow.yaml"

requestUpdateUserPhoneConfig :: UpdateUserPhoneConfig -> TestTree
requestUpdateUserPhoneConfig =
  req
    "UpdateUserPhoneConfig"
    "fixture/UpdateUserPhoneConfig.yaml"

requestUpdateContactAttributes :: UpdateContactAttributes -> TestTree
requestUpdateContactAttributes =
  req
    "UpdateContactAttributes"
    "fixture/UpdateContactAttributes.yaml"

requestListRoutingProfiles :: ListRoutingProfiles -> TestTree
requestListRoutingProfiles =
  req
    "ListRoutingProfiles"
    "fixture/ListRoutingProfiles.yaml"

requestDeleteUseCase :: DeleteUseCase -> TestTree
requestDeleteUseCase =
  req
    "DeleteUseCase"
    "fixture/DeleteUseCase.yaml"

requestDescribeQuickConnect :: DescribeQuickConnect -> TestTree
requestDescribeQuickConnect =
  req
    "DescribeQuickConnect"
    "fixture/DescribeQuickConnect.yaml"

requestListQueueQuickConnects :: ListQueueQuickConnects -> TestTree
requestListQueueQuickConnects =
  req
    "ListQueueQuickConnects"
    "fixture/ListQueueQuickConnects.yaml"

requestCreateRoutingProfile :: CreateRoutingProfile -> TestTree
requestCreateRoutingProfile =
  req
    "CreateRoutingProfile"
    "fixture/CreateRoutingProfile.yaml"

requestAssociateApprovedOrigin :: AssociateApprovedOrigin -> TestTree
requestAssociateApprovedOrigin =
  req
    "AssociateApprovedOrigin"
    "fixture/AssociateApprovedOrigin.yaml"

requestDisassociateQueueQuickConnects :: DisassociateQueueQuickConnects -> TestTree
requestDisassociateQueueQuickConnects =
  req
    "DisassociateQueueQuickConnects"
    "fixture/DisassociateQueueQuickConnects.yaml"

requestUpdateRoutingProfileConcurrency :: UpdateRoutingProfileConcurrency -> TestTree
requestUpdateRoutingProfileConcurrency =
  req
    "UpdateRoutingProfileConcurrency"
    "fixture/UpdateRoutingProfileConcurrency.yaml"

requestUpdateQueueOutboundCallerConfig :: UpdateQueueOutboundCallerConfig -> TestTree
requestUpdateQueueOutboundCallerConfig =
  req
    "UpdateQueueOutboundCallerConfig"
    "fixture/UpdateQueueOutboundCallerConfig.yaml"

requestDisassociateSecurityKey :: DisassociateSecurityKey -> TestTree
requestDisassociateSecurityKey =
  req
    "DisassociateSecurityKey"
    "fixture/DisassociateSecurityKey.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource =
  req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestGetCurrentMetricData :: GetCurrentMetricData -> TestTree
requestGetCurrentMetricData =
  req
    "GetCurrentMetricData"
    "fixture/GetCurrentMetricData.yaml"

requestUpdateQuickConnectConfig :: UpdateQuickConnectConfig -> TestTree
requestUpdateQuickConnectConfig =
  req
    "UpdateQuickConnectConfig"
    "fixture/UpdateQuickConnectConfig.yaml"

requestListInstances :: ListInstances -> TestTree
requestListInstances =
  req
    "ListInstances"
    "fixture/ListInstances.yaml"

requestListQueues :: ListQueues -> TestTree
requestListQueues =
  req
    "ListQueues"
    "fixture/ListQueues.yaml"

requestDeleteInstance :: DeleteInstance -> TestTree
requestDeleteInstance =
  req
    "DeleteInstance"
    "fixture/DeleteInstance.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource =
  req
    "TagResource"
    "fixture/TagResource.yaml"

requestStopContact :: StopContact -> TestTree
requestStopContact =
  req
    "StopContact"
    "fixture/StopContact.yaml"

requestCreateUserHierarchyGroup :: CreateUserHierarchyGroup -> TestTree
requestCreateUserHierarchyGroup =
  req
    "CreateUserHierarchyGroup"
    "fixture/CreateUserHierarchyGroup.yaml"

requestStartContactRecording :: StartContactRecording -> TestTree
requestStartContactRecording =
  req
    "StartContactRecording"
    "fixture/StartContactRecording.yaml"

requestCreateUser :: CreateUser -> TestTree
requestCreateUser =
  req
    "CreateUser"
    "fixture/CreateUser.yaml"

requestAssociateSecurityKey :: AssociateSecurityKey -> TestTree
requestAssociateSecurityKey =
  req
    "AssociateSecurityKey"
    "fixture/AssociateSecurityKey.yaml"

requestAssociateQueueQuickConnects :: AssociateQueueQuickConnects -> TestTree
requestAssociateQueueQuickConnects =
  req
    "AssociateQueueQuickConnects"
    "fixture/AssociateQueueQuickConnects.yaml"

requestStopContactRecording :: StopContactRecording -> TestTree
requestStopContactRecording =
  req
    "StopContactRecording"
    "fixture/StopContactRecording.yaml"

requestDisassociateApprovedOrigin :: DisassociateApprovedOrigin -> TestTree
requestDisassociateApprovedOrigin =
  req
    "DisassociateApprovedOrigin"
    "fixture/DisassociateApprovedOrigin.yaml"

requestUpdateQuickConnectName :: UpdateQuickConnectName -> TestTree
requestUpdateQuickConnectName =
  req
    "UpdateQuickConnectName"
    "fixture/UpdateQuickConnectName.yaml"

requestDescribeRoutingProfile :: DescribeRoutingProfile -> TestTree
requestDescribeRoutingProfile =
  req
    "DescribeRoutingProfile"
    "fixture/DescribeRoutingProfile.yaml"

requestListQuickConnects :: ListQuickConnects -> TestTree
requestListQuickConnects =
  req
    "ListQuickConnects"
    "fixture/ListQuickConnects.yaml"

requestDisassociateLexBot :: DisassociateLexBot -> TestTree
requestDisassociateLexBot =
  req
    "DisassociateLexBot"
    "fixture/DisassociateLexBot.yaml"

requestDeleteQuickConnect :: DeleteQuickConnect -> TestTree
requestDeleteQuickConnect =
  req
    "DeleteQuickConnect"
    "fixture/DeleteQuickConnect.yaml"

requestListRoutingProfileQueues :: ListRoutingProfileQueues -> TestTree
requestListRoutingProfileQueues =
  req
    "ListRoutingProfileQueues"
    "fixture/ListRoutingProfileQueues.yaml"

requestUpdateUserHierarchy :: UpdateUserHierarchy -> TestTree
requestUpdateUserHierarchy =
  req
    "UpdateUserHierarchy"
    "fixture/UpdateUserHierarchy.yaml"

requestDisassociateLambdaFunction :: DisassociateLambdaFunction -> TestTree
requestDisassociateLambdaFunction =
  req
    "DisassociateLambdaFunction"
    "fixture/DisassociateLambdaFunction.yaml"

requestUpdateQueueMaxContacts :: UpdateQueueMaxContacts -> TestTree
requestUpdateQueueMaxContacts =
  req
    "UpdateQueueMaxContacts"
    "fixture/UpdateQueueMaxContacts.yaml"

requestDescribeInstanceStorageConfig :: DescribeInstanceStorageConfig -> TestTree
requestDescribeInstanceStorageConfig =
  req
    "DescribeInstanceStorageConfig"
    "fixture/DescribeInstanceStorageConfig.yaml"

requestUpdateQueueHoursOfOperation :: UpdateQueueHoursOfOperation -> TestTree
requestUpdateQueueHoursOfOperation =
  req
    "UpdateQueueHoursOfOperation"
    "fixture/UpdateQueueHoursOfOperation.yaml"

requestDisassociateRoutingProfileQueues :: DisassociateRoutingProfileQueues -> TestTree
requestDisassociateRoutingProfileQueues =
  req
    "DisassociateRoutingProfileQueues"
    "fixture/DisassociateRoutingProfileQueues.yaml"

requestDescribeContactFlow :: DescribeContactFlow -> TestTree
requestDescribeContactFlow =
  req
    "DescribeContactFlow"
    "fixture/DescribeContactFlow.yaml"

requestUpdateQueueStatus :: UpdateQueueStatus -> TestTree
requestUpdateQueueStatus =
  req
    "UpdateQueueStatus"
    "fixture/UpdateQueueStatus.yaml"

requestDescribeQueue :: DescribeQueue -> TestTree
requestDescribeQueue =
  req
    "DescribeQueue"
    "fixture/DescribeQueue.yaml"

requestAssociateLexBot :: AssociateLexBot -> TestTree
requestAssociateLexBot =
  req
    "AssociateLexBot"
    "fixture/AssociateLexBot.yaml"

requestUpdateInstanceAttribute :: UpdateInstanceAttribute -> TestTree
requestUpdateInstanceAttribute =
  req
    "UpdateInstanceAttribute"
    "fixture/UpdateInstanceAttribute.yaml"

requestDescribeUser :: DescribeUser -> TestTree
requestDescribeUser =
  req
    "DescribeUser"
    "fixture/DescribeUser.yaml"

requestDescribeUserHierarchyGroup :: DescribeUserHierarchyGroup -> TestTree
requestDescribeUserHierarchyGroup =
  req
    "DescribeUserHierarchyGroup"
    "fixture/DescribeUserHierarchyGroup.yaml"

requestResumeContactRecording :: ResumeContactRecording -> TestTree
requestResumeContactRecording =
  req
    "ResumeContactRecording"
    "fixture/ResumeContactRecording.yaml"

requestUpdateRoutingProfileName :: UpdateRoutingProfileName -> TestTree
requestUpdateRoutingProfileName =
  req
    "UpdateRoutingProfileName"
    "fixture/UpdateRoutingProfileName.yaml"

requestStartChatContact :: StartChatContact -> TestTree
requestStartChatContact =
  req
    "StartChatContact"
    "fixture/StartChatContact.yaml"

requestDeleteIntegrationAssociation :: DeleteIntegrationAssociation -> TestTree
requestDeleteIntegrationAssociation =
  req
    "DeleteIntegrationAssociation"
    "fixture/DeleteIntegrationAssociation.yaml"

requestListPhoneNumbers :: ListPhoneNumbers -> TestTree
requestListPhoneNumbers =
  req
    "ListPhoneNumbers"
    "fixture/ListPhoneNumbers.yaml"

requestListIntegrationAssociations :: ListIntegrationAssociations -> TestTree
requestListIntegrationAssociations =
  req
    "ListIntegrationAssociations"
    "fixture/ListIntegrationAssociations.yaml"

requestListUseCases :: ListUseCases -> TestTree
requestListUseCases =
  req
    "ListUseCases"
    "fixture/ListUseCases.yaml"

requestUpdateUserSecurityProfiles :: UpdateUserSecurityProfiles -> TestTree
requestUpdateUserSecurityProfiles =
  req
    "UpdateUserSecurityProfiles"
    "fixture/UpdateUserSecurityProfiles.yaml"

requestDescribeUserHierarchyStructure :: DescribeUserHierarchyStructure -> TestTree
requestDescribeUserHierarchyStructure =
  req
    "DescribeUserHierarchyStructure"
    "fixture/DescribeUserHierarchyStructure.yaml"

requestListHoursOfOperations :: ListHoursOfOperations -> TestTree
requestListHoursOfOperations =
  req
    "ListHoursOfOperations"
    "fixture/ListHoursOfOperations.yaml"

requestCreateUseCase :: CreateUseCase -> TestTree
requestCreateUseCase =
  req
    "CreateUseCase"
    "fixture/CreateUseCase.yaml"

requestListContactFlows :: ListContactFlows -> TestTree
requestListContactFlows =
  req
    "ListContactFlows"
    "fixture/ListContactFlows.yaml"

requestUpdateInstanceStorageConfig :: UpdateInstanceStorageConfig -> TestTree
requestUpdateInstanceStorageConfig =
  req
    "UpdateInstanceStorageConfig"
    "fixture/UpdateInstanceStorageConfig.yaml"

requestListInstanceStorageConfigs :: ListInstanceStorageConfigs -> TestTree
requestListInstanceStorageConfigs =
  req
    "ListInstanceStorageConfigs"
    "fixture/ListInstanceStorageConfigs.yaml"

requestCreateIntegrationAssociation :: CreateIntegrationAssociation -> TestTree
requestCreateIntegrationAssociation =
  req
    "CreateIntegrationAssociation"
    "fixture/CreateIntegrationAssociation.yaml"

requestDeleteUserHierarchyGroup :: DeleteUserHierarchyGroup -> TestTree
requestDeleteUserHierarchyGroup =
  req
    "DeleteUserHierarchyGroup"
    "fixture/DeleteUserHierarchyGroup.yaml"

requestDeleteUser :: DeleteUser -> TestTree
requestDeleteUser =
  req
    "DeleteUser"
    "fixture/DeleteUser.yaml"

requestDisassociateInstanceStorageConfig :: DisassociateInstanceStorageConfig -> TestTree
requestDisassociateInstanceStorageConfig =
  req
    "DisassociateInstanceStorageConfig"
    "fixture/DisassociateInstanceStorageConfig.yaml"

requestListUserHierarchyGroups :: ListUserHierarchyGroups -> TestTree
requestListUserHierarchyGroups =
  req
    "ListUserHierarchyGroups"
    "fixture/ListUserHierarchyGroups.yaml"

requestUpdateUserIdentityInfo :: UpdateUserIdentityInfo -> TestTree
requestUpdateUserIdentityInfo =
  req
    "UpdateUserIdentityInfo"
    "fixture/UpdateUserIdentityInfo.yaml"

requestListUsers :: ListUsers -> TestTree
requestListUsers =
  req
    "ListUsers"
    "fixture/ListUsers.yaml"

requestGetFederationToken :: GetFederationToken -> TestTree
requestGetFederationToken =
  req
    "GetFederationToken"
    "fixture/GetFederationToken.yaml"

requestDescribeInstanceAttribute :: DescribeInstanceAttribute -> TestTree
requestDescribeInstanceAttribute =
  req
    "DescribeInstanceAttribute"
    "fixture/DescribeInstanceAttribute.yaml"

requestListSecurityKeys :: ListSecurityKeys -> TestTree
requestListSecurityKeys =
  req
    "ListSecurityKeys"
    "fixture/ListSecurityKeys.yaml"

requestUpdateRoutingProfileDefaultOutboundQueue :: UpdateRoutingProfileDefaultOutboundQueue -> TestTree
requestUpdateRoutingProfileDefaultOutboundQueue =
  req
    "UpdateRoutingProfileDefaultOutboundQueue"
    "fixture/UpdateRoutingProfileDefaultOutboundQueue.yaml"

requestCreateQueue :: CreateQueue -> TestTree
requestCreateQueue =
  req
    "CreateQueue"
    "fixture/CreateQueue.yaml"

requestCreateInstance :: CreateInstance -> TestTree
requestCreateInstance =
  req
    "CreateInstance"
    "fixture/CreateInstance.yaml"

requestStartTaskContact :: StartTaskContact -> TestTree
requestStartTaskContact =
  req
    "StartTaskContact"
    "fixture/StartTaskContact.yaml"

requestListPrompts :: ListPrompts -> TestTree
requestListPrompts =
  req
    "ListPrompts"
    "fixture/ListPrompts.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestStartOutboundVoiceContact :: StartOutboundVoiceContact -> TestTree
requestStartOutboundVoiceContact =
  req
    "StartOutboundVoiceContact"
    "fixture/StartOutboundVoiceContact.yaml"

requestUpdateUserHierarchyStructure :: UpdateUserHierarchyStructure -> TestTree
requestUpdateUserHierarchyStructure =
  req
    "UpdateUserHierarchyStructure"
    "fixture/UpdateUserHierarchyStructure.yaml"

requestUpdateContactFlowContent :: UpdateContactFlowContent -> TestTree
requestUpdateContactFlowContent =
  req
    "UpdateContactFlowContent"
    "fixture/UpdateContactFlowContent.yaml"

requestGetMetricData :: GetMetricData -> TestTree
requestGetMetricData =
  req
    "GetMetricData"
    "fixture/GetMetricData.yaml"

requestDescribeHoursOfOperation :: DescribeHoursOfOperation -> TestTree
requestDescribeHoursOfOperation =
  req
    "DescribeHoursOfOperation"
    "fixture/DescribeHoursOfOperation.yaml"

-- Responses

responseSuspendContactRecording :: SuspendContactRecordingResponse -> TestTree
responseSuspendContactRecording =
  res
    "SuspendContactRecordingResponse"
    "fixture/SuspendContactRecordingResponse.proto"
    connect
    (Proxy :: Proxy SuspendContactRecording)

responseUpdateQueueName :: UpdateQueueNameResponse -> TestTree
responseUpdateQueueName =
  res
    "UpdateQueueNameResponse"
    "fixture/UpdateQueueNameResponse.proto"
    connect
    (Proxy :: Proxy UpdateQueueName)

responseCreateQuickConnect :: CreateQuickConnectResponse -> TestTree
responseCreateQuickConnect =
  res
    "CreateQuickConnectResponse"
    "fixture/CreateQuickConnectResponse.proto"
    connect
    (Proxy :: Proxy CreateQuickConnect)

responseUpdateUserRoutingProfile :: UpdateUserRoutingProfileResponse -> TestTree
responseUpdateUserRoutingProfile =
  res
    "UpdateUserRoutingProfileResponse"
    "fixture/UpdateUserRoutingProfileResponse.proto"
    connect
    (Proxy :: Proxy UpdateUserRoutingProfile)

responseUpdateUserHierarchyGroupName :: UpdateUserHierarchyGroupNameResponse -> TestTree
responseUpdateUserHierarchyGroupName =
  res
    "UpdateUserHierarchyGroupNameResponse"
    "fixture/UpdateUserHierarchyGroupNameResponse.proto"
    connect
    (Proxy :: Proxy UpdateUserHierarchyGroupName)

responseUpdateContactFlowName :: UpdateContactFlowNameResponse -> TestTree
responseUpdateContactFlowName =
  res
    "UpdateContactFlowNameResponse"
    "fixture/UpdateContactFlowNameResponse.proto"
    connect
    (Proxy :: Proxy UpdateContactFlowName)

responseListSecurityProfiles :: ListSecurityProfilesResponse -> TestTree
responseListSecurityProfiles =
  res
    "ListSecurityProfilesResponse"
    "fixture/ListSecurityProfilesResponse.proto"
    connect
    (Proxy :: Proxy ListSecurityProfiles)

responseDescribeInstance :: DescribeInstanceResponse -> TestTree
responseDescribeInstance =
  res
    "DescribeInstanceResponse"
    "fixture/DescribeInstanceResponse.proto"
    connect
    (Proxy :: Proxy DescribeInstance)

responseListInstanceAttributes :: ListInstanceAttributesResponse -> TestTree
responseListInstanceAttributes =
  res
    "ListInstanceAttributesResponse"
    "fixture/ListInstanceAttributesResponse.proto"
    connect
    (Proxy :: Proxy ListInstanceAttributes)

responseListLambdaFunctions :: ListLambdaFunctionsResponse -> TestTree
responseListLambdaFunctions =
  res
    "ListLambdaFunctionsResponse"
    "fixture/ListLambdaFunctionsResponse.proto"
    connect
    (Proxy :: Proxy ListLambdaFunctions)

responseUpdateRoutingProfileQueues :: UpdateRoutingProfileQueuesResponse -> TestTree
responseUpdateRoutingProfileQueues =
  res
    "UpdateRoutingProfileQueuesResponse"
    "fixture/UpdateRoutingProfileQueuesResponse.proto"
    connect
    (Proxy :: Proxy UpdateRoutingProfileQueues)

responseAssociateRoutingProfileQueues :: AssociateRoutingProfileQueuesResponse -> TestTree
responseAssociateRoutingProfileQueues =
  res
    "AssociateRoutingProfileQueuesResponse"
    "fixture/AssociateRoutingProfileQueuesResponse.proto"
    connect
    (Proxy :: Proxy AssociateRoutingProfileQueues)

responseGetContactAttributes :: GetContactAttributesResponse -> TestTree
responseGetContactAttributes =
  res
    "GetContactAttributesResponse"
    "fixture/GetContactAttributesResponse.proto"
    connect
    (Proxy :: Proxy GetContactAttributes)

responseListLexBots :: ListLexBotsResponse -> TestTree
responseListLexBots =
  res
    "ListLexBotsResponse"
    "fixture/ListLexBotsResponse.proto"
    connect
    (Proxy :: Proxy ListLexBots)

responseAssociateLambdaFunction :: AssociateLambdaFunctionResponse -> TestTree
responseAssociateLambdaFunction =
  res
    "AssociateLambdaFunctionResponse"
    "fixture/AssociateLambdaFunctionResponse.proto"
    connect
    (Proxy :: Proxy AssociateLambdaFunction)

responseListApprovedOrigins :: ListApprovedOriginsResponse -> TestTree
responseListApprovedOrigins =
  res
    "ListApprovedOriginsResponse"
    "fixture/ListApprovedOriginsResponse.proto"
    connect
    (Proxy :: Proxy ListApprovedOrigins)

responseAssociateInstanceStorageConfig :: AssociateInstanceStorageConfigResponse -> TestTree
responseAssociateInstanceStorageConfig =
  res
    "AssociateInstanceStorageConfigResponse"
    "fixture/AssociateInstanceStorageConfigResponse.proto"
    connect
    (Proxy :: Proxy AssociateInstanceStorageConfig)

responseCreateContactFlow :: CreateContactFlowResponse -> TestTree
responseCreateContactFlow =
  res
    "CreateContactFlowResponse"
    "fixture/CreateContactFlowResponse.proto"
    connect
    (Proxy :: Proxy CreateContactFlow)

responseUpdateUserPhoneConfig :: UpdateUserPhoneConfigResponse -> TestTree
responseUpdateUserPhoneConfig =
  res
    "UpdateUserPhoneConfigResponse"
    "fixture/UpdateUserPhoneConfigResponse.proto"
    connect
    (Proxy :: Proxy UpdateUserPhoneConfig)

responseUpdateContactAttributes :: UpdateContactAttributesResponse -> TestTree
responseUpdateContactAttributes =
  res
    "UpdateContactAttributesResponse"
    "fixture/UpdateContactAttributesResponse.proto"
    connect
    (Proxy :: Proxy UpdateContactAttributes)

responseListRoutingProfiles :: ListRoutingProfilesResponse -> TestTree
responseListRoutingProfiles =
  res
    "ListRoutingProfilesResponse"
    "fixture/ListRoutingProfilesResponse.proto"
    connect
    (Proxy :: Proxy ListRoutingProfiles)

responseDeleteUseCase :: DeleteUseCaseResponse -> TestTree
responseDeleteUseCase =
  res
    "DeleteUseCaseResponse"
    "fixture/DeleteUseCaseResponse.proto"
    connect
    (Proxy :: Proxy DeleteUseCase)

responseDescribeQuickConnect :: DescribeQuickConnectResponse -> TestTree
responseDescribeQuickConnect =
  res
    "DescribeQuickConnectResponse"
    "fixture/DescribeQuickConnectResponse.proto"
    connect
    (Proxy :: Proxy DescribeQuickConnect)

responseListQueueQuickConnects :: ListQueueQuickConnectsResponse -> TestTree
responseListQueueQuickConnects =
  res
    "ListQueueQuickConnectsResponse"
    "fixture/ListQueueQuickConnectsResponse.proto"
    connect
    (Proxy :: Proxy ListQueueQuickConnects)

responseCreateRoutingProfile :: CreateRoutingProfileResponse -> TestTree
responseCreateRoutingProfile =
  res
    "CreateRoutingProfileResponse"
    "fixture/CreateRoutingProfileResponse.proto"
    connect
    (Proxy :: Proxy CreateRoutingProfile)

responseAssociateApprovedOrigin :: AssociateApprovedOriginResponse -> TestTree
responseAssociateApprovedOrigin =
  res
    "AssociateApprovedOriginResponse"
    "fixture/AssociateApprovedOriginResponse.proto"
    connect
    (Proxy :: Proxy AssociateApprovedOrigin)

responseDisassociateQueueQuickConnects :: DisassociateQueueQuickConnectsResponse -> TestTree
responseDisassociateQueueQuickConnects =
  res
    "DisassociateQueueQuickConnectsResponse"
    "fixture/DisassociateQueueQuickConnectsResponse.proto"
    connect
    (Proxy :: Proxy DisassociateQueueQuickConnects)

responseUpdateRoutingProfileConcurrency :: UpdateRoutingProfileConcurrencyResponse -> TestTree
responseUpdateRoutingProfileConcurrency =
  res
    "UpdateRoutingProfileConcurrencyResponse"
    "fixture/UpdateRoutingProfileConcurrencyResponse.proto"
    connect
    (Proxy :: Proxy UpdateRoutingProfileConcurrency)

responseUpdateQueueOutboundCallerConfig :: UpdateQueueOutboundCallerConfigResponse -> TestTree
responseUpdateQueueOutboundCallerConfig =
  res
    "UpdateQueueOutboundCallerConfigResponse"
    "fixture/UpdateQueueOutboundCallerConfigResponse.proto"
    connect
    (Proxy :: Proxy UpdateQueueOutboundCallerConfig)

responseDisassociateSecurityKey :: DisassociateSecurityKeyResponse -> TestTree
responseDisassociateSecurityKey =
  res
    "DisassociateSecurityKeyResponse"
    "fixture/DisassociateSecurityKeyResponse.proto"
    connect
    (Proxy :: Proxy DisassociateSecurityKey)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    connect
    (Proxy :: Proxy UntagResource)

responseGetCurrentMetricData :: GetCurrentMetricDataResponse -> TestTree
responseGetCurrentMetricData =
  res
    "GetCurrentMetricDataResponse"
    "fixture/GetCurrentMetricDataResponse.proto"
    connect
    (Proxy :: Proxy GetCurrentMetricData)

responseUpdateQuickConnectConfig :: UpdateQuickConnectConfigResponse -> TestTree
responseUpdateQuickConnectConfig =
  res
    "UpdateQuickConnectConfigResponse"
    "fixture/UpdateQuickConnectConfigResponse.proto"
    connect
    (Proxy :: Proxy UpdateQuickConnectConfig)

responseListInstances :: ListInstancesResponse -> TestTree
responseListInstances =
  res
    "ListInstancesResponse"
    "fixture/ListInstancesResponse.proto"
    connect
    (Proxy :: Proxy ListInstances)

responseListQueues :: ListQueuesResponse -> TestTree
responseListQueues =
  res
    "ListQueuesResponse"
    "fixture/ListQueuesResponse.proto"
    connect
    (Proxy :: Proxy ListQueues)

responseDeleteInstance :: DeleteInstanceResponse -> TestTree
responseDeleteInstance =
  res
    "DeleteInstanceResponse"
    "fixture/DeleteInstanceResponse.proto"
    connect
    (Proxy :: Proxy DeleteInstance)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    connect
    (Proxy :: Proxy TagResource)

responseStopContact :: StopContactResponse -> TestTree
responseStopContact =
  res
    "StopContactResponse"
    "fixture/StopContactResponse.proto"
    connect
    (Proxy :: Proxy StopContact)

responseCreateUserHierarchyGroup :: CreateUserHierarchyGroupResponse -> TestTree
responseCreateUserHierarchyGroup =
  res
    "CreateUserHierarchyGroupResponse"
    "fixture/CreateUserHierarchyGroupResponse.proto"
    connect
    (Proxy :: Proxy CreateUserHierarchyGroup)

responseStartContactRecording :: StartContactRecordingResponse -> TestTree
responseStartContactRecording =
  res
    "StartContactRecordingResponse"
    "fixture/StartContactRecordingResponse.proto"
    connect
    (Proxy :: Proxy StartContactRecording)

responseCreateUser :: CreateUserResponse -> TestTree
responseCreateUser =
  res
    "CreateUserResponse"
    "fixture/CreateUserResponse.proto"
    connect
    (Proxy :: Proxy CreateUser)

responseAssociateSecurityKey :: AssociateSecurityKeyResponse -> TestTree
responseAssociateSecurityKey =
  res
    "AssociateSecurityKeyResponse"
    "fixture/AssociateSecurityKeyResponse.proto"
    connect
    (Proxy :: Proxy AssociateSecurityKey)

responseAssociateQueueQuickConnects :: AssociateQueueQuickConnectsResponse -> TestTree
responseAssociateQueueQuickConnects =
  res
    "AssociateQueueQuickConnectsResponse"
    "fixture/AssociateQueueQuickConnectsResponse.proto"
    connect
    (Proxy :: Proxy AssociateQueueQuickConnects)

responseStopContactRecording :: StopContactRecordingResponse -> TestTree
responseStopContactRecording =
  res
    "StopContactRecordingResponse"
    "fixture/StopContactRecordingResponse.proto"
    connect
    (Proxy :: Proxy StopContactRecording)

responseDisassociateApprovedOrigin :: DisassociateApprovedOriginResponse -> TestTree
responseDisassociateApprovedOrigin =
  res
    "DisassociateApprovedOriginResponse"
    "fixture/DisassociateApprovedOriginResponse.proto"
    connect
    (Proxy :: Proxy DisassociateApprovedOrigin)

responseUpdateQuickConnectName :: UpdateQuickConnectNameResponse -> TestTree
responseUpdateQuickConnectName =
  res
    "UpdateQuickConnectNameResponse"
    "fixture/UpdateQuickConnectNameResponse.proto"
    connect
    (Proxy :: Proxy UpdateQuickConnectName)

responseDescribeRoutingProfile :: DescribeRoutingProfileResponse -> TestTree
responseDescribeRoutingProfile =
  res
    "DescribeRoutingProfileResponse"
    "fixture/DescribeRoutingProfileResponse.proto"
    connect
    (Proxy :: Proxy DescribeRoutingProfile)

responseListQuickConnects :: ListQuickConnectsResponse -> TestTree
responseListQuickConnects =
  res
    "ListQuickConnectsResponse"
    "fixture/ListQuickConnectsResponse.proto"
    connect
    (Proxy :: Proxy ListQuickConnects)

responseDisassociateLexBot :: DisassociateLexBotResponse -> TestTree
responseDisassociateLexBot =
  res
    "DisassociateLexBotResponse"
    "fixture/DisassociateLexBotResponse.proto"
    connect
    (Proxy :: Proxy DisassociateLexBot)

responseDeleteQuickConnect :: DeleteQuickConnectResponse -> TestTree
responseDeleteQuickConnect =
  res
    "DeleteQuickConnectResponse"
    "fixture/DeleteQuickConnectResponse.proto"
    connect
    (Proxy :: Proxy DeleteQuickConnect)

responseListRoutingProfileQueues :: ListRoutingProfileQueuesResponse -> TestTree
responseListRoutingProfileQueues =
  res
    "ListRoutingProfileQueuesResponse"
    "fixture/ListRoutingProfileQueuesResponse.proto"
    connect
    (Proxy :: Proxy ListRoutingProfileQueues)

responseUpdateUserHierarchy :: UpdateUserHierarchyResponse -> TestTree
responseUpdateUserHierarchy =
  res
    "UpdateUserHierarchyResponse"
    "fixture/UpdateUserHierarchyResponse.proto"
    connect
    (Proxy :: Proxy UpdateUserHierarchy)

responseDisassociateLambdaFunction :: DisassociateLambdaFunctionResponse -> TestTree
responseDisassociateLambdaFunction =
  res
    "DisassociateLambdaFunctionResponse"
    "fixture/DisassociateLambdaFunctionResponse.proto"
    connect
    (Proxy :: Proxy DisassociateLambdaFunction)

responseUpdateQueueMaxContacts :: UpdateQueueMaxContactsResponse -> TestTree
responseUpdateQueueMaxContacts =
  res
    "UpdateQueueMaxContactsResponse"
    "fixture/UpdateQueueMaxContactsResponse.proto"
    connect
    (Proxy :: Proxy UpdateQueueMaxContacts)

responseDescribeInstanceStorageConfig :: DescribeInstanceStorageConfigResponse -> TestTree
responseDescribeInstanceStorageConfig =
  res
    "DescribeInstanceStorageConfigResponse"
    "fixture/DescribeInstanceStorageConfigResponse.proto"
    connect
    (Proxy :: Proxy DescribeInstanceStorageConfig)

responseUpdateQueueHoursOfOperation :: UpdateQueueHoursOfOperationResponse -> TestTree
responseUpdateQueueHoursOfOperation =
  res
    "UpdateQueueHoursOfOperationResponse"
    "fixture/UpdateQueueHoursOfOperationResponse.proto"
    connect
    (Proxy :: Proxy UpdateQueueHoursOfOperation)

responseDisassociateRoutingProfileQueues :: DisassociateRoutingProfileQueuesResponse -> TestTree
responseDisassociateRoutingProfileQueues =
  res
    "DisassociateRoutingProfileQueuesResponse"
    "fixture/DisassociateRoutingProfileQueuesResponse.proto"
    connect
    (Proxy :: Proxy DisassociateRoutingProfileQueues)

responseDescribeContactFlow :: DescribeContactFlowResponse -> TestTree
responseDescribeContactFlow =
  res
    "DescribeContactFlowResponse"
    "fixture/DescribeContactFlowResponse.proto"
    connect
    (Proxy :: Proxy DescribeContactFlow)

responseUpdateQueueStatus :: UpdateQueueStatusResponse -> TestTree
responseUpdateQueueStatus =
  res
    "UpdateQueueStatusResponse"
    "fixture/UpdateQueueStatusResponse.proto"
    connect
    (Proxy :: Proxy UpdateQueueStatus)

responseDescribeQueue :: DescribeQueueResponse -> TestTree
responseDescribeQueue =
  res
    "DescribeQueueResponse"
    "fixture/DescribeQueueResponse.proto"
    connect
    (Proxy :: Proxy DescribeQueue)

responseAssociateLexBot :: AssociateLexBotResponse -> TestTree
responseAssociateLexBot =
  res
    "AssociateLexBotResponse"
    "fixture/AssociateLexBotResponse.proto"
    connect
    (Proxy :: Proxy AssociateLexBot)

responseUpdateInstanceAttribute :: UpdateInstanceAttributeResponse -> TestTree
responseUpdateInstanceAttribute =
  res
    "UpdateInstanceAttributeResponse"
    "fixture/UpdateInstanceAttributeResponse.proto"
    connect
    (Proxy :: Proxy UpdateInstanceAttribute)

responseDescribeUser :: DescribeUserResponse -> TestTree
responseDescribeUser =
  res
    "DescribeUserResponse"
    "fixture/DescribeUserResponse.proto"
    connect
    (Proxy :: Proxy DescribeUser)

responseDescribeUserHierarchyGroup :: DescribeUserHierarchyGroupResponse -> TestTree
responseDescribeUserHierarchyGroup =
  res
    "DescribeUserHierarchyGroupResponse"
    "fixture/DescribeUserHierarchyGroupResponse.proto"
    connect
    (Proxy :: Proxy DescribeUserHierarchyGroup)

responseResumeContactRecording :: ResumeContactRecordingResponse -> TestTree
responseResumeContactRecording =
  res
    "ResumeContactRecordingResponse"
    "fixture/ResumeContactRecordingResponse.proto"
    connect
    (Proxy :: Proxy ResumeContactRecording)

responseUpdateRoutingProfileName :: UpdateRoutingProfileNameResponse -> TestTree
responseUpdateRoutingProfileName =
  res
    "UpdateRoutingProfileNameResponse"
    "fixture/UpdateRoutingProfileNameResponse.proto"
    connect
    (Proxy :: Proxy UpdateRoutingProfileName)

responseStartChatContact :: StartChatContactResponse -> TestTree
responseStartChatContact =
  res
    "StartChatContactResponse"
    "fixture/StartChatContactResponse.proto"
    connect
    (Proxy :: Proxy StartChatContact)

responseDeleteIntegrationAssociation :: DeleteIntegrationAssociationResponse -> TestTree
responseDeleteIntegrationAssociation =
  res
    "DeleteIntegrationAssociationResponse"
    "fixture/DeleteIntegrationAssociationResponse.proto"
    connect
    (Proxy :: Proxy DeleteIntegrationAssociation)

responseListPhoneNumbers :: ListPhoneNumbersResponse -> TestTree
responseListPhoneNumbers =
  res
    "ListPhoneNumbersResponse"
    "fixture/ListPhoneNumbersResponse.proto"
    connect
    (Proxy :: Proxy ListPhoneNumbers)

responseListIntegrationAssociations :: ListIntegrationAssociationsResponse -> TestTree
responseListIntegrationAssociations =
  res
    "ListIntegrationAssociationsResponse"
    "fixture/ListIntegrationAssociationsResponse.proto"
    connect
    (Proxy :: Proxy ListIntegrationAssociations)

responseListUseCases :: ListUseCasesResponse -> TestTree
responseListUseCases =
  res
    "ListUseCasesResponse"
    "fixture/ListUseCasesResponse.proto"
    connect
    (Proxy :: Proxy ListUseCases)

responseUpdateUserSecurityProfiles :: UpdateUserSecurityProfilesResponse -> TestTree
responseUpdateUserSecurityProfiles =
  res
    "UpdateUserSecurityProfilesResponse"
    "fixture/UpdateUserSecurityProfilesResponse.proto"
    connect
    (Proxy :: Proxy UpdateUserSecurityProfiles)

responseDescribeUserHierarchyStructure :: DescribeUserHierarchyStructureResponse -> TestTree
responseDescribeUserHierarchyStructure =
  res
    "DescribeUserHierarchyStructureResponse"
    "fixture/DescribeUserHierarchyStructureResponse.proto"
    connect
    (Proxy :: Proxy DescribeUserHierarchyStructure)

responseListHoursOfOperations :: ListHoursOfOperationsResponse -> TestTree
responseListHoursOfOperations =
  res
    "ListHoursOfOperationsResponse"
    "fixture/ListHoursOfOperationsResponse.proto"
    connect
    (Proxy :: Proxy ListHoursOfOperations)

responseCreateUseCase :: CreateUseCaseResponse -> TestTree
responseCreateUseCase =
  res
    "CreateUseCaseResponse"
    "fixture/CreateUseCaseResponse.proto"
    connect
    (Proxy :: Proxy CreateUseCase)

responseListContactFlows :: ListContactFlowsResponse -> TestTree
responseListContactFlows =
  res
    "ListContactFlowsResponse"
    "fixture/ListContactFlowsResponse.proto"
    connect
    (Proxy :: Proxy ListContactFlows)

responseUpdateInstanceStorageConfig :: UpdateInstanceStorageConfigResponse -> TestTree
responseUpdateInstanceStorageConfig =
  res
    "UpdateInstanceStorageConfigResponse"
    "fixture/UpdateInstanceStorageConfigResponse.proto"
    connect
    (Proxy :: Proxy UpdateInstanceStorageConfig)

responseListInstanceStorageConfigs :: ListInstanceStorageConfigsResponse -> TestTree
responseListInstanceStorageConfigs =
  res
    "ListInstanceStorageConfigsResponse"
    "fixture/ListInstanceStorageConfigsResponse.proto"
    connect
    (Proxy :: Proxy ListInstanceStorageConfigs)

responseCreateIntegrationAssociation :: CreateIntegrationAssociationResponse -> TestTree
responseCreateIntegrationAssociation =
  res
    "CreateIntegrationAssociationResponse"
    "fixture/CreateIntegrationAssociationResponse.proto"
    connect
    (Proxy :: Proxy CreateIntegrationAssociation)

responseDeleteUserHierarchyGroup :: DeleteUserHierarchyGroupResponse -> TestTree
responseDeleteUserHierarchyGroup =
  res
    "DeleteUserHierarchyGroupResponse"
    "fixture/DeleteUserHierarchyGroupResponse.proto"
    connect
    (Proxy :: Proxy DeleteUserHierarchyGroup)

responseDeleteUser :: DeleteUserResponse -> TestTree
responseDeleteUser =
  res
    "DeleteUserResponse"
    "fixture/DeleteUserResponse.proto"
    connect
    (Proxy :: Proxy DeleteUser)

responseDisassociateInstanceStorageConfig :: DisassociateInstanceStorageConfigResponse -> TestTree
responseDisassociateInstanceStorageConfig =
  res
    "DisassociateInstanceStorageConfigResponse"
    "fixture/DisassociateInstanceStorageConfigResponse.proto"
    connect
    (Proxy :: Proxy DisassociateInstanceStorageConfig)

responseListUserHierarchyGroups :: ListUserHierarchyGroupsResponse -> TestTree
responseListUserHierarchyGroups =
  res
    "ListUserHierarchyGroupsResponse"
    "fixture/ListUserHierarchyGroupsResponse.proto"
    connect
    (Proxy :: Proxy ListUserHierarchyGroups)

responseUpdateUserIdentityInfo :: UpdateUserIdentityInfoResponse -> TestTree
responseUpdateUserIdentityInfo =
  res
    "UpdateUserIdentityInfoResponse"
    "fixture/UpdateUserIdentityInfoResponse.proto"
    connect
    (Proxy :: Proxy UpdateUserIdentityInfo)

responseListUsers :: ListUsersResponse -> TestTree
responseListUsers =
  res
    "ListUsersResponse"
    "fixture/ListUsersResponse.proto"
    connect
    (Proxy :: Proxy ListUsers)

responseGetFederationToken :: GetFederationTokenResponse -> TestTree
responseGetFederationToken =
  res
    "GetFederationTokenResponse"
    "fixture/GetFederationTokenResponse.proto"
    connect
    (Proxy :: Proxy GetFederationToken)

responseDescribeInstanceAttribute :: DescribeInstanceAttributeResponse -> TestTree
responseDescribeInstanceAttribute =
  res
    "DescribeInstanceAttributeResponse"
    "fixture/DescribeInstanceAttributeResponse.proto"
    connect
    (Proxy :: Proxy DescribeInstanceAttribute)

responseListSecurityKeys :: ListSecurityKeysResponse -> TestTree
responseListSecurityKeys =
  res
    "ListSecurityKeysResponse"
    "fixture/ListSecurityKeysResponse.proto"
    connect
    (Proxy :: Proxy ListSecurityKeys)

responseUpdateRoutingProfileDefaultOutboundQueue :: UpdateRoutingProfileDefaultOutboundQueueResponse -> TestTree
responseUpdateRoutingProfileDefaultOutboundQueue =
  res
    "UpdateRoutingProfileDefaultOutboundQueueResponse"
    "fixture/UpdateRoutingProfileDefaultOutboundQueueResponse.proto"
    connect
    (Proxy :: Proxy UpdateRoutingProfileDefaultOutboundQueue)

responseCreateQueue :: CreateQueueResponse -> TestTree
responseCreateQueue =
  res
    "CreateQueueResponse"
    "fixture/CreateQueueResponse.proto"
    connect
    (Proxy :: Proxy CreateQueue)

responseCreateInstance :: CreateInstanceResponse -> TestTree
responseCreateInstance =
  res
    "CreateInstanceResponse"
    "fixture/CreateInstanceResponse.proto"
    connect
    (Proxy :: Proxy CreateInstance)

responseStartTaskContact :: StartTaskContactResponse -> TestTree
responseStartTaskContact =
  res
    "StartTaskContactResponse"
    "fixture/StartTaskContactResponse.proto"
    connect
    (Proxy :: Proxy StartTaskContact)

responseListPrompts :: ListPromptsResponse -> TestTree
responseListPrompts =
  res
    "ListPromptsResponse"
    "fixture/ListPromptsResponse.proto"
    connect
    (Proxy :: Proxy ListPrompts)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    connect
    (Proxy :: Proxy ListTagsForResource)

responseStartOutboundVoiceContact :: StartOutboundVoiceContactResponse -> TestTree
responseStartOutboundVoiceContact =
  res
    "StartOutboundVoiceContactResponse"
    "fixture/StartOutboundVoiceContactResponse.proto"
    connect
    (Proxy :: Proxy StartOutboundVoiceContact)

responseUpdateUserHierarchyStructure :: UpdateUserHierarchyStructureResponse -> TestTree
responseUpdateUserHierarchyStructure =
  res
    "UpdateUserHierarchyStructureResponse"
    "fixture/UpdateUserHierarchyStructureResponse.proto"
    connect
    (Proxy :: Proxy UpdateUserHierarchyStructure)

responseUpdateContactFlowContent :: UpdateContactFlowContentResponse -> TestTree
responseUpdateContactFlowContent =
  res
    "UpdateContactFlowContentResponse"
    "fixture/UpdateContactFlowContentResponse.proto"
    connect
    (Proxy :: Proxy UpdateContactFlowContent)

responseGetMetricData :: GetMetricDataResponse -> TestTree
responseGetMetricData =
  res
    "GetMetricDataResponse"
    "fixture/GetMetricDataResponse.proto"
    connect
    (Proxy :: Proxy GetMetricData)

responseDescribeHoursOfOperation :: DescribeHoursOfOperationResponse -> TestTree
responseDescribeHoursOfOperation =
  res
    "DescribeHoursOfOperationResponse"
    "fixture/DescribeHoursOfOperationResponse.proto"
    connect
    (Proxy :: Proxy DescribeHoursOfOperation)
