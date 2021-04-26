{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

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
    defaultService,

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
    newAddressBook,

    -- * AddressBookData
    AddressBookData (..),
    newAddressBookData,

    -- * Audio
    Audio (..),
    newAudio,

    -- * BusinessReport
    BusinessReport (..),
    newBusinessReport,

    -- * BusinessReportContentRange
    BusinessReportContentRange (..),
    newBusinessReportContentRange,

    -- * BusinessReportRecurrence
    BusinessReportRecurrence (..),
    newBusinessReportRecurrence,

    -- * BusinessReportS3Location
    BusinessReportS3Location (..),
    newBusinessReportS3Location,

    -- * BusinessReportSchedule
    BusinessReportSchedule (..),
    newBusinessReportSchedule,

    -- * Category
    Category (..),
    newCategory,

    -- * ConferencePreference
    ConferencePreference (..),
    newConferencePreference,

    -- * ConferenceProvider
    ConferenceProvider (..),
    newConferenceProvider,

    -- * Contact
    Contact (..),
    newContact,

    -- * ContactData
    ContactData (..),
    newContactData,

    -- * Content
    Content (..),
    newContent,

    -- * CreateEndOfMeetingReminder
    CreateEndOfMeetingReminder (..),
    newCreateEndOfMeetingReminder,

    -- * CreateInstantBooking
    CreateInstantBooking (..),
    newCreateInstantBooking,

    -- * CreateMeetingRoomConfiguration
    CreateMeetingRoomConfiguration (..),
    newCreateMeetingRoomConfiguration,

    -- * CreateRequireCheckIn
    CreateRequireCheckIn (..),
    newCreateRequireCheckIn,

    -- * DeveloperInfo
    DeveloperInfo (..),
    newDeveloperInfo,

    -- * Device
    Device (..),
    newDevice,

    -- * DeviceData
    DeviceData (..),
    newDeviceData,

    -- * DeviceEvent
    DeviceEvent (..),
    newDeviceEvent,

    -- * DeviceNetworkProfileInfo
    DeviceNetworkProfileInfo (..),
    newDeviceNetworkProfileInfo,

    -- * DeviceStatusDetail
    DeviceStatusDetail (..),
    newDeviceStatusDetail,

    -- * DeviceStatusInfo
    DeviceStatusInfo (..),
    newDeviceStatusInfo,

    -- * EndOfMeetingReminder
    EndOfMeetingReminder (..),
    newEndOfMeetingReminder,

    -- * Filter
    Filter (..),
    newFilter,

    -- * Gateway
    Gateway (..),
    newGateway,

    -- * GatewayGroup
    GatewayGroup (..),
    newGatewayGroup,

    -- * GatewayGroupSummary
    GatewayGroupSummary (..),
    newGatewayGroupSummary,

    -- * GatewaySummary
    GatewaySummary (..),
    newGatewaySummary,

    -- * IPDialIn
    IPDialIn (..),
    newIPDialIn,

    -- * InstantBooking
    InstantBooking (..),
    newInstantBooking,

    -- * MeetingRoomConfiguration
    MeetingRoomConfiguration (..),
    newMeetingRoomConfiguration,

    -- * MeetingSetting
    MeetingSetting (..),
    newMeetingSetting,

    -- * NetworkProfile
    NetworkProfile (..),
    newNetworkProfile,

    -- * NetworkProfileData
    NetworkProfileData (..),
    newNetworkProfileData,

    -- * PSTNDialIn
    PSTNDialIn (..),
    newPSTNDialIn,

    -- * PhoneNumber
    PhoneNumber (..),
    newPhoneNumber,

    -- * Profile
    Profile (..),
    newProfile,

    -- * ProfileData
    ProfileData (..),
    newProfileData,

    -- * RequireCheckIn
    RequireCheckIn (..),
    newRequireCheckIn,

    -- * Room
    Room (..),
    newRoom,

    -- * RoomData
    RoomData (..),
    newRoomData,

    -- * RoomSkillParameter
    RoomSkillParameter (..),
    newRoomSkillParameter,

    -- * SipAddress
    SipAddress (..),
    newSipAddress,

    -- * SkillDetails
    SkillDetails (..),
    newSkillDetails,

    -- * SkillGroup
    SkillGroup (..),
    newSkillGroup,

    -- * SkillGroupData
    SkillGroupData (..),
    newSkillGroupData,

    -- * SkillSummary
    SkillSummary (..),
    newSkillSummary,

    -- * SkillsStoreSkill
    SkillsStoreSkill (..),
    newSkillsStoreSkill,

    -- * SmartHomeAppliance
    SmartHomeAppliance (..),
    newSmartHomeAppliance,

    -- * Sort
    Sort (..),
    newSort,

    -- * Ssml
    Ssml (..),
    newSsml,

    -- * Tag
    Tag (..),
    newTag,

    -- * TextMessage
    TextMessage (..),
    newTextMessage,

    -- * UpdateEndOfMeetingReminder
    UpdateEndOfMeetingReminder (..),
    newUpdateEndOfMeetingReminder,

    -- * UpdateInstantBooking
    UpdateInstantBooking (..),
    newUpdateInstantBooking,

    -- * UpdateMeetingRoomConfiguration
    UpdateMeetingRoomConfiguration (..),
    newUpdateMeetingRoomConfiguration,

    -- * UpdateRequireCheckIn
    UpdateRequireCheckIn (..),
    newUpdateRequireCheckIn,

    -- * UserData
    UserData (..),
    newUserData,
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
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2017-11-09@ of the Amazon Alexa For Business SDK configuration.
defaultService :: Prelude.Service
defaultService =
  Prelude.Service
    { Prelude._svcAbbrev =
        "AlexaBusiness",
      Prelude._svcSigner = Sign.v4,
      Prelude._svcPrefix = "a4b",
      Prelude._svcVersion = "2017-11-09",
      Prelude._svcEndpoint =
        Prelude.defaultEndpoint defaultService,
      Prelude._svcTimeout = Prelude.Just 70,
      Prelude._svcCheck = Prelude.statusSuccess,
      Prelude._svcError =
        Prelude.parseJSONError "AlexaBusiness",
      Prelude._svcRetry = retry
    }
  where
    retry =
      Prelude.Exponential
        { Prelude._retryBase = 5.0e-2,
          Prelude._retryGrowth = 2,
          Prelude._retryAttempts = 5,
          Prelude._retryCheck = check
        }
    check e
      | Lens.has (Prelude.hasStatus 504) e =
        Prelude.Just "gateway_timeout"
      | Lens.has
          ( Prelude.hasCode
              "ProvisionedThroughputExceededException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throughput_exceeded"
      | Lens.has (Prelude.hasStatus 503) e =
        Prelude.Just "service_unavailable"
      | Lens.has (Prelude.hasStatus 502) e =
        Prelude.Just "bad_gateway"
      | Lens.has (Prelude.hasStatus 429) e =
        Prelude.Just "too_many_requests"
      | Lens.has
          ( Prelude.hasCode "RequestThrottledException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "request_throttled_exception"
      | Lens.has
          ( Prelude.hasCode "ThrottledException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throttled_exception"
      | Lens.has (Prelude.hasStatus 509) e =
        Prelude.Just "limit_exceeded"
      | Lens.has (Prelude.hasStatus 500) e =
        Prelude.Just "general_server_error"
      | Lens.has
          ( Prelude.hasCode "ThrottlingException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throttling_exception"
      | Lens.has
          ( Prelude.hasCode "Throttling"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throttling"
      | Prelude.otherwise = Prelude.Nothing

-- | The resource is not found.
_NotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NotFoundException =
  Prelude._MatchServiceError
    defaultService
    "NotFoundException"

-- | The service linked role is locked for deletion.
_InvalidServiceLinkedRoleStateException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidServiceLinkedRoleStateException =
  Prelude._MatchServiceError
    defaultService
    "InvalidServiceLinkedRoleStateException"

-- | The caller has no permissions to operate on the resource involved in the
-- API call.
_UnauthorizedException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_UnauthorizedException =
  Prelude._MatchServiceError
    defaultService
    "UnauthorizedException"

-- | The attempt to update a user is invalid due to the user\'s current
-- status.
_InvalidUserStatusException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidUserStatusException =
  Prelude._MatchServiceError
    defaultService
    "InvalidUserStatusException"

-- | Another resource is associated with the resource in the request.
_ResourceAssociatedException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceAssociatedException =
  Prelude._MatchServiceError
    defaultService
    "ResourceAssociatedException"

-- | There is a concurrent modification of resources.
_ConcurrentModificationException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ConcurrentModificationException =
  Prelude._MatchServiceError
    defaultService
    "ConcurrentModificationException"

-- | The request failed because this device is no longer registered and
-- therefore no longer managed by this account.
_DeviceNotRegisteredException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DeviceNotRegisteredException =
  Prelude._MatchServiceError
    defaultService
    "DeviceNotRegisteredException"

-- | The Certificate Authority can\'t issue or revoke a certificate.
_InvalidCertificateAuthorityException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidCertificateAuthorityException =
  Prelude._MatchServiceError
    defaultService
    "InvalidCertificateAuthorityException"

-- | The name sent in the request is already in use.
_NameInUseException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NameInUseException =
  Prelude._MatchServiceError
    defaultService
    "NameInUseException"

-- | The resource in the request is already in use.
_ResourceInUseException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceInUseException =
  Prelude._MatchServiceError
    defaultService
    "ResourceInUseException"

-- | You are performing an action that would put you beyond your account\'s
-- limits.
_LimitExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_LimitExceededException =
  Prelude._MatchServiceError
    defaultService
    "LimitExceededException"

-- | The resource being created already exists.
_AlreadyExistsException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_AlreadyExistsException =
  Prelude._MatchServiceError
    defaultService
    "AlreadyExistsException"

-- | The device is in an invalid state.
_InvalidDeviceException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidDeviceException =
  Prelude._MatchServiceError
    defaultService
    "InvalidDeviceException"

-- | The skill must be linked to a third-party account.
_SkillNotLinkedException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_SkillNotLinkedException =
  Prelude._MatchServiceError
    defaultService
    "SkillNotLinkedException"

-- | A password in SecretsManager is in an invalid state.
_InvalidSecretsManagerResourceException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidSecretsManagerResourceException =
  Prelude._MatchServiceError
    defaultService
    "InvalidSecretsManagerResourceException"
