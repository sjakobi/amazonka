{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SMS
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __AWS Server Migration Service__
--
-- AWS Server Migration Service (AWS SMS) makes it easier and faster for you to migrate your on-premises workloads to AWS. To learn more about AWS SMS, see the following resources:
--
--     * <http://aws.amazon.com/server-migration-service/ AWS Server Migration Service product page>
--
--     * <https://docs.aws.amazon.com/server-migration-service/latest/userguide/ AWS Server Migration Service User Guide>
module Network.AWS.SMS
  ( -- * Service Configuration
    sms,

    -- * Errors
    -- $errors

    -- ** InternalError
    _InternalError,

    -- ** NoConnectorsAvailableException
    _NoConnectorsAvailableException,

    -- ** ReplicationRunLimitExceededException
    _ReplicationRunLimitExceededException,

    -- ** UnauthorizedOperationException
    _UnauthorizedOperationException,

    -- ** MissingRequiredParameterException
    _MissingRequiredParameterException,

    -- ** TemporarilyUnavailableException
    _TemporarilyUnavailableException,

    -- ** OperationNotPermittedException
    _OperationNotPermittedException,

    -- ** ReplicationJobNotFoundException
    _ReplicationJobNotFoundException,

    -- ** InvalidParameterException
    _InvalidParameterException,

    -- ** DryRunOperationException
    _DryRunOperationException,

    -- ** ServerCannotBeReplicatedException
    _ServerCannotBeReplicatedException,

    -- ** ReplicationJobAlreadyExistsException
    _ReplicationJobAlreadyExistsException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** GenerateChangeSet
    module Network.AWS.SMS.GenerateChangeSet,

    -- ** ImportAppCatalog
    module Network.AWS.SMS.ImportAppCatalog,

    -- ** LaunchApp
    module Network.AWS.SMS.LaunchApp,

    -- ** GetAppValidationConfiguration
    module Network.AWS.SMS.GetAppValidationConfiguration,

    -- ** PutAppReplicationConfiguration
    module Network.AWS.SMS.PutAppReplicationConfiguration,

    -- ** GetConnectors (Paginated)
    module Network.AWS.SMS.GetConnectors,

    -- ** GenerateTemplate
    module Network.AWS.SMS.GenerateTemplate,

    -- ** PutAppValidationConfiguration
    module Network.AWS.SMS.PutAppValidationConfiguration,

    -- ** StartOnDemandReplicationRun
    module Network.AWS.SMS.StartOnDemandReplicationRun,

    -- ** TerminateApp
    module Network.AWS.SMS.TerminateApp,

    -- ** ListApps (Paginated)
    module Network.AWS.SMS.ListApps,

    -- ** GetReplicationRuns (Paginated)
    module Network.AWS.SMS.GetReplicationRuns,

    -- ** GetServers (Paginated)
    module Network.AWS.SMS.GetServers,

    -- ** StartAppReplication
    module Network.AWS.SMS.StartAppReplication,

    -- ** PutAppLaunchConfiguration
    module Network.AWS.SMS.PutAppLaunchConfiguration,

    -- ** StopAppReplication
    module Network.AWS.SMS.StopAppReplication,

    -- ** CreateReplicationJob
    module Network.AWS.SMS.CreateReplicationJob,

    -- ** DeleteServerCatalog
    module Network.AWS.SMS.DeleteServerCatalog,

    -- ** GetApp
    module Network.AWS.SMS.GetApp,

    -- ** DeleteAppReplicationConfiguration
    module Network.AWS.SMS.DeleteAppReplicationConfiguration,

    -- ** DisassociateConnector
    module Network.AWS.SMS.DisassociateConnector,

    -- ** NotifyAppValidationOutput
    module Network.AWS.SMS.NotifyAppValidationOutput,

    -- ** GetReplicationJobs (Paginated)
    module Network.AWS.SMS.GetReplicationJobs,

    -- ** StartOnDemandAppReplication
    module Network.AWS.SMS.StartOnDemandAppReplication,

    -- ** GetAppValidationOutput
    module Network.AWS.SMS.GetAppValidationOutput,

    -- ** GetAppReplicationConfiguration
    module Network.AWS.SMS.GetAppReplicationConfiguration,

    -- ** DeleteAppValidationConfiguration
    module Network.AWS.SMS.DeleteAppValidationConfiguration,

    -- ** ImportServerCatalog
    module Network.AWS.SMS.ImportServerCatalog,

    -- ** DeleteApp
    module Network.AWS.SMS.DeleteApp,

    -- ** UpdateApp
    module Network.AWS.SMS.UpdateApp,

    -- ** DeleteAppLaunchConfiguration
    module Network.AWS.SMS.DeleteAppLaunchConfiguration,

    -- ** CreateApp
    module Network.AWS.SMS.CreateApp,

    -- ** GetAppLaunchConfiguration
    module Network.AWS.SMS.GetAppLaunchConfiguration,

    -- ** UpdateReplicationJob
    module Network.AWS.SMS.UpdateReplicationJob,

    -- ** DeleteReplicationJob
    module Network.AWS.SMS.DeleteReplicationJob,

    -- * Types

    -- ** AppLaunchConfigurationStatus
    AppLaunchConfigurationStatus (..),

    -- ** AppLaunchStatus
    AppLaunchStatus (..),

    -- ** AppReplicationConfigurationStatus
    AppReplicationConfigurationStatus (..),

    -- ** AppReplicationStatus
    AppReplicationStatus (..),

    -- ** AppStatus
    AppStatus (..),

    -- ** AppValidationStrategy
    AppValidationStrategy (..),

    -- ** ConnectorCapability
    ConnectorCapability (..),

    -- ** ConnectorStatus
    ConnectorStatus (..),

    -- ** LicenseType
    LicenseType (..),

    -- ** OutputFormat
    OutputFormat (..),

    -- ** ReplicationJobState
    ReplicationJobState (..),

    -- ** ReplicationRunState
    ReplicationRunState (..),

    -- ** ReplicationRunType
    ReplicationRunType (..),

    -- ** ScriptType
    ScriptType (..),

    -- ** ServerCatalogStatus
    ServerCatalogStatus (..),

    -- ** ServerType
    ServerType (..),

    -- ** ServerValidationStrategy
    ServerValidationStrategy (..),

    -- ** VMManagerType
    VMManagerType (..),

    -- ** ValidationStatus
    ValidationStatus (..),

    -- ** AppSummary
    AppSummary,
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

    -- ** AppValidationConfiguration
    AppValidationConfiguration,
    appValidationConfiguration,
    avcSsmValidationParameters,
    avcAppValidationStrategy,
    avcValidationId,
    avcName,

    -- ** AppValidationOutput
    AppValidationOutput,
    appValidationOutput,
    avoSsmOutput,

    -- ** Connector
    Connector,
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

    -- ** LaunchDetails
    LaunchDetails,
    launchDetails,
    ldStackName,
    ldStackId,
    ldLatestLaunchTime,

    -- ** NotificationContext
    NotificationContext,
    notificationContext,
    ncStatusMessage,
    ncStatus,
    ncValidationId,

    -- ** ReplicationJob
    ReplicationJob,
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

    -- ** ReplicationRun
    ReplicationRun,
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

    -- ** ReplicationRunStageDetails
    ReplicationRunStageDetails,
    replicationRunStageDetails,
    rrsdStage,
    rrsdStageProgress,

    -- ** S3Location
    S3Location,
    s3Location,
    slKey,
    slBucket,

    -- ** SSMOutput
    SSMOutput,
    sSMOutput,
    ssmoS3Location,

    -- ** SSMValidationParameters
    SSMValidationParameters,
    sSMValidationParameters,
    ssmvpInstanceId,
    ssmvpOutputS3BucketName,
    ssmvpSource,
    ssmvpScriptType,
    ssmvpCommand,
    ssmvpExecutionTimeoutSeconds,

    -- ** Server
    Server,
    server,
    sServerId,
    sReplicationJobId,
    sReplicationJobTerminated,
    sVmServer,
    sServerType,

    -- ** ServerGroup
    ServerGroup,
    serverGroup,
    sgServerGroupId,
    sgName,
    sgServerList,

    -- ** ServerGroupLaunchConfiguration
    ServerGroupLaunchConfiguration,
    serverGroupLaunchConfiguration,
    sglcServerGroupId,
    sglcLaunchOrder,
    sglcServerLaunchConfigurations,

    -- ** ServerGroupReplicationConfiguration
    ServerGroupReplicationConfiguration,
    serverGroupReplicationConfiguration,
    sgrcServerGroupId,
    sgrcServerReplicationConfigurations,

    -- ** ServerGroupValidationConfiguration
    ServerGroupValidationConfiguration,
    serverGroupValidationConfiguration,
    sgvcServerGroupId,
    sgvcServerValidationConfigurations,

    -- ** ServerLaunchConfiguration
    ServerLaunchConfiguration,
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

    -- ** ServerReplicationConfiguration
    ServerReplicationConfiguration,
    serverReplicationConfiguration,
    srcServer,
    srcServerReplicationParameters,

    -- ** ServerReplicationParameters
    ServerReplicationParameters,
    serverReplicationParameters,
    srpNumberOfRecentAMIsToKeep,
    srpEncrypted,
    srpSeedTime,
    srpKmsKeyId,
    srpFrequency,
    srpRunOnce,
    srpLicenseType,

    -- ** ServerValidationConfiguration
    ServerValidationConfiguration,
    serverValidationConfiguration,
    svcValidationId,
    svcUserDataValidationParameters,
    svcServer,
    svcName,
    svcServerValidationStrategy,

    -- ** ServerValidationOutput
    ServerValidationOutput,
    serverValidationOutput,
    svoServer,

    -- ** Source
    Source,
    source,
    sS3Location,

    -- ** Tag
    Tag,
    tag,
    tagKey,
    tagValue,

    -- ** UserData
    UserData,
    userData,
    udS3Location,

    -- ** UserDataValidationParameters
    UserDataValidationParameters,
    userDataValidationParameters,
    udvpSource,
    udvpScriptType,

    -- ** VMServer
    VMServer,
    vMServer,
    vmsVmPath,
    vmsVmManagerName,
    vmsVmName,
    vmsVmServerAddress,
    vmsVmManagerType,

    -- ** VMServerAddress
    VMServerAddress,
    vMServerAddress,
    vmsaVmManagerId,
    vmsaVmId,

    -- ** ValidationOutput
    ValidationOutput,
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

import Network.AWS.SMS.CreateApp
import Network.AWS.SMS.CreateReplicationJob
import Network.AWS.SMS.DeleteApp
import Network.AWS.SMS.DeleteAppLaunchConfiguration
import Network.AWS.SMS.DeleteAppReplicationConfiguration
import Network.AWS.SMS.DeleteAppValidationConfiguration
import Network.AWS.SMS.DeleteReplicationJob
import Network.AWS.SMS.DeleteServerCatalog
import Network.AWS.SMS.DisassociateConnector
import Network.AWS.SMS.GenerateChangeSet
import Network.AWS.SMS.GenerateTemplate
import Network.AWS.SMS.GetApp
import Network.AWS.SMS.GetAppLaunchConfiguration
import Network.AWS.SMS.GetAppReplicationConfiguration
import Network.AWS.SMS.GetAppValidationConfiguration
import Network.AWS.SMS.GetAppValidationOutput
import Network.AWS.SMS.GetConnectors
import Network.AWS.SMS.GetReplicationJobs
import Network.AWS.SMS.GetReplicationRuns
import Network.AWS.SMS.GetServers
import Network.AWS.SMS.ImportAppCatalog
import Network.AWS.SMS.ImportServerCatalog
import Network.AWS.SMS.LaunchApp
import Network.AWS.SMS.ListApps
import Network.AWS.SMS.NotifyAppValidationOutput
import Network.AWS.SMS.PutAppLaunchConfiguration
import Network.AWS.SMS.PutAppReplicationConfiguration
import Network.AWS.SMS.PutAppValidationConfiguration
import Network.AWS.SMS.StartAppReplication
import Network.AWS.SMS.StartOnDemandAppReplication
import Network.AWS.SMS.StartOnDemandReplicationRun
import Network.AWS.SMS.StopAppReplication
import Network.AWS.SMS.TerminateApp
import Network.AWS.SMS.Types
import Network.AWS.SMS.UpdateApp
import Network.AWS.SMS.UpdateReplicationJob
import Network.AWS.SMS.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'SMS'.

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
