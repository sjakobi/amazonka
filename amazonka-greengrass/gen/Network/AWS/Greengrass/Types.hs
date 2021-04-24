{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Greengrass.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Greengrass.Types
  ( -- * Service Configuration
    greengrass,

    -- * Errors
    _BadRequestException,
    _InternalServerErrorException,

    -- * BulkDeploymentStatus
    BulkDeploymentStatus (..),

    -- * ConfigurationSyncStatus
    ConfigurationSyncStatus (..),

    -- * DeploymentType
    DeploymentType (..),

    -- * EncodingType
    EncodingType (..),

    -- * FunctionIsolationMode
    FunctionIsolationMode (..),

    -- * LoggerComponent
    LoggerComponent (..),

    -- * LoggerLevel
    LoggerLevel (..),

    -- * LoggerType
    LoggerType (..),

    -- * Permission
    Permission (..),

    -- * SoftwareToUpdate
    SoftwareToUpdate (..),

    -- * Telemetry
    Telemetry (..),

    -- * UpdateAgentLogLevel
    UpdateAgentLogLevel (..),

    -- * UpdateTargetsArchitecture
    UpdateTargetsArchitecture (..),

    -- * UpdateTargetsOperatingSystem
    UpdateTargetsOperatingSystem (..),

    -- * BulkDeployment
    BulkDeployment (..),
    bulkDeployment,
    bdBulkDeploymentId,
    bdCreatedAt,
    bdBulkDeploymentARN,

    -- * BulkDeploymentMetrics
    BulkDeploymentMetrics (..),
    bulkDeploymentMetrics,
    bdmRecordsProcessed,
    bdmRetryAttempts,
    bdmInvalidInputRecords,

    -- * BulkDeploymentResult
    BulkDeploymentResult (..),
    bulkDeploymentResult,
    bdrDeploymentId,
    bdrDeploymentType,
    bdrDeploymentStatus,
    bdrCreatedAt,
    bdrDeploymentARN,
    bdrErrorMessage,
    bdrGroupARN,
    bdrErrorDetails,

    -- * ConnectivityInfo
    ConnectivityInfo (..),
    connectivityInfo,
    ciId,
    ciMetadata,
    ciPortNumber,
    ciHostAddress,

    -- * Connector
    Connector (..),
    connector,
    cParameters,
    cConnectorARN,
    cId,

    -- * ConnectorDefinitionVersion
    ConnectorDefinitionVersion (..),
    connectorDefinitionVersion,
    cdvConnectors,

    -- * Core
    Core (..),
    core,
    corSyncShadow,
    corThingARN,
    corId,
    corCertificateARN,

    -- * CoreDefinitionVersion
    CoreDefinitionVersion (..),
    coreDefinitionVersion,
    cdvCores,

    -- * DefinitionInformation
    DefinitionInformation (..),
    definitionInformation,
    diCreationTimestamp,
    diLatestVersionARN,
    diLatestVersion,
    diARN,
    diId,
    diName,
    diTags,
    diLastUpdatedTimestamp,

    -- * Deployment
    Deployment (..),
    deployment,
    dDeploymentId,
    dDeploymentType,
    dCreatedAt,
    dDeploymentARN,
    dGroupARN,

    -- * Device
    Device (..),
    device,
    dSyncShadow,
    dThingARN,
    dId,
    dCertificateARN,

    -- * DeviceDefinitionVersion
    DeviceDefinitionVersion (..),
    deviceDefinitionVersion,
    ddvDevices,

    -- * ErrorDetail
    ErrorDetail (..),
    errorDetail,
    edDetailedErrorMessage,
    edDetailedErrorCode,

    -- * Function
    Function (..),
    function,
    fFunctionConfiguration,
    fFunctionARN,
    fId,

    -- * FunctionConfiguration
    FunctionConfiguration (..),
    functionConfiguration,
    fcExecArgs,
    fcMemorySize,
    fcTimeout,
    fcEncodingType,
    fcPinned,
    fcExecutable,
    fcEnvironment,

    -- * FunctionConfigurationEnvironment
    FunctionConfigurationEnvironment (..),
    functionConfigurationEnvironment,
    fceAccessSysfs,
    fceVariables,
    fceExecution,
    fceResourceAccessPolicies,

    -- * FunctionDefaultConfig
    FunctionDefaultConfig (..),
    functionDefaultConfig,
    fdcExecution,

    -- * FunctionDefaultExecutionConfig
    FunctionDefaultExecutionConfig (..),
    functionDefaultExecutionConfig,
    fdecIsolationMode,
    fdecRunAs,

    -- * FunctionDefinitionVersion
    FunctionDefinitionVersion (..),
    functionDefinitionVersion,
    fdvFunctions,
    fdvDefaultConfig,

    -- * FunctionExecutionConfig
    FunctionExecutionConfig (..),
    functionExecutionConfig,
    fecIsolationMode,
    fecRunAs,

    -- * FunctionRunAsConfig
    FunctionRunAsConfig (..),
    functionRunAsConfig,
    fracGid,
    fracUid,

    -- * GreengrassLogger
    GreengrassLogger (..),
    greengrassLogger,
    glSpace,
    glType,
    glLevel,
    glId,
    glComponent,

    -- * GroupCertificateAuthorityProperties
    GroupCertificateAuthorityProperties (..),
    groupCertificateAuthorityProperties,
    gcapGroupCertificateAuthorityARN,
    gcapGroupCertificateAuthorityId,

    -- * GroupInformation
    GroupInformation (..),
    groupInformation,
    giCreationTimestamp,
    giLatestVersionARN,
    giLatestVersion,
    giARN,
    giId,
    giName,
    giLastUpdatedTimestamp,

    -- * GroupOwnerSetting
    GroupOwnerSetting (..),
    groupOwnerSetting,
    gosGroupOwner,
    gosAutoAddGroupOwner,

    -- * GroupVersion
    GroupVersion (..),
    groupVersion,
    gvCoreDefinitionVersionARN,
    gvConnectorDefinitionVersionARN,
    gvSubscriptionDefinitionVersionARN,
    gvLoggerDefinitionVersionARN,
    gvResourceDefinitionVersionARN,
    gvFunctionDefinitionVersionARN,
    gvDeviceDefinitionVersionARN,

    -- * LocalDeviceResourceData
    LocalDeviceResourceData (..),
    localDeviceResourceData,
    ldrdSourcePath,
    ldrdGroupOwnerSetting,

    -- * LocalVolumeResourceData
    LocalVolumeResourceData (..),
    localVolumeResourceData,
    lvrdDestinationPath,
    lvrdSourcePath,
    lvrdGroupOwnerSetting,

    -- * LoggerDefinitionVersion
    LoggerDefinitionVersion (..),
    loggerDefinitionVersion,
    ldvLoggers,

    -- * Resource
    Resource (..),
    resource,
    rResourceDataContainer,
    rId,
    rName,

    -- * ResourceAccessPolicy
    ResourceAccessPolicy (..),
    resourceAccessPolicy,
    rapPermission,
    rapResourceId,

    -- * ResourceDataContainer
    ResourceDataContainer (..),
    resourceDataContainer,
    rdcLocalVolumeResourceData,
    rdcLocalDeviceResourceData,
    rdcSageMakerMachineLearningModelResourceData,
    rdcS3MachineLearningModelResourceData,
    rdcSecretsManagerSecretResourceData,

    -- * ResourceDefinitionVersion
    ResourceDefinitionVersion (..),
    resourceDefinitionVersion,
    rdvResources,

    -- * ResourceDownloadOwnerSetting
    ResourceDownloadOwnerSetting (..),
    resourceDownloadOwnerSetting,
    rdosGroupOwner,
    rdosGroupPermission,

    -- * RuntimeConfiguration
    RuntimeConfiguration (..),
    runtimeConfiguration,
    rcTelemetryConfiguration,

    -- * S3MachineLearningModelResourceData
    S3MachineLearningModelResourceData (..),
    s3MachineLearningModelResourceData,
    smlmrdOwnerSetting,
    smlmrdDestinationPath,
    smlmrdS3URI,

    -- * SageMakerMachineLearningModelResourceData
    SageMakerMachineLearningModelResourceData (..),
    sageMakerMachineLearningModelResourceData,
    smmlmrdOwnerSetting,
    smmlmrdDestinationPath,
    smmlmrdSageMakerJobARN,

    -- * SecretsManagerSecretResourceData
    SecretsManagerSecretResourceData (..),
    secretsManagerSecretResourceData,
    smsrdARN,
    smsrdAdditionalStagingLabelsToDownload,

    -- * Subscription
    Subscription (..),
    subscription,
    sTarget,
    sId,
    sSubject,
    sSource,

    -- * SubscriptionDefinitionVersion
    SubscriptionDefinitionVersion (..),
    subscriptionDefinitionVersion,
    sdvSubscriptions,

    -- * TelemetryConfiguration
    TelemetryConfiguration (..),
    telemetryConfiguration,
    tcConfigurationSyncStatus,
    tcTelemetry,

    -- * TelemetryConfigurationUpdate
    TelemetryConfigurationUpdate (..),
    telemetryConfigurationUpdate,
    tcuTelemetry,

    -- * VersionInformation
    VersionInformation (..),
    versionInformation,
    viCreationTimestamp,
    viARN,
    viId,
    viVersion,
  )
where

import Network.AWS.Greengrass.Types.BulkDeployment
import Network.AWS.Greengrass.Types.BulkDeploymentMetrics
import Network.AWS.Greengrass.Types.BulkDeploymentResult
import Network.AWS.Greengrass.Types.BulkDeploymentStatus
import Network.AWS.Greengrass.Types.ConfigurationSyncStatus
import Network.AWS.Greengrass.Types.ConnectivityInfo
import Network.AWS.Greengrass.Types.Connector
import Network.AWS.Greengrass.Types.ConnectorDefinitionVersion
import Network.AWS.Greengrass.Types.Core
import Network.AWS.Greengrass.Types.CoreDefinitionVersion
import Network.AWS.Greengrass.Types.DefinitionInformation
import Network.AWS.Greengrass.Types.Deployment
import Network.AWS.Greengrass.Types.DeploymentType
import Network.AWS.Greengrass.Types.Device
import Network.AWS.Greengrass.Types.DeviceDefinitionVersion
import Network.AWS.Greengrass.Types.EncodingType
import Network.AWS.Greengrass.Types.ErrorDetail
import Network.AWS.Greengrass.Types.Function
import Network.AWS.Greengrass.Types.FunctionConfiguration
import Network.AWS.Greengrass.Types.FunctionConfigurationEnvironment
import Network.AWS.Greengrass.Types.FunctionDefaultConfig
import Network.AWS.Greengrass.Types.FunctionDefaultExecutionConfig
import Network.AWS.Greengrass.Types.FunctionDefinitionVersion
import Network.AWS.Greengrass.Types.FunctionExecutionConfig
import Network.AWS.Greengrass.Types.FunctionIsolationMode
import Network.AWS.Greengrass.Types.FunctionRunAsConfig
import Network.AWS.Greengrass.Types.GreengrassLogger
import Network.AWS.Greengrass.Types.GroupCertificateAuthorityProperties
import Network.AWS.Greengrass.Types.GroupInformation
import Network.AWS.Greengrass.Types.GroupOwnerSetting
import Network.AWS.Greengrass.Types.GroupVersion
import Network.AWS.Greengrass.Types.LocalDeviceResourceData
import Network.AWS.Greengrass.Types.LocalVolumeResourceData
import Network.AWS.Greengrass.Types.LoggerComponent
import Network.AWS.Greengrass.Types.LoggerDefinitionVersion
import Network.AWS.Greengrass.Types.LoggerLevel
import Network.AWS.Greengrass.Types.LoggerType
import Network.AWS.Greengrass.Types.Permission
import Network.AWS.Greengrass.Types.Resource
import Network.AWS.Greengrass.Types.ResourceAccessPolicy
import Network.AWS.Greengrass.Types.ResourceDataContainer
import Network.AWS.Greengrass.Types.ResourceDefinitionVersion
import Network.AWS.Greengrass.Types.ResourceDownloadOwnerSetting
import Network.AWS.Greengrass.Types.RuntimeConfiguration
import Network.AWS.Greengrass.Types.S3MachineLearningModelResourceData
import Network.AWS.Greengrass.Types.SageMakerMachineLearningModelResourceData
import Network.AWS.Greengrass.Types.SecretsManagerSecretResourceData
import Network.AWS.Greengrass.Types.SoftwareToUpdate
import Network.AWS.Greengrass.Types.Subscription
import Network.AWS.Greengrass.Types.SubscriptionDefinitionVersion
import Network.AWS.Greengrass.Types.Telemetry
import Network.AWS.Greengrass.Types.TelemetryConfiguration
import Network.AWS.Greengrass.Types.TelemetryConfigurationUpdate
import Network.AWS.Greengrass.Types.UpdateAgentLogLevel
import Network.AWS.Greengrass.Types.UpdateTargetsArchitecture
import Network.AWS.Greengrass.Types.UpdateTargetsOperatingSystem
import Network.AWS.Greengrass.Types.VersionInformation
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2017-06-07@ of the Amazon Greengrass SDK configuration.
greengrass :: Service
greengrass =
  Service
    { _svcAbbrev = "Greengrass",
      _svcSigner = v4,
      _svcPrefix = "greengrass",
      _svcVersion = "2017-06-07",
      _svcEndpoint = defaultEndpoint greengrass,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "Greengrass",
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

-- | General error information.
_BadRequestException :: AsError a => Getting (First ServiceError) a ServiceError
_BadRequestException =
  _MatchServiceError greengrass "BadRequestException"
    . hasStatus 400

-- | General error information.
_InternalServerErrorException :: AsError a => Getting (First ServiceError) a ServiceError
_InternalServerErrorException =
  _MatchServiceError
    greengrass
    "InternalServerErrorException"
    . hasStatus 500
