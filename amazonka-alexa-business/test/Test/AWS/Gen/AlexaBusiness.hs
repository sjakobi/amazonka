{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.AlexaBusiness
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.AlexaBusiness where

import Data.Proxy
import Network.AWS.AlexaBusiness
import Test.AWS.AlexaBusiness.Internal
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
--         [ requestStartDeviceSync $
--             startDeviceSync
--
--         , requestCreateProfile $
--             createProfile
--
--         , requestCreateContact $
--             createContact
--
--         , requestDeleteBusinessReportSchedule $
--             deleteBusinessReportSchedule
--
--         , requestUpdateNetworkProfile $
--             updateNetworkProfile
--
--         , requestListBusinessReportSchedules $
--             listBusinessReportSchedules
--
--         , requestDeleteNetworkProfile $
--             deleteNetworkProfile
--
--         , requestUpdateBusinessReportSchedule $
--             updateBusinessReportSchedule
--
--         , requestDeleteDeviceUsageData $
--             deleteDeviceUsageData
--
--         , requestGetConferenceProvider $
--             getConferenceProvider
--
--         , requestGetGatewayGroup $
--             getGatewayGroup
--
--         , requestGetRoom $
--             getRoom
--
--         , requestCreateNetworkProfile $
--             createNetworkProfile
--
--         , requestListSkillsStoreCategories $
--             listSkillsStoreCategories
--
--         , requestCreateBusinessReportSchedule $
--             createBusinessReportSchedule
--
--         , requestGetAddressBook $
--             getAddressBook
--
--         , requestAssociateContactWithAddressBook $
--             associateContactWithAddressBook
--
--         , requestGetDevice $
--             getDevice
--
--         , requestDeleteRoomSkillParameter $
--             deleteRoomSkillParameter
--
--         , requestListSkillsStoreSkillsByCategory $
--             listSkillsStoreSkillsByCategory
--
--         , requestSearchProfiles $
--             searchProfiles
--
--         , requestDeleteAddressBook $
--             deleteAddressBook
--
--         , requestUpdateAddressBook $
--             updateAddressBook
--
--         , requestSearchSkillGroups $
--             searchSkillGroups
--
--         , requestResolveRoom $
--             resolveRoom
--
--         , requestPutSkillAuthorization $
--             putSkillAuthorization
--
--         , requestUntagResource $
--             untagResource
--
--         , requestDisassociateContactFromAddressBook $
--             disassociateContactFromAddressBook
--
--         , requestAssociateDeviceWithNetworkProfile $
--             associateDeviceWithNetworkProfile
--
--         , requestSearchNetworkProfiles $
--             searchNetworkProfiles
--
--         , requestGetSkillGroup $
--             getSkillGroup
--
--         , requestPutInvitationConfiguration $
--             putInvitationConfiguration
--
--         , requestTagResource $
--             tagResource
--
--         , requestListDeviceEvents $
--             listDeviceEvents
--
--         , requestSendAnnouncement $
--             sendAnnouncement
--
--         , requestDisassociateSkillGroupFromRoom $
--             disassociateSkillGroupFromRoom
--
--         , requestGetProfile $
--             getProfile
--
--         , requestCreateUser $
--             createUser
--
--         , requestSearchContacts $
--             searchContacts
--
--         , requestRegisterAVSDevice $
--             registerAVSDevice
--
--         , requestSendInvitation $
--             sendInvitation
--
--         , requestForgetSmartHomeAppliances $
--             forgetSmartHomeAppliances
--
--         , requestAssociateSkillWithUsers $
--             associateSkillWithUsers
--
--         , requestGetInvitationConfiguration $
--             getInvitationConfiguration
--
--         , requestDisassociateSkillFromUsers $
--             disassociateSkillFromUsers
--
--         , requestDeleteSkillGroup $
--             deleteSkillGroup
--
--         , requestUpdateSkillGroup $
--             updateSkillGroup
--
--         , requestAssociateSkillGroupWithRoom $
--             associateSkillGroupWithRoom
--
--         , requestSearchUsers $
--             searchUsers
--
--         , requestPutConferencePreference $
--             putConferencePreference
--
--         , requestUpdateGateway $
--             updateGateway
--
--         , requestDeleteDevice $
--             deleteDevice
--
--         , requestRevokeInvitation $
--             revokeInvitation
--
--         , requestGetRoomSkillParameter $
--             getRoomSkillParameter
--
--         , requestUpdateContact $
--             updateContact
--
--         , requestStartSmartHomeApplianceDiscovery $
--             startSmartHomeApplianceDiscovery
--
--         , requestDeleteContact $
--             deleteContact
--
--         , requestUpdateDevice $
--             updateDevice
--
--         , requestAssociateDeviceWithRoom $
--             associateDeviceWithRoom
--
--         , requestAssociateSkillWithSkillGroup $
--             associateSkillWithSkillGroup
--
--         , requestListGateways $
--             listGateways
--
--         , requestDeleteRoom $
--             deleteRoom
--
--         , requestListConferenceProviders $
--             listConferenceProviders
--
--         , requestDeleteGatewayGroup $
--             deleteGatewayGroup
--
--         , requestUpdateRoom $
--             updateRoom
--
--         , requestDeleteConferenceProvider $
--             deleteConferenceProvider
--
--         , requestGetGateway $
--             getGateway
--
--         , requestUpdateConferenceProvider $
--             updateConferenceProvider
--
--         , requestUpdateGatewayGroup $
--             updateGatewayGroup
--
--         , requestListGatewayGroups $
--             listGatewayGroups
--
--         , requestApproveSkill $
--             approveSkill
--
--         , requestGetContact $
--             getContact
--
--         , requestRejectSkill $
--             rejectSkill
--
--         , requestPutRoomSkillParameter $
--             putRoomSkillParameter
--
--         , requestDisassociateDeviceFromRoom $
--             disassociateDeviceFromRoom
--
--         , requestCreateAddressBook $
--             createAddressBook
--
--         , requestCreateRoom $
--             createRoom
--
--         , requestCreateConferenceProvider $
--             createConferenceProvider
--
--         , requestGetNetworkProfile $
--             getNetworkProfile
--
--         , requestGetConferencePreference $
--             getConferencePreference
--
--         , requestDeleteSkillAuthorization $
--             deleteSkillAuthorization
--
--         , requestCreateGatewayGroup $
--             createGatewayGroup
--
--         , requestListTags $
--             listTags
--
--         , requestDisassociateSkillFromSkillGroup $
--             disassociateSkillFromSkillGroup
--
--         , requestDeleteUser $
--             deleteUser
--
--         , requestListSkills $
--             listSkills
--
--         , requestSearchDevices $
--             searchDevices
--
--         , requestSearchRooms $
--             searchRooms
--
--         , requestSearchAddressBooks $
--             searchAddressBooks
--
--         , requestListSmartHomeAppliances $
--             listSmartHomeAppliances
--
--         , requestDeleteProfile $
--             deleteProfile
--
--         , requestCreateSkillGroup $
--             createSkillGroup
--
--         , requestUpdateProfile $
--             updateProfile
--
--           ]

--     , testGroup "response"
--         [ responseStartDeviceSync $
--             startDeviceSyncResponse
--
--         , responseCreateProfile $
--             createProfileResponse
--
--         , responseCreateContact $
--             createContactResponse
--
--         , responseDeleteBusinessReportSchedule $
--             deleteBusinessReportScheduleResponse
--
--         , responseUpdateNetworkProfile $
--             updateNetworkProfileResponse
--
--         , responseListBusinessReportSchedules $
--             listBusinessReportSchedulesResponse
--
--         , responseDeleteNetworkProfile $
--             deleteNetworkProfileResponse
--
--         , responseUpdateBusinessReportSchedule $
--             updateBusinessReportScheduleResponse
--
--         , responseDeleteDeviceUsageData $
--             deleteDeviceUsageDataResponse
--
--         , responseGetConferenceProvider $
--             getConferenceProviderResponse
--
--         , responseGetGatewayGroup $
--             getGatewayGroupResponse
--
--         , responseGetRoom $
--             getRoomResponse
--
--         , responseCreateNetworkProfile $
--             createNetworkProfileResponse
--
--         , responseListSkillsStoreCategories $
--             listSkillsStoreCategoriesResponse
--
--         , responseCreateBusinessReportSchedule $
--             createBusinessReportScheduleResponse
--
--         , responseGetAddressBook $
--             getAddressBookResponse
--
--         , responseAssociateContactWithAddressBook $
--             associateContactWithAddressBookResponse
--
--         , responseGetDevice $
--             getDeviceResponse
--
--         , responseDeleteRoomSkillParameter $
--             deleteRoomSkillParameterResponse
--
--         , responseListSkillsStoreSkillsByCategory $
--             listSkillsStoreSkillsByCategoryResponse
--
--         , responseSearchProfiles $
--             searchProfilesResponse
--
--         , responseDeleteAddressBook $
--             deleteAddressBookResponse
--
--         , responseUpdateAddressBook $
--             updateAddressBookResponse
--
--         , responseSearchSkillGroups $
--             searchSkillGroupsResponse
--
--         , responseResolveRoom $
--             resolveRoomResponse
--
--         , responsePutSkillAuthorization $
--             putSkillAuthorizationResponse
--
--         , responseUntagResource $
--             untagResourceResponse
--
--         , responseDisassociateContactFromAddressBook $
--             disassociateContactFromAddressBookResponse
--
--         , responseAssociateDeviceWithNetworkProfile $
--             associateDeviceWithNetworkProfileResponse
--
--         , responseSearchNetworkProfiles $
--             searchNetworkProfilesResponse
--
--         , responseGetSkillGroup $
--             getSkillGroupResponse
--
--         , responsePutInvitationConfiguration $
--             putInvitationConfigurationResponse
--
--         , responseTagResource $
--             tagResourceResponse
--
--         , responseListDeviceEvents $
--             listDeviceEventsResponse
--
--         , responseSendAnnouncement $
--             sendAnnouncementResponse
--
--         , responseDisassociateSkillGroupFromRoom $
--             disassociateSkillGroupFromRoomResponse
--
--         , responseGetProfile $
--             getProfileResponse
--
--         , responseCreateUser $
--             createUserResponse
--
--         , responseSearchContacts $
--             searchContactsResponse
--
--         , responseRegisterAVSDevice $
--             registerAVSDeviceResponse
--
--         , responseSendInvitation $
--             sendInvitationResponse
--
--         , responseForgetSmartHomeAppliances $
--             forgetSmartHomeAppliancesResponse
--
--         , responseAssociateSkillWithUsers $
--             associateSkillWithUsersResponse
--
--         , responseGetInvitationConfiguration $
--             getInvitationConfigurationResponse
--
--         , responseDisassociateSkillFromUsers $
--             disassociateSkillFromUsersResponse
--
--         , responseDeleteSkillGroup $
--             deleteSkillGroupResponse
--
--         , responseUpdateSkillGroup $
--             updateSkillGroupResponse
--
--         , responseAssociateSkillGroupWithRoom $
--             associateSkillGroupWithRoomResponse
--
--         , responseSearchUsers $
--             searchUsersResponse
--
--         , responsePutConferencePreference $
--             putConferencePreferenceResponse
--
--         , responseUpdateGateway $
--             updateGatewayResponse
--
--         , responseDeleteDevice $
--             deleteDeviceResponse
--
--         , responseRevokeInvitation $
--             revokeInvitationResponse
--
--         , responseGetRoomSkillParameter $
--             getRoomSkillParameterResponse
--
--         , responseUpdateContact $
--             updateContactResponse
--
--         , responseStartSmartHomeApplianceDiscovery $
--             startSmartHomeApplianceDiscoveryResponse
--
--         , responseDeleteContact $
--             deleteContactResponse
--
--         , responseUpdateDevice $
--             updateDeviceResponse
--
--         , responseAssociateDeviceWithRoom $
--             associateDeviceWithRoomResponse
--
--         , responseAssociateSkillWithSkillGroup $
--             associateSkillWithSkillGroupResponse
--
--         , responseListGateways $
--             listGatewaysResponse
--
--         , responseDeleteRoom $
--             deleteRoomResponse
--
--         , responseListConferenceProviders $
--             listConferenceProvidersResponse
--
--         , responseDeleteGatewayGroup $
--             deleteGatewayGroupResponse
--
--         , responseUpdateRoom $
--             updateRoomResponse
--
--         , responseDeleteConferenceProvider $
--             deleteConferenceProviderResponse
--
--         , responseGetGateway $
--             getGatewayResponse
--
--         , responseUpdateConferenceProvider $
--             updateConferenceProviderResponse
--
--         , responseUpdateGatewayGroup $
--             updateGatewayGroupResponse
--
--         , responseListGatewayGroups $
--             listGatewayGroupsResponse
--
--         , responseApproveSkill $
--             approveSkillResponse
--
--         , responseGetContact $
--             getContactResponse
--
--         , responseRejectSkill $
--             rejectSkillResponse
--
--         , responsePutRoomSkillParameter $
--             putRoomSkillParameterResponse
--
--         , responseDisassociateDeviceFromRoom $
--             disassociateDeviceFromRoomResponse
--
--         , responseCreateAddressBook $
--             createAddressBookResponse
--
--         , responseCreateRoom $
--             createRoomResponse
--
--         , responseCreateConferenceProvider $
--             createConferenceProviderResponse
--
--         , responseGetNetworkProfile $
--             getNetworkProfileResponse
--
--         , responseGetConferencePreference $
--             getConferencePreferenceResponse
--
--         , responseDeleteSkillAuthorization $
--             deleteSkillAuthorizationResponse
--
--         , responseCreateGatewayGroup $
--             createGatewayGroupResponse
--
--         , responseListTags $
--             listTagsResponse
--
--         , responseDisassociateSkillFromSkillGroup $
--             disassociateSkillFromSkillGroupResponse
--
--         , responseDeleteUser $
--             deleteUserResponse
--
--         , responseListSkills $
--             listSkillsResponse
--
--         , responseSearchDevices $
--             searchDevicesResponse
--
--         , responseSearchRooms $
--             searchRoomsResponse
--
--         , responseSearchAddressBooks $
--             searchAddressBooksResponse
--
--         , responseListSmartHomeAppliances $
--             listSmartHomeAppliancesResponse
--
--         , responseDeleteProfile $
--             deleteProfileResponse
--
--         , responseCreateSkillGroup $
--             createSkillGroupResponse
--
--         , responseUpdateProfile $
--             updateProfileResponse
--
--           ]
--     ]

