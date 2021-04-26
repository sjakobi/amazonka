{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lambda.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _InvalidCodeSignatureException,
    _KMSInvalidStateException,
    _KMSNotFoundException,
    _EC2UnexpectedException,
    _UnsupportedMediaTypeException,
    _InvalidZipFileException,
    _ResourceNotReadyException,
    _ResourceConflictException,
    _ProvisionedConcurrencyConfigNotFoundException,
    _EC2AccessDeniedException,
    _InvalidSubnetIDException,
    _EFSMountFailureException,
    _InvalidSecurityGroupIDException,
    _EC2ThrottledException,
    _RequestTooLargeException,
    _EFSMountConnectivityException,
    _InvalidParameterValueException,
    _ENILimitReachedException,
    _ResourceInUseException,
    _EFSMountTimeoutException,
    _EFSIOException,
    _KMSAccessDeniedException,
    _InvalidRequestContentException,
    _ResourceNotFoundException,
    _PolicyLengthExceededException,
    _CodeSigningConfigNotFoundException,
    _CodeVerificationFailedException,
    _CodeStorageExceededException,
    _PreconditionFailedException,
    _KMSDisabledException,
    _SubnetIPAddressLimitReachedException,
    _TooManyRequestsException,
    _ServiceException,
    _InvalidRuntimeException,

    -- * CodeSigningPolicy
    CodeSigningPolicy (..),

    -- * EndPointType
    EndPointType (..),

    -- * EventSourcePosition
    EventSourcePosition (..),

    -- * FunctionResponseType
    FunctionResponseType (..),

    -- * FunctionVersion
    FunctionVersion (..),

    -- * InvocationType
    InvocationType (..),

    -- * LastUpdateStatus
    LastUpdateStatus (..),

    -- * LastUpdateStatusReasonCode
    LastUpdateStatusReasonCode (..),

    -- * LogType
    LogType (..),

    -- * PackageType
    PackageType (..),

    -- * ProvisionedConcurrencyStatusEnum
    ProvisionedConcurrencyStatusEnum (..),

    -- * Runtime
    Runtime (..),

    -- * SourceAccessType
    SourceAccessType (..),

    -- * State
    State (..),

    -- * StateReasonCode
    StateReasonCode (..),

    -- * TracingMode
    TracingMode (..),

    -- * AccountLimit
    AccountLimit (..),
    newAccountLimit,

    -- * AccountUsage
    AccountUsage (..),
    newAccountUsage,

    -- * AliasConfiguration
    AliasConfiguration (..),
    newAliasConfiguration,

    -- * AliasRoutingConfiguration
    AliasRoutingConfiguration (..),
    newAliasRoutingConfiguration,

    -- * AllowedPublishers
    AllowedPublishers (..),
    newAllowedPublishers,

    -- * CodeSigningConfig
    CodeSigningConfig (..),
    newCodeSigningConfig,

    -- * CodeSigningPolicies
    CodeSigningPolicies (..),
    newCodeSigningPolicies,

    -- * Concurrency
    Concurrency (..),
    newConcurrency,

    -- * DeadLetterConfig
    DeadLetterConfig (..),
    newDeadLetterConfig,

    -- * DestinationConfig
    DestinationConfig (..),
    newDestinationConfig,

    -- * Environment
    Environment (..),
    newEnvironment,

    -- * EnvironmentError
    EnvironmentError (..),
    newEnvironmentError,

    -- * EnvironmentResponse
    EnvironmentResponse (..),
    newEnvironmentResponse,

    -- * EventSourceMappingConfiguration
    EventSourceMappingConfiguration (..),
    newEventSourceMappingConfiguration,

    -- * FileSystemConfig
    FileSystemConfig (..),
    newFileSystemConfig,

    -- * FunctionCode
    FunctionCode (..),
    newFunctionCode,

    -- * FunctionCodeLocation
    FunctionCodeLocation (..),
    newFunctionCodeLocation,

    -- * FunctionConfiguration
    FunctionConfiguration (..),
    newFunctionConfiguration,

    -- * FunctionEventInvokeConfig
    FunctionEventInvokeConfig (..),
    newFunctionEventInvokeConfig,

    -- * GetLayerVersionResponse
    GetLayerVersionResponse (..),
    newGetLayerVersionResponse,

    -- * ImageConfig
    ImageConfig (..),
    newImageConfig,

    -- * ImageConfigError
    ImageConfigError (..),
    newImageConfigError,

    -- * ImageConfigResponse
    ImageConfigResponse (..),
    newImageConfigResponse,

    -- * Layer
    Layer (..),
    newLayer,

    -- * LayerVersionContentInput
    LayerVersionContentInput (..),
    newLayerVersionContentInput,

    -- * LayerVersionContentOutput
    LayerVersionContentOutput (..),
    newLayerVersionContentOutput,

    -- * LayerVersionsListItem
    LayerVersionsListItem (..),
    newLayerVersionsListItem,

    -- * LayersListItem
    LayersListItem (..),
    newLayersListItem,

    -- * OnFailure
    OnFailure (..),
    newOnFailure,

    -- * OnSuccess
    OnSuccess (..),
    newOnSuccess,

    -- * ProvisionedConcurrencyConfigListItem
    ProvisionedConcurrencyConfigListItem (..),
    newProvisionedConcurrencyConfigListItem,

    -- * SelfManagedEventSource
    SelfManagedEventSource (..),
    newSelfManagedEventSource,

    -- * SourceAccessConfiguration
    SourceAccessConfiguration (..),
    newSourceAccessConfiguration,

    -- * TracingConfig
    TracingConfig (..),
    newTracingConfig,

    -- * TracingConfigResponse
    TracingConfigResponse (..),
    newTracingConfigResponse,

    -- * VpcConfig
    VpcConfig (..),
    newVpcConfig,

    -- * VpcConfigResponse
    VpcConfigResponse (..),
    newVpcConfigResponse,
  )
