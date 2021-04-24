{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SMS.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types
  ( -- * Service Configuration
    sms,

    -- * Errors
    _InternalError,
    _NoConnectorsAvailableException,
    _ReplicationRunLimitExceededException,
    _UnauthorizedOperationException,
    _MissingRequiredParameterException,
    _TemporarilyUnavailableException,
    _OperationNotPermittedException,
    _ReplicationJobNotFoundException,
    _InvalidParameterException,
    _DryRunOperationException,
    _ServerCannotBeReplicatedException,
    _ReplicationJobAlreadyExistsException,

    -- * AppLaunchConfigurationStatus
    AppLaunchConfigurationStatus (..),

    -- * AppLaunchStatus
    AppLaunchStatus (..),

    -- * AppReplicationConfigurationStatus
    AppReplicationConfigurationStatus (..),

    -- * AppReplicationStatus
    AppReplicationStatus (..),

    -- * AppStatus
    AppStatus (..),

    -- * AppValidationStrategy
    AppValidationStrategy (..),

    -- * ConnectorCapability
    ConnectorCapability (..),

    -- * ConnectorStatus
    ConnectorStatus (..),

    -- * LicenseType
    LicenseType (..),

    -- * OutputFormat
    OutputFormat (..),

    -- * ReplicationJobState
    ReplicationJobState (..),

    -- * ReplicationRunState
    ReplicationRunState (..),

    -- * ReplicationRunType
    ReplicationRunType (..),

    -- * ScriptType
    ScriptType (..),

    -- * ServerCatalogStatus
    ServerCatalogStatus (..),

    -- * ServerType
    ServerType (..),

    -- * ServerValidationStrategy
    ServerValidationStrategy (..),

    -- * VMManagerType
    VMManagerType (..),

    -- * ValidationStatus
    ValidationStatus (..),

    -- * AppSummary
    AppSummary (..),
    appSummary,
    asStatusMessage,
    asAppId,
    asStatus,
    asCreationTime,
    asTotalServers,
    asLaunchStatus,
    asReplicationStatusMessage,
    asRoleName,
    asReplicationStatus,
    asImportedAppId,
    asReplicationConfigurationStatus,
    asLatestReplicationTime,
    asLaunchDetails,
    asName,
    asLaunchConfigurationStatus,
    asDescription,
    asLastModified,
    asTotalServerGroups,
    asLaunchStatusMessage,

    -- * AppValidationConfiguration
    AppValidationConfiguration (..),
    appValidationConfiguration,
    avcSsmValidationParameters,
    avcAppValidationStrategy,
    avcValidationId,
    avcName,

    -- * AppValidationOutput
    AppValidationOutput (..),
    appValidationOutput,
    avoSsmOutput,

    -- * Connector
    Connector (..),
    connector,
    cStatus,
    cMacAddress,
    cAssociatedOn,
    cConnectorId,
    cVmManagerId,
    cVersion,
    cVmManagerName,
    cIpAddress,
    cVmManagerType,
    cCapabilityList,

    -- * LaunchDetails
    LaunchDetails (..),
    launchDetails,
    ldStackName,
    ldStackId,
    ldLatestLaunchTime,

    -- * NotificationContext
    NotificationContext (..),
    notificationContext,
    ncStatusMessage,
    ncStatus,
    ncValidationId,

    -- * ReplicationJob
    ReplicationJob (..),
    replicationJob,
    rjNextReplicationRunStartTime,
    rjStatusMessage,
    rjNumberOfRecentAMIsToKeep,
    rjEncrypted,
    rjLatestAMIId,
    rjRoleName,
    rjServerId,
    rjState,
    rjReplicationRunList,
    rjKmsKeyId,
    rjFrequency,
    rjRunOnce,
    rjDescription,
    rjReplicationJobId,
    rjSeedReplicationTime,
    rjVmServer,
    rjLicenseType,
    rjServerType,

    -- * ReplicationRun
    ReplicationRun (..),
    replicationRun,
    rrStatusMessage,
    rrEncrypted,
    rrReplicationRunId,
    rrAmiId,
    rrCompletedTime,
    rrState,
    rrKmsKeyId,
    rrScheduledStartTime,
    rrStageDetails,
    rrDescription,
    rrType,

    -- * ReplicationRunStageDetails
    ReplicationRunStageDetails (..),
    replicationRunStageDetails,
    rrsdStage,
    rrsdStageProgress,

    -- * S3Location
    S3Location (..),
    s3Location,
    slKey,
    slBucket,

    -- * SSMOutput
    SSMOutput (..),
    sSMOutput,
    ssmoS3Location,

    -- * SSMValidationParameters
    SSMValidationParameters (..),
    sSMValidationParameters,
    ssmvpInstanceId,
    ssmvpOutputS3BucketName,
    ssmvpSource,
    ssmvpScriptType,
    ssmvpCommand,
    ssmvpExecutionTimeoutSeconds,

    -- * Server
    Server (..),
    server,
    sServerId,
    sReplicationJobId,
    sReplicationJobTerminated,
    sVmServer,
    sServerType,

    -- * ServerGroup
    ServerGroup (..),
    serverGroup,
    sgServerGroupId,
    sgName,
    sgServerList,

    -- * ServerGroupLaunchConfiguration
    ServerGroupLaunchConfiguration (..),
    serverGroupLaunchConfiguration,
    sglcServerGroupId,
    sglcLaunchOrder,
    sglcServerLaunchConfigurations,

    -- * ServerGroupReplicationConfiguration
    ServerGroupReplicationConfiguration (..),
    serverGroupReplicationConfiguration,
    sgrcServerGroupId,
    sgrcServerReplicationConfigurations,

    -- * ServerGroupValidationConfiguration
    ServerGroupValidationConfiguration (..),
    serverGroupValidationConfiguration,
    sgvcServerGroupId,
    sgvcServerValidationConfigurations,

    -- * ServerLaunchConfiguration
    ServerLaunchConfiguration (..),
    serverLaunchConfiguration,
    slcConfigureScript,
    slcEc2KeyName,
    slcInstanceType,
    slcUserData,
    slcLogicalId,
    slcSubnet,
    slcIamInstanceProfileName,
    slcServer,
    slcAssociatePublicIPAddress,
    slcConfigureScriptType,
    slcSecurityGroup,
    slcVpc,

    -- * ServerReplicationConfiguration
    ServerReplicationConfiguration (..),
    serverReplicationConfiguration,
    srcServer,
    srcServerReplicationParameters,

    -- * ServerReplicationParameters
    ServerReplicationParameters (..),
    serverReplicationParameters,
    srpNumberOfRecentAMIsToKeep,
    srpEncrypted,
    srpSeedTime,
    srpKmsKeyId,
    srpFrequency,
    srpRunOnce,
    srpLicenseType,

    -- * ServerValidationConfiguration
    ServerValidationConfiguration (..),
    serverValidationConfiguration,
    svcValidationId,
    svcUserDataValidationParameters,
    svcServer,
    svcName,
    svcServerValidationStrategy,

    -- * ServerValidationOutput
    ServerValidationOutput (..),
    serverValidationOutput,
    svoServer,

    -- * Source
    Source (..),
    source,
    sS3Location,

    -- * Tag
    Tag (..),
    tag,
    tagKey,
    tagValue,

    -- * UserData
    UserData (..),
    userData,
    udS3Location,

    -- * UserDataValidationParameters
    UserDataValidationParameters (..),
    userDataValidationParameters,
    udvpSource,
    udvpScriptType,

    -- * VMServer
    VMServer (..),
    vMServer,
    vmsVmPath,
    vmsVmManagerName,
    vmsVmName,
    vmsVmServerAddress,
    vmsVmManagerType,

    -- * VMServerAddress
    VMServerAddress (..),
    vMServerAddress,
    vmsaVmManagerId,
    vmsaVmId,

    -- * ValidationOutput
    ValidationOutput (..),
    validationOutput,
    voStatusMessage,
    voStatus,
    voValidationId,
    voAppValidationOutput,
    voName,
    voServerValidationOutput,
    voLatestValidationTime,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SMS.Types.AppLaunchConfigurationStatus
import Network.AWS.SMS.Types.AppLaunchStatus
import Network.AWS.SMS.Types.AppReplicationConfigurationStatus
import Network.AWS.SMS.Types.AppReplicationStatus
import Network.AWS.SMS.Types.AppStatus
import Network.AWS.SMS.Types.AppSummary
import Network.AWS.SMS.Types.AppValidationConfiguration
import Network.AWS.SMS.Types.AppValidationOutput
import Network.AWS.SMS.Types.AppValidationStrategy
import Network.AWS.SMS.Types.Connector
import Network.AWS.SMS.Types.ConnectorCapability
import Network.AWS.SMS.Types.ConnectorStatus
import Network.AWS.SMS.Types.LaunchDetails
import Network.AWS.SMS.Types.LicenseType
import Network.AWS.SMS.Types.NotificationContext
import Network.AWS.SMS.Types.OutputFormat
import Network.AWS.SMS.Types.ReplicationJob
import Network.AWS.SMS.Types.ReplicationJobState
import Network.AWS.SMS.Types.ReplicationRun
import Network.AWS.SMS.Types.ReplicationRunStageDetails
import Network.AWS.SMS.Types.ReplicationRunState
import Network.AWS.SMS.Types.ReplicationRunType
import Network.AWS.SMS.Types.S3Location
import Network.AWS.SMS.Types.SSMOutput
import Network.AWS.SMS.Types.SSMValidationParameters
import Network.AWS.SMS.Types.ScriptType
import Network.AWS.SMS.Types.Server
import Network.AWS.SMS.Types.ServerCatalogStatus
import Network.AWS.SMS.Types.ServerGroup
import Network.AWS.SMS.Types.ServerGroupLaunchConfiguration
import Network.AWS.SMS.Types.ServerGroupReplicationConfiguration
import Network.AWS.SMS.Types.ServerGroupValidationConfiguration
import Network.AWS.SMS.Types.ServerLaunchConfiguration
import Network.AWS.SMS.Types.ServerReplicationConfiguration
import Network.AWS.SMS.Types.ServerReplicationParameters
import Network.AWS.SMS.Types.ServerType
import Network.AWS.SMS.Types.ServerValidationConfiguration
import Network.AWS.SMS.Types.ServerValidationOutput
import Network.AWS.SMS.Types.ServerValidationStrategy
import Network.AWS.SMS.Types.Source
import Network.AWS.SMS.Types.Tag
import Network.AWS.SMS.Types.UserData
import Network.AWS.SMS.Types.UserDataValidationParameters
import Network.AWS.SMS.Types.VMManagerType
import Network.AWS.SMS.Types.VMServer
import Network.AWS.SMS.Types.VMServerAddress
import Network.AWS.SMS.Types.ValidationOutput
import Network.AWS.SMS.Types.ValidationStatus
import Network.AWS.Sign.V4

-- | API version @2016-10-24@ of the Amazon Server Migration Service SDK configuration.
sms :: Service
sms =
  Service
    { _svcAbbrev = "SMS",
      _svcSigner = v4,
      _svcPrefix = "sms",
      _svcVersion = "2016-10-24",
      _svcEndpoint = defaultEndpoint sms,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "SMS",
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

-- | An internal error occurred.
_InternalError :: AsError a => Getting (First ServiceError) a ServiceError
_InternalError =
  _MatchServiceError sms "InternalError"

-- | There are no connectors available.
_NoConnectorsAvailableException :: AsError a => Getting (First ServiceError) a ServiceError
_NoConnectorsAvailableException =
  _MatchServiceError
    sms
    "NoConnectorsAvailableException"

-- | You have exceeded the number of on-demand replication runs you can request in a 24-hour period.
_ReplicationRunLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_ReplicationRunLimitExceededException =
  _MatchServiceError
    sms
    "ReplicationRunLimitExceededException"

-- | You lack permissions needed to perform this operation. Check your IAM policies, and ensure that you are using the correct access keys.
_UnauthorizedOperationException :: AsError a => Getting (First ServiceError) a ServiceError
_UnauthorizedOperationException =
  _MatchServiceError
    sms
    "UnauthorizedOperationException"

-- | A required parameter is missing.
_MissingRequiredParameterException :: AsError a => Getting (First ServiceError) a ServiceError
_MissingRequiredParameterException =
  _MatchServiceError
    sms
    "MissingRequiredParameterException"

-- | The service is temporarily unavailable.
_TemporarilyUnavailableException :: AsError a => Getting (First ServiceError) a ServiceError
_TemporarilyUnavailableException =
  _MatchServiceError
    sms
    "TemporarilyUnavailableException"

-- | This operation is not allowed.
_OperationNotPermittedException :: AsError a => Getting (First ServiceError) a ServiceError
_OperationNotPermittedException =
  _MatchServiceError
    sms
    "OperationNotPermittedException"

-- | The specified replication job does not exist.
_ReplicationJobNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ReplicationJobNotFoundException =
  _MatchServiceError
    sms
    "ReplicationJobNotFoundException"

-- | A specified parameter is not valid.
_InvalidParameterException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidParameterException =
  _MatchServiceError sms "InvalidParameterException"

-- | The user has the required permissions, so the request would have succeeded, but a dry run was performed.
_DryRunOperationException :: AsError a => Getting (First ServiceError) a ServiceError
_DryRunOperationException =
  _MatchServiceError sms "DryRunOperationException"

-- | The specified server cannot be replicated.
_ServerCannotBeReplicatedException :: AsError a => Getting (First ServiceError) a ServiceError
_ServerCannotBeReplicatedException =
  _MatchServiceError
    sms
    "ServerCannotBeReplicatedException"

-- | The specified replication job already exists.
_ReplicationJobAlreadyExistsException :: AsError a => Getting (First ServiceError) a ServiceError
_ReplicationJobAlreadyExistsException =
  _MatchServiceError
    sms
    "ReplicationJobAlreadyExistsException"