-- Requests

requestStartDeviceSync :: StartDeviceSync -> TestTree
requestStartDeviceSync =
  req
    "StartDeviceSync"
    "fixture/StartDeviceSync.yaml"

requestCreateProfile :: CreateProfile -> TestTree
requestCreateProfile =
  req
    "CreateProfile"
    "fixture/CreateProfile.yaml"

requestCreateContact :: CreateContact -> TestTree
requestCreateContact =
  req
    "CreateContact"
    "fixture/CreateContact.yaml"

requestDeleteBusinessReportSchedule :: DeleteBusinessReportSchedule -> TestTree
requestDeleteBusinessReportSchedule =
  req
    "DeleteBusinessReportSchedule"
    "fixture/DeleteBusinessReportSchedule.yaml"

requestUpdateNetworkProfile :: UpdateNetworkProfile -> TestTree
requestUpdateNetworkProfile =
  req
    "UpdateNetworkProfile"
    "fixture/UpdateNetworkProfile.yaml"

requestListBusinessReportSchedules :: ListBusinessReportSchedules -> TestTree
requestListBusinessReportSchedules =
  req
    "ListBusinessReportSchedules"
    "fixture/ListBusinessReportSchedules.yaml"

requestDeleteNetworkProfile :: DeleteNetworkProfile -> TestTree
requestDeleteNetworkProfile =
  req
    "DeleteNetworkProfile"
    "fixture/DeleteNetworkProfile.yaml"

