{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _NotFoundException,
    _InvalidInputException,
    _UnauthenticatedException,
    _OperationFailureException,
    _AccessDeniedException,
    _AccountSetupInProgressException,
    _ServiceException,

    -- * AccessDirection
    AccessDirection (..),

    -- * AddOnType
    AddOnType (..),

    -- * AlarmState
    AlarmState (..),

    -- * AutoSnapshotStatus
    AutoSnapshotStatus (..),

    -- * BehaviorEnum
    BehaviorEnum (..),

    -- * BlueprintType
    BlueprintType (..),

    -- * CertificateStatus
    CertificateStatus (..),

    -- * CloudFormationStackRecordSourceType
    CloudFormationStackRecordSourceType (..),

    -- * ComparisonOperator
    ComparisonOperator (..),

    -- * ContactMethodStatus
    ContactMethodStatus (..),

    -- * ContactMethodVerificationProtocol
    ContactMethodVerificationProtocol (..),

    -- * ContactProtocol
    ContactProtocol (..),

    -- * ContainerServiceDeploymentState
    ContainerServiceDeploymentState (..),

    -- * ContainerServiceMetricName
    ContainerServiceMetricName (..),

    -- * ContainerServicePowerName
    ContainerServicePowerName (..),

    -- * ContainerServiceProtocol
    ContainerServiceProtocol (..),

    -- * ContainerServiceState
    ContainerServiceState (..),

    -- * DiskSnapshotState
    DiskSnapshotState (..),

    -- * DiskState
    DiskState (..),

    -- * DistributionMetricName
    DistributionMetricName (..),

    -- * ExportSnapshotRecordSourceType
    ExportSnapshotRecordSourceType (..),

    -- * ForwardValues
    ForwardValues (..),

    -- * HeaderEnum
    HeaderEnum (..),

    -- * InstanceAccessProtocol
    InstanceAccessProtocol (..),

    -- * InstanceHealthReason
    InstanceHealthReason (..),

    -- * InstanceHealthState
    InstanceHealthState (..),

    -- * InstanceMetricName
    InstanceMetricName (..),

    -- * InstancePlatform
    InstancePlatform (..),

    -- * InstanceSnapshotState
    InstanceSnapshotState (..),

    -- * IpAddressType
    IpAddressType (..),

    -- * LoadBalancerAttributeName
    LoadBalancerAttributeName (..),

    -- * LoadBalancerMetricName
    LoadBalancerMetricName (..),

    -- * LoadBalancerProtocol
    LoadBalancerProtocol (..),

    -- * LoadBalancerState
    LoadBalancerState (..),

    -- * LoadBalancerTlsCertificateDomainStatus
    LoadBalancerTlsCertificateDomainStatus (..),

    -- * LoadBalancerTlsCertificateFailureReason
    LoadBalancerTlsCertificateFailureReason (..),

    -- * LoadBalancerTlsCertificateRenewalStatus
    LoadBalancerTlsCertificateRenewalStatus (..),

    -- * LoadBalancerTlsCertificateRevocationReason
    LoadBalancerTlsCertificateRevocationReason (..),

    -- * LoadBalancerTlsCertificateStatus
    LoadBalancerTlsCertificateStatus (..),

    -- * MetricName
    MetricName (..),

    -- * MetricStatistic
    MetricStatistic (..),

    -- * MetricUnit
    MetricUnit (..),

    -- * NetworkProtocol
    NetworkProtocol (..),

    -- * OperationStatus
    OperationStatus (..),

    -- * OperationType
    OperationType (..),

    -- * OriginProtocolPolicyEnum
    OriginProtocolPolicyEnum (..),

    -- * PortAccessType
    PortAccessType (..),

    -- * PortInfoSourceType
    PortInfoSourceType (..),

    -- * PortState
    PortState (..),

    -- * RecordState
    RecordState (..),

    -- * RegionName
    RegionName (..),

    -- * RelationalDatabaseEngine
    RelationalDatabaseEngine (..),

    -- * RelationalDatabaseMetricName
    RelationalDatabaseMetricName (..),

    -- * RelationalDatabasePasswordVersion
    RelationalDatabasePasswordVersion (..),

    -- * RenewalStatus
    RenewalStatus (..),

    -- * ResourceType
    ResourceType (..),

    -- * TreatMissingData
    TreatMissingData (..),

    -- * AddOn
    AddOn (..),
    newAddOn,

    -- * AddOnRequest
    AddOnRequest (..),
    newAddOnRequest,

    -- * Alarm
    Alarm (..),
    newAlarm,

    -- * AttachedDisk
    AttachedDisk (..),
    newAttachedDisk,

    -- * AutoSnapshotAddOnRequest
    AutoSnapshotAddOnRequest (..),
    newAutoSnapshotAddOnRequest,

    -- * AutoSnapshotDetails
    AutoSnapshotDetails (..),
    newAutoSnapshotDetails,

    -- * AvailabilityZone
    AvailabilityZone (..),
    newAvailabilityZone,

    -- * Blueprint
    Blueprint (..),
    newBlueprint,

    -- * Bundle
    Bundle (..),
    newBundle,

    -- * CacheBehavior
    CacheBehavior (..),
    newCacheBehavior,

    -- * CacheBehaviorPerPath
    CacheBehaviorPerPath (..),
    newCacheBehaviorPerPath,

    -- * CacheSettings
    CacheSettings (..),
    newCacheSettings,

    -- * Certificate
    Certificate (..),
    newCertificate,

    -- * CertificateSummary
    CertificateSummary (..),
    newCertificateSummary,

    -- * CloudFormationStackRecord
    CloudFormationStackRecord (..),
    newCloudFormationStackRecord,

    -- * CloudFormationStackRecordSourceInfo
    CloudFormationStackRecordSourceInfo (..),
    newCloudFormationStackRecordSourceInfo,

    -- * ContactMethod
    ContactMethod (..),
    newContactMethod,

    -- * Container
    Container (..),
    newContainer,

    -- * ContainerImage
    ContainerImage (..),
    newContainerImage,

    -- * ContainerService
    ContainerService (..),
    newContainerService,

    -- * ContainerServiceDeployment
    ContainerServiceDeployment (..),
    newContainerServiceDeployment,

    -- * ContainerServiceDeploymentRequest
    ContainerServiceDeploymentRequest (..),
    newContainerServiceDeploymentRequest,

    -- * ContainerServiceEndpoint
    ContainerServiceEndpoint (..),
    newContainerServiceEndpoint,

    -- * ContainerServiceHealthCheckConfig
    ContainerServiceHealthCheckConfig (..),
    newContainerServiceHealthCheckConfig,

    -- * ContainerServiceLogEvent
    ContainerServiceLogEvent (..),
    newContainerServiceLogEvent,

    -- * ContainerServicePower
    ContainerServicePower (..),
    newContainerServicePower,

    -- * ContainerServiceRegistryLogin
    ContainerServiceRegistryLogin (..),
    newContainerServiceRegistryLogin,

    -- * CookieObject
    CookieObject (..),
    newCookieObject,

    -- * DestinationInfo
    DestinationInfo (..),
    newDestinationInfo,

    -- * Disk
    Disk (..),
    newDisk,

    -- * DiskInfo
    DiskInfo (..),
    newDiskInfo,

    -- * DiskMap
    DiskMap (..),
    newDiskMap,

    -- * DiskSnapshot
    DiskSnapshot (..),
    newDiskSnapshot,

    -- * DiskSnapshotInfo
    DiskSnapshotInfo (..),
    newDiskSnapshotInfo,

    -- * DistributionBundle
    DistributionBundle (..),
    newDistributionBundle,

    -- * Domain
    Domain (..),
    newDomain,

    -- * DomainEntry
    DomainEntry (..),
    newDomainEntry,

    -- * DomainValidationRecord
    DomainValidationRecord (..),
    newDomainValidationRecord,

    -- * EndpointRequest
    EndpointRequest (..),
    newEndpointRequest,

    -- * ExportSnapshotRecord
    ExportSnapshotRecord (..),
    newExportSnapshotRecord,

    -- * ExportSnapshotRecordSourceInfo
    ExportSnapshotRecordSourceInfo (..),
    newExportSnapshotRecordSourceInfo,

    -- * HeaderObject
    HeaderObject (..),
    newHeaderObject,

    -- * HostKeyAttributes
    HostKeyAttributes (..),
    newHostKeyAttributes,

    -- * InputOrigin
    InputOrigin (..),
    newInputOrigin,

    -- * Instance
    Instance (..),
    newInstance,

    -- * InstanceAccessDetails
    InstanceAccessDetails (..),
    newInstanceAccessDetails,

    -- * InstanceEntry
    InstanceEntry (..),
    newInstanceEntry,

    -- * InstanceHardware
    InstanceHardware (..),
    newInstanceHardware,

    -- * InstanceHealthSummary
    InstanceHealthSummary (..),
    newInstanceHealthSummary,

    -- * InstanceNetworking
    InstanceNetworking (..),
    newInstanceNetworking,

    -- * InstancePortInfo
    InstancePortInfo (..),
    newInstancePortInfo,

    -- * InstancePortState
    InstancePortState (..),
    newInstancePortState,

    -- * InstanceSnapshot
    InstanceSnapshot (..),
    newInstanceSnapshot,

    -- * InstanceSnapshotInfo
    InstanceSnapshotInfo (..),
    newInstanceSnapshotInfo,

    -- * InstanceState
    InstanceState (..),
    newInstanceState,

    -- * KeyPair
    KeyPair (..),
    newKeyPair,

    -- * LightsailDistribution
    LightsailDistribution (..),
    newLightsailDistribution,

    -- * LoadBalancer
    LoadBalancer (..),
    newLoadBalancer,

    -- * LoadBalancerTlsCertificate
    LoadBalancerTlsCertificate (..),
    newLoadBalancerTlsCertificate,

    -- * LoadBalancerTlsCertificateDomainValidationOption
    LoadBalancerTlsCertificateDomainValidationOption (..),
    newLoadBalancerTlsCertificateDomainValidationOption,

    -- * LoadBalancerTlsCertificateDomainValidationRecord
    LoadBalancerTlsCertificateDomainValidationRecord (..),
    newLoadBalancerTlsCertificateDomainValidationRecord,

    -- * LoadBalancerTlsCertificateRenewalSummary
    LoadBalancerTlsCertificateRenewalSummary (..),
    newLoadBalancerTlsCertificateRenewalSummary,

    -- * LoadBalancerTlsCertificateSummary
    LoadBalancerTlsCertificateSummary (..),
    newLoadBalancerTlsCertificateSummary,

    -- * LogEvent
    LogEvent (..),
    newLogEvent,

    -- * MetricDatapoint
    MetricDatapoint (..),
    newMetricDatapoint,

    -- * MonitoredResourceInfo
    MonitoredResourceInfo (..),
    newMonitoredResourceInfo,

    -- * MonthlyTransfer
    MonthlyTransfer (..),
    newMonthlyTransfer,

    -- * Operation
    Operation (..),
    newOperation,

    -- * Origin
    Origin (..),
    newOrigin,

    -- * PasswordData
    PasswordData (..),
    newPasswordData,

    -- * PendingMaintenanceAction
    PendingMaintenanceAction (..),
    newPendingMaintenanceAction,

    -- * PendingModifiedRelationalDatabaseValues
    PendingModifiedRelationalDatabaseValues (..),
    newPendingModifiedRelationalDatabaseValues,

    -- * PortInfo
    PortInfo (..),
    newPortInfo,

    -- * QueryStringObject
    QueryStringObject (..),
    newQueryStringObject,

    -- * RegionInfo
    RegionInfo (..),
    newRegionInfo,

    -- * RelationalDatabase
    RelationalDatabase (..),
    newRelationalDatabase,

    -- * RelationalDatabaseBlueprint
    RelationalDatabaseBlueprint (..),
    newRelationalDatabaseBlueprint,

    -- * RelationalDatabaseBundle
    RelationalDatabaseBundle (..),
    newRelationalDatabaseBundle,

    -- * RelationalDatabaseEndpoint
    RelationalDatabaseEndpoint (..),
    newRelationalDatabaseEndpoint,

    -- * RelationalDatabaseEvent
    RelationalDatabaseEvent (..),
    newRelationalDatabaseEvent,

    -- * RelationalDatabaseHardware
    RelationalDatabaseHardware (..),
    newRelationalDatabaseHardware,

    -- * RelationalDatabaseParameter
    RelationalDatabaseParameter (..),
    newRelationalDatabaseParameter,

    -- * RelationalDatabaseSnapshot
    RelationalDatabaseSnapshot (..),
    newRelationalDatabaseSnapshot,

    -- * RenewalSummary
    RenewalSummary (..),
    newRenewalSummary,

    -- * ResourceLocation
    ResourceLocation (..),
    newResourceLocation,

    -- * ResourceRecord
    ResourceRecord (..),
    newResourceRecord,

    -- * StaticIp
    StaticIp (..),
    newStaticIp,

    -- * Tag
    Tag (..),
    newTag,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.Lightsail.Types.AccessDirection
import Network.AWS.Lightsail.Types.AddOn
import Network.AWS.Lightsail.Types.AddOnRequest
import Network.AWS.Lightsail.Types.AddOnType
import Network.AWS.Lightsail.Types.Alarm
import Network.AWS.Lightsail.Types.AlarmState
import Network.AWS.Lightsail.Types.AttachedDisk
import Network.AWS.Lightsail.Types.AutoSnapshotAddOnRequest
import Network.AWS.Lightsail.Types.AutoSnapshotDetails
import Network.AWS.Lightsail.Types.AutoSnapshotStatus
import Network.AWS.Lightsail.Types.AvailabilityZone
import Network.AWS.Lightsail.Types.BehaviorEnum
import Network.AWS.Lightsail.Types.Blueprint
import Network.AWS.Lightsail.Types.BlueprintType
import Network.AWS.Lightsail.Types.Bundle
import Network.AWS.Lightsail.Types.CacheBehavior
import Network.AWS.Lightsail.Types.CacheBehaviorPerPath
import Network.AWS.Lightsail.Types.CacheSettings
import Network.AWS.Lightsail.Types.Certificate
import Network.AWS.Lightsail.Types.CertificateStatus
import Network.AWS.Lightsail.Types.CertificateSummary
import Network.AWS.Lightsail.Types.CloudFormationStackRecord
import Network.AWS.Lightsail.Types.CloudFormationStackRecordSourceInfo
import Network.AWS.Lightsail.Types.CloudFormationStackRecordSourceType
import Network.AWS.Lightsail.Types.ComparisonOperator
import Network.AWS.Lightsail.Types.ContactMethod
import Network.AWS.Lightsail.Types.ContactMethodStatus
import Network.AWS.Lightsail.Types.ContactMethodVerificationProtocol
import Network.AWS.Lightsail.Types.ContactProtocol
import Network.AWS.Lightsail.Types.Container
import Network.AWS.Lightsail.Types.ContainerImage
import Network.AWS.Lightsail.Types.ContainerService
import Network.AWS.Lightsail.Types.ContainerServiceDeployment
import Network.AWS.Lightsail.Types.ContainerServiceDeploymentRequest
import Network.AWS.Lightsail.Types.ContainerServiceDeploymentState
import Network.AWS.Lightsail.Types.ContainerServiceEndpoint
import Network.AWS.Lightsail.Types.ContainerServiceHealthCheckConfig
import Network.AWS.Lightsail.Types.ContainerServiceLogEvent
import Network.AWS.Lightsail.Types.ContainerServiceMetricName
import Network.AWS.Lightsail.Types.ContainerServicePower
import Network.AWS.Lightsail.Types.ContainerServicePowerName
import Network.AWS.Lightsail.Types.ContainerServiceProtocol
import Network.AWS.Lightsail.Types.ContainerServiceRegistryLogin
import Network.AWS.Lightsail.Types.ContainerServiceState
import Network.AWS.Lightsail.Types.CookieObject
import Network.AWS.Lightsail.Types.DestinationInfo
import Network.AWS.Lightsail.Types.Disk
import Network.AWS.Lightsail.Types.DiskInfo
import Network.AWS.Lightsail.Types.DiskMap
import Network.AWS.Lightsail.Types.DiskSnapshot
import Network.AWS.Lightsail.Types.DiskSnapshotInfo
import Network.AWS.Lightsail.Types.DiskSnapshotState
import Network.AWS.Lightsail.Types.DiskState
import Network.AWS.Lightsail.Types.DistributionBundle
import Network.AWS.Lightsail.Types.DistributionMetricName
import Network.AWS.Lightsail.Types.Domain
import Network.AWS.Lightsail.Types.DomainEntry
import Network.AWS.Lightsail.Types.DomainValidationRecord
import Network.AWS.Lightsail.Types.EndpointRequest
import Network.AWS.Lightsail.Types.ExportSnapshotRecord
import Network.AWS.Lightsail.Types.ExportSnapshotRecordSourceInfo
import Network.AWS.Lightsail.Types.ExportSnapshotRecordSourceType
import Network.AWS.Lightsail.Types.ForwardValues
import Network.AWS.Lightsail.Types.HeaderEnum
import Network.AWS.Lightsail.Types.HeaderObject
import Network.AWS.Lightsail.Types.HostKeyAttributes
import Network.AWS.Lightsail.Types.InputOrigin
import Network.AWS.Lightsail.Types.Instance
import Network.AWS.Lightsail.Types.InstanceAccessDetails
import Network.AWS.Lightsail.Types.InstanceAccessProtocol
import Network.AWS.Lightsail.Types.InstanceEntry
import Network.AWS.Lightsail.Types.InstanceHardware
import Network.AWS.Lightsail.Types.InstanceHealthReason
import Network.AWS.Lightsail.Types.InstanceHealthState
import Network.AWS.Lightsail.Types.InstanceHealthSummary
import Network.AWS.Lightsail.Types.InstanceMetricName
import Network.AWS.Lightsail.Types.InstanceNetworking
import Network.AWS.Lightsail.Types.InstancePlatform
import Network.AWS.Lightsail.Types.InstancePortInfo
import Network.AWS.Lightsail.Types.InstancePortState
import Network.AWS.Lightsail.Types.InstanceSnapshot
import Network.AWS.Lightsail.Types.InstanceSnapshotInfo
import Network.AWS.Lightsail.Types.InstanceSnapshotState
import Network.AWS.Lightsail.Types.InstanceState
import Network.AWS.Lightsail.Types.IpAddressType
import Network.AWS.Lightsail.Types.KeyPair
import Network.AWS.Lightsail.Types.LightsailDistribution
import Network.AWS.Lightsail.Types.LoadBalancer
import Network.AWS.Lightsail.Types.LoadBalancerAttributeName
import Network.AWS.Lightsail.Types.LoadBalancerMetricName
import Network.AWS.Lightsail.Types.LoadBalancerProtocol
import Network.AWS.Lightsail.Types.LoadBalancerState
import Network.AWS.Lightsail.Types.LoadBalancerTlsCertificate
import Network.AWS.Lightsail.Types.LoadBalancerTlsCertificateDomainStatus
import Network.AWS.Lightsail.Types.LoadBalancerTlsCertificateDomainValidationOption
import Network.AWS.Lightsail.Types.LoadBalancerTlsCertificateDomainValidationRecord
import Network.AWS.Lightsail.Types.LoadBalancerTlsCertificateFailureReason
import Network.AWS.Lightsail.Types.LoadBalancerTlsCertificateRenewalStatus
import Network.AWS.Lightsail.Types.LoadBalancerTlsCertificateRenewalSummary
import Network.AWS.Lightsail.Types.LoadBalancerTlsCertificateRevocationReason
import Network.AWS.Lightsail.Types.LoadBalancerTlsCertificateStatus
import Network.AWS.Lightsail.Types.LoadBalancerTlsCertificateSummary
import Network.AWS.Lightsail.Types.LogEvent
import Network.AWS.Lightsail.Types.MetricDatapoint
import Network.AWS.Lightsail.Types.MetricName
import Network.AWS.Lightsail.Types.MetricStatistic
import Network.AWS.Lightsail.Types.MetricUnit
import Network.AWS.Lightsail.Types.MonitoredResourceInfo
import Network.AWS.Lightsail.Types.MonthlyTransfer
import Network.AWS.Lightsail.Types.NetworkProtocol
import Network.AWS.Lightsail.Types.Operation
import Network.AWS.Lightsail.Types.OperationStatus
import Network.AWS.Lightsail.Types.OperationType
import Network.AWS.Lightsail.Types.Origin
import Network.AWS.Lightsail.Types.OriginProtocolPolicyEnum
import Network.AWS.Lightsail.Types.PasswordData
import Network.AWS.Lightsail.Types.PendingMaintenanceAction
import Network.AWS.Lightsail.Types.PendingModifiedRelationalDatabaseValues
import Network.AWS.Lightsail.Types.PortAccessType
import Network.AWS.Lightsail.Types.PortInfo
import Network.AWS.Lightsail.Types.PortInfoSourceType
import Network.AWS.Lightsail.Types.PortState
import Network.AWS.Lightsail.Types.QueryStringObject
import Network.AWS.Lightsail.Types.RecordState
import Network.AWS.Lightsail.Types.RegionInfo
import Network.AWS.Lightsail.Types.RegionName
import Network.AWS.Lightsail.Types.RelationalDatabase
import Network.AWS.Lightsail.Types.RelationalDatabaseBlueprint
import Network.AWS.Lightsail.Types.RelationalDatabaseBundle
import Network.AWS.Lightsail.Types.RelationalDatabaseEndpoint
import Network.AWS.Lightsail.Types.RelationalDatabaseEngine
import Network.AWS.Lightsail.Types.RelationalDatabaseEvent
import Network.AWS.Lightsail.Types.RelationalDatabaseHardware
import Network.AWS.Lightsail.Types.RelationalDatabaseMetricName
import Network.AWS.Lightsail.Types.RelationalDatabaseParameter
import Network.AWS.Lightsail.Types.RelationalDatabasePasswordVersion
import Network.AWS.Lightsail.Types.RelationalDatabaseSnapshot
import Network.AWS.Lightsail.Types.RenewalStatus
import Network.AWS.Lightsail.Types.RenewalSummary
import Network.AWS.Lightsail.Types.ResourceLocation
import Network.AWS.Lightsail.Types.ResourceRecord
import Network.AWS.Lightsail.Types.ResourceType
import Network.AWS.Lightsail.Types.StaticIp
import Network.AWS.Lightsail.Types.Tag
import Network.AWS.Lightsail.Types.TreatMissingData
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2016-11-28@ of the Amazon Lightsail SDK configuration.
defaultService :: Prelude.Service
defaultService =
  Prelude.Service
    { Prelude._svcAbbrev = "Lightsail",
      Prelude._svcSigner = Sign.v4,
      Prelude._svcPrefix = "lightsail",
      Prelude._svcVersion = "2016-11-28",
      Prelude._svcEndpoint =
        Prelude.defaultEndpoint defaultService,
      Prelude._svcTimeout = Prelude.Just 70,
      Prelude._svcCheck = Prelude.statusSuccess,
      Prelude._svcError =
        Prelude.parseJSONError "Lightsail",
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

-- | Lightsail throws this exception when it cannot find a resource.
_NotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NotFoundException =
  Prelude._MatchServiceError
    defaultService
    "NotFoundException"

-- | Lightsail throws this exception when user input does not conform to the
-- validation rules of an input field.
--
-- Domain and distribution APIs are only available in the N. Virginia
-- (@us-east-1@) AWS Region. Please set your AWS Region configuration to
-- @us-east-1@ to create, view, or edit these resources.
_InvalidInputException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidInputException =
  Prelude._MatchServiceError
    defaultService
    "InvalidInputException"

-- | Lightsail throws this exception when the user has not been
-- authenticated.
_UnauthenticatedException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_UnauthenticatedException =
  Prelude._MatchServiceError
    defaultService
    "UnauthenticatedException"

-- | Lightsail throws this exception when an operation fails to execute.
_OperationFailureException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_OperationFailureException =
  Prelude._MatchServiceError
    defaultService
    "OperationFailureException"

-- | Lightsail throws this exception when the user cannot be authenticated or
-- uses invalid credentials to access a resource.
_AccessDeniedException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_AccessDeniedException =
  Prelude._MatchServiceError
    defaultService
    "AccessDeniedException"

-- | Lightsail throws this exception when an account is still in the setup in
-- progress state.
_AccountSetupInProgressException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_AccountSetupInProgressException =
  Prelude._MatchServiceError
    defaultService
    "AccountSetupInProgressException"

-- | A general service exception.
_ServiceException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ServiceException =
  Prelude._MatchServiceError
    defaultService
    "ServiceException"
