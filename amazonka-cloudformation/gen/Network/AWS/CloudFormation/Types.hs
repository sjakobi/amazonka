{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _InsufficientCapabilitiesException,
    _StaleRequestException,
    _OperationNotFoundException,
    _InvalidChangeSetStatusException,
    _NameAlreadyExistsException,
    _StackSetNotEmptyException,
    _InvalidOperationException,
    _OperationStatusCheckFailedException,
    _ChangeSetNotFoundException,
    _StackSetNotFoundException,
    _OperationInProgressException,
    _CreatedButModifiedException,
    _TokenAlreadyExistsException,
    _TypeNotFoundException,
    _LimitExceededException,
    _CFNRegistryException,
    _OperationIdAlreadyExistsException,
    _AlreadyExistsException,
    _InvalidStateTransitionException,
    _StackInstanceNotFoundException,

    -- * AccountGateStatus
    AccountGateStatus (..),

    -- * CallAs
    CallAs (..),

    -- * Capability
    Capability (..),

    -- * ChangeAction
    ChangeAction (..),

    -- * ChangeSetStatus
    ChangeSetStatus (..),

    -- * ChangeSetType
    ChangeSetType (..),

    -- * ChangeSource
    ChangeSource (..),

    -- * ChangeType
    ChangeType (..),

    -- * DeprecatedStatus
    DeprecatedStatus (..),

    -- * DifferenceType
    DifferenceType (..),

    -- * EvaluationType
    EvaluationType (..),

    -- * ExecutionStatus
    ExecutionStatus (..),

    -- * HandlerErrorCode
    HandlerErrorCode (..),

    -- * OnFailure
    OnFailure (..),

    -- * OperationStatus
    OperationStatus (..),

    -- * PermissionModels
    PermissionModels (..),

    -- * ProvisioningType
    ProvisioningType (..),

    -- * RegistrationStatus
    RegistrationStatus (..),

    -- * RegistryType
    RegistryType (..),

    -- * Replacement
    Replacement (..),

    -- * RequiresRecreation
    RequiresRecreation (..),

    -- * ResourceAttribute
    ResourceAttribute (..),

    -- * ResourceSignalStatus
    ResourceSignalStatus (..),

    -- * ResourceStatus
    ResourceStatus (..),

    -- * StackDriftDetectionStatus
    StackDriftDetectionStatus (..),

    -- * StackDriftStatus
    StackDriftStatus (..),

    -- * StackInstanceDetailedStatus
    StackInstanceDetailedStatus (..),

    -- * StackInstanceFilterName
    StackInstanceFilterName (..),

    -- * StackInstanceStatus
    StackInstanceStatus (..),

    -- * StackResourceDriftStatus
    StackResourceDriftStatus (..),

    -- * StackSetDriftDetectionStatus
    StackSetDriftDetectionStatus (..),

    -- * StackSetDriftStatus
    StackSetDriftStatus (..),

    -- * StackSetOperationAction
    StackSetOperationAction (..),

    -- * StackSetOperationResultStatus
    StackSetOperationResultStatus (..),

    -- * StackSetOperationStatus
    StackSetOperationStatus (..),

    -- * StackSetStatus
    StackSetStatus (..),

    -- * StackStatus
    StackStatus (..),

    -- * TemplateStage
    TemplateStage (..),

    -- * Visibility
    Visibility (..),

    -- * AccountGateResult
    AccountGateResult (..),
    newAccountGateResult,

    -- * AccountLimit
    AccountLimit (..),
    newAccountLimit,

    -- * AutoDeployment
    AutoDeployment (..),
    newAutoDeployment,

    -- * Change
    Change (..),
    newChange,

    -- * ChangeSetSummary
    ChangeSetSummary (..),
    newChangeSetSummary,

    -- * DeploymentTargets
    DeploymentTargets (..),
    newDeploymentTargets,

    -- * Export
    Export (..),
    newExport,

    -- * LoggingConfig
    LoggingConfig (..),
    newLoggingConfig,

    -- * ModuleInfo
    ModuleInfo (..),
    newModuleInfo,

    -- * Output
    Output (..),
    newOutput,

    -- * Parameter
    Parameter (..),
    newParameter,

    -- * ParameterConstraints
    ParameterConstraints (..),
    newParameterConstraints,

    -- * ParameterDeclaration
    ParameterDeclaration (..),
    newParameterDeclaration,

    -- * PhysicalResourceIdContextKeyValuePair
    PhysicalResourceIdContextKeyValuePair (..),
    newPhysicalResourceIdContextKeyValuePair,

    -- * PropertyDifference
    PropertyDifference (..),
    newPropertyDifference,

    -- * ResourceChange
    ResourceChange (..),
    newResourceChange,

    -- * ResourceChangeDetail
    ResourceChangeDetail (..),
    newResourceChangeDetail,

    -- * ResourceIdentifierSummary
    ResourceIdentifierSummary (..),
    newResourceIdentifierSummary,

    -- * ResourceTargetDefinition
    ResourceTargetDefinition (..),
    newResourceTargetDefinition,

    -- * ResourceToImport
    ResourceToImport (..),
    newResourceToImport,

    -- * RollbackConfiguration
    RollbackConfiguration (..),
    newRollbackConfiguration,

    -- * RollbackTrigger
    RollbackTrigger (..),
    newRollbackTrigger,

    -- * Stack
    Stack (..),
    newStack,

    -- * StackDriftInformation
    StackDriftInformation (..),
    newStackDriftInformation,

    -- * StackDriftInformationSummary
    StackDriftInformationSummary (..),
    newStackDriftInformationSummary,

    -- * StackEvent
    StackEvent (..),
    newStackEvent,

    -- * StackInstance
    StackInstance (..),
    newStackInstance,

    -- * StackInstanceComprehensiveStatus
    StackInstanceComprehensiveStatus (..),
    newStackInstanceComprehensiveStatus,

    -- * StackInstanceFilter
    StackInstanceFilter (..),
    newStackInstanceFilter,

    -- * StackInstanceSummary
    StackInstanceSummary (..),
    newStackInstanceSummary,

    -- * StackResource
    StackResource (..),
    newStackResource,

    -- * StackResourceDetail
    StackResourceDetail (..),
    newStackResourceDetail,

    -- * StackResourceDrift
    StackResourceDrift (..),
    newStackResourceDrift,

    -- * StackResourceDriftInformation
    StackResourceDriftInformation (..),
    newStackResourceDriftInformation,

    -- * StackResourceDriftInformationSummary
    StackResourceDriftInformationSummary (..),
    newStackResourceDriftInformationSummary,

    -- * StackResourceSummary
    StackResourceSummary (..),
    newStackResourceSummary,

    -- * StackSet
    StackSet (..),
    newStackSet,

    -- * StackSetDriftDetectionDetails
    StackSetDriftDetectionDetails (..),
    newStackSetDriftDetectionDetails,

    -- * StackSetOperation
    StackSetOperation (..),
    newStackSetOperation,

    -- * StackSetOperationPreferences
    StackSetOperationPreferences (..),
    newStackSetOperationPreferences,

    -- * StackSetOperationResultSummary
    StackSetOperationResultSummary (..),
    newStackSetOperationResultSummary,

    -- * StackSetOperationSummary
    StackSetOperationSummary (..),
    newStackSetOperationSummary,

    -- * StackSetSummary
    StackSetSummary (..),
    newStackSetSummary,

    -- * StackSummary
    StackSummary (..),
    newStackSummary,

    -- * Tag
    Tag (..),
    newTag,

    -- * TemplateParameter
    TemplateParameter (..),
    newTemplateParameter,

    -- * TypeSummary
    TypeSummary (..),
    newTypeSummary,

    -- * TypeVersionSummary
    TypeVersionSummary (..),
    newTypeVersionSummary,
  )