requestUpdateBusinessReportSchedule :: UpdateBusinessReportSchedule -> TestTree
requestUpdateBusinessReportSchedule =
  req
    "UpdateBusinessReportSchedule"
    "fixture/UpdateBusinessReportSchedule.yaml"

requestDeleteDeviceUsageData :: DeleteDeviceUsageData -> TestTree
requestDeleteDeviceUsageData =
  req
    "DeleteDeviceUsageData"
    "fixture/DeleteDeviceUsageData.yaml"

requestGetConferenceProvider :: GetConferenceProvider -> TestTree
requestGetConferenceProvider =
  req
    "GetConferenceProvider"
    "fixture/GetConferenceProvider.yaml"

requestGetGatewayGroup :: GetGatewayGroup -> TestTree
requestGetGatewayGroup =
  req
    "GetGatewayGroup"
    "fixture/GetGatewayGroup.yaml"

requestGetRoom :: GetRoom -> TestTree
requestGetRoom =
  req
    "GetRoom"
    "fixture/GetRoom.yaml"

requestCreateNetworkProfile :: CreateNetworkProfile -> TestTree
requestCreateNetworkProfile =
  req
    "CreateNetworkProfile"
    "fixture/CreateNetworkProfile.yaml"

requestListSkillsStoreCategories :: ListSkillsStoreCategories -> TestTree
requestListSkillsStoreCategories =
  req
    "ListSkillsStoreCategories"
    "fixture/ListSkillsStoreCategories.yaml"

requestCreateBusinessReportSchedule :: CreateBusinessReportSchedule -> TestTree
requestCreateBusinessReportSchedule =
  req
    "CreateBusinessReportSchedule"
    "fixture/CreateBusinessReportSchedule.yaml"

requestGetAddressBook :: GetAddressBook -> TestTree
requestGetAddressBook =
  req
    "GetAddressBook"
    "fixture/GetAddressBook.yaml"

requestAssociateContactWithAddressBook :: AssociateContactWithAddressBook -> TestTree
requestAssociateContactWithAddressBook =
  req
    "AssociateContactWithAddressBook"
    "fixture/AssociateContactWithAddressBook.yaml"

requestGetDevice :: GetDevice -> TestTree
requestGetDevice =
  req
    "GetDevice"
    "fixture/GetDevice.yaml"

requestDeleteRoomSkillParameter :: DeleteRoomSkillParameter -> TestTree
requestDeleteRoomSkillParameter =
  req
    "DeleteRoomSkillParameter"
    "fixture/DeleteRoomSkillParameter.yaml"

requestListSkillsStoreSkillsByCategory :: ListSkillsStoreSkillsByCategory -> TestTree
requestListSkillsStoreSkillsByCategory =
  req
    "ListSkillsStoreSkillsByCategory"
    "fixture/ListSkillsStoreSkillsByCategory.yaml"

requestSearchProfiles :: SearchProfiles -> TestTree
requestSearchProfiles =
  req
    "SearchProfiles"
    "fixture/SearchProfiles.yaml"

requestDeleteAddressBook :: DeleteAddressBook -> TestTree
requestDeleteAddressBook =
  req
    "DeleteAddressBook"
    "fixture/DeleteAddressBook.yaml"

requestUpdateAddressBook :: UpdateAddressBook -> TestTree
requestUpdateAddressBook =
  req
    "UpdateAddressBook"
    "fixture/UpdateAddressBook.yaml"

requestSearchSkillGroups :: SearchSkillGroups -> TestTree
requestSearchSkillGroups =
  req
    "SearchSkillGroups"
    "fixture/SearchSkillGroups.yaml"

requestResolveRoom :: ResolveRoom -> TestTree
requestResolveRoom =
  req
    "ResolveRoom"
    "fixture/ResolveRoom.yaml"

requestPutSkillAuthorization :: PutSkillAuthorization -> TestTree
requestPutSkillAuthorization =
  req
    "PutSkillAuthorization"
    "fixture/PutSkillAuthorization.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource =
  req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestDisassociateContactFromAddressBook :: DisassociateContactFromAddressBook -> TestTree
requestDisassociateContactFromAddressBook =
  req
    "DisassociateContactFromAddressBook"
    "fixture/DisassociateContactFromAddressBook.yaml"

requestAssociateDeviceWithNetworkProfile :: AssociateDeviceWithNetworkProfile -> TestTree
requestAssociateDeviceWithNetworkProfile =
  req
    "AssociateDeviceWithNetworkProfile"
    "fixture/AssociateDeviceWithNetworkProfile.yaml"

requestSearchNetworkProfiles :: SearchNetworkProfiles -> TestTree
requestSearchNetworkProfiles =
  req
    "SearchNetworkProfiles"
    "fixture/SearchNetworkProfiles.yaml"

requestGetSkillGroup :: GetSkillGroup -> TestTree
requestGetSkillGroup =
  req
    "GetSkillGroup"
    "fixture/GetSkillGroup.yaml"

requestPutInvitationConfiguration :: PutInvitationConfiguration -> TestTree
requestPutInvitationConfiguration =
  req
    "PutInvitationConfiguration"
    "fixture/PutInvitationConfiguration.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource =
  req
    "TagResource"
    "fixture/TagResource.yaml"

requestListDeviceEvents :: ListDeviceEvents -> TestTree
requestListDeviceEvents =
  req
    "ListDeviceEvents"
    "fixture/ListDeviceEvents.yaml"

requestSendAnnouncement :: SendAnnouncement -> TestTree
requestSendAnnouncement =
  req
    "SendAnnouncement"
    "fixture/SendAnnouncement.yaml"

requestDisassociateSkillGroupFromRoom :: DisassociateSkillGroupFromRoom -> TestTree
requestDisassociateSkillGroupFromRoom =
  req
    "DisassociateSkillGroupFromRoom"
    "fixture/DisassociateSkillGroupFromRoom.yaml"

requestGetProfile :: GetProfile -> TestTree
requestGetProfile =
  req
    "GetProfile"
    "fixture/GetProfile.yaml"

requestCreateUser :: CreateUser -> TestTree
requestCreateUser =
  req
    "CreateUser"
    "fixture/CreateUser.yaml"

requestSearchContacts :: SearchContacts -> TestTree
requestSearchContacts =
  req
    "SearchContacts"
    "fixture/SearchContacts.yaml"

requestRegisterAVSDevice :: RegisterAVSDevice -> TestTree
requestRegisterAVSDevice =
  req
    "RegisterAVSDevice"
    "fixture/RegisterAVSDevice.yaml"

requestSendInvitation :: SendInvitation -> TestTree
requestSendInvitation =
  req
    "SendInvitation"
    "fixture/SendInvitation.yaml"

