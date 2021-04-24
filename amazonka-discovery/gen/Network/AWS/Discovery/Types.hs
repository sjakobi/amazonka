{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Discovery.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Discovery.Types
  ( -- * Service Configuration
    discovery,

    -- * Errors
    _ConflictErrorException,
    _OperationNotPermittedException,
    _ServerInternalErrorException,
    _HomeRegionNotSetException,
    _InvalidParameterException,
    _InvalidParameterValueException,
    _AuthorizationErrorException,
    _ResourceInUseException,
    _ResourceNotFoundException,

    -- * AgentStatus
    AgentStatus (..),

    -- * BatchDeleteImportDataErrorCode
    BatchDeleteImportDataErrorCode (..),

    -- * ConfigurationItemType
    ConfigurationItemType (..),

    -- * ContinuousExportStatus
    ContinuousExportStatus (..),

    -- * DataSource
    DataSource (..),

    -- * ExportDataFormat
    ExportDataFormat (..),

    -- * ExportStatus
    ExportStatus (..),

    -- * ImportStatus
    ImportStatus (..),

    -- * ImportTaskFilterName
    ImportTaskFilterName (..),

    -- * OrderString
    OrderString (..),

    -- * AgentConfigurationStatus
    AgentConfigurationStatus (..),
    agentConfigurationStatus,
    acsAgentId,
    acsOperationSucceeded,
    acsDescription,

    -- * AgentInfo
    AgentInfo (..),
    agentInfo,
    aiHostName,
    aiAgentId,
    aiAgentType,
    aiConnectorId,
    aiAgentNetworkInfoList,
    aiLastHealthPingTime,
    aiRegisteredTime,
    aiVersion,
    aiHealth,
    aiCollectionStatus,

    -- * AgentNetworkInfo
    AgentNetworkInfo (..),
    agentNetworkInfo,
    aniMacAddress,
    aniIpAddress,

    -- * BatchDeleteImportDataError
    BatchDeleteImportDataError (..),
    batchDeleteImportDataError,
    bdideErrorDescription,
    bdideImportTaskId,
    bdideErrorCode,

    -- * ConfigurationTag
    ConfigurationTag (..),
    configurationTag,
    ctKey,
    ctConfigurationId,
    ctValue,
    ctConfigurationType,
    ctTimeOfCreation,

    -- * ContinuousExportDescription
    ContinuousExportDescription (..),
    continuousExportDescription,
    cedStatus,
    cedS3Bucket,
    cedDataSource,
    cedStartTime,
    cedStatusDetail,
    cedStopTime,
    cedSchemaStorageConfig,
    cedExportId,

    -- * CustomerAgentInfo
    CustomerAgentInfo (..),
    customerAgentInfo,
    caiActiveAgents,
    caiHealthyAgents,
    caiBlackListedAgents,
    caiShutdownAgents,
    caiUnhealthyAgents,
    caiTotalAgents,
    caiUnknownAgents,

    -- * CustomerConnectorInfo
    CustomerConnectorInfo (..),
    customerConnectorInfo,
    cciActiveConnectors,
    cciHealthyConnectors,
    cciBlackListedConnectors,
    cciShutdownConnectors,
    cciUnhealthyConnectors,
    cciTotalConnectors,
    cciUnknownConnectors,

    -- * ExportFilter
    ExportFilter (..),
    exportFilter,
    efName,
    efValues,
    efCondition,

    -- * ExportInfo
    ExportInfo (..),
    exportInfo,
    eiIsTruncated,
    eiConfigurationsDownloadURL,
    eiRequestedStartTime,
    eiRequestedEndTime,
    eiExportId,
    eiExportStatus,
    eiStatusMessage,
    eiExportRequestTime,

    -- * Filter
    Filter (..),
    filter',
    fName,
    fValues,
    fCondition,

    -- * ImportTask
    ImportTask (..),
    importTask,
    itStatus,
    itApplicationImportSuccess,
    itImportRequestTime,
    itServerImportFailure,
    itImportTaskId,
    itErrorsAndFailedEntriesZip,
    itName,
    itApplicationImportFailure,
    itImportCompletionTime,
    itImportURL,
    itClientRequestToken,
    itServerImportSuccess,
    itImportDeletedTime,

    -- * ImportTaskFilter
    ImportTaskFilter (..),
    importTaskFilter,
    itfValues,
    itfName,

    -- * NeighborConnectionDetail
    NeighborConnectionDetail (..),
    neighborConnectionDetail,
    ncdTransportProtocol,
    ncdDestinationPort,
    ncdSourceServerId,
    ncdDestinationServerId,
    ncdConnectionsCount,

    -- * OrderByElement
    OrderByElement (..),
    orderByElement,
    obeSortOrder,
    obeFieldName,

    -- * Tag
    Tag (..),
    tag,
    tagKey,
    tagValue,

    -- * TagFilter
    TagFilter (..),
    tagFilter,
    tfName,
    tfValues,
  )
where

import Network.AWS.Discovery.Types.AgentConfigurationStatus
import Network.AWS.Discovery.Types.AgentInfo
import Network.AWS.Discovery.Types.AgentNetworkInfo
import Network.AWS.Discovery.Types.AgentStatus
import Network.AWS.Discovery.Types.BatchDeleteImportDataError
import Network.AWS.Discovery.Types.BatchDeleteImportDataErrorCode
import Network.AWS.Discovery.Types.ConfigurationItemType
import Network.AWS.Discovery.Types.ConfigurationTag
import Network.AWS.Discovery.Types.ContinuousExportDescription
import Network.AWS.Discovery.Types.ContinuousExportStatus
import Network.AWS.Discovery.Types.CustomerAgentInfo
import Network.AWS.Discovery.Types.CustomerConnectorInfo
import Network.AWS.Discovery.Types.DataSource
import Network.AWS.Discovery.Types.ExportDataFormat
import Network.AWS.Discovery.Types.ExportFilter
import Network.AWS.Discovery.Types.ExportInfo
import Network.AWS.Discovery.Types.ExportStatus
import Network.AWS.Discovery.Types.Filter
import Network.AWS.Discovery.Types.ImportStatus
import Network.AWS.Discovery.Types.ImportTask
import Network.AWS.Discovery.Types.ImportTaskFilter
import Network.AWS.Discovery.Types.ImportTaskFilterName
import Network.AWS.Discovery.Types.NeighborConnectionDetail
import Network.AWS.Discovery.Types.OrderByElement
import Network.AWS.Discovery.Types.OrderString
import Network.AWS.Discovery.Types.Tag
import Network.AWS.Discovery.Types.TagFilter
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2015-11-01@ of the Amazon Application Discovery Service SDK configuration.
discovery :: Service
discovery =
  Service
    { _svcAbbrev = "Discovery",
      _svcSigner = v4,
      _svcPrefix = "discovery",
      _svcVersion = "2015-11-01",
      _svcEndpoint = defaultEndpoint discovery,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "Discovery",
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

-- |
_ConflictErrorException :: AsError a => Getting (First ServiceError) a ServiceError
_ConflictErrorException =
  _MatchServiceError
    discovery
    "ConflictErrorException"

-- | This operation is not permitted.
_OperationNotPermittedException :: AsError a => Getting (First ServiceError) a ServiceError
_OperationNotPermittedException =
  _MatchServiceError
    discovery
    "OperationNotPermittedException"

-- | The server experienced an internal error. Try again.
_ServerInternalErrorException :: AsError a => Getting (First ServiceError) a ServiceError
_ServerInternalErrorException =
  _MatchServiceError
    discovery
    "ServerInternalErrorException"

-- | The home region is not set. Set the home region to continue.
_HomeRegionNotSetException :: AsError a => Getting (First ServiceError) a ServiceError
_HomeRegionNotSetException =
  _MatchServiceError
    discovery
    "HomeRegionNotSetException"

-- | One or more parameters are not valid. Verify the parameters and try again.
_InvalidParameterException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidParameterException =
  _MatchServiceError
    discovery
    "InvalidParameterException"

-- | The value of one or more parameters are either invalid or out of range. Verify the parameter values and try again.
_InvalidParameterValueException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidParameterValueException =
  _MatchServiceError
    discovery
    "InvalidParameterValueException"

-- | The AWS user account does not have permission to perform the action. Check the IAM policy associated with this account.
_AuthorizationErrorException :: AsError a => Getting (First ServiceError) a ServiceError
_AuthorizationErrorException =
  _MatchServiceError
    discovery
    "AuthorizationErrorException"

-- | This issue occurs when the same @clientRequestToken@ is used with the @StartImportTask@ action, but with different parameters. For example, you use the same request token but have two different import URLs, you can encounter this issue. If the import tasks are meant to be different, use a different @clientRequestToken@ , and try again.
_ResourceInUseException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceInUseException =
  _MatchServiceError
    discovery
    "ResourceInUseException"

-- | The specified configuration ID was not located. Verify the configuration ID and try again.
_ResourceNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotFoundException =
  _MatchServiceError
    discovery
    "ResourceNotFoundException"
