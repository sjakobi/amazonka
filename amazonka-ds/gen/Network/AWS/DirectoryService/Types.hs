{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectoryService.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types
  ( -- * Service Configuration
    directoryService,

    -- * Errors
    _EntityDoesNotExistException,
    _DirectoryAlreadyInRegionException,
    _ShareLimitExceededException,
    _RegionLimitExceededException,
    _DirectoryAlreadySharedException,
    _CertificateInUseException,
    _TagLimitExceededException,
    _DomainControllerLimitExceededException,
    _DirectoryDoesNotExistException,
    _UserDoesNotExistException,
    _SnapshotLimitExceededException,
    _EntityAlreadyExistsException,
    _DirectoryNotSharedException,
    _InvalidNextTokenException,
    _OrganizationsException,
    _UnsupportedOperationException,
    _InvalidTargetException,
    _InvalidParameterException,
    _AccessDeniedException,
    _DirectoryUnavailableException,
    _CertificateAlreadyExistsException,
    _AuthenticationFailedException,
    _CertificateLimitExceededException,
    _InvalidPasswordException,
    _CertificateDoesNotExistException,
    _IPRouteLimitExceededException,
    _ClientException,
    _InvalidCertificateException,
    _InvalidClientAuthStatusException,
    _InvalidLDAPSStatusException,
    _DirectoryLimitExceededException,
    _InsufficientPermissionsException,
    _ServiceException,
    _NoAvailableCertificateException,

    -- * CertificateState
    CertificateState (..),

    -- * CertificateType
    CertificateType (..),

    -- * ClientAuthenticationType
    ClientAuthenticationType (..),

    -- * DirectoryEdition
    DirectoryEdition (..),

    -- * DirectorySize
    DirectorySize (..),

    -- * DirectoryStage
    DirectoryStage (..),

    -- * DirectoryType
    DirectoryType (..),

    -- * DomainControllerStatus
    DomainControllerStatus (..),

    -- * IPRouteStatusMsg
    IPRouteStatusMsg (..),

    -- * LDAPSStatus
    LDAPSStatus (..),

    -- * LDAPSType
    LDAPSType (..),

    -- * RadiusAuthenticationProtocol
    RadiusAuthenticationProtocol (..),

    -- * RadiusStatus
    RadiusStatus (..),

    -- * RegionType
    RegionType (..),

    -- * ReplicationScope
    ReplicationScope (..),

    -- * SchemaExtensionStatus
    SchemaExtensionStatus (..),

    -- * SelectiveAuth
    SelectiveAuth (..),

    -- * ShareMethod
    ShareMethod (..),

    -- * ShareStatus
    ShareStatus (..),

    -- * SnapshotStatus
    SnapshotStatus (..),

    -- * SnapshotType
    SnapshotType (..),

    -- * TargetType
    TargetType (..),

    -- * TopicStatus
    TopicStatus (..),

    -- * TrustDirection
    TrustDirection (..),

    -- * TrustState
    TrustState (..),

    -- * TrustType
    TrustType (..),

    -- * Attribute
    Attribute (..),
    attribute,
    aName,
    aValue,

    -- * Certificate
    Certificate (..),
    certificate,
    cClientCertAuthSettings,
    cRegisteredDateTime,
    cStateReason,
    cCommonName,
    cState,
    cExpiryDateTime,
    cType,
    cCertificateId,

    -- * CertificateInfo
    CertificateInfo (..),
    certificateInfo,
    ciCommonName,
    ciState,
    ciExpiryDateTime,
    ciType,
    ciCertificateId,

    -- * ClientCertAuthSettings
    ClientCertAuthSettings (..),
    clientCertAuthSettings,
    ccasOCSPURL,

    -- * Computer
    Computer (..),
    computer,
    cComputerName,
    cComputerAttributes,
    cComputerId,

    -- * ConditionalForwarder
    ConditionalForwarder (..),
    conditionalForwarder,
    cfReplicationScope,
    cfRemoteDomainName,
    cfDNSIPAddrs,

    -- * DirectoryConnectSettings
    DirectoryConnectSettings (..),
    directoryConnectSettings,
    dcsVPCId,
    dcsSubnetIds,
    dcsCustomerDNSIPs,
    dcsCustomerUserName,

    -- * DirectoryConnectSettingsDescription
    DirectoryConnectSettingsDescription (..),
    directoryConnectSettingsDescription,
    dcsdSecurityGroupId,
    dcsdAvailabilityZones,
    dcsdSubnetIds,
    dcsdCustomerUserName,
    dcsdConnectIPs,
    dcsdVPCId,

    -- * DirectoryDescription
    DirectoryDescription (..),
    directoryDescription,
    ddRadiusStatus,
    ddAlias,
    ddShareNotes,
    ddConnectSettings,
    ddVPCSettings,
    ddStageReason,
    ddLaunchTime,
    ddRegionsInfo,
    ddShortName,
    ddShareMethod,
    ddAccessURL,
    ddName,
    ddStage,
    ddEdition,
    ddDirectoryId,
    ddShareStatus,
    ddOwnerDirectoryDescription,
    ddDescription,
    ddType,
    ddDNSIPAddrs,
    ddRadiusSettings,
    ddDesiredNumberOfDomainControllers,
    ddSize,
    ddStageLastUpdatedDateTime,
    ddSSOEnabled,

    -- * DirectoryLimits
    DirectoryLimits (..),
    directoryLimits,
    dlCloudOnlyDirectoriesLimit,
    dlConnectedDirectoriesLimitReached,
    dlCloudOnlyMicrosoftADCurrentCount,
    dlConnectedDirectoriesLimit,
    dlConnectedDirectoriesCurrentCount,
    dlCloudOnlyMicrosoftADLimit,
    dlCloudOnlyDirectoriesLimitReached,
    dlCloudOnlyDirectoriesCurrentCount,
    dlCloudOnlyMicrosoftADLimitReached,

    -- * DirectoryVPCSettings
    DirectoryVPCSettings (..),
    directoryVPCSettings,
    dvsVPCId,
    dvsSubnetIds,

    -- * DirectoryVPCSettingsDescription
    DirectoryVPCSettingsDescription (..),
    directoryVPCSettingsDescription,
    dvsdSecurityGroupId,
    dvsdAvailabilityZones,
    dvsdSubnetIds,
    dvsdVPCId,

    -- * DomainController
    DomainController (..),
    domainController,
    dcStatus,
    dcDNSIPAddr,
    dcLaunchTime,
    dcStatusLastUpdatedDateTime,
    dcAvailabilityZone,
    dcDirectoryId,
    dcDomainControllerId,
    dcSubnetId,
    dcVPCId,
    dcStatusReason,

    -- * EventTopic
    EventTopic (..),
    eventTopic,
    etStatus,
    etCreatedDateTime,
    etTopicName,
    etTopicARN,
    etDirectoryId,

    -- * IPRoute
    IPRoute (..),
    ipRoute,
    irCidrIP,
    irDescription,

    -- * IPRouteInfo
    IPRouteInfo (..),
    ipRouteInfo,
    iriCidrIP,
    iriIPRouteStatusMsg,
    iriDirectoryId,
    iriAddedDateTime,
    iriDescription,
    iriIPRouteStatusReason,

    -- * LDAPSSettingInfo
    LDAPSSettingInfo (..),
    lDAPSSettingInfo,
    ldapssiLastUpdatedDateTime,
    ldapssiLDAPSStatusReason,
    ldapssiLDAPSStatus,

    -- * LogSubscription
    LogSubscription (..),
    logSubscription,
    lsSubscriptionCreatedDateTime,
    lsLogGroupName,
    lsDirectoryId,

    -- * OwnerDirectoryDescription
    OwnerDirectoryDescription (..),
    ownerDirectoryDescription,
    oddRadiusStatus,
    oddAccountId,
    oddVPCSettings,
    oddDirectoryId,
    oddDNSIPAddrs,
    oddRadiusSettings,

    -- * RadiusSettings
    RadiusSettings (..),
    radiusSettings,
    rsUseSameUsername,
    rsDisplayLabel,
    rsRadiusServers,
    rsRadiusRetries,
    rsRadiusTimeout,
    rsSharedSecret,
    rsRadiusPort,
    rsAuthenticationProtocol,

    -- * RegionDescription
    RegionDescription (..),
    regionDescription,
    rdRegionName,
    rdStatus,
    rdLastUpdatedDateTime,
    rdVPCSettings,
    rdRegionType,
    rdLaunchTime,
    rdStatusLastUpdatedDateTime,
    rdDirectoryId,
    rdDesiredNumberOfDomainControllers,

    -- * RegionsInfo
    RegionsInfo (..),
    regionsInfo,
    riAdditionalRegions,
    riPrimaryRegion,

    -- * SchemaExtensionInfo
    SchemaExtensionInfo (..),
    schemaExtensionInfo,
    seiSchemaExtensionStatus,
    seiStartDateTime,
    seiSchemaExtensionId,
    seiDirectoryId,
    seiEndDateTime,
    seiDescription,
    seiSchemaExtensionStatusReason,

    -- * ShareTarget
    ShareTarget (..),
    shareTarget,
    stId,
    stType,

    -- * SharedDirectory
    SharedDirectory (..),
    sharedDirectory,
    sCreatedDateTime,
    sShareNotes,
    sLastUpdatedDateTime,
    sSharedAccountId,
    sOwnerDirectoryId,
    sShareMethod,
    sShareStatus,
    sOwnerAccountId,
    sSharedDirectoryId,

    -- * Snapshot
    Snapshot (..),
    snapshot,
    sStatus,
    sStartTime,
    sName,
    sDirectoryId,
    sSnapshotId,
    sType,

    -- * SnapshotLimits
    SnapshotLimits (..),
    snapshotLimits,
    slManualSnapshotsCurrentCount,
    slManualSnapshotsLimitReached,
    slManualSnapshotsLimit,

    -- * Tag
    Tag (..),
    tag,
    tagKey,
    tagValue,

    -- * Trust
    Trust (..),
    trust,
    tTrustType,
    tCreatedDateTime,
    tTrustId,
    tTrustDirection,
    tStateLastUpdatedDateTime,
    tLastUpdatedDateTime,
    tTrustState,
    tSelectiveAuth,
    tTrustStateReason,
    tDirectoryId,
    tRemoteDomainName,

    -- * UnshareTarget
    UnshareTarget (..),
    unshareTarget,
    utId,
    utType,
  )
where

import Network.AWS.DirectoryService.Types.Attribute
import Network.AWS.DirectoryService.Types.Certificate
import Network.AWS.DirectoryService.Types.CertificateInfo
import Network.AWS.DirectoryService.Types.CertificateState
import Network.AWS.DirectoryService.Types.CertificateType
import Network.AWS.DirectoryService.Types.ClientAuthenticationType
import Network.AWS.DirectoryService.Types.ClientCertAuthSettings
import Network.AWS.DirectoryService.Types.Computer
import Network.AWS.DirectoryService.Types.ConditionalForwarder
import Network.AWS.DirectoryService.Types.DirectoryConnectSettings
import Network.AWS.DirectoryService.Types.DirectoryConnectSettingsDescription
import Network.AWS.DirectoryService.Types.DirectoryDescription
import Network.AWS.DirectoryService.Types.DirectoryEdition
import Network.AWS.DirectoryService.Types.DirectoryLimits
import Network.AWS.DirectoryService.Types.DirectorySize
import Network.AWS.DirectoryService.Types.DirectoryStage
import Network.AWS.DirectoryService.Types.DirectoryType
import Network.AWS.DirectoryService.Types.DirectoryVPCSettings
import Network.AWS.DirectoryService.Types.DirectoryVPCSettingsDescription
import Network.AWS.DirectoryService.Types.DomainController
import Network.AWS.DirectoryService.Types.DomainControllerStatus
import Network.AWS.DirectoryService.Types.EventTopic
import Network.AWS.DirectoryService.Types.IPRoute
import Network.AWS.DirectoryService.Types.IPRouteInfo
import Network.AWS.DirectoryService.Types.IPRouteStatusMsg
import Network.AWS.DirectoryService.Types.LDAPSSettingInfo
import Network.AWS.DirectoryService.Types.LDAPSStatus
import Network.AWS.DirectoryService.Types.LDAPSType
import Network.AWS.DirectoryService.Types.LogSubscription
import Network.AWS.DirectoryService.Types.OwnerDirectoryDescription
import Network.AWS.DirectoryService.Types.RadiusAuthenticationProtocol
import Network.AWS.DirectoryService.Types.RadiusSettings
import Network.AWS.DirectoryService.Types.RadiusStatus
import Network.AWS.DirectoryService.Types.RegionDescription
import Network.AWS.DirectoryService.Types.RegionType
import Network.AWS.DirectoryService.Types.RegionsInfo
import Network.AWS.DirectoryService.Types.ReplicationScope
import Network.AWS.DirectoryService.Types.SchemaExtensionInfo
import Network.AWS.DirectoryService.Types.SchemaExtensionStatus
import Network.AWS.DirectoryService.Types.SelectiveAuth
import Network.AWS.DirectoryService.Types.ShareMethod
import Network.AWS.DirectoryService.Types.ShareStatus
import Network.AWS.DirectoryService.Types.ShareTarget
import Network.AWS.DirectoryService.Types.SharedDirectory
import Network.AWS.DirectoryService.Types.Snapshot
import Network.AWS.DirectoryService.Types.SnapshotLimits
import Network.AWS.DirectoryService.Types.SnapshotStatus
import Network.AWS.DirectoryService.Types.SnapshotType
import Network.AWS.DirectoryService.Types.Tag
import Network.AWS.DirectoryService.Types.TargetType
import Network.AWS.DirectoryService.Types.TopicStatus
import Network.AWS.DirectoryService.Types.Trust
import Network.AWS.DirectoryService.Types.TrustDirection
import Network.AWS.DirectoryService.Types.TrustState
import Network.AWS.DirectoryService.Types.TrustType
import Network.AWS.DirectoryService.Types.UnshareTarget
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2015-04-16@ of the Amazon Directory Service SDK configuration.
directoryService :: Service
directoryService =
  Service
    { _svcAbbrev = "DirectoryService",
      _svcSigner = v4,
      _svcPrefix = "ds",
      _svcVersion = "2015-04-16",
      _svcEndpoint = defaultEndpoint directoryService,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "DirectoryService",
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

-- | The specified entity could not be found.
_EntityDoesNotExistException :: AsError a => Getting (First ServiceError) a ServiceError
_EntityDoesNotExistException =
  _MatchServiceError
    directoryService
    "EntityDoesNotExistException"

-- | The Region you specified is the same Region where the AWS Managed Microsoft AD directory was created. Specify a different Region and try again.
_DirectoryAlreadyInRegionException :: AsError a => Getting (First ServiceError) a ServiceError
_DirectoryAlreadyInRegionException =
  _MatchServiceError
    directoryService
    "DirectoryAlreadyInRegionException"

-- | The maximum number of AWS accounts that you can share with this directory has been reached.
_ShareLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_ShareLimitExceededException =
  _MatchServiceError
    directoryService
    "ShareLimitExceededException"

-- | You have reached the limit for maximum number of simultaneous Region replications per directory.
_RegionLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_RegionLimitExceededException =
  _MatchServiceError
    directoryService
    "RegionLimitExceededException"

-- | The specified directory has already been shared with this AWS account.
_DirectoryAlreadySharedException :: AsError a => Getting (First ServiceError) a ServiceError
_DirectoryAlreadySharedException =
  _MatchServiceError
    directoryService
    "DirectoryAlreadySharedException"

-- | The certificate is being used for the LDAP security connection and cannot be removed without disabling LDAP security.
_CertificateInUseException :: AsError a => Getting (First ServiceError) a ServiceError
_CertificateInUseException =
  _MatchServiceError
    directoryService
    "CertificateInUseException"

-- | The maximum allowed number of tags was exceeded.
_TagLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_TagLimitExceededException =
  _MatchServiceError
    directoryService
    "TagLimitExceededException"

-- | The maximum allowed number of domain controllers per directory was exceeded. The default limit per directory is 20 domain controllers.
_DomainControllerLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_DomainControllerLimitExceededException =
  _MatchServiceError
    directoryService
    "DomainControllerLimitExceededException"

-- | The specified directory does not exist in the system.
_DirectoryDoesNotExistException :: AsError a => Getting (First ServiceError) a ServiceError
_DirectoryDoesNotExistException =
  _MatchServiceError
    directoryService
    "DirectoryDoesNotExistException"

-- | The user provided a username that does not exist in your directory.
_UserDoesNotExistException :: AsError a => Getting (First ServiceError) a ServiceError
_UserDoesNotExistException =
  _MatchServiceError
    directoryService
    "UserDoesNotExistException"

-- | The maximum number of manual snapshots for the directory has been reached. You can use the 'GetSnapshotLimits' operation to determine the snapshot limits for a directory.
_SnapshotLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_SnapshotLimitExceededException =
  _MatchServiceError
    directoryService
    "SnapshotLimitExceededException"

-- | The specified entity already exists.
_EntityAlreadyExistsException :: AsError a => Getting (First ServiceError) a ServiceError
_EntityAlreadyExistsException =
  _MatchServiceError
    directoryService
    "EntityAlreadyExistsException"

-- | The specified directory has not been shared with this AWS account.
_DirectoryNotSharedException :: AsError a => Getting (First ServiceError) a ServiceError
_DirectoryNotSharedException =
  _MatchServiceError
    directoryService
    "DirectoryNotSharedException"

-- | The @NextToken@ value is not valid.
_InvalidNextTokenException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidNextTokenException =
  _MatchServiceError
    directoryService
    "InvalidNextTokenException"

-- | Exception encountered while trying to access your AWS organization.
_OrganizationsException :: AsError a => Getting (First ServiceError) a ServiceError
_OrganizationsException =
  _MatchServiceError
    directoryService
    "OrganizationsException"

-- | The operation is not supported.
_UnsupportedOperationException :: AsError a => Getting (First ServiceError) a ServiceError
_UnsupportedOperationException =
  _MatchServiceError
    directoryService
    "UnsupportedOperationException"

-- | The specified shared target is not valid.
_InvalidTargetException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidTargetException =
  _MatchServiceError
    directoryService
    "InvalidTargetException"

-- | One or more parameters are not valid.
_InvalidParameterException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidParameterException =
  _MatchServiceError
    directoryService
    "InvalidParameterException"

-- | Client authentication is not available in this region at this time.
_AccessDeniedException :: AsError a => Getting (First ServiceError) a ServiceError
_AccessDeniedException =
  _MatchServiceError
    directoryService
    "AccessDeniedException"

-- | The specified directory is unavailable or could not be found.
_DirectoryUnavailableException :: AsError a => Getting (First ServiceError) a ServiceError
_DirectoryUnavailableException =
  _MatchServiceError
    directoryService
    "DirectoryUnavailableException"

-- | The certificate has already been registered into the system.
_CertificateAlreadyExistsException :: AsError a => Getting (First ServiceError) a ServiceError
_CertificateAlreadyExistsException =
  _MatchServiceError
    directoryService
    "CertificateAlreadyExistsException"

-- | An authentication error occurred.
_AuthenticationFailedException :: AsError a => Getting (First ServiceError) a ServiceError
_AuthenticationFailedException =
  _MatchServiceError
    directoryService
    "AuthenticationFailedException"

-- | The certificate could not be added because the certificate limit has been reached.
_CertificateLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_CertificateLimitExceededException =
  _MatchServiceError
    directoryService
    "CertificateLimitExceededException"

-- | The new password provided by the user does not meet the password complexity requirements defined in your directory.
_InvalidPasswordException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidPasswordException =
  _MatchServiceError
    directoryService
    "InvalidPasswordException"

-- | The certificate is not present in the system for describe or deregister activities.
_CertificateDoesNotExistException :: AsError a => Getting (First ServiceError) a ServiceError
_CertificateDoesNotExistException =
  _MatchServiceError
    directoryService
    "CertificateDoesNotExistException"

-- | The maximum allowed number of IP addresses was exceeded. The default limit is 100 IP address blocks.
_IPRouteLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_IPRouteLimitExceededException =
  _MatchServiceError
    directoryService
    "IpRouteLimitExceededException"

-- | A client exception has occurred.
_ClientException :: AsError a => Getting (First ServiceError) a ServiceError
_ClientException =
  _MatchServiceError
    directoryService
    "ClientException"

-- | The certificate PEM that was provided has incorrect encoding.
_InvalidCertificateException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidCertificateException =
  _MatchServiceError
    directoryService
    "InvalidCertificateException"

-- | Client authentication is already enabled.
_InvalidClientAuthStatusException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidClientAuthStatusException =
  _MatchServiceError
    directoryService
    "InvalidClientAuthStatusException"

-- | The LDAP activities could not be performed because they are limited by the LDAPS status.
_InvalidLDAPSStatusException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidLDAPSStatusException =
  _MatchServiceError
    directoryService
    "InvalidLDAPSStatusException"

-- | The maximum number of directories in the region has been reached. You can use the 'GetDirectoryLimits' operation to determine your directory limits in the region.
_DirectoryLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_DirectoryLimitExceededException =
  _MatchServiceError
    directoryService
    "DirectoryLimitExceededException"

-- | The account does not have sufficient permission to perform the operation.
_InsufficientPermissionsException :: AsError a => Getting (First ServiceError) a ServiceError
_InsufficientPermissionsException =
  _MatchServiceError
    directoryService
    "InsufficientPermissionsException"

-- | An exception has occurred in AWS Directory Service.
_ServiceException :: AsError a => Getting (First ServiceError) a ServiceError
_ServiceException =
  _MatchServiceError
    directoryService
    "ServiceException"

-- | Client authentication setup could not be completed because at least one valid certificate must be registered in the system.
_NoAvailableCertificateException :: AsError a => Getting (First ServiceError) a ServiceError
_NoAvailableCertificateException =
  _MatchServiceError
    directoryService
    "NoAvailableCertificateException"