requestForgetSmartHomeAppliances :: ForgetSmartHomeAppliances -> TestTree
requestForgetSmartHomeAppliances =
  req
    "ForgetSmartHomeAppliances"
    "fixture/ForgetSmartHomeAppliances.yaml"

requestAssociateSkillWithUsers :: AssociateSkillWithUsers -> TestTree
requestAssociateSkillWithUsers =
  req
    "AssociateSkillWithUsers"
    "fixture/AssociateSkillWithUsers.yaml"

requestGetInvitationConfiguration :: GetInvitationConfiguration -> TestTree
requestGetInvitationConfiguration =
  req
    "GetInvitationConfiguration"
    "fixture/GetInvitationConfiguration.yaml"

requestDisassociateSkillFromUsers :: DisassociateSkillFromUsers -> TestTree
requestDisassociateSkillFromUsers =
  req
    "DisassociateSkillFromUsers"
    "fixture/DisassociateSkillFromUsers.yaml"

requestDeleteSkillGroup :: DeleteSkillGroup -> TestTree
requestDeleteSkillGroup =
  req
    "DeleteSkillGroup"
    "fixture/DeleteSkillGroup.yaml"

requestUpdateSkillGroup :: UpdateSkillGroup -> TestTree
requestUpdateSkillGroup =
  req
    "UpdateSkillGroup"
    "fixture/UpdateSkillGroup.yaml"

requestAssociateSkillGroupWithRoom :: AssociateSkillGroupWithRoom -> TestTree
requestAssociateSkillGroupWithRoom =
  req
    "AssociateSkillGroupWithRoom"
    "fixture/AssociateSkillGroupWithRoom.yaml"

requestSearchUsers :: SearchUsers -> TestTree
requestSearchUsers =
  req
    "SearchUsers"
    "fixture/SearchUsers.yaml"

requestPutConferencePreference :: PutConferencePreference -> TestTree
requestPutConferencePreference =
  req
    "PutConferencePreference"
    "fixture/PutConferencePreference.yaml"

requestUpdateGateway :: UpdateGateway -> TestTree
requestUpdateGateway =
  req
    "UpdateGateway"
    "fixture/UpdateGateway.yaml"

requestDeleteDevice :: DeleteDevice -> TestTree
requestDeleteDevice =
  req
    "DeleteDevice"
    "fixture/DeleteDevice.yaml"

requestRevokeInvitation :: RevokeInvitation -> TestTree
requestRevokeInvitation =
  req
    "RevokeInvitation"
    "fixture/RevokeInvitation.yaml"

requestGetRoomSkillParameter :: GetRoomSkillParameter -> TestTree
requestGetRoomSkillParameter =
  req
    "GetRoomSkillParameter"
    "fixture/GetRoomSkillParameter.yaml"

requestUpdateContact :: UpdateContact -> TestTree
requestUpdateContact =
  req
    "UpdateContact"
    "fixture/UpdateContact.yaml"

requestStartSmartHomeApplianceDiscovery :: StartSmartHomeApplianceDiscovery -> TestTree
requestStartSmartHomeApplianceDiscovery =
  req
    "StartSmartHomeApplianceDiscovery"
    "fixture/StartSmartHomeApplianceDiscovery.yaml"

requestDeleteContact :: DeleteContact -> TestTree
requestDeleteContact =
  req
    "DeleteContact"
    "fixture/DeleteContact.yaml"

requestUpdateDevice :: UpdateDevice -> TestTree
requestUpdateDevice =
  req
    "UpdateDevice"
    "fixture/UpdateDevice.yaml"

requestAssociateDeviceWithRoom :: AssociateDeviceWithRoom -> TestTree
requestAssociateDeviceWithRoom =
  req
    "AssociateDeviceWithRoom"
    "fixture/AssociateDeviceWithRoom.yaml"

requestAssociateSkillWithSkillGroup :: AssociateSkillWithSkillGroup -> TestTree
requestAssociateSkillWithSkillGroup =
  req
    "AssociateSkillWithSkillGroup"
    "fixture/AssociateSkillWithSkillGroup.yaml"

requestListGateways :: ListGateways -> TestTree
requestListGateways =
  req
    "ListGateways"
    "fixture/ListGateways.yaml"

requestDeleteRoom :: DeleteRoom -> TestTree
requestDeleteRoom =
  req
    "DeleteRoom"
    "fixture/DeleteRoom.yaml"

requestListConferenceProviders :: ListConferenceProviders -> TestTree
requestListConferenceProviders =
  req
    "ListConferenceProviders"
    "fixture/ListConferenceProviders.yaml"

requestDeleteGatewayGroup :: DeleteGatewayGroup -> TestTree
requestDeleteGatewayGroup =
  req
    "DeleteGatewayGroup"
    "fixture/DeleteGatewayGroup.yaml"

requestUpdateRoom :: UpdateRoom -> TestTree
requestUpdateRoom =
  req
    "UpdateRoom"
    "fixture/UpdateRoom.yaml"

requestDeleteConferenceProvider :: DeleteConferenceProvider -> TestTree
requestDeleteConferenceProvider =
  req
    "DeleteConferenceProvider"
    "fixture/DeleteConferenceProvider.yaml"

requestGetGateway :: GetGateway -> TestTree
requestGetGateway =
  req
    "GetGateway"
    "fixture/GetGateway.yaml"

requestUpdateConferenceProvider :: UpdateConferenceProvider -> TestTree
requestUpdateConferenceProvider =
  req
    "UpdateConferenceProvider"
    "fixture/UpdateConferenceProvider.yaml"

requestUpdateGatewayGroup :: UpdateGatewayGroup -> TestTree
requestUpdateGatewayGroup =
  req
    "UpdateGatewayGroup"
    "fixture/UpdateGatewayGroup.yaml"

requestListGatewayGroups :: ListGatewayGroups -> TestTree
requestListGatewayGroups =
  req
    "ListGatewayGroups"
    "fixture/ListGatewayGroups.yaml"

requestApproveSkill :: ApproveSkill -> TestTree
requestApproveSkill =
  req
    "ApproveSkill"
    "fixture/ApproveSkill.yaml"

requestGetContact :: GetContact -> TestTree
requestGetContact =
  req
    "GetContact"
    "fixture/GetContact.yaml"

requestRejectSkill :: RejectSkill -> TestTree
requestRejectSkill =
  req
    "RejectSkill"
    "fixture/RejectSkill.yaml"

requestPutRoomSkillParameter :: PutRoomSkillParameter -> TestTree
requestPutRoomSkillParameter =
  req
    "PutRoomSkillParameter"
    "fixture/PutRoomSkillParameter.yaml"

requestDisassociateDeviceFromRoom :: DisassociateDeviceFromRoom -> TestTree
requestDisassociateDeviceFromRoom =
  req
    "DisassociateDeviceFromRoom"
    "fixture/DisassociateDeviceFromRoom.yaml"

requestCreateAddressBook :: CreateAddressBook -> TestTree
requestCreateAddressBook =
  req
    "CreateAddressBook"
    "fixture/CreateAddressBook.yaml"

requestCreateRoom :: CreateRoom -> TestTree
requestCreateRoom =
  req
    "CreateRoom"
    "fixture/CreateRoom.yaml"

requestCreateConferenceProvider :: CreateConferenceProvider -> TestTree
requestCreateConferenceProvider =
  req
    "CreateConferenceProvider"
    "fixture/CreateConferenceProvider.yaml"

requestGetNetworkProfile :: GetNetworkProfile -> TestTree
requestGetNetworkProfile =
  req
    "GetNetworkProfile"
    "fixture/GetNetworkProfile.yaml"

