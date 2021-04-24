{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Alexa for Business helps you use Alexa in your organization. Alexa for Business provides you with the tools to manage Alexa devices, enroll your users, and assign skills, at scale. You can build your own context-aware voice skills using the Alexa Skills Kit and the Alexa for Business API operations. You can also make these available as private skills for your organization. Alexa for Business makes it efficient to voice-enable your products and services, thus providing context-aware voice experiences for your customers. Device makers building with the Alexa Voice Service (AVS) can create fully integrated solutions, register their products with Alexa for Business, and manage them as shared devices in their organization.
module Network.AWS.AlexaBusiness
  ( -- * Service Configuration
    alexaBusiness,

    -- * Errors
    -- $errors

    -- ** NotFoundException
    _NotFoundException,

    -- ** InvalidServiceLinkedRoleStateException
    _InvalidServiceLinkedRoleStateException,

    -- ** UnauthorizedException
    _UnauthorizedException,

    -- ** InvalidUserStatusException
    _InvalidUserStatusException,

    -- ** ResourceAssociatedException
    _ResourceAssociatedException,

    -- ** ConcurrentModificationException
    _ConcurrentModificationException,

    -- ** DeviceNotRegisteredException
    _DeviceNotRegisteredException,

    -- ** InvalidCertificateAuthorityException
    _InvalidCertificateAuthorityException,

    -- ** NameInUseException
    _NameInUseException,

    -- ** ResourceInUseException
    _ResourceInUseException,

    -- ** LimitExceededException
    _LimitExceededException,

    -- ** AlreadyExistsException
    _AlreadyExistsException,

    -- ** InvalidDeviceException
    _InvalidDeviceException,

    -- ** SkillNotLinkedException
    _SkillNotLinkedException,

    -- ** InvalidSecretsManagerResourceException
    _InvalidSecretsManagerResourceException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** StartDeviceSync
    module Network.AWS.AlexaBusiness.StartDeviceSync,

    -- ** CreateProfile
    module Network.AWS.AlexaBusiness.CreateProfile,

    -- ** CreateContact
    module Network.AWS.AlexaBusiness.CreateContact,

    -- ** DeleteBusinessReportSchedule
    module Network.AWS.AlexaBusiness.DeleteBusinessReportSchedule,

    -- ** UpdateNetworkProfile
    module Network.AWS.AlexaBusiness.UpdateNetworkProfile,

    -- ** ListBusinessReportSchedules (Paginated)
    module Network.AWS.AlexaBusiness.ListBusinessReportSchedules,

    -- ** DeleteNetworkProfile
    module Network.AWS.AlexaBusiness.DeleteNetworkProfile,

    -- ** UpdateBusinessReportSchedule
    module Network.AWS.AlexaBusiness.UpdateBusinessReportSchedule,

    -- ** DeleteDeviceUsageData
    module Network.AWS.AlexaBusiness.DeleteDeviceUsageData,

    -- ** GetConferenceProvider
    module Network.AWS.AlexaBusiness.GetConferenceProvider,

    -- ** GetGatewayGroup
    module Network.AWS.AlexaBusiness.GetGatewayGroup,

    -- ** GetRoom
    module Network.AWS.AlexaBusiness.GetRoom,

    -- ** CreateNetworkProfile
    module Network.AWS.AlexaBusiness.CreateNetworkProfile,

    -- ** ListSkillsStoreCategories (Paginated)
    module Network.AWS.AlexaBusiness.ListSkillsStoreCategories,

    -- ** CreateBusinessReportSchedule
    module Network.AWS.AlexaBusiness.CreateBusinessReportSchedule,

    -- ** GetAddressBook
    module Network.AWS.AlexaBusiness.GetAddressBook,

    -- ** AssociateContactWithAddressBook
    module Network.AWS.AlexaBusiness.AssociateContactWithAddressBook,

    -- ** GetDevice
    module Network.AWS.AlexaBusiness.GetDevice,

    -- ** DeleteRoomSkillParameter
    module Network.AWS.AlexaBusiness.DeleteRoomSkillParameter,

    -- ** ListSkillsStoreSkillsByCategory (Paginated)
    module Network.AWS.AlexaBusiness.ListSkillsStoreSkillsByCategory,

    -- ** SearchProfiles (Paginated)
    module Network.AWS.AlexaBusiness.SearchProfiles,

    -- ** DeleteAddressBook
    module Network.AWS.AlexaBusiness.DeleteAddressBook,

    -- ** UpdateAddressBook
    module Network.AWS.AlexaBusiness.UpdateAddressBook,

    -- ** SearchSkillGroups (Paginated)
    module Network.AWS.AlexaBusiness.SearchSkillGroups,

    -- ** ResolveRoom
    module Network.AWS.AlexaBusiness.ResolveRoom,

    -- ** PutSkillAuthorization
    module Network.AWS.AlexaBusiness.PutSkillAuthorization,

    -- ** UntagResource
    module Network.AWS.AlexaBusiness.UntagResource,

    -- ** DisassociateContactFromAddressBook
    module Network.AWS.AlexaBusiness.DisassociateContactFromAddressBook,

    -- ** AssociateDeviceWithNetworkProfile
    module Network.AWS.AlexaBusiness.AssociateDeviceWithNetworkProfile,

    -- ** SearchNetworkProfiles
    module Network.AWS.AlexaBusiness.SearchNetworkProfiles,

    -- ** GetSkillGroup
    module Network.AWS.AlexaBusiness.GetSkillGroup,

    -- ** PutInvitationConfiguration
    module Network.AWS.AlexaBusiness.PutInvitationConfiguration,

    -- ** TagResource
    module Network.AWS.AlexaBusiness.TagResource,

    -- ** ListDeviceEvents (Paginated)
    module Network.AWS.AlexaBusiness.ListDeviceEvents,

    -- ** SendAnnouncement
    module Network.AWS.AlexaBusiness.SendAnnouncement,

    -- ** DisassociateSkillGroupFromRoom
    module Network.AWS.AlexaBusiness.DisassociateSkillGroupFromRoom,

    -- ** GetProfile
    module Network.AWS.AlexaBusiness.GetProfile,

    -- ** CreateUser
    module Network.AWS.AlexaBusiness.CreateUser,

    -- ** SearchContacts
    module Network.AWS.AlexaBusiness.SearchContacts,

    -- ** RegisterAVSDevice
    module Network.AWS.AlexaBusiness.RegisterAVSDevice,

    -- ** SendInvitation
    module Network.AWS.AlexaBusiness.SendInvitation,

    -- ** ForgetSmartHomeAppliances
    module Network.AWS.AlexaBusiness.ForgetSmartHomeAppliances,

    -- ** AssociateSkillWithUsers
    module Network.AWS.AlexaBusiness.AssociateSkillWithUsers,

    -- ** GetInvitationConfiguration
    module Network.AWS.AlexaBusiness.GetInvitationConfiguration,

    -- ** DisassociateSkillFromUsers
    module Network.AWS.AlexaBusiness.DisassociateSkillFromUsers,

    -- ** DeleteSkillGroup
    module Network.AWS.AlexaBusiness.DeleteSkillGroup,

    -- ** UpdateSkillGroup
    module Network.AWS.AlexaBusiness.UpdateSkillGroup,

    -- ** AssociateSkillGroupWithRoom
    module Network.AWS.AlexaBusiness.AssociateSkillGroupWithRoom,

    -- ** SearchUsers (Paginated)
    module Network.AWS.AlexaBusiness.SearchUsers,

    -- ** PutConferencePreference
    module Network.AWS.AlexaBusiness.PutConferencePreference,

    -- ** UpdateGateway
    module Network.AWS.AlexaBusiness.UpdateGateway,

    -- ** DeleteDevice
    module Network.AWS.AlexaBusiness.DeleteDevice,

    -- ** RevokeInvitation
    module Network.AWS.AlexaBusiness.RevokeInvitation,

    -- ** GetRoomSkillParameter
    module Network.AWS.AlexaBusiness.GetRoomSkillParameter,

    -- ** UpdateContact
    module Network.AWS.AlexaBusiness.UpdateContact,

    -- ** StartSmartHomeApplianceDiscovery
    module Network.AWS.AlexaBusiness.StartSmartHomeApplianceDiscovery,

    -- ** DeleteContact
    module Network.AWS.AlexaBusiness.DeleteContact,

    -- ** UpdateDevice
    module Network.AWS.AlexaBusiness.UpdateDevice,

    -- ** AssociateDeviceWithRoom
    module Network.AWS.AlexaBusiness.AssociateDeviceWithRoom,

    -- ** AssociateSkillWithSkillGroup
    module Network.AWS.AlexaBusiness.AssociateSkillWithSkillGroup,

    -- ** ListGateways
    module Network.AWS.AlexaBusiness.ListGateways,

    -- ** DeleteRoom
    module Network.AWS.AlexaBusiness.DeleteRoom,

    -- ** ListConferenceProviders (Paginated)
    module Network.AWS.AlexaBusiness.ListConferenceProviders,

    -- ** DeleteGatewayGroup
    module Network.AWS.AlexaBusiness.DeleteGatewayGroup,

    -- ** UpdateRoom
    module Network.AWS.AlexaBusiness.UpdateRoom,

    -- ** DeleteConferenceProvider
    module Network.AWS.AlexaBusiness.DeleteConferenceProvider,

    -- ** GetGateway
    module Network.AWS.AlexaBusiness.GetGateway,

    -- ** UpdateConferenceProvider
    module Network.AWS.AlexaBusiness.UpdateConferenceProvider,

    -- ** UpdateGatewayGroup
    module Network.AWS.AlexaBusiness.UpdateGatewayGroup,

    -- ** ListGatewayGroups
    module Network.AWS.AlexaBusiness.ListGatewayGroups,

    -- ** ApproveSkill
    module Network.AWS.AlexaBusiness.ApproveSkill,

    -- ** GetContact
    module Network.AWS.AlexaBusiness.GetContact,

    -- ** RejectSkill
    module Network.AWS.AlexaBusiness.RejectSkill,

    -- ** PutRoomSkillParameter
    module Network.AWS.AlexaBusiness.PutRoomSkillParameter,

    -- ** DisassociateDeviceFromRoom
    module Network.AWS.AlexaBusiness.DisassociateDeviceFromRoom,

    -- ** CreateAddressBook
    module Network.AWS.AlexaBusiness.CreateAddressBook,

    -- ** CreateRoom
    module Network.AWS.AlexaBusiness.CreateRoom,

    -- ** CreateConferenceProvider
    module Network.AWS.AlexaBusiness.CreateConferenceProvider,

    -- ** GetNetworkProfile
    module Network.AWS.AlexaBusiness.GetNetworkProfile,

    -- ** GetConferencePreference
    module Network.AWS.AlexaBusiness.GetConferencePreference,

    -- ** DeleteSkillAuthorization
    module Network.AWS.AlexaBusiness.DeleteSkillAuthorization,

    -- ** CreateGatewayGroup
    module Network.AWS.AlexaBusiness.CreateGatewayGroup,

    -- ** ListTags (Paginated)
    module Network.AWS.AlexaBusiness.ListTags,

    -- ** DisassociateSkillFromSkillGroup
    module Network.AWS.AlexaBusiness.DisassociateSkillFromSkillGroup,

    -- ** DeleteUser
    module Network.AWS.AlexaBusiness.DeleteUser,

    -- ** ListSkills (Paginated)
    module Network.AWS.AlexaBusiness.ListSkills,

    -- ** SearchDevices (Paginated)
    module Network.AWS.AlexaBusiness.SearchDevices,

    -- ** SearchRooms (Paginated)
    module Network.AWS.AlexaBusiness.SearchRooms,

    -- ** SearchAddressBooks
    module Network.AWS.AlexaBusiness.SearchAddressBooks,

    -- ** ListSmartHomeAppliances (Paginated)
    module Network.AWS.AlexaBusiness.ListSmartHomeAppliances,

    -- ** DeleteProfile
    module Network.AWS.AlexaBusiness.DeleteProfile,

    -- ** CreateSkillGroup
    module Network.AWS.AlexaBusiness.CreateSkillGroup,

    -- ** UpdateProfile
    module Network.AWS.AlexaBusiness.UpdateProfile,

    -- * Types

    -- ** BusinessReportFailureCode
    BusinessReportFailureCode (..),

    -- ** BusinessReportFormat
    BusinessReportFormat (..),

    -- ** BusinessReportInterval
    BusinessReportInterval (..),

    -- ** BusinessReportStatus
    BusinessReportStatus (..),

    -- ** CommsProtocol
    CommsProtocol (..),

    -- ** ConferenceProviderType
    ConferenceProviderType (..),

    -- ** ConnectionStatus
    ConnectionStatus (..),

    -- ** DeviceEventType
    DeviceEventType (..),

    -- ** DeviceStatus
    DeviceStatus (..),

    -- ** DeviceStatusDetailCode
    DeviceStatusDetailCode (..),

    -- ** DeviceUsageType
    DeviceUsageType (..),

    -- ** DistanceUnit
    DistanceUnit (..),

    -- ** EnablementType
    EnablementType (..),

    -- ** EnablementTypeFilter
    EnablementTypeFilter (..),

    -- ** EndOfMeetingReminderType
    EndOfMeetingReminderType (..),

    -- ** EnrollmentStatus
    EnrollmentStatus (..),

    -- ** Feature
    Feature (..),

    -- ** Locale
    Locale (..),

    -- ** NetworkEapMethod
    NetworkEapMethod (..),

    -- ** NetworkSecurityType
    NetworkSecurityType (..),

    -- ** PhoneNumberType
    PhoneNumberType (..),

    -- ** RequirePin
    RequirePin (..),

    -- ** SipType
    SipType (..),

    -- ** SkillType
    SkillType (..),

    -- ** SkillTypeFilter
    SkillTypeFilter (..),

    -- ** SortValue
    SortValue (..),

    -- ** TemperatureUnit
    TemperatureUnit (..),

    -- ** WakeWord
    WakeWord (..),

    -- ** AddressBook
    AddressBook,
    addressBook,
    abAddressBookARN,
    abName,
    abDescription,

    -- ** AddressBookData
    AddressBookData,
    addressBookData,
    abdAddressBookARN,
    abdName,
    abdDescription,

    -- ** Audio
    Audio,
    audio,
    aLocale,
    aLocation,

    -- ** BusinessReport
    BusinessReport,
    businessReport,
    brDownloadURL,
    brStatus,
    brDeliveryTime,
    brFailureCode,
    brS3Location,

    -- ** BusinessReportContentRange
    BusinessReportContentRange,
    businessReportContentRange,
    brcrInterval,

    -- ** BusinessReportRecurrence
    BusinessReportRecurrence,
    businessReportRecurrence,
    brrStartDate,

    -- ** BusinessReportS3Location
    BusinessReportS3Location,
    businessReportS3Location,
    brslBucketName,
    brslPath,

    -- ** BusinessReportSchedule
    BusinessReportSchedule,
    businessReportSchedule,
    brsContentRange,
    brsFormat,
    brsScheduleARN,
    brsLastBusinessReport,
    brsS3KeyPrefix,
    brsRecurrence,
    brsS3BucketName,
    brsScheduleName,

    -- ** Category
    Category,
    category,
    cCategoryId,
    cCategoryName,

    -- ** ConferencePreference
    ConferencePreference,
    conferencePreference,
    cpDefaultConferenceProviderARN,

    -- ** ConferenceProvider
    ConferenceProvider,
    conferenceProvider,
    cpMeetingSetting,
    cpIPDialIn,
    cpARN,
    cpName,
    cpPSTNDialIn,
    cpType,

    -- ** Contact
    Contact,
    contact,
    cPhoneNumber,
    cPhoneNumbers,
    cDisplayName,
    cContactARN,
    cFirstName,
    cLastName,
    cSipAddresses,

    -- ** ContactData
    ContactData,
    contactData,
    cdPhoneNumber,
    cdPhoneNumbers,
    cdDisplayName,
    cdContactARN,
    cdFirstName,
    cdLastName,
    cdSipAddresses,

    -- ** Content
    Content,
    content,
    cTextList,
    cSsmlList,
    cAudioList,

    -- ** CreateEndOfMeetingReminder
    CreateEndOfMeetingReminder,
    createEndOfMeetingReminder,
    ceomrReminderAtMinutes,
    ceomrReminderType,
    ceomrEnabled,

    -- ** CreateInstantBooking
    CreateInstantBooking,
    createInstantBooking,
    cibDurationInMinutes,
    cibEnabled,

    -- ** CreateMeetingRoomConfiguration
    CreateMeetingRoomConfiguration,
    createMeetingRoomConfiguration,
    cmrcRoomUtilizationMetricsEnabled,
    cmrcEndOfMeetingReminder,
    cmrcInstantBooking,
    cmrcRequireCheckIn,

    -- ** CreateRequireCheckIn
    CreateRequireCheckIn,
    createRequireCheckIn,
    crciReleaseAfterMinutes,
    crciEnabled,

    -- ** DeveloperInfo
    DeveloperInfo,
    developerInfo,
    diDeveloperName,
    diEmail,
    diPrivacyPolicy,
    diURL,

    -- ** Device
    Device,
    device,
    dDeviceStatus,
    dMACAddress,
    dDeviceARN,
    dRoomARN,
    dDeviceStatusInfo,
    dDeviceName,
    dNetworkProfileInfo,
    dDeviceSerialNumber,
    dDeviceType,
    dSoftwareVersion,

    -- ** DeviceData
    DeviceData,
    deviceData,
    ddDeviceStatus,
    ddMACAddress,
    ddCreatedTime,
    ddDeviceARN,
    ddRoomARN,
    ddNetworkProfileName,
    ddDeviceStatusInfo,
    ddDeviceName,
    ddDeviceSerialNumber,
    ddRoomName,
    ddDeviceType,
    ddNetworkProfileARN,
    ddSoftwareVersion,

    -- ** DeviceEvent
    DeviceEvent,
    deviceEvent,
    deTimestamp,
    deValue,
    deType,

    -- ** DeviceNetworkProfileInfo
    DeviceNetworkProfileInfo,
    deviceNetworkProfileInfo,
    dnpiCertificateExpirationTime,
    dnpiCertificateARN,
    dnpiNetworkProfileARN,

    -- ** DeviceStatusDetail
    DeviceStatusDetail,
    deviceStatusDetail,
    dsdCode,
    dsdFeature,

    -- ** DeviceStatusInfo
    DeviceStatusInfo,
    deviceStatusInfo,
    dsiDeviceStatusDetails,
    dsiConnectionStatusUpdatedTime,
    dsiConnectionStatus,

    -- ** EndOfMeetingReminder
    EndOfMeetingReminder,
    endOfMeetingReminder,
    eomrReminderType,
    eomrReminderAtMinutes,
    eomrEnabled,

    -- ** Filter
    Filter,
    filter',
    fKey,
    fValues,

    -- ** Gateway
    Gateway,
    gateway,
    gARN,
    gGatewayGroupARN,
    gName,
    gDescription,
    gSoftwareVersion,

    -- ** GatewayGroup
    GatewayGroup,
    gatewayGroup,
    ggARN,
    ggName,
    ggDescription,

    -- ** GatewayGroupSummary
    GatewayGroupSummary,
    gatewayGroupSummary,
    ggsARN,
    ggsName,
    ggsDescription,

    -- ** GatewaySummary
    GatewaySummary,
    gatewaySummary,
    gsARN,
    gsGatewayGroupARN,
    gsName,
    gsDescription,
    gsSoftwareVersion,

    -- ** IPDialIn
    IPDialIn,
    ipDialIn,
    idiEndpoint,
    idiCommsProtocol,

    -- ** InstantBooking
    InstantBooking,
    instantBooking,
    ibDurationInMinutes,
    ibEnabled,

    -- ** MeetingRoomConfiguration
    MeetingRoomConfiguration,
    meetingRoomConfiguration,
    mrcRoomUtilizationMetricsEnabled,
    mrcEndOfMeetingReminder,
    mrcInstantBooking,
    mrcRequireCheckIn,

    -- ** MeetingSetting
    MeetingSetting,
    meetingSetting,
    msRequirePin,

    -- ** NetworkProfile
    NetworkProfile,
    networkProfile,
    npCertificateAuthorityARN,
    npTrustAnchors,
    npCurrentPassword,
    npEapMethod,
    npNetworkProfileName,
    npSecurityType,
    npDescription,
    npNextPassword,
    npNetworkProfileARN,
    npSsid,

    -- ** NetworkProfileData
    NetworkProfileData,
    networkProfileData,
    npdCertificateAuthorityARN,
    npdEapMethod,
    npdNetworkProfileName,
    npdSecurityType,
    npdDescription,
    npdNetworkProfileARN,
    npdSsid,

    -- ** PSTNDialIn
    PSTNDialIn,
    pSTNDialIn,
    pstndiCountryCode,
    pstndiPhoneNumber,
    pstndiOneClickIdDelay,
    pstndiOneClickPinDelay,

    -- ** PhoneNumber
    PhoneNumber,
    phoneNumber,
    pnNumber,
    pnType,

    -- ** Profile
    Profile,
    profile,
    pProfileName,
    pIsDefault,
    pAddress,
    pLocale,
    pTemperatureUnit,
    pAddressBookARN,
    pSetupModeDisabled,
    pPSTNEnabled,
    pMaxVolumeLimit,
    pMeetingRoomConfiguration,
    pWakeWord,
    pProfileARN,
    pTimezone,
    pDistanceUnit,

    -- ** ProfileData
    ProfileData,
    profileData,
    pdProfileName,
    pdIsDefault,
    pdAddress,
    pdLocale,
    pdTemperatureUnit,
    pdWakeWord,
    pdProfileARN,
    pdTimezone,
    pdDistanceUnit,

    -- ** RequireCheckIn
    RequireCheckIn,
    requireCheckIn,
    rciReleaseAfterMinutes,
    rciEnabled,

    -- ** Room
    Room,
    room,
    rRoomARN,
    rProviderCalendarId,
    rProfileARN,
    rDescription,
    rRoomName,

    -- ** RoomData
    RoomData,
    roomData,
    rdProfileName,
    rdRoomARN,
    rdProviderCalendarId,
    rdProfileARN,
    rdDescription,
    rdRoomName,

    -- ** RoomSkillParameter
    RoomSkillParameter,
    roomSkillParameter,
    rspParameterKey,
    rspParameterValue,

    -- ** SipAddress
    SipAddress,
    sipAddress,
    saURI,
    saType,

    -- ** SkillDetails
    SkillDetails,
    skillDetails,
    sdNewInThisVersionBulletPoints,
    sdSkillTypes,
    sdReviews,
    sdBulletPoints,
    sdGenericKeywords,
    sdEndUserLicenseAgreement,
    sdDeveloperInfo,
    sdProductDescription,
    sdInvocationPhrase,
    sdReleaseDate,

    -- ** SkillGroup
    SkillGroup,
    skillGroup,
    sgSkillGroupName,
    sgDescription,
    sgSkillGroupARN,

    -- ** SkillGroupData
    SkillGroupData,
    skillGroupData,
    sgdSkillGroupName,
    sgdDescription,
    sgdSkillGroupARN,

    -- ** SkillSummary
    SkillSummary,
    skillSummary,
    ssSkillId,
    ssSupportsLinking,
    ssSkillType,
    ssSkillName,
    ssEnablementType,

    -- ** SkillsStoreSkill
    SkillsStoreSkill,
    skillsStoreSkill,
    sssIconURL,
    sssSkillId,
    sssShortDescription,
    sssSupportsLinking,
    sssSkillName,
    sssSampleUtterances,
    sssSkillDetails,

    -- ** SmartHomeAppliance
    SmartHomeAppliance,
    smartHomeAppliance,
    shaFriendlyName,
    shaDescription,
    shaManufacturerName,

    -- ** Sort
    Sort,
    sort,
    sorKey,
    sorValue,

    -- ** Ssml
    Ssml,
    ssml,
    sLocale,
    sValue,

    -- ** Tag
    Tag,
    tag,
    tagKey,
    tagValue,

    -- ** TextMessage
    TextMessage,
    textMessage,
    tmLocale,
    tmValue,

    -- ** UpdateEndOfMeetingReminder
    UpdateEndOfMeetingReminder,
    updateEndOfMeetingReminder,
    ueomrReminderType,
    ueomrReminderAtMinutes,
    ueomrEnabled,

    -- ** UpdateInstantBooking
    UpdateInstantBooking,
    updateInstantBooking,
    uibDurationInMinutes,
    uibEnabled,

    -- ** UpdateMeetingRoomConfiguration
    UpdateMeetingRoomConfiguration,
    updateMeetingRoomConfiguration,
    umrcRoomUtilizationMetricsEnabled,
    umrcEndOfMeetingReminder,
    umrcInstantBooking,
    umrcRequireCheckIn,

    -- ** UpdateRequireCheckIn
    UpdateRequireCheckIn,
    updateRequireCheckIn,
    urciReleaseAfterMinutes,
    urciEnabled,

    -- ** UserData
    UserData,
    userData,
    udUserARN,
    udEnrollmentId,
    udEmail,
    udEnrollmentStatus,
    udFirstName,
    udLastName,
  )
where

import Network.AWS.AlexaBusiness.ApproveSkill
import Network.AWS.AlexaBusiness.AssociateContactWithAddressBook
import Network.AWS.AlexaBusiness.AssociateDeviceWithNetworkProfile
import Network.AWS.AlexaBusiness.AssociateDeviceWithRoom
import Network.AWS.AlexaBusiness.AssociateSkillGroupWithRoom
import Network.AWS.AlexaBusiness.AssociateSkillWithSkillGroup
import Network.AWS.AlexaBusiness.AssociateSkillWithUsers
import Network.AWS.AlexaBusiness.CreateAddressBook
import Network.AWS.AlexaBusiness.CreateBusinessReportSchedule
import Network.AWS.AlexaBusiness.CreateConferenceProvider
import Network.AWS.AlexaBusiness.CreateContact
import Network.AWS.AlexaBusiness.CreateGatewayGroup
import Network.AWS.AlexaBusiness.CreateNetworkProfile
import Network.AWS.AlexaBusiness.CreateProfile
import Network.AWS.AlexaBusiness.CreateRoom
import Network.AWS.AlexaBusiness.CreateSkillGroup
import Network.AWS.AlexaBusiness.CreateUser
import Network.AWS.AlexaBusiness.DeleteAddressBook
import Network.AWS.AlexaBusiness.DeleteBusinessReportSchedule
import Network.AWS.AlexaBusiness.DeleteConferenceProvider
import Network.AWS.AlexaBusiness.DeleteContact
import Network.AWS.AlexaBusiness.DeleteDevice
import Network.AWS.AlexaBusiness.DeleteDeviceUsageData
import Network.AWS.AlexaBusiness.DeleteGatewayGroup
import Network.AWS.AlexaBusiness.DeleteNetworkProfile
import Network.AWS.AlexaBusiness.DeleteProfile
import Network.AWS.AlexaBusiness.DeleteRoom
import Network.AWS.AlexaBusiness.DeleteRoomSkillParameter
import Network.AWS.AlexaBusiness.DeleteSkillAuthorization
import Network.AWS.AlexaBusiness.DeleteSkillGroup
import Network.AWS.AlexaBusiness.DeleteUser
import Network.AWS.AlexaBusiness.DisassociateContactFromAddressBook
import Network.AWS.AlexaBusiness.DisassociateDeviceFromRoom
import Network.AWS.AlexaBusiness.DisassociateSkillFromSkillGroup
import Network.AWS.AlexaBusiness.DisassociateSkillFromUsers
import Network.AWS.AlexaBusiness.DisassociateSkillGroupFromRoom
import Network.AWS.AlexaBusiness.ForgetSmartHomeAppliances
import Network.AWS.AlexaBusiness.GetAddressBook
import Network.AWS.AlexaBusiness.GetConferencePreference
import Network.AWS.AlexaBusiness.GetConferenceProvider
import Network.AWS.AlexaBusiness.GetContact
import Network.AWS.AlexaBusiness.GetDevice
import Network.AWS.AlexaBusiness.GetGateway
import Network.AWS.AlexaBusiness.GetGatewayGroup
import Network.AWS.AlexaBusiness.GetInvitationConfiguration
import Network.AWS.AlexaBusiness.GetNetworkProfile
import Network.AWS.AlexaBusiness.GetProfile
import Network.AWS.AlexaBusiness.GetRoom
import Network.AWS.AlexaBusiness.GetRoomSkillParameter
import Network.AWS.AlexaBusiness.GetSkillGroup
import Network.AWS.AlexaBusiness.ListBusinessReportSchedules
import Network.AWS.AlexaBusiness.ListConferenceProviders
import Network.AWS.AlexaBusiness.ListDeviceEvents
import Network.AWS.AlexaBusiness.ListGatewayGroups
import Network.AWS.AlexaBusiness.ListGateways
import Network.AWS.AlexaBusiness.ListSkills
import Network.AWS.AlexaBusiness.ListSkillsStoreCategories
import Network.AWS.AlexaBusiness.ListSkillsStoreSkillsByCategory
import Network.AWS.AlexaBusiness.ListSmartHomeAppliances
import Network.AWS.AlexaBusiness.ListTags
import Network.AWS.AlexaBusiness.PutConferencePreference
import Network.AWS.AlexaBusiness.PutInvitationConfiguration
import Network.AWS.AlexaBusiness.PutRoomSkillParameter
import Network.AWS.AlexaBusiness.PutSkillAuthorization
import Network.AWS.AlexaBusiness.RegisterAVSDevice
import Network.AWS.AlexaBusiness.RejectSkill
import Network.AWS.AlexaBusiness.ResolveRoom
import Network.AWS.AlexaBusiness.RevokeInvitation
import Network.AWS.AlexaBusiness.SearchAddressBooks
import Network.AWS.AlexaBusiness.SearchContacts
import Network.AWS.AlexaBusiness.SearchDevices
import Network.AWS.AlexaBusiness.SearchNetworkProfiles
import Network.AWS.AlexaBusiness.SearchProfiles
import Network.AWS.AlexaBusiness.SearchRooms
import Network.AWS.AlexaBusiness.SearchSkillGroups
import Network.AWS.AlexaBusiness.SearchUsers
import Network.AWS.AlexaBusiness.SendAnnouncement
import Network.AWS.AlexaBusiness.SendInvitation
import Network.AWS.AlexaBusiness.StartDeviceSync
import Network.AWS.AlexaBusiness.StartSmartHomeApplianceDiscovery
import Network.AWS.AlexaBusiness.TagResource
import Network.AWS.AlexaBusiness.Types
import Network.AWS.AlexaBusiness.UntagResource
import Network.AWS.AlexaBusiness.UpdateAddressBook
import Network.AWS.AlexaBusiness.UpdateBusinessReportSchedule
import Network.AWS.AlexaBusiness.UpdateConferenceProvider
import Network.AWS.AlexaBusiness.UpdateContact
import Network.AWS.AlexaBusiness.UpdateDevice
import Network.AWS.AlexaBusiness.UpdateGateway
import Network.AWS.AlexaBusiness.UpdateGatewayGroup
import Network.AWS.AlexaBusiness.UpdateNetworkProfile
import Network.AWS.AlexaBusiness.UpdateProfile
import Network.AWS.AlexaBusiness.UpdateRoom
import Network.AWS.AlexaBusiness.UpdateSkillGroup
import Network.AWS.AlexaBusiness.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'AlexaBusiness'.

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
