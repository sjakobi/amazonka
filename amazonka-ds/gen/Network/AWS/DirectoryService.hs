{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectoryService
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __AWS Directory Service__
--
-- AWS Directory Service is a web service that makes it easy for you to setup and run directories in the AWS cloud, or connect your AWS resources with an existing on-premises Microsoft Active Directory. This guide provides detailed information about AWS Directory Service operations, data types, parameters, and errors. For information about AWS Directory Services features, see <https://aws.amazon.com/directoryservice/ AWS Directory Service> and the <http://docs.aws.amazon.com/directoryservice/latest/admin-guide/what_is.html AWS Directory Service Administration Guide> .
module Network.AWS.DirectoryService
  ( -- * Service Configuration
    directoryService,

    -- * Errors
    -- $errors

    -- ** EntityDoesNotExistException
    _EntityDoesNotExistException,

    -- ** DirectoryAlreadyInRegionException
    _DirectoryAlreadyInRegionException,

    -- ** ShareLimitExceededException
    _ShareLimitExceededException,

    -- ** RegionLimitExceededException
    _RegionLimitExceededException,

    -- ** DirectoryAlreadySharedException
    _DirectoryAlreadySharedException,

    -- ** CertificateInUseException
    _CertificateInUseException,

    -- ** TagLimitExceededException
    _TagLimitExceededException,

    -- ** DomainControllerLimitExceededException
    _DomainControllerLimitExceededException,

    -- ** DirectoryDoesNotExistException
    _DirectoryDoesNotExistException,

    -- ** UserDoesNotExistException
    _UserDoesNotExistException,

    -- ** SnapshotLimitExceededException
    _SnapshotLimitExceededException,

    -- ** EntityAlreadyExistsException
    _EntityAlreadyExistsException,

    -- ** DirectoryNotSharedException
    _DirectoryNotSharedException,

    -- ** InvalidNextTokenException
    _InvalidNextTokenException,

    -- ** OrganizationsException
    _OrganizationsException,

    -- ** UnsupportedOperationException
    _UnsupportedOperationException,

    -- ** InvalidTargetException
    _InvalidTargetException,

    -- ** InvalidParameterException
    _InvalidParameterException,

    -- ** AccessDeniedException
    _AccessDeniedException,

    -- ** DirectoryUnavailableException
    _DirectoryUnavailableException,

    -- ** CertificateAlreadyExistsException
    _CertificateAlreadyExistsException,

    -- ** AuthenticationFailedException
    _AuthenticationFailedException,

    -- ** CertificateLimitExceededException
    _CertificateLimitExceededException,

    -- ** InvalidPasswordException
    _InvalidPasswordException,

    -- ** CertificateDoesNotExistException
    _CertificateDoesNotExistException,

    -- ** IPRouteLimitExceededException
    _IPRouteLimitExceededException,

    -- ** ClientException
    _ClientException,

    -- ** InvalidCertificateException
    _InvalidCertificateException,

    -- ** InvalidClientAuthStatusException
    _InvalidClientAuthStatusException,

    -- ** InvalidLDAPSStatusException
    _InvalidLDAPSStatusException,

    -- ** DirectoryLimitExceededException
    _DirectoryLimitExceededException,

    -- ** InsufficientPermissionsException
    _InsufficientPermissionsException,

    -- ** ServiceException
    _ServiceException,

    -- ** NoAvailableCertificateException
    _NoAvailableCertificateException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** ConnectDirectory
    module Network.AWS.DirectoryService.ConnectDirectory,

    -- ** RejectSharedDirectory
    module Network.AWS.DirectoryService.RejectSharedDirectory,

    -- ** DisableRadius
    module Network.AWS.DirectoryService.DisableRadius,

    -- ** RegisterEventTopic
    module Network.AWS.DirectoryService.RegisterEventTopic,

    -- ** ShareDirectory
    module Network.AWS.DirectoryService.ShareDirectory,

    -- ** AddRegion
    module Network.AWS.DirectoryService.AddRegion,

    -- ** ListIPRoutes (Paginated)
    module Network.AWS.DirectoryService.ListIPRoutes,

    -- ** EnableRadius
    module Network.AWS.DirectoryService.EnableRadius,

    -- ** ListSchemaExtensions (Paginated)
    module Network.AWS.DirectoryService.ListSchemaExtensions,

    -- ** RemoveRegion
    module Network.AWS.DirectoryService.RemoveRegion,

    -- ** DeleteLogSubscription
    module Network.AWS.DirectoryService.DeleteLogSubscription,

    -- ** CancelSchemaExtension
    module Network.AWS.DirectoryService.CancelSchemaExtension,

    -- ** EnableSSO
    module Network.AWS.DirectoryService.EnableSSO,

    -- ** CreateConditionalForwarder
    module Network.AWS.DirectoryService.CreateConditionalForwarder,

    -- ** RemoveTagsFromResource
    module Network.AWS.DirectoryService.RemoveTagsFromResource,

    -- ** EnableLDAPS
    module Network.AWS.DirectoryService.EnableLDAPS,

    -- ** DeleteConditionalForwarder
    module Network.AWS.DirectoryService.DeleteConditionalForwarder,

    -- ** DescribeSharedDirectories (Paginated)
    module Network.AWS.DirectoryService.DescribeSharedDirectories,

    -- ** UpdateConditionalForwarder
    module Network.AWS.DirectoryService.UpdateConditionalForwarder,

    -- ** VerifyTrust
    module Network.AWS.DirectoryService.VerifyTrust,

    -- ** DescribeCertificate
    module Network.AWS.DirectoryService.DescribeCertificate,

    -- ** CreateTrust
    module Network.AWS.DirectoryService.CreateTrust,

    -- ** DeleteDirectory
    module Network.AWS.DirectoryService.DeleteDirectory,

    -- ** DisableClientAuthentication
    module Network.AWS.DirectoryService.DisableClientAuthentication,

    -- ** CreateMicrosoftAD
    module Network.AWS.DirectoryService.CreateMicrosoftAD,

    -- ** DeleteSnapshot
    module Network.AWS.DirectoryService.DeleteSnapshot,

    -- ** RemoveIPRoutes
    module Network.AWS.DirectoryService.RemoveIPRoutes,

    -- ** UpdateTrust
    module Network.AWS.DirectoryService.UpdateTrust,

    -- ** DeleteTrust
    module Network.AWS.DirectoryService.DeleteTrust,

    -- ** CreateDirectory
    module Network.AWS.DirectoryService.CreateDirectory,

    -- ** RestoreFromSnapshot
    module Network.AWS.DirectoryService.RestoreFromSnapshot,

    -- ** DescribeDomainControllers (Paginated)
    module Network.AWS.DirectoryService.DescribeDomainControllers,

    -- ** DescribeTrusts (Paginated)
    module Network.AWS.DirectoryService.DescribeTrusts,

    -- ** DescribeSnapshots (Paginated)
    module Network.AWS.DirectoryService.DescribeSnapshots,

    -- ** UnshareDirectory
    module Network.AWS.DirectoryService.UnshareDirectory,

    -- ** RegisterCertificate
    module Network.AWS.DirectoryService.RegisterCertificate,

    -- ** GetSnapshotLimits
    module Network.AWS.DirectoryService.GetSnapshotLimits,

    -- ** UpdateNumberOfDomainControllers
    module Network.AWS.DirectoryService.UpdateNumberOfDomainControllers,

    -- ** ListCertificates
    module Network.AWS.DirectoryService.ListCertificates,

    -- ** DescribeConditionalForwarders
    module Network.AWS.DirectoryService.DescribeConditionalForwarders,

    -- ** AddTagsToResource
    module Network.AWS.DirectoryService.AddTagsToResource,

    -- ** GetDirectoryLimits
    module Network.AWS.DirectoryService.GetDirectoryLimits,

    -- ** UpdateRadius
    module Network.AWS.DirectoryService.UpdateRadius,

    -- ** DisableLDAPS
    module Network.AWS.DirectoryService.DisableLDAPS,

    -- ** ListLogSubscriptions (Paginated)
    module Network.AWS.DirectoryService.ListLogSubscriptions,

    -- ** DescribeRegions
    module Network.AWS.DirectoryService.DescribeRegions,

    -- ** DisableSSO
    module Network.AWS.DirectoryService.DisableSSO,

    -- ** CreateLogSubscription
    module Network.AWS.DirectoryService.CreateLogSubscription,

    -- ** ResetUserPassword
    module Network.AWS.DirectoryService.ResetUserPassword,

    -- ** DescribeEventTopics
    module Network.AWS.DirectoryService.DescribeEventTopics,

    -- ** CreateComputer
    module Network.AWS.DirectoryService.CreateComputer,

    -- ** AcceptSharedDirectory
    module Network.AWS.DirectoryService.AcceptSharedDirectory,

    -- ** EnableClientAuthentication
    module Network.AWS.DirectoryService.EnableClientAuthentication,

    -- ** CreateSnapshot
    module Network.AWS.DirectoryService.CreateSnapshot,

    -- ** StartSchemaExtension
    module Network.AWS.DirectoryService.StartSchemaExtension,

    -- ** DeregisterEventTopic
    module Network.AWS.DirectoryService.DeregisterEventTopic,

    -- ** DeregisterCertificate
    module Network.AWS.DirectoryService.DeregisterCertificate,

    -- ** ListTagsForResource (Paginated)
    module Network.AWS.DirectoryService.ListTagsForResource,

    -- ** CreateAlias
    module Network.AWS.DirectoryService.CreateAlias,

    -- ** AddIPRoutes
    module Network.AWS.DirectoryService.AddIPRoutes,

    -- ** DescribeDirectories (Paginated)
    module Network.AWS.DirectoryService.DescribeDirectories,

    -- ** DescribeLDAPSSettings
    module Network.AWS.DirectoryService.DescribeLDAPSSettings,

    -- * Types

    -- ** CertificateState
    CertificateState (..),

    -- ** CertificateType
    CertificateType (..),

    -- ** ClientAuthenticationType
    ClientAuthenticationType (..),

    -- ** DirectoryEdition
    DirectoryEdition (..),

    -- ** DirectorySize
    DirectorySize (..),

    -- ** DirectoryStage
    DirectoryStage (..),

    -- ** DirectoryType
    DirectoryType (..),

    -- ** DomainControllerStatus
    DomainControllerStatus (..),

    -- ** IPRouteStatusMsg
    IPRouteStatusMsg (..),

    -- ** LDAPSStatus
    LDAPSStatus (..),

    -- ** LDAPSType
    LDAPSType (..),

    -- ** RadiusAuthenticationProtocol
    RadiusAuthenticationProtocol (..),

    -- ** RadiusStatus
    RadiusStatus (..),

    -- ** RegionType
    RegionType (..),

    -- ** ReplicationScope
    ReplicationScope (..),

    -- ** SchemaExtensionStatus
    SchemaExtensionStatus (..),

    -- ** SelectiveAuth
    SelectiveAuth (..),

    -- ** ShareMethod
    ShareMethod (..),

    -- ** ShareStatus
    ShareStatus (..),

    -- ** SnapshotStatus
    SnapshotStatus (..),

    -- ** SnapshotType
    SnapshotType (..),

    -- ** TargetType
    TargetType (..),

    -- ** TopicStatus
    TopicStatus (..),

    -- ** TrustDirection
    TrustDirection (..),

    -- ** TrustState
    TrustState (..),

    -- ** TrustType
    TrustType (..),

    -- ** Attribute
    Attribute,
    attribute,
    aName,
    aValue,

    -- ** Certificate
    Certificate,
    certificate,
    cClientCertAuthSettings,
    cRegisteredDateTime,
    cStateReason,
    cCommonName,
    cState,
    cExpiryDateTime,
    cType,
    cCertificateId,

    -- ** CertificateInfo
    CertificateInfo,
    certificateInfo,
    ciCommonName,
    ciState,
    ciExpiryDateTime,
    ciType,
    ciCertificateId,

    -- ** ClientCertAuthSettings
    ClientCertAuthSettings,
    clientCertAuthSettings,
    ccasOCSPURL,

    -- ** Computer
    Computer,
    computer,
    cComputerName,
    cComputerAttributes,
    cComputerId,

    -- ** ConditionalForwarder
    ConditionalForwarder,
    conditionalForwarder,
    cfReplicationScope,
    cfRemoteDomainName,
    cfDNSIPAddrs,

    -- ** DirectoryConnectSettings
    DirectoryConnectSettings,
    directoryConnectSettings,
    dcsVPCId,
    dcsSubnetIds,
    dcsCustomerDNSIPs,
    dcsCustomerUserName,

    -- ** DirectoryConnectSettingsDescription
    DirectoryConnectSettingsDescription,
    directoryConnectSettingsDescription,
    dcsdSecurityGroupId,
    dcsdAvailabilityZones,
    dcsdSubnetIds,
    dcsdCustomerUserName,
    dcsdConnectIPs,
    dcsdVPCId,

    -- ** DirectoryDescription
    DirectoryDescription,
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

    -- ** DirectoryLimits
    DirectoryLimits,
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

    -- ** DirectoryVPCSettings
    DirectoryVPCSettings,
    directoryVPCSettings,
    dvsVPCId,
    dvsSubnetIds,

    -- ** DirectoryVPCSettingsDescription
    DirectoryVPCSettingsDescription,
    directoryVPCSettingsDescription,
    dvsdSecurityGroupId,
    dvsdAvailabilityZones,
    dvsdSubnetIds,
    dvsdVPCId,

    -- ** DomainController
    DomainController,
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

    -- ** EventTopic
    EventTopic,
    eventTopic,
    etStatus,
    etCreatedDateTime,
    etTopicName,
    etTopicARN,
    etDirectoryId,

    -- ** IPRoute
    IPRoute,
    ipRoute,
    irCidrIP,
    irDescription,

    -- ** IPRouteInfo
    IPRouteInfo,
    ipRouteInfo,
    iriCidrIP,
    iriIPRouteStatusMsg,
    iriDirectoryId,
    iriAddedDateTime,
    iriDescription,
    iriIPRouteStatusReason,

    -- ** LDAPSSettingInfo
    LDAPSSettingInfo,
    lDAPSSettingInfo,
    ldapssiLastUpdatedDateTime,
    ldapssiLDAPSStatusReason,
    ldapssiLDAPSStatus,

    -- ** LogSubscription
    LogSubscription,
    logSubscription,
    lsSubscriptionCreatedDateTime,
    lsLogGroupName,
    lsDirectoryId,

    -- ** OwnerDirectoryDescription
    OwnerDirectoryDescription,
    ownerDirectoryDescription,
    oddRadiusStatus,
    oddAccountId,
    oddVPCSettings,
    oddDirectoryId,
    oddDNSIPAddrs,
    oddRadiusSettings,

    -- ** RadiusSettings
    RadiusSettings,
    radiusSettings,
    rsUseSameUsername,
    rsDisplayLabel,
    rsRadiusServers,
    rsRadiusRetries,
    rsRadiusTimeout,
    rsSharedSecret,
    rsRadiusPort,
    rsAuthenticationProtocol,

    -- ** RegionDescription
    RegionDescription,
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

    -- ** RegionsInfo
    RegionsInfo,
    regionsInfo,
    riAdditionalRegions,
    riPrimaryRegion,

    -- ** SchemaExtensionInfo
    SchemaExtensionInfo,
    schemaExtensionInfo,
    seiSchemaExtensionStatus,
    seiStartDateTime,
    seiSchemaExtensionId,
    seiDirectoryId,
    seiEndDateTime,
    seiDescription,
    seiSchemaExtensionStatusReason,

    -- ** ShareTarget
    ShareTarget,
    shareTarget,
    stId,
    stType,

    -- ** SharedDirectory
    SharedDirectory,
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

    -- ** Snapshot
    Snapshot,
    snapshot,
    sStatus,
    sStartTime,
    sName,
    sDirectoryId,
    sSnapshotId,
    sType,

    -- ** SnapshotLimits
    SnapshotLimits,
    snapshotLimits,
    slManualSnapshotsCurrentCount,
    slManualSnapshotsLimitReached,
    slManualSnapshotsLimit,

    -- ** Tag
    Tag,
    tag,
    tagKey,
    tagValue,

    -- ** Trust
    Trust,
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

    -- ** UnshareTarget
    UnshareTarget,
    unshareTarget,
    utId,
    utType,
  )
where

import Network.AWS.DirectoryService.AcceptSharedDirectory
import Network.AWS.DirectoryService.AddIPRoutes
import Network.AWS.DirectoryService.AddRegion
import Network.AWS.DirectoryService.AddTagsToResource
import Network.AWS.DirectoryService.CancelSchemaExtension
import Network.AWS.DirectoryService.ConnectDirectory
import Network.AWS.DirectoryService.CreateAlias
import Network.AWS.DirectoryService.CreateComputer
import Network.AWS.DirectoryService.CreateConditionalForwarder
import Network.AWS.DirectoryService.CreateDirectory
import Network.AWS.DirectoryService.CreateLogSubscription
import Network.AWS.DirectoryService.CreateMicrosoftAD
import Network.AWS.DirectoryService.CreateSnapshot
import Network.AWS.DirectoryService.CreateTrust
import Network.AWS.DirectoryService.DeleteConditionalForwarder
import Network.AWS.DirectoryService.DeleteDirectory
import Network.AWS.DirectoryService.DeleteLogSubscription
import Network.AWS.DirectoryService.DeleteSnapshot
import Network.AWS.DirectoryService.DeleteTrust
import Network.AWS.DirectoryService.DeregisterCertificate
import Network.AWS.DirectoryService.DeregisterEventTopic
import Network.AWS.DirectoryService.DescribeCertificate
import Network.AWS.DirectoryService.DescribeConditionalForwarders
import Network.AWS.DirectoryService.DescribeDirectories
import Network.AWS.DirectoryService.DescribeDomainControllers
import Network.AWS.DirectoryService.DescribeEventTopics
import Network.AWS.DirectoryService.DescribeLDAPSSettings
import Network.AWS.DirectoryService.DescribeRegions
import Network.AWS.DirectoryService.DescribeSharedDirectories
import Network.AWS.DirectoryService.DescribeSnapshots
import Network.AWS.DirectoryService.DescribeTrusts
import Network.AWS.DirectoryService.DisableClientAuthentication
import Network.AWS.DirectoryService.DisableLDAPS
import Network.AWS.DirectoryService.DisableRadius
import Network.AWS.DirectoryService.DisableSSO
import Network.AWS.DirectoryService.EnableClientAuthentication
import Network.AWS.DirectoryService.EnableLDAPS
import Network.AWS.DirectoryService.EnableRadius
import Network.AWS.DirectoryService.EnableSSO
import Network.AWS.DirectoryService.GetDirectoryLimits
import Network.AWS.DirectoryService.GetSnapshotLimits
import Network.AWS.DirectoryService.ListCertificates
import Network.AWS.DirectoryService.ListIPRoutes
import Network.AWS.DirectoryService.ListLogSubscriptions
import Network.AWS.DirectoryService.ListSchemaExtensions
import Network.AWS.DirectoryService.ListTagsForResource
import Network.AWS.DirectoryService.RegisterCertificate
import Network.AWS.DirectoryService.RegisterEventTopic
import Network.AWS.DirectoryService.RejectSharedDirectory
import Network.AWS.DirectoryService.RemoveIPRoutes
import Network.AWS.DirectoryService.RemoveRegion
import Network.AWS.DirectoryService.RemoveTagsFromResource
import Network.AWS.DirectoryService.ResetUserPassword
import Network.AWS.DirectoryService.RestoreFromSnapshot
import Network.AWS.DirectoryService.ShareDirectory
import Network.AWS.DirectoryService.StartSchemaExtension
import Network.AWS.DirectoryService.Types
import Network.AWS.DirectoryService.UnshareDirectory
import Network.AWS.DirectoryService.UpdateConditionalForwarder
import Network.AWS.DirectoryService.UpdateNumberOfDomainControllers
import Network.AWS.DirectoryService.UpdateRadius
import Network.AWS.DirectoryService.UpdateTrust
import Network.AWS.DirectoryService.VerifyTrust
import Network.AWS.DirectoryService.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'DirectoryService'.

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