requestGetConferencePreference :: GetConferencePreference -> TestTree
requestGetConferencePreference =
  req
    "GetConferencePreference"
    "fixture/GetConferencePreference.yaml"

requestDeleteSkillAuthorization :: DeleteSkillAuthorization -> TestTree
requestDeleteSkillAuthorization =
  req
    "DeleteSkillAuthorization"
    "fixture/DeleteSkillAuthorization.yaml"

requestCreateGatewayGroup :: CreateGatewayGroup -> TestTree
requestCreateGatewayGroup =
  req
    "CreateGatewayGroup"
    "fixture/CreateGatewayGroup.yaml"

requestListTags :: ListTags -> TestTree
requestListTags =
  req
    "ListTags"
    "fixture/ListTags.yaml"

requestDisassociateSkillFromSkillGroup :: DisassociateSkillFromSkillGroup -> TestTree
requestDisassociateSkillFromSkillGroup =
  req
    "DisassociateSkillFromSkillGroup"
    "fixture/DisassociateSkillFromSkillGroup.yaml"

requestDeleteUser :: DeleteUser -> TestTree
requestDeleteUser =
  req
    "DeleteUser"
    "fixture/DeleteUser.yaml"

requestListSkills :: ListSkills -> TestTree
requestListSkills =
  req
    "ListSkills"
    "fixture/ListSkills.yaml"

requestSearchDevices :: SearchDevices -> TestTree
requestSearchDevices =
  req
    "SearchDevices"
    "fixture/SearchDevices.yaml"

requestSearchRooms :: SearchRooms -> TestTree
requestSearchRooms =
  req
    "SearchRooms"
    "fixture/SearchRooms.yaml"

requestSearchAddressBooks :: SearchAddressBooks -> TestTree
requestSearchAddressBooks =
  req
    "SearchAddressBooks"
    "fixture/SearchAddressBooks.yaml"

requestListSmartHomeAppliances :: ListSmartHomeAppliances -> TestTree
requestListSmartHomeAppliances =
  req
    "ListSmartHomeAppliances"
    "fixture/ListSmartHomeAppliances.yaml"

requestDeleteProfile :: DeleteProfile -> TestTree
requestDeleteProfile =
  req
    "DeleteProfile"
    "fixture/DeleteProfile.yaml"

requestCreateSkillGroup :: CreateSkillGroup -> TestTree
requestCreateSkillGroup =
  req
    "CreateSkillGroup"
    "fixture/CreateSkillGroup.yaml"

requestUpdateProfile :: UpdateProfile -> TestTree
requestUpdateProfile =
  req
    "UpdateProfile"
    "fixture/UpdateProfile.yaml"

-- Responses

responseStartDeviceSync :: StartDeviceSyncResponse -> TestTree
responseStartDeviceSync =
  res
    "StartDeviceSyncResponse"
    "fixture/StartDeviceSyncResponse.proto"
    alexaBusiness
    (Proxy :: Proxy StartDeviceSync)

responseCreateProfile :: CreateProfileResponse -> TestTree
responseCreateProfile =
  res
    "CreateProfileResponse"
    "fixture/CreateProfileResponse.proto"
    alexaBusiness
    (Proxy :: Proxy CreateProfile)

responseCreateContact :: CreateContactResponse -> TestTree
responseCreateContact =
  res
    "CreateContactResponse"
    "fixture/CreateContactResponse.proto"
    alexaBusiness
    (Proxy :: Proxy CreateContact)

responseDeleteBusinessReportSchedule :: DeleteBusinessReportScheduleResponse -> TestTree
responseDeleteBusinessReportSchedule =
  res
    "DeleteBusinessReportScheduleResponse"
    "fixture/DeleteBusinessReportScheduleResponse.proto"
    alexaBusiness
    (Proxy :: Proxy DeleteBusinessReportSchedule)

responseUpdateNetworkProfile :: UpdateNetworkProfileResponse -> TestTree
responseUpdateNetworkProfile =
  res
    "UpdateNetworkProfileResponse"
    "fixture/UpdateNetworkProfileResponse.proto"
    alexaBusiness
    (Proxy :: Proxy UpdateNetworkProfile)

responseListBusinessReportSchedules :: ListBusinessReportSchedulesResponse -> TestTree
responseListBusinessReportSchedules =
  res
    "ListBusinessReportSchedulesResponse"
    "fixture/ListBusinessReportSchedulesResponse.proto"
    alexaBusiness
    (Proxy :: Proxy ListBusinessReportSchedules)

responseDeleteNetworkProfile :: DeleteNetworkProfileResponse -> TestTree
responseDeleteNetworkProfile =
  res
    "DeleteNetworkProfileResponse"
    "fixture/DeleteNetworkProfileResponse.proto"
    alexaBusiness
    (Proxy :: Proxy DeleteNetworkProfile)

responseUpdateBusinessReportSchedule :: UpdateBusinessReportScheduleResponse -> TestTree
responseUpdateBusinessReportSchedule =
  res
    "UpdateBusinessReportScheduleResponse"
    "fixture/UpdateBusinessReportScheduleResponse.proto"
    alexaBusiness
    (Proxy :: Proxy UpdateBusinessReportSchedule)

responseDeleteDeviceUsageData :: DeleteDeviceUsageDataResponse -> TestTree
responseDeleteDeviceUsageData =
  res
    "DeleteDeviceUsageDataResponse"
    "fixture/DeleteDeviceUsageDataResponse.proto"
    alexaBusiness
    (Proxy :: Proxy DeleteDeviceUsageData)

responseGetConferenceProvider :: GetConferenceProviderResponse -> TestTree
responseGetConferenceProvider =
  res
    "GetConferenceProviderResponse"
    "fixture/GetConferenceProviderResponse.proto"
    alexaBusiness
    (Proxy :: Proxy GetConferenceProvider)

responseGetGatewayGroup :: GetGatewayGroupResponse -> TestTree
responseGetGatewayGroup =
  res
    "GetGatewayGroupResponse"
    "fixture/GetGatewayGroupResponse.proto"
    alexaBusiness
    (Proxy :: Proxy GetGatewayGroup)

responseGetRoom :: GetRoomResponse -> TestTree
responseGetRoom =
  res
    "GetRoomResponse"
    "fixture/GetRoomResponse.proto"
    alexaBusiness
    (Proxy :: Proxy GetRoom)

responseCreateNetworkProfile :: CreateNetworkProfileResponse -> TestTree
responseCreateNetworkProfile =
  res
    "CreateNetworkProfileResponse"
    "fixture/CreateNetworkProfileResponse.proto"
    alexaBusiness
    (Proxy :: Proxy CreateNetworkProfile)

responseListSkillsStoreCategories :: ListSkillsStoreCategoriesResponse -> TestTree
responseListSkillsStoreCategories =
  res
    "ListSkillsStoreCategoriesResponse"
    "fixture/ListSkillsStoreCategoriesResponse.proto"
    alexaBusiness
    (Proxy :: Proxy ListSkillsStoreCategories)

responseCreateBusinessReportSchedule :: CreateBusinessReportScheduleResponse -> TestTree
responseCreateBusinessReportSchedule =
  res
    "CreateBusinessReportScheduleResponse"
    "fixture/CreateBusinessReportScheduleResponse.proto"
    alexaBusiness
    (Proxy :: Proxy CreateBusinessReportSchedule)

responseGetAddressBook :: GetAddressBookResponse -> TestTree
responseGetAddressBook =
  res
    "GetAddressBookResponse"
    "fixture/GetAddressBookResponse.proto"
    alexaBusiness
    (Proxy :: Proxy GetAddressBook)

