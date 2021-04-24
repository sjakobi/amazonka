{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Greengrass
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- AWS IoT Greengrass seamlessly extends AWS onto physical devices so they can act locally on the data they generate, while still using the cloud for management, analytics, and durable storage. AWS IoT Greengrass ensures your devices can respond quickly to local events and operate with intermittent connectivity. AWS IoT Greengrass minimizes the cost of transmitting data to the cloud by allowing you to author AWS Lambda functions that execute locally.
module Network.AWS.Greengrass
  ( -- * Service Configuration
    greengrass,

    -- * Errors
    -- $errors

    -- ** BadRequestException
    _BadRequestException,

    -- ** InternalServerErrorException
    _InternalServerErrorException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** DeleteSubscriptionDefinition
    module Network.AWS.Greengrass.DeleteSubscriptionDefinition,

    -- ** UpdateCoreDefinition
    module Network.AWS.Greengrass.UpdateCoreDefinition,

    -- ** UpdateSubscriptionDefinition
    module Network.AWS.Greengrass.UpdateSubscriptionDefinition,

    -- ** AssociateServiceRoleToAccount
    module Network.AWS.Greengrass.AssociateServiceRoleToAccount,

    -- ** DeleteCoreDefinition
    module Network.AWS.Greengrass.DeleteCoreDefinition,

    -- ** AssociateRoleToGroup
    module Network.AWS.Greengrass.AssociateRoleToGroup,

    -- ** GetGroupCertificateConfiguration
    module Network.AWS.Greengrass.GetGroupCertificateConfiguration,

    -- ** ListFunctionDefinitionVersions (Paginated)
    module Network.AWS.Greengrass.ListFunctionDefinitionVersions,

    -- ** StartBulkDeployment
    module Network.AWS.Greengrass.StartBulkDeployment,

    -- ** CreateFunctionDefinitionVersion
    module Network.AWS.Greengrass.CreateFunctionDefinitionVersion,

    -- ** GetFunctionDefinition
    module Network.AWS.Greengrass.GetFunctionDefinition,

    -- ** UpdateThingRuntimeConfiguration
    module Network.AWS.Greengrass.UpdateThingRuntimeConfiguration,

    -- ** StopBulkDeployment
    module Network.AWS.Greengrass.StopBulkDeployment,

    -- ** ListGroups (Paginated)
    module Network.AWS.Greengrass.ListGroups,

    -- ** DeleteResourceDefinition
    module Network.AWS.Greengrass.DeleteResourceDefinition,

    -- ** GetThingRuntimeConfiguration
    module Network.AWS.Greengrass.GetThingRuntimeConfiguration,

    -- ** ListDeviceDefinitionVersions (Paginated)
    module Network.AWS.Greengrass.ListDeviceDefinitionVersions,

    -- ** UpdateResourceDefinition
    module Network.AWS.Greengrass.UpdateResourceDefinition,

    -- ** ListResourceDefinitions (Paginated)
    module Network.AWS.Greengrass.ListResourceDefinitions,

    -- ** GetDeviceDefinition
    module Network.AWS.Greengrass.GetDeviceDefinition,

    -- ** CreateResourceDefinition
    module Network.AWS.Greengrass.CreateResourceDefinition,

    -- ** GetResourceDefinitionVersion
    module Network.AWS.Greengrass.GetResourceDefinitionVersion,

    -- ** CreateDeviceDefinitionVersion
    module Network.AWS.Greengrass.CreateDeviceDefinitionVersion,

    -- ** GetGroupVersion
    module Network.AWS.Greengrass.GetGroupVersion,

    -- ** UntagResource
    module Network.AWS.Greengrass.UntagResource,

    -- ** CreateGroup
    module Network.AWS.Greengrass.CreateGroup,

    -- ** UpdateGroupCertificateConfiguration
    module Network.AWS.Greengrass.UpdateGroupCertificateConfiguration,

    -- ** DeleteLoggerDefinition
    module Network.AWS.Greengrass.DeleteLoggerDefinition,

    -- ** ListBulkDeployments (Paginated)
    module Network.AWS.Greengrass.ListBulkDeployments,

    -- ** CreateConnectorDefinitionVersion
    module Network.AWS.Greengrass.CreateConnectorDefinitionVersion,

    -- ** CreateSubscriptionDefinitionVersion
    module Network.AWS.Greengrass.CreateSubscriptionDefinitionVersion,

    -- ** UpdateLoggerDefinition
    module Network.AWS.Greengrass.UpdateLoggerDefinition,

    -- ** ListLoggerDefinitions (Paginated)
    module Network.AWS.Greengrass.ListLoggerDefinitions,

    -- ** CreateCoreDefinitionVersion
    module Network.AWS.Greengrass.CreateCoreDefinitionVersion,

    -- ** ListDeployments (Paginated)
    module Network.AWS.Greengrass.ListDeployments,

    -- ** TagResource
    module Network.AWS.Greengrass.TagResource,

    -- ** GetConnectivityInfo
    module Network.AWS.Greengrass.GetConnectivityInfo,

    -- ** ListSubscriptionDefinitionVersions (Paginated)
    module Network.AWS.Greengrass.ListSubscriptionDefinitionVersions,

    -- ** ListCoreDefinitionVersions (Paginated)
    module Network.AWS.Greengrass.ListCoreDefinitionVersions,

    -- ** ListConnectorDefinitionVersions (Paginated)
    module Network.AWS.Greengrass.ListConnectorDefinitionVersions,

    -- ** CreateSoftwareUpdateJob
    module Network.AWS.Greengrass.CreateSoftwareUpdateJob,

    -- ** CreateCoreDefinition
    module Network.AWS.Greengrass.CreateCoreDefinition,

    -- ** CreateConnectorDefinition
    module Network.AWS.Greengrass.CreateConnectorDefinition,

    -- ** GetAssociatedRole
    module Network.AWS.Greengrass.GetAssociatedRole,

    -- ** UpdateConnectivityInfo
    module Network.AWS.Greengrass.UpdateConnectivityInfo,

    -- ** CreateSubscriptionDefinition
    module Network.AWS.Greengrass.CreateSubscriptionDefinition,

    -- ** DisassociateRoleFromGroup
    module Network.AWS.Greengrass.DisassociateRoleFromGroup,

    -- ** ListCoreDefinitions (Paginated)
    module Network.AWS.Greengrass.ListCoreDefinitions,

    -- ** ListConnectorDefinitions (Paginated)
    module Network.AWS.Greengrass.ListConnectorDefinitions,

    -- ** CreateGroupCertificateAuthority
    module Network.AWS.Greengrass.CreateGroupCertificateAuthority,

    -- ** ListGroupCertificateAuthorities
    module Network.AWS.Greengrass.ListGroupCertificateAuthorities,

    -- ** DeleteConnectorDefinition
    module Network.AWS.Greengrass.DeleteConnectorDefinition,

    -- ** GetLoggerDefinition
    module Network.AWS.Greengrass.GetLoggerDefinition,

    -- ** UpdateConnectorDefinition
    module Network.AWS.Greengrass.UpdateConnectorDefinition,

    -- ** CreateLoggerDefinitionVersion
    module Network.AWS.Greengrass.CreateLoggerDefinitionVersion,

    -- ** ResetDeployments
    module Network.AWS.Greengrass.ResetDeployments,

    -- ** ListSubscriptionDefinitions (Paginated)
    module Network.AWS.Greengrass.ListSubscriptionDefinitions,

    -- ** ListGroupVersions (Paginated)
    module Network.AWS.Greengrass.ListGroupVersions,

    -- ** DeleteDeviceDefinition
    module Network.AWS.Greengrass.DeleteDeviceDefinition,

    -- ** UpdateDeviceDefinition
    module Network.AWS.Greengrass.UpdateDeviceDefinition,

    -- ** ListDeviceDefinitions (Paginated)
    module Network.AWS.Greengrass.ListDeviceDefinitions,

    -- ** DisassociateServiceRoleFromAccount
    module Network.AWS.Greengrass.DisassociateServiceRoleFromAccount,

    -- ** ListResourceDefinitionVersions (Paginated)
    module Network.AWS.Greengrass.ListResourceDefinitionVersions,

    -- ** GetResourceDefinition
    module Network.AWS.Greengrass.GetResourceDefinition,

    -- ** GetGroup
    module Network.AWS.Greengrass.GetGroup,

    -- ** CreateDeviceDefinition
    module Network.AWS.Greengrass.CreateDeviceDefinition,

    -- ** GetDeviceDefinitionVersion
    module Network.AWS.Greengrass.GetDeviceDefinitionVersion,

    -- ** CreateResourceDefinitionVersion
    module Network.AWS.Greengrass.CreateResourceDefinitionVersion,

    -- ** CreateGroupVersion
    module Network.AWS.Greengrass.CreateGroupVersion,

    -- ** ListBulkDeploymentDetailedReports (Paginated)
    module Network.AWS.Greengrass.ListBulkDeploymentDetailedReports,

    -- ** UpdateGroup
    module Network.AWS.Greengrass.UpdateGroup,

    -- ** DeleteGroup
    module Network.AWS.Greengrass.DeleteGroup,

    -- ** DeleteFunctionDefinition
    module Network.AWS.Greengrass.DeleteFunctionDefinition,

    -- ** UpdateFunctionDefinition
    module Network.AWS.Greengrass.UpdateFunctionDefinition,

    -- ** ListFunctionDefinitions (Paginated)
    module Network.AWS.Greengrass.ListFunctionDefinitions,

    -- ** GetFunctionDefinitionVersion
    module Network.AWS.Greengrass.GetFunctionDefinitionVersion,

    -- ** GetBulkDeploymentStatus
    module Network.AWS.Greengrass.GetBulkDeploymentStatus,

    -- ** GetDeploymentStatus
    module Network.AWS.Greengrass.GetDeploymentStatus,

    -- ** CreateFunctionDefinition
    module Network.AWS.Greengrass.CreateFunctionDefinition,

    -- ** GetSubscriptionDefinition
    module Network.AWS.Greengrass.GetSubscriptionDefinition,

    -- ** GetConnectorDefinition
    module Network.AWS.Greengrass.GetConnectorDefinition,

    -- ** GetCoreDefinition
    module Network.AWS.Greengrass.GetCoreDefinition,

    -- ** GetGroupCertificateAuthority
    module Network.AWS.Greengrass.GetGroupCertificateAuthority,

    -- ** GetServiceRoleForAccount
    module Network.AWS.Greengrass.GetServiceRoleForAccount,

    -- ** GetLoggerDefinitionVersion
    module Network.AWS.Greengrass.GetLoggerDefinitionVersion,

    -- ** CreateLoggerDefinition
    module Network.AWS.Greengrass.CreateLoggerDefinition,

    -- ** CreateDeployment
    module Network.AWS.Greengrass.CreateDeployment,

    -- ** ListTagsForResource
    module Network.AWS.Greengrass.ListTagsForResource,

    -- ** GetSubscriptionDefinitionVersion
    module Network.AWS.Greengrass.GetSubscriptionDefinitionVersion,

    -- ** ListLoggerDefinitionVersions (Paginated)
    module Network.AWS.Greengrass.ListLoggerDefinitionVersions,

    -- ** GetCoreDefinitionVersion
    module Network.AWS.Greengrass.GetCoreDefinitionVersion,

    -- ** GetConnectorDefinitionVersion
    module Network.AWS.Greengrass.GetConnectorDefinitionVersion,

    -- * Types

    -- ** BulkDeploymentStatus
    BulkDeploymentStatus (..),

    -- ** ConfigurationSyncStatus
    ConfigurationSyncStatus (..),

    -- ** DeploymentType
    DeploymentType (..),

    -- ** EncodingType
    EncodingType (..),

    -- ** FunctionIsolationMode
    FunctionIsolationMode (..),

    -- ** LoggerComponent
    LoggerComponent (..),

    -- ** LoggerLevel
    LoggerLevel (..),

    -- ** LoggerType
    LoggerType (..),

    -- ** Permission
    Permission (..),

    -- ** SoftwareToUpdate
    SoftwareToUpdate (..),

    -- ** Telemetry
    Telemetry (..),

    -- ** UpdateAgentLogLevel
    UpdateAgentLogLevel (..),

    -- ** UpdateTargetsArchitecture
    UpdateTargetsArchitecture (..),

    -- ** UpdateTargetsOperatingSystem
    UpdateTargetsOperatingSystem (..),

    -- ** BulkDeployment
    BulkDeployment,
    bulkDeployment,
    bdBulkDeploymentId,
    bdCreatedAt,
    bdBulkDeploymentARN,

    -- ** BulkDeploymentMetrics
    BulkDeploymentMetrics,
    bulkDeploymentMetrics,
    bdmRecordsProcessed,
    bdmRetryAttempts,
    bdmInvalidInputRecords,

    -- ** BulkDeploymentResult
    BulkDeploymentResult,
    bulkDeploymentResult,
    bdrDeploymentId,
    bdrDeploymentType,
    bdrDeploymentStatus,
    bdrCreatedAt,
    bdrDeploymentARN,
    bdrErrorMessage,
    bdrGroupARN,
    bdrErrorDetails,

    -- ** ConnectivityInfo
    ConnectivityInfo,
    connectivityInfo,
    ciId,
    ciMetadata,
    ciPortNumber,
    ciHostAddress,

    -- ** Connector
    Connector,
    connector,
    cParameters,
    cConnectorARN,
    cId,

    -- ** ConnectorDefinitionVersion
    ConnectorDefinitionVersion,
    connectorDefinitionVersion,
    cdvConnectors,

    -- ** Core
    Core,
    core,
    corSyncShadow,
    corThingARN,
    corId,
    corCertificateARN,

    -- ** CoreDefinitionVersion
    CoreDefinitionVersion,
    coreDefinitionVersion,
    cdvCores,

    -- ** DefinitionInformation
    DefinitionInformation,
    definitionInformation,
    diCreationTimestamp,
    diLatestVersionARN,
    diLatestVersion,
    diARN,
    diId,
    diName,
    diTags,
    diLastUpdatedTimestamp,

    -- ** Deployment
    Deployment,
    deployment,
    dDeploymentId,
    dDeploymentType,
    dCreatedAt,
    dDeploymentARN,
    dGroupARN,

    -- ** Device
    Device,
    device,
    dSyncShadow,
    dThingARN,
    dId,
    dCertificateARN,

    -- ** DeviceDefinitionVersion
    DeviceDefinitionVersion,
    deviceDefinitionVersion,
    ddvDevices,

    -- ** ErrorDetail
    ErrorDetail,
    errorDetail,
    edDetailedErrorMessage,
    edDetailedErrorCode,

    -- ** Function
    Function,
    function,
    fFunctionConfiguration,
    fFunctionARN,
    fId,

    -- ** FunctionConfiguration
    FunctionConfiguration,
    functionConfiguration,
    fcExecArgs,
    fcMemorySize,
    fcTimeout,
    fcEncodingType,
    fcPinned,
    fcExecutable,
    fcEnvironment,

    -- ** FunctionConfigurationEnvironment
    FunctionConfigurationEnvironment,
    functionConfigurationEnvironment,
    fceAccessSysfs,
    fceVariables,
    fceExecution,
    fceResourceAccessPolicies,

    -- ** FunctionDefaultConfig
    FunctionDefaultConfig,
    functionDefaultConfig,
    fdcExecution,

    -- ** FunctionDefaultExecutionConfig
    FunctionDefaultExecutionConfig,
    functionDefaultExecutionConfig,
    fdecIsolationMode,
    fdecRunAs,

    -- ** FunctionDefinitionVersion
    FunctionDefinitionVersion,
    functionDefinitionVersion,
    fdvFunctions,
    fdvDefaultConfig,

    -- ** FunctionExecutionConfig
    FunctionExecutionConfig,
    functionExecutionConfig,
    fecIsolationMode,
    fecRunAs,

    -- ** FunctionRunAsConfig
    FunctionRunAsConfig,
    functionRunAsConfig,
    fracGid,
    fracUid,

    -- ** GreengrassLogger
    GreengrassLogger,
    greengrassLogger,
    glSpace,
    glType,
    glLevel,
    glId,
    glComponent,

    -- ** GroupCertificateAuthorityProperties
    GroupCertificateAuthorityProperties,
    groupCertificateAuthorityProperties,
    gcapGroupCertificateAuthorityARN,
    gcapGroupCertificateAuthorityId,

    -- ** GroupInformation
    GroupInformation,
    groupInformation,
    giCreationTimestamp,
    giLatestVersionARN,
    giLatestVersion,
    giARN,
    giId,
    giName,
    giLastUpdatedTimestamp,

    -- ** GroupOwnerSetting
    GroupOwnerSetting,
    groupOwnerSetting,
    gosGroupOwner,
    gosAutoAddGroupOwner,

    -- ** GroupVersion
    GroupVersion,
    groupVersion,
    gvCoreDefinitionVersionARN,
    gvConnectorDefinitionVersionARN,
    gvSubscriptionDefinitionVersionARN,
    gvLoggerDefinitionVersionARN,
    gvResourceDefinitionVersionARN,
    gvFunctionDefinitionVersionARN,
    gvDeviceDefinitionVersionARN,

    -- ** LocalDeviceResourceData
    LocalDeviceResourceData,
    localDeviceResourceData,
    ldrdSourcePath,
    ldrdGroupOwnerSetting,

    -- ** LocalVolumeResourceData
    LocalVolumeResourceData,
    localVolumeResourceData,
    lvrdDestinationPath,
    lvrdSourcePath,
    lvrdGroupOwnerSetting,

    -- ** LoggerDefinitionVersion
    LoggerDefinitionVersion,
    loggerDefinitionVersion,
    ldvLoggers,

    -- ** Resource
    Resource,
    resource,
    rResourceDataContainer,
    rId,
    rName,

    -- ** ResourceAccessPolicy
    ResourceAccessPolicy,
    resourceAccessPolicy,
    rapPermission,
    rapResourceId,

    -- ** ResourceDataContainer
    ResourceDataContainer,
    resourceDataContainer,
    rdcLocalVolumeResourceData,
    rdcLocalDeviceResourceData,
    rdcSageMakerMachineLearningModelResourceData,
    rdcS3MachineLearningModelResourceData,
    rdcSecretsManagerSecretResourceData,

    -- ** ResourceDefinitionVersion
    ResourceDefinitionVersion,
    resourceDefinitionVersion,
    rdvResources,

    -- ** ResourceDownloadOwnerSetting
    ResourceDownloadOwnerSetting,
    resourceDownloadOwnerSetting,
    rdosGroupOwner,
    rdosGroupPermission,

    -- ** RuntimeConfiguration
    RuntimeConfiguration,
    runtimeConfiguration,
    rcTelemetryConfiguration,

    -- ** S3MachineLearningModelResourceData
    S3MachineLearningModelResourceData,
    s3MachineLearningModelResourceData,
    smlmrdOwnerSetting,
    smlmrdDestinationPath,
    smlmrdS3URI,

    -- ** SageMakerMachineLearningModelResourceData
    SageMakerMachineLearningModelResourceData,
    sageMakerMachineLearningModelResourceData,
    smmlmrdOwnerSetting,
    smmlmrdDestinationPath,
    smmlmrdSageMakerJobARN,

    -- ** SecretsManagerSecretResourceData
    SecretsManagerSecretResourceData,
    secretsManagerSecretResourceData,
    smsrdARN,
    smsrdAdditionalStagingLabelsToDownload,

    -- ** Subscription
    Subscription,
    subscription,
    sTarget,
    sId,
    sSubject,
    sSource,

    -- ** SubscriptionDefinitionVersion
    SubscriptionDefinitionVersion,
    subscriptionDefinitionVersion,
    sdvSubscriptions,

    -- ** TelemetryConfiguration
    TelemetryConfiguration,
    telemetryConfiguration,
    tcConfigurationSyncStatus,
    tcTelemetry,

    -- ** TelemetryConfigurationUpdate
    TelemetryConfigurationUpdate,
    telemetryConfigurationUpdate,
    tcuTelemetry,

    -- ** VersionInformation
    VersionInformation,
    versionInformation,
    viCreationTimestamp,
    viARN,
    viId,
    viVersion,
  )
where

import Network.AWS.Greengrass.AssociateRoleToGroup
import Network.AWS.Greengrass.AssociateServiceRoleToAccount
import Network.AWS.Greengrass.CreateConnectorDefinition
import Network.AWS.Greengrass.CreateConnectorDefinitionVersion
import Network.AWS.Greengrass.CreateCoreDefinition
import Network.AWS.Greengrass.CreateCoreDefinitionVersion
import Network.AWS.Greengrass.CreateDeployment
import Network.AWS.Greengrass.CreateDeviceDefinition
import Network.AWS.Greengrass.CreateDeviceDefinitionVersion
import Network.AWS.Greengrass.CreateFunctionDefinition
import Network.AWS.Greengrass.CreateFunctionDefinitionVersion
import Network.AWS.Greengrass.CreateGroup
import Network.AWS.Greengrass.CreateGroupCertificateAuthority
import Network.AWS.Greengrass.CreateGroupVersion
import Network.AWS.Greengrass.CreateLoggerDefinition
import Network.AWS.Greengrass.CreateLoggerDefinitionVersion
import Network.AWS.Greengrass.CreateResourceDefinition
import Network.AWS.Greengrass.CreateResourceDefinitionVersion
import Network.AWS.Greengrass.CreateSoftwareUpdateJob
import Network.AWS.Greengrass.CreateSubscriptionDefinition
import Network.AWS.Greengrass.CreateSubscriptionDefinitionVersion
import Network.AWS.Greengrass.DeleteConnectorDefinition
import Network.AWS.Greengrass.DeleteCoreDefinition
import Network.AWS.Greengrass.DeleteDeviceDefinition
import Network.AWS.Greengrass.DeleteFunctionDefinition
import Network.AWS.Greengrass.DeleteGroup
import Network.AWS.Greengrass.DeleteLoggerDefinition
import Network.AWS.Greengrass.DeleteResourceDefinition
import Network.AWS.Greengrass.DeleteSubscriptionDefinition
import Network.AWS.Greengrass.DisassociateRoleFromGroup
import Network.AWS.Greengrass.DisassociateServiceRoleFromAccount
import Network.AWS.Greengrass.GetAssociatedRole
import Network.AWS.Greengrass.GetBulkDeploymentStatus
import Network.AWS.Greengrass.GetConnectivityInfo
import Network.AWS.Greengrass.GetConnectorDefinition
import Network.AWS.Greengrass.GetConnectorDefinitionVersion
import Network.AWS.Greengrass.GetCoreDefinition
import Network.AWS.Greengrass.GetCoreDefinitionVersion
import Network.AWS.Greengrass.GetDeploymentStatus
import Network.AWS.Greengrass.GetDeviceDefinition
import Network.AWS.Greengrass.GetDeviceDefinitionVersion
import Network.AWS.Greengrass.GetFunctionDefinition
import Network.AWS.Greengrass.GetFunctionDefinitionVersion
import Network.AWS.Greengrass.GetGroup
import Network.AWS.Greengrass.GetGroupCertificateAuthority
import Network.AWS.Greengrass.GetGroupCertificateConfiguration
import Network.AWS.Greengrass.GetGroupVersion
import Network.AWS.Greengrass.GetLoggerDefinition
import Network.AWS.Greengrass.GetLoggerDefinitionVersion
import Network.AWS.Greengrass.GetResourceDefinition
import Network.AWS.Greengrass.GetResourceDefinitionVersion
import Network.AWS.Greengrass.GetServiceRoleForAccount
import Network.AWS.Greengrass.GetSubscriptionDefinition
import Network.AWS.Greengrass.GetSubscriptionDefinitionVersion
import Network.AWS.Greengrass.GetThingRuntimeConfiguration
import Network.AWS.Greengrass.ListBulkDeploymentDetailedReports
import Network.AWS.Greengrass.ListBulkDeployments
import Network.AWS.Greengrass.ListConnectorDefinitionVersions
import Network.AWS.Greengrass.ListConnectorDefinitions
import Network.AWS.Greengrass.ListCoreDefinitionVersions
import Network.AWS.Greengrass.ListCoreDefinitions
import Network.AWS.Greengrass.ListDeployments
import Network.AWS.Greengrass.ListDeviceDefinitionVersions
import Network.AWS.Greengrass.ListDeviceDefinitions
import Network.AWS.Greengrass.ListFunctionDefinitionVersions
import Network.AWS.Greengrass.ListFunctionDefinitions
import Network.AWS.Greengrass.ListGroupCertificateAuthorities
import Network.AWS.Greengrass.ListGroupVersions
import Network.AWS.Greengrass.ListGroups
import Network.AWS.Greengrass.ListLoggerDefinitionVersions
import Network.AWS.Greengrass.ListLoggerDefinitions
import Network.AWS.Greengrass.ListResourceDefinitionVersions
import Network.AWS.Greengrass.ListResourceDefinitions
import Network.AWS.Greengrass.ListSubscriptionDefinitionVersions
import Network.AWS.Greengrass.ListSubscriptionDefinitions
import Network.AWS.Greengrass.ListTagsForResource
import Network.AWS.Greengrass.ResetDeployments
import Network.AWS.Greengrass.StartBulkDeployment
import Network.AWS.Greengrass.StopBulkDeployment
import Network.AWS.Greengrass.TagResource
import Network.AWS.Greengrass.Types
import Network.AWS.Greengrass.UntagResource
import Network.AWS.Greengrass.UpdateConnectivityInfo
import Network.AWS.Greengrass.UpdateConnectorDefinition
import Network.AWS.Greengrass.UpdateCoreDefinition
import Network.AWS.Greengrass.UpdateDeviceDefinition
import Network.AWS.Greengrass.UpdateFunctionDefinition
import Network.AWS.Greengrass.UpdateGroup
import Network.AWS.Greengrass.UpdateGroupCertificateConfiguration
import Network.AWS.Greengrass.UpdateLoggerDefinition
import Network.AWS.Greengrass.UpdateResourceDefinition
import Network.AWS.Greengrass.UpdateSubscriptionDefinition
import Network.AWS.Greengrass.UpdateThingRuntimeConfiguration
import Network.AWS.Greengrass.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'Greengrass'.

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
