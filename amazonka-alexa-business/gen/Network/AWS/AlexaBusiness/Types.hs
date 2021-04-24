{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types
  ( -- * Service Configuration
    alexaBusiness,

    -- * Errors
    _NotFoundException,
    _InvalidServiceLinkedRoleStateException,
    _UnauthorizedException,
    _InvalidUserStatusException,
    _ResourceAssociatedException,
    _ConcurrentModificationException,
    _DeviceNotRegisteredException,
    _InvalidCertificateAuthorityException,
    _NameInUseException,
    _ResourceInUseException,
    _LimitExceededException,
    _AlreadyExistsException,
    _InvalidDeviceException,
    _SkillNotLinkedException,
    _InvalidSecretsManagerResourceException,

    -- * BusinessReportFailureCode
    BusinessReportFailureCode (..),

    -- * BusinessReportFormat
    BusinessReportFormat (..),

    -- * BusinessReportInterval
    BusinessReportInterval (..),

    -- * BusinessReportStatus
    BusinessReportStatus (..),

    -- * CommsProtocol
    CommsProtocol (..),

    -- * ConferenceProviderType
    ConferenceProviderType (..),

    -- * ConnectionStatus
    ConnectionStatus (..),

    -- * DeviceEventType
    DeviceEventType (..),

    -- * DeviceStatus
    DeviceStatus (..),

    -- * DeviceStatusDetailCode
    DeviceStatusDetailCode (..),

    -- * DeviceUsageType
    DeviceUsageType (..),

    -- * DistanceUnit
    DistanceUnit (..),

    -- * EnablementType
    EnablementType (..),

    -- * EnablementTypeFilter
    EnablementTypeFilter (..),

    -- * EndOfMeetingReminderType
    EndOfMeetingReminderType (..),

    -- * EnrollmentStatus
    EnrollmentStatus (..),

    -- * Feature
    Feature (..),

    -- * Locale
    Locale (..),

    -- * NetworkEapMethod
    NetworkEapMethod (..),

    -- * NetworkSecurityType
    NetworkSecurityType (..),

    -- * PhoneNumberType
    PhoneNumberType (..),

    -- * RequirePin
    RequirePin (..),

    -- * SipType
    SipType (..),

    -- * SkillType
    SkillType (..),

    -- * SkillTypeFilter
    SkillTypeFilter (..),

    -- * SortValue
    SortValue (..),

    -- * TemperatureUnit
    TemperatureUnit (..),

    -- * WakeWord
    WakeWord (..),

    -- * AddressBook
    AddressBook (..),
    addressBook,
    abAddressBookARN,
    abName,
    abDescription,

    -- * AddressBookData
    AddressBookData (..),
    addressBookData,
    abdAddressBookARN,
    abdName,
    abdDescription,

    -- * Audio
    Audio (..),
    audio,
    aLocale,
    aLocation,

    -- * BusinessReport
    BusinessReport (..),
    businessReport,
    brDownloadURL,
    brStatus,
    brDeliveryTime,
    brFailureCode,
    brS3Location,

    -- * BusinessReportContentRange
    BusinessReportContentRange (..),
    businessReportContentRange,
    brcrInterval,

    -- * BusinessReportRecurrence
    BusinessReportRecurrence (..),
    businessReportRecurrence,
    brrStartDate,

    -- * BusinessReportS3Location
    BusinessReportS3Location (..),
    businessReportS3Location,
    brslBucketName,
    brslPath,

    -- * BusinessReportSchedule
    BusinessReportSchedule (..),
    businessReportSchedule,
    brsContentRange,
    brsFormat,
    brsScheduleARN,
    brsLastBusinessReport,
    brsS3KeyPrefix,
    brsRecurrence,
    brsS3BucketName,
    brsScheduleName,

    -- * Category
    Category (..),
    category,
    cCategoryId,
    cCategoryName,

    -- * ConferencePreference
    ConferencePreference (..),
    conferencePreference,
    cpDefaultConferenceProviderARN,

    -- * ConferenceProvider
    ConferenceProvider (..),
    conferenceProvider,
    cpMeetingSetting,
    cpIPDialIn,
    cpARN,
    cpName,
    cpPSTNDialIn,
    cpType,

    -- * Contact
    Contact (..),
    contact,
    cPhoneNumber,
    cPhoneNumbers,
    cDisplayName,
    cContactARN,
    cFirstName,
    cLastName,
    cSipAddresses,

    -- * ContactData
    ContactData (..),
    contactData,
    cdPhoneNumber,
    cdPhoneNumbers,
    cdDisplayName,
    cdContactARN,
    cdFirstName,
    cdLastName,
    cdSipAddresses,

    -- * Content
    Content (..),
    content,
    cTextList,
    cSsmlList,
    cAudioList,

    -- * CreateEndOfMeetingReminder
    CreateEndOfMeetingReminder (..),
    createEndOfMeetingReminder,
    ceomrReminderAtMinutes,
    ceomrReminderType,
    ceomrEnabled,

    -- * CreateInstantBooking
    CreateInstantBooking (..),
    createInstantBooking,
    cibDurationInMinutes,
    cibEnabled,

    -- * CreateMeetingRoomConfiguration
    CreateMeetingRoomConfiguration (..),
    createMeetingRoomConfiguration,
    cmrcRoomUtilizationMetricsEnabled,
    cmrcEndOfMeetingReminder,
    cmrcInstantBooking,
    cmrcRequireCheckIn,

    -- * CreateRequireCheckIn
    CreateRequireCheckIn (..),
    createRequireCheckIn,
    crciReleaseAfterMinutes,
    crciEnabled,

    -- * DeveloperInfo
    DeveloperInfo (..),
    developerInfo,
    diDeveloperName,
    diEmail,
    diPrivacyPolicy,
    diURL,

    -- * Device
    Device (..),
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

    -- * DeviceData
    DeviceData (..),
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

    -- * DeviceEvent
    DeviceEvent (..),
    deviceEvent,
    deTimestamp,
    deValue,
    deType,

    -- * DeviceNetworkProfileInfo
    DeviceNetworkProfileInfo (..),
    deviceNetworkProfileInfo,
    dnpiCertificateExpirationTime,
    dnpiCertificateARN,
    dnpiNetworkProfileARN,

    -- * DeviceStatusDetail
    DeviceStatusDetail (..),
    deviceStatusDetail,
    dsdCode,
    dsdFeature,

    -- * DeviceStatusInfo
    DeviceStatusInfo (..),
    deviceStatusInfo,
    dsiDeviceStatusDetails,
    dsiConnectionStatusUpdatedTime,
    dsiConnectionStatus,

    -- * EndOfMeetingReminder
    EndOfMeetingReminder (..),
    endOfMeetingReminder,
    eomrReminderType,
    eomrReminderAtMinutes,
    eomrEnabled,

    -- * Filter
    Filter (..),
    filter',
    fKey,
    fValues,

    -- * Gateway
    Gateway (..),
    gateway,
    gARN,
    gGatewayGroupARN,
    gName,
    gDescription,
    gSoftwareVersion,

    -- * GatewayGroup
    GatewayGroup (..),
    gatewayGroup,
    ggARN,
    ggName,
    ggDescription,

    -- * GatewayGroupSummary
    GatewayGroupSummary (..),
    gatewayGroupSummary,
    ggsARN,
    ggsName,
    ggsDescription,

    -- * GatewaySummary
    GatewaySummary (..),
    gatewaySummary,
    gsARN,
    gsGatewayGroupARN,
    gsName,
    gsDescription,
    gsSoftwareVersion,

    -- * IPDialIn
    IPDialIn (..),
    ipDialIn,
    idiEndpoint,
    idiCommsProtocol,

    -- * InstantBooking
    InstantBooking (..),
    instantBooking,
    ibDurationInMinutes,
    ibEnabled,

    -- * MeetingRoomConfiguration
    MeetingRoomConfiguration (..),
    meetingRoomConfiguration,
    mrcRoomUtilizationMetricsEnabled,
    mrcEndOfMeetingReminder,
    mrcInstantBooking,
    mrcRequireCheckIn,

    -- * MeetingSetting
    MeetingSetting (..),
    meetingSetting,
    msRequirePin,

    -- * NetworkProfile
    NetworkProfile (..),
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

    -- * NetworkProfileData
    NetworkProfileData (..),
    networkProfileData,
    npdCertificateAuthorityARN,
    npdEapMethod,
    npdNetworkProfileName,
    npdSecurityType,
    npdDescription,
    npdNetworkProfileARN,
    npdSsid,

    -- * PSTNDialIn
    PSTNDialIn (..),
    pSTNDialIn,
    pstndiCountryCode,
    pstndiPhoneNumber,
    pstndiOneClickIdDelay,
    pstndiOneClickPinDelay,

    -- * PhoneNumber
    PhoneNumber (..),
    phoneNumber,
    pnNumber,
    pnType,

    -- * Profile
    Profile (..),
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

    -- * ProfileData
    ProfileData (..),
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

    -- * RequireCheckIn
    RequireCheckIn (..),
    requireCheckIn,
    rciReleaseAfterMinutes,
    rciEnabled,

    -- * Room
    Room (..),
    room,
    rRoomARN,
    rProviderCalendarId,
    rProfileARN,
    rDescription,
    rRoomName,

    -- * RoomData
    RoomData (..),
    roomData,
    rdProfileName,
    rdRoomARN,
    rdProviderCalendarId,
    rdProfileARN,
    rdDescription,
    rdRoomName,

    -- * RoomSkillParameter
    RoomSkillParameter (..),
    roomSkillParameter,
    rspParameterKey,
    rspParameterValue,

    -- * SipAddress
    SipAddress (..),
    sipAddress,
    saURI,
    saType,

    -- * SkillDetails
    SkillDetails (..),
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

    -- * SkillGroup
    SkillGroup (..),
    skillGroup,
    sgSkillGroupName,
    sgDescription,
    sgSkillGroupARN,

    -- * SkillGroupData
    SkillGroupData (..),
    skillGroupData,
    sgdSkillGroupName,
    sgdDescription,
    sgdSkillGroupARN,

    -- * SkillSummary
    SkillSummary (..),
    skillSummary,
    ssSkillId,
    ssSupportsLinking,
    ssSkillType,
    ssSkillName,
    ssEnablementType,

    -- * SkillsStoreSkill
    SkillsStoreSkill (..),
    skillsStoreSkill,
    sssIconURL,
    sssSkillId,
    sssShortDescription,
    sssSupportsLinking,
    sssSkillName,
    sssSampleUtterances,
    sssSkillDetails,

    -- * SmartHomeAppliance
    SmartHomeAppliance (..),
    smartHomeAppliance,
    shaFriendlyName,
    shaDescription,
    shaManufacturerName,

    -- * Sort
    Sort (..),
    sort,
    sorKey,
    sorValue,

    -- * Ssml
    Ssml (..),
    ssml,
    sLocale,
    sValue,

    -- * Tag
    Tag (..),
    tag,
    tagKey,
    tagValue,

    -- * TextMessage
    TextMessage (..),
    textMessage,
    tmLocale,
    tmValue,

    -- * UpdateEndOfMeetingReminder
    UpdateEndOfMeetingReminder (..),
    updateEndOfMeetingReminder,
    ueomrReminderType,
    ueomrReminderAtMinutes,
    ueomrEnabled,

    -- * UpdateInstantBooking
    UpdateInstantBooking (..),
    updateInstantBooking,
    uibDurationInMinutes,
    uibEnabled,

    -- * UpdateMeetingRoomConfiguration
    UpdateMeetingRoomConfiguration (..),
    updateMeetingRoomConfiguration,
    umrcRoomUtilizationMetricsEnabled,
    umrcEndOfMeetingReminder,
    umrcInstantBooking,
    umrcRequireCheckIn,

    -- * UpdateRequireCheckIn
    UpdateRequireCheckIn (..),
    updateRequireCheckIn,
    urciReleaseAfterMinutes,
    urciEnabled,

    -- * UserData
    UserData (..),
    userData,
    udUserARN,
    udEnrollmentId,
    udEmail,
    udEnrollmentStatus,
    udFirstName,
    udLastName,
  )
where

import Network.AWS.AlexaBusiness.Types.AddressBook
import Network.AWS.AlexaBusiness.Types.AddressBookData
import Network.AWS.AlexaBusiness.Types.Audio
import Network.AWS.AlexaBusiness.Types.BusinessReport
import Network.AWS.AlexaBusiness.Types.BusinessReportContentRange
import Network.AWS.AlexaBusiness.Types.BusinessReportFailureCode
import Network.AWS.AlexaBusiness.Types.BusinessReportFormat
import Network.AWS.AlexaBusiness.Types.BusinessReportInterval
import Network.AWS.AlexaBusiness.Types.BusinessReportRecurrence
import Network.AWS.AlexaBusiness.Types.BusinessReportS3Location
import Network.AWS.AlexaBusiness.Types.BusinessReportSchedule
import Network.AWS.AlexaBusiness.Types.BusinessReportStatus
import Network.AWS.AlexaBusiness.Types.Category
import Network.AWS.AlexaBusiness.Types.CommsProtocol
import Network.AWS.AlexaBusiness.Types.ConferencePreference
import Network.AWS.AlexaBusiness.Types.ConferenceProvider
import Network.AWS.AlexaBusiness.Types.ConferenceProviderType
import Network.AWS.AlexaBusiness.Types.ConnectionStatus
import Network.AWS.AlexaBusiness.Types.Contact
import Network.AWS.AlexaBusiness.Types.ContactData
import Network.AWS.AlexaBusiness.Types.Content
import Network.AWS.AlexaBusiness.Types.CreateEndOfMeetingReminder
import Network.AWS.AlexaBusiness.Types.CreateInstantBooking
import Network.AWS.AlexaBusiness.Types.CreateMeetingRoomConfiguration
import Network.AWS.AlexaBusiness.Types.CreateRequireCheckIn
import Network.AWS.AlexaBusiness.Types.DeveloperInfo
import Network.AWS.AlexaBusiness.Types.Device
import Network.AWS.AlexaBusiness.Types.DeviceData
import Network.AWS.AlexaBusiness.Types.DeviceEvent
import Network.AWS.AlexaBusiness.Types.DeviceEventType
import Network.AWS.AlexaBusiness.Types.DeviceNetworkProfileInfo
import Network.AWS.AlexaBusiness.Types.DeviceStatus
import Network.AWS.AlexaBusiness.Types.DeviceStatusDetail
import Network.AWS.AlexaBusiness.Types.DeviceStatusDetailCode
import Network.AWS.AlexaBusiness.Types.DeviceStatusInfo
import Network.AWS.AlexaBusiness.Types.DeviceUsageType
import Network.AWS.AlexaBusiness.Types.DistanceUnit
import Network.AWS.AlexaBusiness.Types.EnablementType
import Network.AWS.AlexaBusiness.Types.EnablementTypeFilter
import Network.AWS.AlexaBusiness.Types.EndOfMeetingReminder
import Network.AWS.AlexaBusiness.Types.EndOfMeetingReminderType
import Network.AWS.AlexaBusiness.Types.EnrollmentStatus
import Network.AWS.AlexaBusiness.Types.Feature
import Network.AWS.AlexaBusiness.Types.Filter
import Network.AWS.AlexaBusiness.Types.Gateway
import Network.AWS.AlexaBusiness.Types.GatewayGroup
import Network.AWS.AlexaBusiness.Types.GatewayGroupSummary
import Network.AWS.AlexaBusiness.Types.GatewaySummary
import Network.AWS.AlexaBusiness.Types.IPDialIn
import Network.AWS.AlexaBusiness.Types.InstantBooking
import Network.AWS.AlexaBusiness.Types.Locale
import Network.AWS.AlexaBusiness.Types.MeetingRoomConfiguration
import Network.AWS.AlexaBusiness.Types.MeetingSetting
import Network.AWS.AlexaBusiness.Types.NetworkEapMethod
import Network.AWS.AlexaBusiness.Types.NetworkProfile
import Network.AWS.AlexaBusiness.Types.NetworkProfileData
import Network.AWS.AlexaBusiness.Types.NetworkSecurityType
import Network.AWS.AlexaBusiness.Types.PSTNDialIn
import Network.AWS.AlexaBusiness.Types.PhoneNumber
import Network.AWS.AlexaBusiness.Types.PhoneNumberType
import Network.AWS.AlexaBusiness.Types.Profile
import Network.AWS.AlexaBusiness.Types.ProfileData
import Network.AWS.AlexaBusiness.Types.RequireCheckIn
import Network.AWS.AlexaBusiness.Types.RequirePin
import Network.AWS.AlexaBusiness.Types.Room
import Network.AWS.AlexaBusiness.Types.RoomData
import Network.AWS.AlexaBusiness.Types.RoomSkillParameter
import Network.AWS.AlexaBusiness.Types.SipAddress
import Network.AWS.AlexaBusiness.Types.SipType
import Network.AWS.AlexaBusiness.Types.SkillDetails
import Network.AWS.AlexaBusiness.Types.SkillGroup
import Network.AWS.AlexaBusiness.Types.SkillGroupData
import Network.AWS.AlexaBusiness.Types.SkillSummary
import Network.AWS.AlexaBusiness.Types.SkillType
import Network.AWS.AlexaBusiness.Types.SkillTypeFilter
import Network.AWS.AlexaBusiness.Types.SkillsStoreSkill
import Network.AWS.AlexaBusiness.Types.SmartHomeAppliance
import Network.AWS.AlexaBusiness.Types.Sort
import Network.AWS.AlexaBusiness.Types.SortValue
import Network.AWS.AlexaBusiness.Types.Ssml
import Network.AWS.AlexaBusiness.Types.Tag
import Network.AWS.AlexaBusiness.Types.TemperatureUnit
import Network.AWS.AlexaBusiness.Types.TextMessage
import Network.AWS.AlexaBusiness.Types.UpdateEndOfMeetingReminder
import Network.AWS.AlexaBusiness.Types.UpdateInstantBooking
import Network.AWS.AlexaBusiness.Types.UpdateMeetingRoomConfiguration
import Network.AWS.AlexaBusiness.Types.UpdateRequireCheckIn
import Network.AWS.AlexaBusiness.Types.UserData
import Network.AWS.AlexaBusiness.Types.WakeWord
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2017-11-09@ of the Amazon Alexa For Business SDK configuration.
alexaBusiness :: Service
alexaBusiness =
  Service
    { _svcAbbrev = "AlexaBusiness",
      _svcSigner = v4,
      _svcPrefix = "a4b",
      _svcVersion = "2017-11-09",
      _svcEndpoint = defaultEndpoint alexaBusiness,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "AlexaBusiness",
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

-- | The resource is not found.
_NotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_NotFoundException =
  _MatchServiceError
    alexaBusiness
    "NotFoundException"

-- | The service linked role is locked for deletion.
_InvalidServiceLinkedRoleStateException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidServiceLinkedRoleStateException =
  _MatchServiceError
    alexaBusiness
    "InvalidServiceLinkedRoleStateException"

-- | The caller has no permissions to operate on the resource involved in the API call.
_UnauthorizedException :: AsError a => Getting (First ServiceError) a ServiceError
_UnauthorizedException =
  _MatchServiceError
    alexaBusiness
    "UnauthorizedException"

-- | The attempt to update a user is invalid due to the user's current status.
_InvalidUserStatusException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidUserStatusException =
  _MatchServiceError
    alexaBusiness
    "InvalidUserStatusException"

-- | Another resource is associated with the resource in the request.
_ResourceAssociatedException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceAssociatedException =
  _MatchServiceError
    alexaBusiness
    "ResourceAssociatedException"

-- | There is a concurrent modification of resources.
_ConcurrentModificationException :: AsError a => Getting (First ServiceError) a ServiceError
_ConcurrentModificationException =
  _MatchServiceError
    alexaBusiness
    "ConcurrentModificationException"

-- | The request failed because this device is no longer registered and therefore no longer managed by this account.
_DeviceNotRegisteredException :: AsError a => Getting (First ServiceError) a ServiceError
_DeviceNotRegisteredException =
  _MatchServiceError
    alexaBusiness
    "DeviceNotRegisteredException"

-- | The Certificate Authority can't issue or revoke a certificate.
_InvalidCertificateAuthorityException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidCertificateAuthorityException =
  _MatchServiceError
    alexaBusiness
    "InvalidCertificateAuthorityException"

-- | The name sent in the request is already in use.
_NameInUseException :: AsError a => Getting (First ServiceError) a ServiceError
_NameInUseException =
  _MatchServiceError
    alexaBusiness
    "NameInUseException"

-- | The resource in the request is already in use.
_ResourceInUseException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceInUseException =
  _MatchServiceError
    alexaBusiness
    "ResourceInUseException"

-- | You are performing an action that would put you beyond your account's limits.
_LimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_LimitExceededException =
  _MatchServiceError
    alexaBusiness
    "LimitExceededException"

-- | The resource being created already exists.
_AlreadyExistsException :: AsError a => Getting (First ServiceError) a ServiceError
_AlreadyExistsException =
  _MatchServiceError
    alexaBusiness
    "AlreadyExistsException"

-- | The device is in an invalid state.
_InvalidDeviceException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidDeviceException =
  _MatchServiceError
    alexaBusiness
    "InvalidDeviceException"

-- | The skill must be linked to a third-party account.
_SkillNotLinkedException :: AsError a => Getting (First ServiceError) a ServiceError
_SkillNotLinkedException =
  _MatchServiceError
    alexaBusiness
    "SkillNotLinkedException"

-- | A password in SecretsManager is in an invalid state.
_InvalidSecretsManagerResourceException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidSecretsManagerResourceException =
  _MatchServiceError
    alexaBusiness
    "InvalidSecretsManagerResourceException"