responseAssociateContactWithAddressBook :: AssociateContactWithAddressBookResponse -> TestTree
responseAssociateContactWithAddressBook =
  res
    "AssociateContactWithAddressBookResponse"
    "fixture/AssociateContactWithAddressBookResponse.proto"
    alexaBusiness
    (Proxy :: Proxy AssociateContactWithAddressBook)

responseGetDevice :: GetDeviceResponse -> TestTree
responseGetDevice =
  res
    "GetDeviceResponse"
    "fixture/GetDeviceResponse.proto"
    alexaBusiness
    (Proxy :: Proxy GetDevice)

responseDeleteRoomSkillParameter :: DeleteRoomSkillParameterResponse -> TestTree
responseDeleteRoomSkillParameter =
  res
    "DeleteRoomSkillParameterResponse"
    "fixture/DeleteRoomSkillParameterResponse.proto"
    alexaBusiness
    (Proxy :: Proxy DeleteRoomSkillParameter)

responseListSkillsStoreSkillsByCategory :: ListSkillsStoreSkillsByCategoryResponse -> TestTree
responseListSkillsStoreSkillsByCategory =
  res
    "ListSkillsStoreSkillsByCategoryResponse"
    "fixture/ListSkillsStoreSkillsByCategoryResponse.proto"
    alexaBusiness
    (Proxy :: Proxy ListSkillsStoreSkillsByCategory)

responseSearchProfiles :: SearchProfilesResponse -> TestTree
responseSearchProfiles =
  res
    "SearchProfilesResponse"
    "fixture/SearchProfilesResponse.proto"
    alexaBusiness
    (Proxy :: Proxy SearchProfiles)

responseDeleteAddressBook :: DeleteAddressBookResponse -> TestTree
responseDeleteAddressBook =
  res
    "DeleteAddressBookResponse"
    "fixture/DeleteAddressBookResponse.proto"
    alexaBusiness
    (Proxy :: Proxy DeleteAddressBook)

responseUpdateAddressBook :: UpdateAddressBookResponse -> TestTree
responseUpdateAddressBook =
  res
    "UpdateAddressBookResponse"
    "fixture/UpdateAddressBookResponse.proto"
    alexaBusiness
    (Proxy :: Proxy UpdateAddressBook)

responseSearchSkillGroups :: SearchSkillGroupsResponse -> TestTree
responseSearchSkillGroups =
  res
    "SearchSkillGroupsResponse"
    "fixture/SearchSkillGroupsResponse.proto"
    alexaBusiness
    (Proxy :: Proxy SearchSkillGroups)

responseResolveRoom :: ResolveRoomResponse -> TestTree
responseResolveRoom =
  res
    "ResolveRoomResponse"
    "fixture/ResolveRoomResponse.proto"
    alexaBusiness
    (Proxy :: Proxy ResolveRoom)

responsePutSkillAuthorization :: PutSkillAuthorizationResponse -> TestTree
responsePutSkillAuthorization =
  res
    "PutSkillAuthorizationResponse"
    "fixture/PutSkillAuthorizationResponse.proto"
    alexaBusiness
    (Proxy :: Proxy PutSkillAuthorization)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    alexaBusiness
    (Proxy :: Proxy UntagResource)

responseDisassociateContactFromAddressBook :: DisassociateContactFromAddressBookResponse -> TestTree
responseDisassociateContactFromAddressBook =
  res
    "DisassociateContactFromAddressBookResponse"
    "fixture/DisassociateContactFromAddressBookResponse.proto"
    alexaBusiness
    (Proxy :: Proxy DisassociateContactFromAddressBook)

responseAssociateDeviceWithNetworkProfile :: AssociateDeviceWithNetworkProfileResponse -> TestTree
responseAssociateDeviceWithNetworkProfile =
  res
    "AssociateDeviceWithNetworkProfileResponse"
    "fixture/AssociateDeviceWithNetworkProfileResponse.proto"
    alexaBusiness
    (Proxy :: Proxy AssociateDeviceWithNetworkProfile)

responseSearchNetworkProfiles :: SearchNetworkProfilesResponse -> TestTree
responseSearchNetworkProfiles =
  res
    "SearchNetworkProfilesResponse"
    "fixture/SearchNetworkProfilesResponse.proto"
    alexaBusiness
    (Proxy :: Proxy SearchNetworkProfiles)

responseGetSkillGroup :: GetSkillGroupResponse -> TestTree
responseGetSkillGroup =
  res
    "GetSkillGroupResponse"
    "fixture/GetSkillGroupResponse.proto"
    alexaBusiness
    (Proxy :: Proxy GetSkillGroup)

responsePutInvitationConfiguration :: PutInvitationConfigurationResponse -> TestTree
responsePutInvitationConfiguration =
  res
    "PutInvitationConfigurationResponse"
    "fixture/PutInvitationConfigurationResponse.proto"
    alexaBusiness
    (Proxy :: Proxy PutInvitationConfiguration)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    alexaBusiness
    (Proxy :: Proxy TagResource)

responseListDeviceEvents :: ListDeviceEventsResponse -> TestTree
responseListDeviceEvents =
  res
    "ListDeviceEventsResponse"
    "fixture/ListDeviceEventsResponse.proto"
    alexaBusiness
    (Proxy :: Proxy ListDeviceEvents)

responseSendAnnouncement :: SendAnnouncementResponse -> TestTree
responseSendAnnouncement =
  res
    "SendAnnouncementResponse"
    "fixture/SendAnnouncementResponse.proto"
    alexaBusiness
    (Proxy :: Proxy SendAnnouncement)

responseDisassociateSkillGroupFromRoom :: DisassociateSkillGroupFromRoomResponse -> TestTree
responseDisassociateSkillGroupFromRoom =
  res
    "DisassociateSkillGroupFromRoomResponse"
    "fixture/DisassociateSkillGroupFromRoomResponse.proto"
    alexaBusiness
    (Proxy :: Proxy DisassociateSkillGroupFromRoom)

responseGetProfile :: GetProfileResponse -> TestTree
responseGetProfile =
  res
    "GetProfileResponse"
    "fixture/GetProfileResponse.proto"
    alexaBusiness
    (Proxy :: Proxy GetProfile)

responseCreateUser :: CreateUserResponse -> TestTree
responseCreateUser =
  res
    "CreateUserResponse"
    "fixture/CreateUserResponse.proto"
    alexaBusiness
    (Proxy :: Proxy CreateUser)

responseSearchContacts :: SearchContactsResponse -> TestTree
responseSearchContacts =
  res
    "SearchContactsResponse"
    "fixture/SearchContactsResponse.proto"
    alexaBusiness
    (Proxy :: Proxy SearchContacts)

responseRegisterAVSDevice :: RegisterAVSDeviceResponse -> TestTree
responseRegisterAVSDevice =
  res
    "RegisterAVSDeviceResponse"
    "fixture/RegisterAVSDeviceResponse.proto"
    alexaBusiness
    (Proxy :: Proxy RegisterAVSDevice)

responseSendInvitation :: SendInvitationResponse -> TestTree
responseSendInvitation =
  res
    "SendInvitationResponse"
    "fixture/SendInvitationResponse.proto"
    alexaBusiness
    (Proxy :: Proxy SendInvitation)

responseForgetSmartHomeAppliances :: ForgetSmartHomeAppliancesResponse -> TestTree
responseForgetSmartHomeAppliances =
  res
    "ForgetSmartHomeAppliancesResponse"
    "fixture/ForgetSmartHomeAppliancesResponse.proto"
    alexaBusiness
    (Proxy :: Proxy ForgetSmartHomeAppliances)