where

import Network.AWS.Lambda.Types.AccountLimit
import Network.AWS.Lambda.Types.AccountUsage
import Network.AWS.Lambda.Types.AliasConfiguration
import Network.AWS.Lambda.Types.AliasRoutingConfiguration
import Network.AWS.Lambda.Types.AllowedPublishers
import Network.AWS.Lambda.Types.CodeSigningConfig
import Network.AWS.Lambda.Types.CodeSigningPolicies
import Network.AWS.Lambda.Types.CodeSigningPolicy
import Network.AWS.Lambda.Types.Concurrency
import Network.AWS.Lambda.Types.DeadLetterConfig
import Network.AWS.Lambda.Types.DestinationConfig
import Network.AWS.Lambda.Types.EndPointType
import Network.AWS.Lambda.Types.Environment
import Network.AWS.Lambda.Types.EnvironmentError
import Network.AWS.Lambda.Types.EnvironmentResponse
import Network.AWS.Lambda.Types.EventSourceMappingConfiguration
import Network.AWS.Lambda.Types.EventSourcePosition
import Network.AWS.Lambda.Types.FileSystemConfig
import Network.AWS.Lambda.Types.FunctionCode
import Network.AWS.Lambda.Types.FunctionCodeLocation
import Network.AWS.Lambda.Types.FunctionConfiguration
import Network.AWS.Lambda.Types.FunctionEventInvokeConfig
import Network.AWS.Lambda.Types.FunctionResponseType
import Network.AWS.Lambda.Types.FunctionVersion
import Network.AWS.Lambda.Types.GetLayerVersionResponse
import Network.AWS.Lambda.Types.ImageConfig
import Network.AWS.Lambda.Types.ImageConfigError
import Network.AWS.Lambda.Types.ImageConfigResponse
import Network.AWS.Lambda.Types.InvocationType
import Network.AWS.Lambda.Types.LastUpdateStatus
import Network.AWS.Lambda.Types.LastUpdateStatusReasonCode
import Network.AWS.Lambda.Types.Layer
import Network.AWS.Lambda.Types.LayerVersionContentInput
import Network.AWS.Lambda.Types.LayerVersionContentOutput
import Network.AWS.Lambda.Types.LayerVersionsListItem
import Network.AWS.Lambda.Types.LayersListItem
import Network.AWS.Lambda.Types.LogType
import Network.AWS.Lambda.Types.OnFailure
import Network.AWS.Lambda.Types.OnSuccess
import Network.AWS.Lambda.Types.PackageType
import Network.AWS.Lambda.Types.ProvisionedConcurrencyConfigListItem
import Network.AWS.Lambda.Types.ProvisionedConcurrencyStatusEnum
import Network.AWS.Lambda.Types.Runtime
import Network.AWS.Lambda.Types.SelfManagedEventSource
import Network.AWS.Lambda.Types.SourceAccessConfiguration
import Network.AWS.Lambda.Types.SourceAccessType
import Network.AWS.Lambda.Types.State
import Network.AWS.Lambda.Types.StateReasonCode
import Network.AWS.Lambda.Types.TracingConfig
import Network.AWS.Lambda.Types.TracingConfigResponse
import Network.AWS.Lambda.Types.TracingMode
import Network.AWS.Lambda.Types.VpcConfig
import Network.AWS.Lambda.Types.VpcConfigResponse
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2015-03-31@ of the Amazon Lambda SDK configuration.
defaultService :: Prelude.Service
defaultService =
  Prelude.Service
    { Prelude._svcAbbrev = "Lambda",
      Prelude._svcSigner = Sign.v4,
      Prelude._svcPrefix = "lambda",
      Prelude._svcVersion = "2015-03-31",
      Prelude._svcEndpoint =
        Prelude.defaultEndpoint defaultService,
      Prelude._svcTimeout = Prelude.Just 70,
      Prelude._svcCheck = Prelude.statusSuccess,
      Prelude._svcError = Prelude.parseJSONError "Lambda",
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

-- | The code signature failed the integrity check. Lambda always blocks
-- deployment if the integrity check fails, even if code signing policy is
-- set to WARN.
_InvalidCodeSignatureException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidCodeSignatureException =
  Prelude._MatchServiceError
    defaultService
    "InvalidCodeSignatureException"
    Prelude.. Prelude.hasStatus 400

-- | Lambda was unable to decrypt the environment variables because the KMS
-- key used is in an invalid state for Decrypt. Check the function\'s KMS
-- key settings.
_KMSInvalidStateException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_KMSInvalidStateException =
  Prelude._MatchServiceError
    defaultService
    "KMSInvalidStateException"
    Prelude.. Prelude.hasStatus 502

-- | Lambda was unable to decrypt the environment variables because the KMS
-- key was not found. Check the function\'s KMS key settings.
_KMSNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_KMSNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "KMSNotFoundException"
    Prelude.. Prelude.hasStatus 502

-- | AWS Lambda received an unexpected EC2 client exception while setting up
-- for the Lambda function.
_EC2UnexpectedException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_EC2UnexpectedException =
  Prelude._MatchServiceError
    defaultService
    "EC2UnexpectedException"
    Prelude.. Prelude.hasStatus 502

-- | The content type of the @Invoke@ request body is not JSON.
_UnsupportedMediaTypeException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_UnsupportedMediaTypeException =
  Prelude._MatchServiceError
    defaultService
    "UnsupportedMediaTypeException"
    Prelude.. Prelude.hasStatus 415

-- | AWS Lambda could not unzip the deployment package.
_InvalidZipFileException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidZipFileException =
  Prelude._MatchServiceError
    defaultService
    "InvalidZipFileException"
    Prelude.. Prelude.hasStatus 502

-- | The function is inactive and its VPC connection is no longer available.
-- Wait for the VPC connection to reestablish and try again.
_ResourceNotReadyException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceNotReadyException =
  Prelude._MatchServiceError
    defaultService
    "ResourceNotReadyException"
    Prelude.. Prelude.hasStatus 502

-- | The resource already exists, or another operation is in progress.
_ResourceConflictException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceConflictException =
  Prelude._MatchServiceError
    defaultService
    "ResourceConflictException"
    Prelude.. Prelude.hasStatus 409

-- | The specified configuration does not exist.
_ProvisionedConcurrencyConfigNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ProvisionedConcurrencyConfigNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "ProvisionedConcurrencyConfigNotFoundException"
    Prelude.. Prelude.hasStatus 404

-- | Need additional permissions to configure VPC settings.
_EC2AccessDeniedException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_EC2AccessDeniedException =
  Prelude._MatchServiceError
    defaultService
    "EC2AccessDeniedException"
    Prelude.. Prelude.hasStatus 502

-- | The Subnet ID provided in the Lambda function VPC configuration is
-- invalid.
_InvalidSubnetIDException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidSubnetIDException =
  Prelude._MatchServiceError
    defaultService
    "InvalidSubnetIDException"
    Prelude.. Prelude.hasStatus 502

-- | The function couldn\'t mount the configured file system due to a
-- permission or configuration issue.
_EFSMountFailureException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_EFSMountFailureException =
  Prelude._MatchServiceError
    defaultService
    "EFSMountFailureException"
    Prelude.. Prelude.hasStatus 403

-- | The Security Group ID provided in the Lambda function VPC configuration
-- is invalid.
_InvalidSecurityGroupIDException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidSecurityGroupIDException =
  Prelude._MatchServiceError
    defaultService
    "InvalidSecurityGroupIDException"
    Prelude.. Prelude.hasStatus 502

-- | AWS Lambda was throttled by Amazon EC2 during Lambda function
-- initialization using the execution role provided for the Lambda
-- function.
_EC2ThrottledException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_EC2ThrottledException =
  Prelude._MatchServiceError
    defaultService
    "EC2ThrottledException"
    Prelude.. Prelude.hasStatus 502

-- | The request payload exceeded the @Invoke@ request body JSON input limit.
-- For more information, see
-- <https://docs.aws.amazon.com/lambda/latest/dg/limits.html Limits>.
_RequestTooLargeException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_RequestTooLargeException =
  Prelude._MatchServiceError
    defaultService
    "RequestTooLargeException"
    Prelude.. Prelude.hasStatus 413

-- | The function couldn\'t make a network connection to the configured file
-- system.
_EFSMountConnectivityException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_EFSMountConnectivityException =
  Prelude._MatchServiceError
    defaultService
    "EFSMountConnectivityException"
    Prelude.. Prelude.hasStatus 408

-- | One of the parameters in the request is invalid.
_InvalidParameterValueException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidParameterValueException =
  Prelude._MatchServiceError
    defaultService
    "InvalidParameterValueException"
    Prelude.. Prelude.hasStatus 400

-- | AWS Lambda was not able to create an elastic network interface in the
-- VPC, specified as part of Lambda function configuration, because the
-- limit for network interfaces has been reached.
_ENILimitReachedException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ENILimitReachedException =
  Prelude._MatchServiceError
    defaultService
    "ENILimitReachedException"
    Prelude.. Prelude.hasStatus 502

-- | The operation conflicts with the resource\'s availability. For example,
-- you attempted to update an EventSource Mapping in CREATING, or tried to
-- delete a EventSource mapping currently in the UPDATING state.
_ResourceInUseException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceInUseException =
  Prelude._MatchServiceError
    defaultService
    "ResourceInUseException"
    Prelude.. Prelude.hasStatus 400

-- | The function was able to make a network connection to the configured
-- file system, but the mount operation timed out.
_EFSMountTimeoutException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_EFSMountTimeoutException =
  Prelude._MatchServiceError
    defaultService
    "EFSMountTimeoutException"
    Prelude.. Prelude.hasStatus 408

-- | An error occured when reading from or writing to a connected file
-- system.
_EFSIOException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_EFSIOException =
  Prelude._MatchServiceError
    defaultService
    "EFSIOException"
    Prelude.. Prelude.hasStatus 410

-- | Lambda was unable to decrypt the environment variables because KMS
-- access was denied. Check the Lambda function\'s KMS permissions.
_KMSAccessDeniedException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_KMSAccessDeniedException =
  Prelude._MatchServiceError
    defaultService
    "KMSAccessDeniedException"
    Prelude.. Prelude.hasStatus 502

-- | The request body could not be parsed as JSON.
_InvalidRequestContentException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidRequestContentException =
  Prelude._MatchServiceError
    defaultService
    "InvalidRequestContentException"
    Prelude.. Prelude.hasStatus 400

-- | The resource specified in the request does not exist.
_ResourceNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "ResourceNotFoundException"
    Prelude.. Prelude.hasStatus 404

-- | The permissions policy for the resource is too large.
-- <https://docs.aws.amazon.com/lambda/latest/dg/limits.html Learn more>
_PolicyLengthExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_PolicyLengthExceededException =
  Prelude._MatchServiceError
    defaultService
    "PolicyLengthExceededException"
    Prelude.. Prelude.hasStatus 400

-- | The specified code signing configuration does not exist.
_CodeSigningConfigNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_CodeSigningConfigNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "CodeSigningConfigNotFoundException"
    Prelude.. Prelude.hasStatus 404

-- | The code signature failed one or more of the validation checks for
-- signature mismatch or expiry, and the code signing policy is set to
-- ENFORCE. Lambda blocks the deployment.
_CodeVerificationFailedException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_CodeVerificationFailedException =
  Prelude._MatchServiceError
    defaultService
    "CodeVerificationFailedException"
    Prelude.. Prelude.hasStatus 400

-- | You have exceeded your maximum total code size per account.
-- <https://docs.aws.amazon.com/lambda/latest/dg/limits.html Learn more>
_CodeStorageExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_CodeStorageExceededException =
  Prelude._MatchServiceError
    defaultService
    "CodeStorageExceededException"
    Prelude.. Prelude.hasStatus 400

-- | The RevisionId provided does not match the latest RevisionId for the
-- Lambda function or alias. Call the @GetFunction@ or the @GetAlias@ API
-- to retrieve the latest RevisionId for your resource.
_PreconditionFailedException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_PreconditionFailedException =
  Prelude._MatchServiceError
    defaultService
    "PreconditionFailedException"
    Prelude.. Prelude.hasStatus 412

-- | Lambda was unable to decrypt the environment variables because the KMS
-- key used is disabled. Check the Lambda function\'s KMS key settings.
_KMSDisabledException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_KMSDisabledException =
  Prelude._MatchServiceError
    defaultService
    "KMSDisabledException"
    Prelude.. Prelude.hasStatus 502

-- | AWS Lambda was not able to set up VPC access for the Lambda function
-- because one or more configured subnets has no available IP addresses.
_SubnetIPAddressLimitReachedException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_SubnetIPAddressLimitReachedException =
  Prelude._MatchServiceError
    defaultService
    "SubnetIPAddressLimitReachedException"
    Prelude.. Prelude.hasStatus 502

-- | The request throughput limit was exceeded.
_TooManyRequestsException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TooManyRequestsException =
  Prelude._MatchServiceError
    defaultService
    "TooManyRequestsException"
    Prelude.. Prelude.hasStatus 429

-- | The AWS Lambda service encountered an internal error.
_ServiceException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ServiceException =
  Prelude._MatchServiceError
    defaultService
    "ServiceException"
    Prelude.. Prelude.hasStatus 500

-- | The runtime or runtime version specified is not supported.
_InvalidRuntimeException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidRuntimeException =
  Prelude._MatchServiceError
    defaultService
    "InvalidRuntimeException"
    Prelude.. Prelude.hasStatus 502