where

import Network.AWS.CloudFormation.Types.AccountGateResult
import Network.AWS.CloudFormation.Types.AccountGateStatus
import Network.AWS.CloudFormation.Types.AccountLimit
import Network.AWS.CloudFormation.Types.AutoDeployment
import Network.AWS.CloudFormation.Types.CallAs
import Network.AWS.CloudFormation.Types.Capability
import Network.AWS.CloudFormation.Types.Change
import Network.AWS.CloudFormation.Types.ChangeAction
import Network.AWS.CloudFormation.Types.ChangeSetStatus
import Network.AWS.CloudFormation.Types.ChangeSetSummary
import Network.AWS.CloudFormation.Types.ChangeSetType
import Network.AWS.CloudFormation.Types.ChangeSource
import Network.AWS.CloudFormation.Types.ChangeType
import Network.AWS.CloudFormation.Types.DeploymentTargets
import Network.AWS.CloudFormation.Types.DeprecatedStatus
import Network.AWS.CloudFormation.Types.DifferenceType
import Network.AWS.CloudFormation.Types.EvaluationType
import Network.AWS.CloudFormation.Types.ExecutionStatus
import Network.AWS.CloudFormation.Types.Export
import Network.AWS.CloudFormation.Types.HandlerErrorCode
import Network.AWS.CloudFormation.Types.LoggingConfig
import Network.AWS.CloudFormation.Types.ModuleInfo
import Network.AWS.CloudFormation.Types.OnFailure
import Network.AWS.CloudFormation.Types.OperationStatus
import Network.AWS.CloudFormation.Types.Output
import Network.AWS.CloudFormation.Types.Parameter
import Network.AWS.CloudFormation.Types.ParameterConstraints
import Network.AWS.CloudFormation.Types.ParameterDeclaration
import Network.AWS.CloudFormation.Types.PermissionModels
import Network.AWS.CloudFormation.Types.PhysicalResourceIdContextKeyValuePair
import Network.AWS.CloudFormation.Types.PropertyDifference
import Network.AWS.CloudFormation.Types.ProvisioningType
import Network.AWS.CloudFormation.Types.RegistrationStatus
import Network.AWS.CloudFormation.Types.RegistryType
import Network.AWS.CloudFormation.Types.Replacement
import Network.AWS.CloudFormation.Types.RequiresRecreation
import Network.AWS.CloudFormation.Types.ResourceAttribute
import Network.AWS.CloudFormation.Types.ResourceChange
import Network.AWS.CloudFormation.Types.ResourceChangeDetail
import Network.AWS.CloudFormation.Types.ResourceIdentifierSummary
import Network.AWS.CloudFormation.Types.ResourceSignalStatus
import Network.AWS.CloudFormation.Types.ResourceStatus
import Network.AWS.CloudFormation.Types.ResourceTargetDefinition
import Network.AWS.CloudFormation.Types.ResourceToImport
import Network.AWS.CloudFormation.Types.RollbackConfiguration
import Network.AWS.CloudFormation.Types.RollbackTrigger
import Network.AWS.CloudFormation.Types.Stack
import Network.AWS.CloudFormation.Types.StackDriftDetectionStatus
import Network.AWS.CloudFormation.Types.StackDriftInformation
import Network.AWS.CloudFormation.Types.StackDriftInformationSummary
import Network.AWS.CloudFormation.Types.StackDriftStatus
import Network.AWS.CloudFormation.Types.StackEvent
import Network.AWS.CloudFormation.Types.StackInstance
import Network.AWS.CloudFormation.Types.StackInstanceComprehensiveStatus
import Network.AWS.CloudFormation.Types.StackInstanceDetailedStatus
import Network.AWS.CloudFormation.Types.StackInstanceFilter
import Network.AWS.CloudFormation.Types.StackInstanceFilterName
import Network.AWS.CloudFormation.Types.StackInstanceStatus
import Network.AWS.CloudFormation.Types.StackInstanceSummary
import Network.AWS.CloudFormation.Types.StackResource
import Network.AWS.CloudFormation.Types.StackResourceDetail
import Network.AWS.CloudFormation.Types.StackResourceDrift
import Network.AWS.CloudFormation.Types.StackResourceDriftInformation
import Network.AWS.CloudFormation.Types.StackResourceDriftInformationSummary
import Network.AWS.CloudFormation.Types.StackResourceDriftStatus
import Network.AWS.CloudFormation.Types.StackResourceSummary
import Network.AWS.CloudFormation.Types.StackSet
import Network.AWS.CloudFormation.Types.StackSetDriftDetectionDetails
import Network.AWS.CloudFormation.Types.StackSetDriftDetectionStatus
import Network.AWS.CloudFormation.Types.StackSetDriftStatus
import Network.AWS.CloudFormation.Types.StackSetOperation
import Network.AWS.CloudFormation.Types.StackSetOperationAction
import Network.AWS.CloudFormation.Types.StackSetOperationPreferences
import Network.AWS.CloudFormation.Types.StackSetOperationResultStatus
import Network.AWS.CloudFormation.Types.StackSetOperationResultSummary
import Network.AWS.CloudFormation.Types.StackSetOperationStatus
import Network.AWS.CloudFormation.Types.StackSetOperationSummary
import Network.AWS.CloudFormation.Types.StackSetStatus
import Network.AWS.CloudFormation.Types.StackSetSummary
import Network.AWS.CloudFormation.Types.StackStatus
import Network.AWS.CloudFormation.Types.StackSummary
import Network.AWS.CloudFormation.Types.Tag
import Network.AWS.CloudFormation.Types.TemplateParameter
import Network.AWS.CloudFormation.Types.TemplateStage
import Network.AWS.CloudFormation.Types.TypeSummary
import Network.AWS.CloudFormation.Types.TypeVersionSummary
import Network.AWS.CloudFormation.Types.Visibility
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2010-05-15@ of the Amazon CloudFormation SDK configuration.
defaultService :: Prelude.Service
defaultService =
  Prelude.Service
    { Prelude._svcAbbrev =
        "CloudFormation",
      Prelude._svcSigner = Sign.v4,
      Prelude._svcPrefix = "cloudformation",
      Prelude._svcVersion = "2010-05-15",
      Prelude._svcEndpoint =
        Prelude.defaultEndpoint defaultService,
      Prelude._svcTimeout = Prelude.Just 70,
      Prelude._svcCheck = Prelude.statusSuccess,
      Prelude._svcError =
        Prelude.parseXMLError "CloudFormation",
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

-- | The template contains resources with capabilities that weren\'t
-- specified in the Capabilities parameter.
_InsufficientCapabilitiesException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InsufficientCapabilitiesException =
  Prelude._MatchServiceError
    defaultService
    "InsufficientCapabilitiesException"
    Prelude.. Prelude.hasStatus 400

-- | Another operation has been performed on this stack set since the
-- specified operation was performed.
_StaleRequestException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_StaleRequestException =
  Prelude._MatchServiceError
    defaultService
    "StaleRequestException"
    Prelude.. Prelude.hasStatus 409

-- | The specified ID refers to an operation that doesn\'t exist.
_OperationNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_OperationNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "OperationNotFoundException"
    Prelude.. Prelude.hasStatus 404

-- | The specified change set can\'t be used to update the stack. For
-- example, the change set status might be @CREATE_IN_PROGRESS@, or the
-- stack status might be @UPDATE_IN_PROGRESS@.
_InvalidChangeSetStatusException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidChangeSetStatusException =
  Prelude._MatchServiceError
    defaultService
    "InvalidChangeSetStatus"
    Prelude.. Prelude.hasStatus 400

-- | The specified name is already in use.
_NameAlreadyExistsException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NameAlreadyExistsException =
  Prelude._MatchServiceError
    defaultService
    "NameAlreadyExistsException"
    Prelude.. Prelude.hasStatus 409

-- | You can\'t yet delete this stack set, because it still contains one or
-- more stack instances. Delete all stack instances from the stack set
-- before deleting the stack set.
_StackSetNotEmptyException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_StackSetNotEmptyException =
  Prelude._MatchServiceError
    defaultService
    "StackSetNotEmptyException"
    Prelude.. Prelude.hasStatus 409

-- | The specified operation isn\'t valid.
_InvalidOperationException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidOperationException =
  Prelude._MatchServiceError
    defaultService
    "InvalidOperationException"
    Prelude.. Prelude.hasStatus 400

-- | Error reserved for use by the
-- <https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html CloudFormation CLI>.
-- CloudFormation does not return this error to users.
_OperationStatusCheckFailedException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_OperationStatusCheckFailedException =
  Prelude._MatchServiceError
    defaultService
    "ConditionalCheckFailed"
    Prelude.. Prelude.hasStatus 400

-- | The specified change set name or ID doesn\'t exit. To view valid change
-- sets for a stack, use the @ListChangeSets@ action.
_ChangeSetNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ChangeSetNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "ChangeSetNotFound"
    Prelude.. Prelude.hasStatus 404

-- | The specified stack set doesn\'t exist.
_StackSetNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_StackSetNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "StackSetNotFoundException"
    Prelude.. Prelude.hasStatus 404

-- | Another operation is currently in progress for this stack set. Only one
-- operation can be performed for a stack set at a given time.
_OperationInProgressException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_OperationInProgressException =
  Prelude._MatchServiceError
    defaultService
    "OperationInProgressException"
    Prelude.. Prelude.hasStatus 409

-- | The specified resource exists, but has been changed.
_CreatedButModifiedException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_CreatedButModifiedException =
  Prelude._MatchServiceError
    defaultService
    "CreatedButModifiedException"
    Prelude.. Prelude.hasStatus 409

-- | A client request token already exists.
_TokenAlreadyExistsException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TokenAlreadyExistsException =
  Prelude._MatchServiceError
    defaultService
    "TokenAlreadyExistsException"
    Prelude.. Prelude.hasStatus 400

-- | The specified type does not exist in the CloudFormation registry.
_TypeNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TypeNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "TypeNotFoundException"
    Prelude.. Prelude.hasStatus 404

-- | The quota for the resource has already been reached.
--
-- For information on resource and stack limitations, see
-- <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cloudformation-limits.html Limits>
-- in the /AWS CloudFormation User Guide/.
_LimitExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_LimitExceededException =
  Prelude._MatchServiceError
    defaultService
    "LimitExceededException"
    Prelude.. Prelude.hasStatus 400

-- | An error occurred during a CloudFormation registry operation.
_CFNRegistryException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_CFNRegistryException =
  Prelude._MatchServiceError
    defaultService
    "CFNRegistryException"
    Prelude.. Prelude.hasStatus 400

-- | The specified operation ID already exists.
_OperationIdAlreadyExistsException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_OperationIdAlreadyExistsException =
  Prelude._MatchServiceError
    defaultService
    "OperationIdAlreadyExistsException"
    Prelude.. Prelude.hasStatus 409

-- | The resource with the name requested already exists.
_AlreadyExistsException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_AlreadyExistsException =
  Prelude._MatchServiceError
    defaultService
    "AlreadyExistsException"
    Prelude.. Prelude.hasStatus 400

-- | Error reserved for use by the
-- <https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html CloudFormation CLI>.
-- CloudFormation does not return this error to users.
_InvalidStateTransitionException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidStateTransitionException =
  Prelude._MatchServiceError
    defaultService
    "InvalidStateTransition"
    Prelude.. Prelude.hasStatus 400

-- | The specified stack instance doesn\'t exist.
_StackInstanceNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_StackInstanceNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "StackInstanceNotFoundException"
    Prelude.. Prelude.hasStatus 404