responseAssociateSkillWithUsers :: AssociateSkillWithUsersResponse -> TestTree
responseAssociateSkillWithUsers =
  res
    "AssociateSkillWithUsersResponse"
    "fixture/AssociateSkillWithUsersResponse.proto"
    alexaBusiness
    (Proxy :: Proxy AssociateSkillWithUsers)

responseGetInvitationConfiguration :: GetInvitationConfigurationResponse -> TestTree
responseGetInvitationConfiguration =
  res
    "GetInvitationConfigurationResponse"
    "fixture/GetInvitationConfigurationResponse.proto"
    alexaBusiness
    (Proxy :: Proxy GetInvitationConfiguration)

responseDisassociateSkillFromUsers :: DisassociateSkillFromUsersResponse -> TestTree
responseDisassociateSkillFromUsers =
  res
    "DisassociateSkillFromUsersResponse"
    "fixture/DisassociateSkillFromUsersResponse.proto"
    alexaBusiness
    (Proxy :: Proxy DisassociateSkillFromUsers)

responseDeleteSkillGroup :: DeleteSkillGroupResponse -> TestTree
responseDeleteSkillGroup =
  res
    "DeleteSkillGroupResponse"
    "fixture/DeleteSkillGroupResponse.proto"
    alexaBusiness
    (Proxy :: Proxy DeleteSkillGroup)

responseUpdateSkillGroup :: UpdateSkillGroupResponse -> TestTree
responseUpdateSkillGroup =
  res
    "UpdateSkillGroupResponse"
    "fixture/UpdateSkillGroupResponse.proto"
    alexaBusiness
    (Proxy :: Proxy UpdateSkillGroup)

responseAssociateSkillGroupWithRoom :: AssociateSkillGroupWithRoomResponse -> TestTree
responseAssociateSkillGroupWithRoom =
  res
    "AssociateSkillGroupWithRoomResponse"
    "fixture/AssociateSkillGroupWithRoomResponse.proto"
    alexaBusiness
    (Proxy :: Proxy AssociateSkillGroupWithRoom)

responseSearchUsers :: SearchUsersResponse -> TestTree
responseSearchUsers =
  res
    "SearchUsersResponse"
    "fixture/SearchUsersResponse.proto"
    alexaBusiness
    (Proxy :: Proxy SearchUsers)

responsePutConferencePreference :: PutConferencePreferenceResponse -> TestTree
responsePutConferencePreference =
  res
    "PutConferencePreferenceResponse"
    "fixture/PutConferencePreferenceResponse.proto"
    alexaBusiness
    (Proxy :: Proxy PutConferencePreference)

responseUpdateGateway :: UpdateGatewayResponse -> TestTree
responseUpdateGateway =
  res
    "UpdateGatewayResponse"
    "fixture/UpdateGatewayResponse.proto"
    alexaBusiness
    (Proxy :: Proxy UpdateGateway)

responseDeleteDevice :: DeleteDeviceResponse -> TestTree
responseDeleteDevice =
  res
    "DeleteDeviceResponse"
    "fixture/DeleteDeviceResponse.proto"
    alexaBusiness
    (Proxy :: Proxy DeleteDevice)

responseRevokeInvitation :: RevokeInvitationResponse -> TestTree
responseRevokeInvitation =
  res
    "RevokeInvitationResponse"
    "fixture/RevokeInvitationResponse.proto"
    alexaBusiness
    (Proxy :: Proxy RevokeInvitation)

responseGetRoomSkillParameter :: GetRoomSkillParameterResponse -> TestTree
responseGetRoomSkillParameter =
  res
    "GetRoomSkillParameterResponse"
    "fixture/GetRoomSkillParameterResponse.proto"
    alexaBusiness
    (Proxy :: Proxy GetRoomSkillParameter)

responseUpdateContact :: UpdateContactResponse -> TestTree
responseUpdateContact =
  res
    "UpdateContactResponse"
    "fixture/UpdateContactResponse.proto"
    alexaBusiness
    (Proxy :: Proxy UpdateContact)

responseStartSmartHomeApplianceDiscovery :: StartSmartHomeApplianceDiscoveryResponse -> TestTree
responseStartSmartHomeApplianceDiscovery =
  res
    "StartSmartHomeApplianceDiscoveryResponse"
    "fixture/StartSmartHomeApplianceDiscoveryResponse.proto"
    alexaBusiness
    (Proxy :: Proxy StartSmartHomeApplianceDiscovery)

responseDeleteContact :: DeleteContactResponse -> TestTree
responseDeleteContact =
  res
    "DeleteContactResponse"
    "fixture/DeleteContactResponse.proto"
    alexaBusiness
    (Proxy :: Proxy DeleteContact)

responseUpdateDevice :: UpdateDeviceResponse -> TestTree
responseUpdateDevice =
  res
    "UpdateDeviceResponse"
    "fixture/UpdateDeviceResponse.proto"
    alexaBusiness
    (Proxy :: Proxy UpdateDevice)

responseAssociateDeviceWithRoom :: AssociateDeviceWithRoomResponse -> TestTree
responseAssociateDeviceWithRoom =
  res
    "AssociateDeviceWithRoomResponse"
    "fixture/AssociateDeviceWithRoomResponse.proto"
    alexaBusiness
    (Proxy :: Proxy AssociateDeviceWithRoom)

responseAssociateSkillWithSkillGroup :: AssociateSkillWithSkillGroupResponse -> TestTree
responseAssociateSkillWithSkillGroup =
  res
    "AssociateSkillWithSkillGroupResponse"
    "fixture/AssociateSkillWithSkillGroupResponse.proto"
    alexaBusiness
    (Proxy :: Proxy AssociateSkillWithSkillGroup)

responseListGateways :: ListGatewaysResponse -> TestTree
responseListGateways =
  res
    "ListGatewaysResponse"
    "fixture/ListGatewaysResponse.proto"
    alexaBusiness
    (Proxy :: Proxy ListGateways)

responseDeleteRoom :: DeleteRoomResponse -> TestTree
responseDeleteRoom =
  res
    "DeleteRoomResponse"
    "fixture/DeleteRoomResponse.proto"
    alexaBusiness
    (Proxy :: Proxy DeleteRoom)

responseListConferenceProviders :: ListConferenceProvidersResponse -> TestTree
responseListConferenceProviders =
  res
    "ListConferenceProvidersResponse"
    "fixture/ListConferenceProvidersResponse.proto"
    alexaBusiness
    (Proxy :: Proxy ListConferenceProviders)

responseDeleteGatewayGroup :: DeleteGatewayGroupResponse -> TestTree
responseDeleteGatewayGroup =
  res
    "DeleteGatewayGroupResponse"
    "fixture/DeleteGatewayGroupResponse.proto"
    alexaBusiness
    (Proxy :: Proxy DeleteGatewayGroup)

responseUpdateRoom :: UpdateRoomResponse -> TestTree
responseUpdateRoom =
  res
    "UpdateRoomResponse"
    "fixture/UpdateRoomResponse.proto"
    alexaBusiness
    (Proxy :: Proxy UpdateRoom)

responseDeleteConferenceProvider :: DeleteConferenceProviderResponse -> TestTree
responseDeleteConferenceProvider =
  res
    "DeleteConferenceProviderResponse"
    "fixture/DeleteConferenceProviderResponse.proto"
    alexaBusiness
    (Proxy :: Proxy DeleteConferenceProvider)

responseGetGateway :: GetGatewayResponse -> TestTree
responseGetGateway =
  res
    "GetGatewayResponse"
    "fixture/GetGatewayResponse.proto"
    alexaBusiness
    (Proxy :: Proxy GetGateway)

responseUpdateConferenceProvider :: UpdateConferenceProviderResponse -> TestTree
responseUpdateConferenceProvider =
  res
    "UpdateConferenceProviderResponse"
    "fixture/UpdateConferenceProviderResponse.proto"
    alexaBusiness
    (Proxy :: Proxy UpdateConferenceProvider)

responseUpdateGatewayGroup :: UpdateGatewayGroupResponse -> TestTree
responseUpdateGatewayGroup =
  res
    "UpdateGatewayGroupResponse"
    "fixture/UpdateGatewayGroupResponse.proto"
    alexaBusiness
    (Proxy :: Proxy UpdateGatewayGroup)

responseListGatewayGroups :: ListGatewayGroupsResponse -> TestTree
responseListGatewayGroups =
  res
    "ListGatewayGroupsResponse"
    "fixture/ListGatewayGroupsResponse.proto"
    alexaBusiness
    (Proxy :: Proxy ListGatewayGroups)

responseApproveSkill :: ApproveSkillResponse -> TestTree
responseApproveSkill =
  res
    "ApproveSkillResponse"
    "fixture/ApproveSkillResponse.proto"
    alexaBusiness
    (Proxy :: Proxy ApproveSkill)

responseGetContact :: GetContactResponse -> TestTree
responseGetContact =
  res
    "GetContactResponse"
    "fixture/GetContactResponse.proto"
    alexaBusiness
    (Proxy :: Proxy GetContact)

responseRejectSkill :: RejectSkillResponse -> TestTree
responseRejectSkill =
  res
    "RejectSkillResponse"
    "fixture/RejectSkillResponse.proto"
    alexaBusiness
    (Proxy :: Proxy RejectSkill)

responsePutRoomSkillParameter :: PutRoomSkillParameterResponse -> TestTree
responsePutRoomSkillParameter =
  res
    "PutRoomSkillParameterResponse"
    "fixture/PutRoomSkillParameterResponse.proto"
    alexaBusiness
    (Proxy :: Proxy PutRoomSkillParameter)

responseDisassociateDeviceFromRoom :: DisassociateDeviceFromRoomResponse -> TestTree
responseDisassociateDeviceFromRoom =
  res
    "DisassociateDeviceFromRoomResponse"
    "fixture/DisassociateDeviceFromRoomResponse.proto"
    alexaBusiness
    (Proxy :: Proxy DisassociateDeviceFromRoom)

responseCreateAddressBook :: CreateAddressBookResponse -> TestTree
responseCreateAddressBook =
  res
    "CreateAddressBookResponse"
    "fixture/CreateAddressBookResponse.proto"
    alexaBusiness
    (Proxy :: Proxy CreateAddressBook)

responseCreateRoom :: CreateRoomResponse -> TestTree
responseCreateRoom =
  res
    "CreateRoomResponse"
    "fixture/CreateRoomResponse.proto"
    alexaBusiness
    (Proxy :: Proxy CreateRoom)

responseCreateConferenceProvider :: CreateConferenceProviderResponse -> TestTree
responseCreateConferenceProvider =
  res
    "CreateConferenceProviderResponse"
    "fixture/CreateConferenceProviderResponse.proto"
    alexaBusiness
    (Proxy :: Proxy CreateConferenceProvider)

responseGetNetworkProfile :: GetNetworkProfileResponse -> TestTree
responseGetNetworkProfile =
  res
    "GetNetworkProfileResponse"
    "fixture/GetNetworkProfileResponse.proto"
    alexaBusiness
    (Proxy :: Proxy GetNetworkProfile)

responseGetConferencePreference :: GetConferencePreferenceResponse -> TestTree
responseGetConferencePreference =
  res
    "GetConferencePreferenceResponse"
    "fixture/GetConferencePreferenceResponse.proto"
    alexaBusiness
    (Proxy :: Proxy GetConferencePreference)

responseDeleteSkillAuthorization :: DeleteSkillAuthorizationResponse -> TestTree
responseDeleteSkillAuthorization =
  res
    "DeleteSkillAuthorizationResponse"
    "fixture/DeleteSkillAuthorizationResponse.proto"
    alexaBusiness
    (Proxy :: Proxy DeleteSkillAuthorization)

responseCreateGatewayGroup :: CreateGatewayGroupResponse -> TestTree
responseCreateGatewayGroup =
  res
    "CreateGatewayGroupResponse"
    "fixture/CreateGatewayGroupResponse.proto"
    alexaBusiness
    (Proxy :: Proxy CreateGatewayGroup)

responseListTags :: ListTagsResponse -> TestTree
responseListTags =
  res
    "ListTagsResponse"
    "fixture/ListTagsResponse.proto"
    alexaBusiness
    (Proxy :: Proxy ListTags)

responseDisassociateSkillFromSkillGroup :: DisassociateSkillFromSkillGroupResponse -> TestTree
responseDisassociateSkillFromSkillGroup =
  res
    "DisassociateSkillFromSkillGroupResponse"
    "fixture/DisassociateSkillFromSkillGroupResponse.proto"
    alexaBusiness
    (Proxy :: Proxy DisassociateSkillFromSkillGroup)

responseDeleteUser :: DeleteUserResponse -> TestTree
responseDeleteUser =
  res
    "DeleteUserResponse"
    "fixture/DeleteUserResponse.proto"
    alexaBusiness
    (Proxy :: Proxy DeleteUser)

responseListSkills :: ListSkillsResponse -> TestTree
responseListSkills =
  res
    "ListSkillsResponse"
    "fixture/ListSkillsResponse.proto"
    alexaBusiness
    (Proxy :: Proxy ListSkills)

responseSearchDevices :: SearchDevicesResponse -> TestTree
responseSearchDevices =
  res
    "SearchDevicesResponse"
    "fixture/SearchDevicesResponse.proto"
    alexaBusiness
    (Proxy :: Proxy SearchDevices)

responseSearchRooms :: SearchRoomsResponse -> TestTree
responseSearchRooms =
  res
    "SearchRoomsResponse"
    "fixture/SearchRoomsResponse.proto"
    alexaBusiness
    (Proxy :: Proxy SearchRooms)

responseSearchAddressBooks :: SearchAddressBooksResponse -> TestTree
responseSearchAddressBooks =
  res
    "SearchAddressBooksResponse"
    "fixture/SearchAddressBooksResponse.proto"
    alexaBusiness
    (Proxy :: Proxy SearchAddressBooks)

responseListSmartHomeAppliances :: ListSmartHomeAppliancesResponse -> TestTree
responseListSmartHomeAppliances =
  res
    "ListSmartHomeAppliancesResponse"
    "fixture/ListSmartHomeAppliancesResponse.proto"
    alexaBusiness
    (Proxy :: Proxy ListSmartHomeAppliances)

responseDeleteProfile :: DeleteProfileResponse -> TestTree
responseDeleteProfile =
  res
    "DeleteProfileResponse"
    "fixture/DeleteProfileResponse.proto"
    alexaBusiness
    (Proxy :: Proxy DeleteProfile)

responseCreateSkillGroup :: CreateSkillGroupResponse -> TestTree
responseCreateSkillGroup =
  res
    "CreateSkillGroupResponse"
    "fixture/CreateSkillGroupResponse.proto"
    alexaBusiness
    (Proxy :: Proxy CreateSkillGroup)

responseUpdateProfile :: UpdateProfileResponse -> TestTree
responseUpdateProfile =
  res
    "UpdateProfileResponse"
    "fixture/UpdateProfileResponse.proto"
    alexaBusiness
    (Proxy :: Proxy UpdateProfile)
