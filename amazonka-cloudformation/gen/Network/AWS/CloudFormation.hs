{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __AWS CloudFormation__
--
-- AWS CloudFormation allows you to create and manage AWS infrastructure deployments predictably and repeatedly. You can use AWS CloudFormation to leverage AWS products, such as Amazon Elastic Compute Cloud, Amazon Elastic Block Store, Amazon Simple Notification Service, Elastic Load Balancing, and Auto Scaling to build highly-reliable, highly scalable, cost-effective applications without creating or configuring the underlying AWS infrastructure.
--
-- With AWS CloudFormation, you declare all of your resources and dependencies in a template file. The template defines a collection of resources as a single unit called a stack. AWS CloudFormation creates and deletes all member resources of the stack together and manages all dependencies between the resources for you.
--
-- For more information about AWS CloudFormation, see the <http://aws.amazon.com/cloudformation/ AWS CloudFormation Product Page> .
--
-- Amazon CloudFormation makes use of other AWS products. If you need additional technical information about a specific AWS product, you can find the product's technical documentation at <https://docs.aws.amazon.com/ docs.aws.amazon.com> .
module Network.AWS.CloudFormation
  ( -- * Service Configuration
    cloudFormation,

    -- * Errors
    -- $errors

    -- ** InsufficientCapabilitiesException
    _InsufficientCapabilitiesException,

    -- ** StaleRequestException
    _StaleRequestException,

    -- ** OperationNotFoundException
    _OperationNotFoundException,

    -- ** InvalidChangeSetStatusException
    _InvalidChangeSetStatusException,

    -- ** NameAlreadyExistsException
    _NameAlreadyExistsException,

    -- ** StackSetNotEmptyException
    _StackSetNotEmptyException,

    -- ** InvalidOperationException
    _InvalidOperationException,

    -- ** OperationStatusCheckFailedException
    _OperationStatusCheckFailedException,

    -- ** ChangeSetNotFoundException
    _ChangeSetNotFoundException,

    -- ** StackSetNotFoundException
    _StackSetNotFoundException,

    -- ** OperationInProgressException
    _OperationInProgressException,

    -- ** CreatedButModifiedException
    _CreatedButModifiedException,

    -- ** TokenAlreadyExistsException
    _TokenAlreadyExistsException,

    -- ** TypeNotFoundException
    _TypeNotFoundException,

    -- ** LimitExceededException
    _LimitExceededException,

    -- ** CFNRegistryException
    _CFNRegistryException,

    -- ** OperationIdAlreadyExistsException
    _OperationIdAlreadyExistsException,

    -- ** AlreadyExistsException
    _AlreadyExistsException,

    -- ** InvalidStateTransitionException
    _InvalidStateTransitionException,

    -- ** StackInstanceNotFoundException
    _StackInstanceNotFoundException,

    -- * Waiters
    -- $waiters

    -- ** ChangeSetCreateComplete
    changeSetCreateComplete,

    -- ** StackRollbackComplete
    stackRollbackComplete,

    -- ** StackDeleteComplete
    stackDeleteComplete,

    -- ** StackExists
    stackExists,

    -- ** StackUpdateComplete
    stackUpdateComplete,

    -- ** StackCreateComplete
    stackCreateComplete,

    -- ** TypeRegistrationComplete
    typeRegistrationComplete,

    -- ** StackImportComplete
    stackImportComplete,

    -- * Operations
    -- $operations

    -- ** DescribeStackResourceDrifts
    module Network.AWS.CloudFormation.DescribeStackResourceDrifts,

    -- ** ListImports (Paginated)
    module Network.AWS.CloudFormation.ListImports,

    -- ** DescribeStackEvents (Paginated)
    module Network.AWS.CloudFormation.DescribeStackEvents,

    -- ** StopStackSetOperation
    module Network.AWS.CloudFormation.StopStackSetOperation,

    -- ** DescribeChangeSet (Paginated)
    module Network.AWS.CloudFormation.DescribeChangeSet,

    -- ** DescribeStackResource
    module Network.AWS.CloudFormation.DescribeStackResource,

    -- ** DetectStackResourceDrift
    module Network.AWS.CloudFormation.DetectStackResourceDrift,

    -- ** ExecuteChangeSet
    module Network.AWS.CloudFormation.ExecuteChangeSet,

    -- ** SetTypeDefaultVersion
    module Network.AWS.CloudFormation.SetTypeDefaultVersion,

    -- ** RecordHandlerProgress
    module Network.AWS.CloudFormation.RecordHandlerProgress,

    -- ** ListStackSetOperations (Paginated)
    module Network.AWS.CloudFormation.ListStackSetOperations,

    -- ** CreateStackInstances
    module Network.AWS.CloudFormation.CreateStackInstances,

    -- ** GetStackPolicy
    module Network.AWS.CloudFormation.GetStackPolicy,

    -- ** DescribeStacks (Paginated)
    module Network.AWS.CloudFormation.DescribeStacks,

    -- ** DeleteStackSet
    module Network.AWS.CloudFormation.DeleteStackSet,

    -- ** EstimateTemplateCost
    module Network.AWS.CloudFormation.EstimateTemplateCost,

    -- ** UpdateStackSet
    module Network.AWS.CloudFormation.UpdateStackSet,

    -- ** DescribeAccountLimits (Paginated)
    module Network.AWS.CloudFormation.DescribeAccountLimits,

    -- ** CreateStack
    module Network.AWS.CloudFormation.CreateStack,

    -- ** DescribeStackInstance
    module Network.AWS.CloudFormation.DescribeStackInstance,

    -- ** GetTemplateSummary
    module Network.AWS.CloudFormation.GetTemplateSummary,

    -- ** ListStacks (Paginated)
    module Network.AWS.CloudFormation.ListStacks,

    -- ** DeleteStack
    module Network.AWS.CloudFormation.DeleteStack,

    -- ** UpdateStack
    module Network.AWS.CloudFormation.UpdateStack,

    -- ** DetectStackDrift
    module Network.AWS.CloudFormation.DetectStackDrift,

    -- ** DescribeStackSetOperation
    module Network.AWS.CloudFormation.DescribeStackSetOperation,

    -- ** DescribeTypeRegistration
    module Network.AWS.CloudFormation.DescribeTypeRegistration,

    -- ** SetStackPolicy
    module Network.AWS.CloudFormation.SetStackPolicy,

    -- ** SignalResource
    module Network.AWS.CloudFormation.SignalResource,

    -- ** DescribeStackSet
    module Network.AWS.CloudFormation.DescribeStackSet,

    -- ** ListStackSetOperationResults (Paginated)
    module Network.AWS.CloudFormation.ListStackSetOperationResults,

    -- ** CancelUpdateStack
    module Network.AWS.CloudFormation.CancelUpdateStack,

    -- ** ListTypes
    module Network.AWS.CloudFormation.ListTypes,

    -- ** RegisterType
    module Network.AWS.CloudFormation.RegisterType,

    -- ** ListStackInstances (Paginated)
    module Network.AWS.CloudFormation.ListStackInstances,

    -- ** DetectStackSetDrift
    module Network.AWS.CloudFormation.DetectStackSetDrift,

    -- ** ContinueUpdateRollback
    module Network.AWS.CloudFormation.ContinueUpdateRollback,

    -- ** ValidateTemplate
    module Network.AWS.CloudFormation.ValidateTemplate,

    -- ** GetTemplate
    module Network.AWS.CloudFormation.GetTemplate,

    -- ** UpdateTerminationProtection
    module Network.AWS.CloudFormation.UpdateTerminationProtection,

    -- ** ListTypeVersions
    module Network.AWS.CloudFormation.ListTypeVersions,

    -- ** ListTypeRegistrations
    module Network.AWS.CloudFormation.ListTypeRegistrations,

    -- ** DeregisterType
    module Network.AWS.CloudFormation.DeregisterType,

    -- ** CreateStackSet
    module Network.AWS.CloudFormation.CreateStackSet,

    -- ** CreateChangeSet
    module Network.AWS.CloudFormation.CreateChangeSet,

    -- ** ListExports (Paginated)
    module Network.AWS.CloudFormation.ListExports,

    -- ** DescribeType
    module Network.AWS.CloudFormation.DescribeType,

    -- ** ListStackResources (Paginated)
    module Network.AWS.CloudFormation.ListStackResources,

    -- ** DeleteStackInstances
    module Network.AWS.CloudFormation.DeleteStackInstances,

    -- ** ListStackSets (Paginated)
    module Network.AWS.CloudFormation.ListStackSets,

    -- ** DescribeStackDriftDetectionStatus
    module Network.AWS.CloudFormation.DescribeStackDriftDetectionStatus,

    -- ** UpdateStackInstances
    module Network.AWS.CloudFormation.UpdateStackInstances,

    -- ** ListChangeSets (Paginated)
    module Network.AWS.CloudFormation.ListChangeSets,

    -- ** DeleteChangeSet
    module Network.AWS.CloudFormation.DeleteChangeSet,

    -- ** DescribeStackResources
    module Network.AWS.CloudFormation.DescribeStackResources,

    -- * Types

    -- ** AccountGateStatus
    AccountGateStatus (..),

    -- ** CallAs
    CallAs (..),

    -- ** Capability
    Capability (..),

    -- ** ChangeAction
    ChangeAction (..),

    -- ** ChangeSetStatus
    ChangeSetStatus (..),

    -- ** ChangeSetType
    ChangeSetType (..),

    -- ** ChangeSource
    ChangeSource (..),

    -- ** ChangeType
    ChangeType (..),

    -- ** DeprecatedStatus
    DeprecatedStatus (..),

    -- ** DifferenceType
    DifferenceType (..),

    -- ** EvaluationType
    EvaluationType (..),

    -- ** ExecutionStatus
    ExecutionStatus (..),

    -- ** HandlerErrorCode
    HandlerErrorCode (..),

    -- ** OnFailure
    OnFailure (..),

    -- ** OperationStatus
    OperationStatus (..),

    -- ** PermissionModels
    PermissionModels (..),

    -- ** ProvisioningType
    ProvisioningType (..),

    -- ** RegistrationStatus
    RegistrationStatus (..),

    -- ** RegistryType
    RegistryType (..),

    -- ** Replacement
    Replacement (..),

    -- ** RequiresRecreation
    RequiresRecreation (..),

    -- ** ResourceAttribute
    ResourceAttribute (..),

    -- ** ResourceSignalStatus
    ResourceSignalStatus (..),

    -- ** ResourceStatus
    ResourceStatus (..),

    -- ** StackDriftDetectionStatus
    StackDriftDetectionStatus (..),

    -- ** StackDriftStatus
    StackDriftStatus (..),

    -- ** StackInstanceDetailedStatus
    StackInstanceDetailedStatus (..),

    -- ** StackInstanceFilterName
    StackInstanceFilterName (..),

    -- ** StackInstanceStatus
    StackInstanceStatus (..),

    -- ** StackResourceDriftStatus
    StackResourceDriftStatus (..),

    -- ** StackSetDriftDetectionStatus
    StackSetDriftDetectionStatus (..),

    -- ** StackSetDriftStatus
    StackSetDriftStatus (..),

    -- ** StackSetOperationAction
    StackSetOperationAction (..),

    -- ** StackSetOperationResultStatus
    StackSetOperationResultStatus (..),

    -- ** StackSetOperationStatus
    StackSetOperationStatus (..),

    -- ** StackSetStatus
    StackSetStatus (..),

    -- ** StackStatus
    StackStatus (..),

    -- ** TemplateStage
    TemplateStage (..),

    -- ** Visibility
    Visibility (..),

    -- ** AccountGateResult
    AccountGateResult,
    accountGateResult,
    agrStatus,
    agrStatusReason,

    -- ** AccountLimit
    AccountLimit,
    accountLimit,
    alName,
    alValue,

    -- ** AutoDeployment
    AutoDeployment,
    autoDeployment,
    adEnabled,
    adRetainStacksOnAccountRemoval,

    -- ** Change
    Change,
    change,
    cResourceChange,
    cType,

    -- ** ChangeSetSummary
    ChangeSetSummary,
    changeSetSummary,
    cssRootChangeSetId,
    cssStatus,
    cssCreationTime,
    cssIncludeNestedStacks,
    cssStackName,
    cssExecutionStatus,
    cssStackId,
    cssParentChangeSetId,
    cssChangeSetId,
    cssDescription,
    cssChangeSetName,
    cssStatusReason,

    -- ** DeploymentTargets
    DeploymentTargets,
    deploymentTargets,
    dtOrganizationalUnitIds,
    dtAccounts,

    -- ** Export
    Export,
    export',
    eExportingStackId,
    eName,
    eValue,

    -- ** LoggingConfig
    LoggingConfig,
    loggingConfig,
    lcLogRoleARN,
    lcLogGroupName,

    -- ** ModuleInfo
    ModuleInfo,
    moduleInfo,
    miLogicalIdHierarchy,
    miTypeHierarchy,

    -- ** Output
    Output,
    output,
    oOutputKey,
    oOutputValue,
    oDescription,
    oExportName,

    -- ** Parameter
    Parameter,
    parameter,
    pParameterValue,
    pUsePreviousValue,
    pParameterKey,
    pResolvedValue,

    -- ** ParameterConstraints
    ParameterConstraints,
    parameterConstraints,
    pcAllowedValues,

    -- ** ParameterDeclaration
    ParameterDeclaration,
    parameterDeclaration,
    pdParameterConstraints,
    pdParameterType,
    pdParameterKey,
    pdDescription,
    pdNoEcho,
    pdDefaultValue,

    -- ** PhysicalResourceIdContextKeyValuePair
    PhysicalResourceIdContextKeyValuePair,
    physicalResourceIdContextKeyValuePair,
    prickvpKey,
    prickvpValue,

    -- ** PropertyDifference
    PropertyDifference,
    propertyDifference,
    pdPropertyPath,
    pdExpectedValue,
    pdActualValue,
    pdDifferenceType,

    -- ** ResourceChange
    ResourceChange,
    resourceChange,
    rcPhysicalResourceId,
    rcResourceType,
    rcScope,
    rcDetails,
    rcModuleInfo,
    rcLogicalResourceId,
    rcChangeSetId,
    rcAction,
    rcReplacement,

    -- ** ResourceChangeDetail
    ResourceChangeDetail,
    resourceChangeDetail,
    rcdEvaluation,
    rcdChangeSource,
    rcdCausingEntity,
    rcdTarget,

    -- ** ResourceIdentifierSummary
    ResourceIdentifierSummary,
    resourceIdentifierSummary,
    risResourceIdentifiers,
    risResourceType,
    risLogicalResourceIds,

    -- ** ResourceTargetDefinition
    ResourceTargetDefinition,
    resourceTargetDefinition,
    rtdRequiresRecreation,
    rtdName,
    rtdAttribute,

    -- ** ResourceToImport
    ResourceToImport,
    resourceToImport,
    rtiResourceType,
    rtiLogicalResourceId,
    rtiResourceIdentifier,

    -- ** RollbackConfiguration
    RollbackConfiguration,
    rollbackConfiguration,
    rcMonitoringTimeInMinutes,
    rcRollbackTriggers,

    -- ** RollbackTrigger
    RollbackTrigger,
    rollbackTrigger,
    rtARN,
    rtType,

    -- ** Stack
    Stack,
    stack,
    sOutputs,
    sDriftInformation,
    sRoleARN,
    sDeletionTime,
    sCapabilities,
    sStackStatusReason,
    sEnableTerminationProtection,
    sStackId,
    sNotificationARNs,
    sRootId,
    sTags,
    sChangeSetId,
    sTimeoutInMinutes,
    sParentId,
    sRollbackConfiguration,
    sDescription,
    sDisableRollback,
    sParameters,
    sLastUpdatedTime,
    sStackName,
    sCreationTime,
    sStackStatus,

    -- ** StackDriftInformation
    StackDriftInformation,
    stackDriftInformation,
    sdiLastCheckTimestamp,
    sdiStackDriftStatus,

    -- ** StackDriftInformationSummary
    StackDriftInformationSummary,
    stackDriftInformationSummary,
    sdisLastCheckTimestamp,
    sdisStackDriftStatus,

    -- ** StackEvent
    StackEvent,
    stackEvent,
    seResourceProperties,
    sePhysicalResourceId,
    seResourceType,
    seResourceStatusReason,
    seLogicalResourceId,
    seResourceStatus,
    seClientRequestToken,
    seStackId,
    seEventId,
    seStackName,
    seTimestamp,

    -- ** StackInstance
    StackInstance,
    stackInstance,
    siStatus,
    siParameterOverrides,
    siStackId,
    siStackInstanceStatus,
    siOrganizationalUnitId,
    siLastDriftCheckTimestamp,
    siDriftStatus,
    siAccount,
    siStackSetId,
    siRegion,
    siStatusReason,

    -- ** StackInstanceComprehensiveStatus
    StackInstanceComprehensiveStatus,
    stackInstanceComprehensiveStatus,
    sicsDetailedStatus,

    -- ** StackInstanceFilter
    StackInstanceFilter,
    stackInstanceFilter,
    sifValues,
    sifName,

    -- ** StackInstanceSummary
    StackInstanceSummary,
    stackInstanceSummary,
    sisStatus,
    sisStackId,
    sisStackInstanceStatus,
    sisOrganizationalUnitId,
    sisLastDriftCheckTimestamp,
    sisDriftStatus,
    sisAccount,
    sisStackSetId,
    sisRegion,
    sisStatusReason,

    -- ** StackResource
    StackResource,
    stackResource,
    srDriftInformation,
    srStackName,
    srStackId,
    srPhysicalResourceId,
    srResourceStatusReason,
    srModuleInfo,
    srDescription,
    srLogicalResourceId,
    srResourceType,
    srTimestamp,
    srResourceStatus,

    -- ** StackResourceDetail
    StackResourceDetail,
    stackResourceDetail,
    staDriftInformation,
    staStackName,
    staStackId,
    staMetadata,
    staPhysicalResourceId,
    staResourceStatusReason,
    staModuleInfo,
    staDescription,
    staLogicalResourceId,
    staResourceType,
    staLastUpdatedTimestamp,
    staResourceStatus,

    -- ** StackResourceDrift
    StackResourceDrift,
    stackResourceDrift,
    srdActualProperties,
    srdPhysicalResourceIdContext,
    srdPhysicalResourceId,
    srdExpectedProperties,
    srdModuleInfo,
    srdPropertyDifferences,
    srdStackId,
    srdLogicalResourceId,
    srdResourceType,
    srdStackResourceDriftStatus,
    srdTimestamp,

    -- ** StackResourceDriftInformation
    StackResourceDriftInformation,
    stackResourceDriftInformation,
    srdiLastCheckTimestamp,
    srdiStackResourceDriftStatus,

    -- ** StackResourceDriftInformationSummary
    StackResourceDriftInformationSummary,
    stackResourceDriftInformationSummary,
    srdisLastCheckTimestamp,
    srdisStackResourceDriftStatus,

    -- ** StackResourceSummary
    StackResourceSummary,
    stackResourceSummary,
    srsDriftInformation,
    srsPhysicalResourceId,
    srsResourceStatusReason,
    srsModuleInfo,
    srsLogicalResourceId,
    srsResourceType,
    srsLastUpdatedTimestamp,
    srsResourceStatus,

    -- ** StackSet
    StackSet,
    stackSet,
    ssStatus,
    ssPermissionModel,
    ssExecutionRoleName,
    ssCapabilities,
    ssOrganizationalUnitIds,
    ssAdministrationRoleARN,
    ssStackSetDriftDetectionDetails,
    ssStackSetId,
    ssTags,
    ssStackSetARN,
    ssAutoDeployment,
    ssDescription,
    ssStackSetName,
    ssTemplateBody,
    ssParameters,

    -- ** StackSetDriftDetectionDetails
    StackSetDriftDetectionDetails,
    stackSetDriftDetectionDetails,
    ssdddInSyncStackInstancesCount,
    ssdddFailedStackInstancesCount,
    ssdddDriftedStackInstancesCount,
    ssdddInProgressStackInstancesCount,
    ssdddLastDriftCheckTimestamp,
    ssdddDriftStatus,
    ssdddDriftDetectionStatus,
    ssdddTotalStackInstancesCount,

    -- ** StackSetOperation
    StackSetOperation,
    stackSetOperation,
    ssoCreationTimestamp,
    ssoStatus,
    ssoExecutionRoleName,
    ssoEndTimestamp,
    ssoDeploymentTargets,
    ssoOperationId,
    ssoOperationPreferences,
    ssoAdministrationRoleARN,
    ssoStackSetDriftDetectionDetails,
    ssoStackSetId,
    ssoAction,
    ssoRetainStacks,

    -- ** StackSetOperationPreferences
    StackSetOperationPreferences,
    stackSetOperationPreferences,
    ssopMaxConcurrentPercentage,
    ssopRegionOrder,
    ssopFailureToleranceCount,
    ssopMaxConcurrentCount,
    ssopFailureTolerancePercentage,

    -- ** StackSetOperationResultSummary
    StackSetOperationResultSummary,
    stackSetOperationResultSummary,
    ssorsAccountGateResult,
    ssorsStatus,
    ssorsOrganizationalUnitId,
    ssorsAccount,
    ssorsRegion,
    ssorsStatusReason,

    -- ** StackSetOperationSummary
    StackSetOperationSummary,
    stackSetOperationSummary,
    ssosCreationTimestamp,
    ssosStatus,
    ssosEndTimestamp,
    ssosOperationId,
    ssosAction,

    -- ** StackSetSummary
    StackSetSummary,
    stackSetSummary,
    sssStatus,
    sssPermissionModel,
    sssLastDriftCheckTimestamp,
    sssDriftStatus,
    sssStackSetId,
    sssAutoDeployment,
    sssDescription,
    sssStackSetName,

    -- ** StackSummary
    StackSummary,
    stackSummary,
    ssDriftInformation,
    ssDeletionTime,
    ssTemplateDescription,
    ssStackStatusReason,
    ssStackId,
    ssRootId,
    ssParentId,
    ssLastUpdatedTime,
    ssStackName,
    ssCreationTime,
    ssStackStatus,

    -- ** Tag
    Tag,
    tag,
    tagKey,
    tagValue,

    -- ** TemplateParameter
    TemplateParameter,
    templateParameter,
    tpParameterKey,
    tpDescription,
    tpNoEcho,
    tpDefaultValue,

    -- ** TypeSummary
    TypeSummary,
    typeSummary,
    tsTypeName,
    tsLastUpdated,
    tsDefaultVersionId,
    tsDescription,
    tsType,
    tsTypeARN,

    -- ** TypeVersionSummary
    TypeVersionSummary,
    typeVersionSummary,
    tvsTypeName,
    tvsARN,
    tvsVersionId,
    tvsDescription,
    tvsIsDefaultVersion,
    tvsType,
    tvsTimeCreated,
  )
where

import Network.AWS.CloudFormation.CancelUpdateStack
import Network.AWS.CloudFormation.ContinueUpdateRollback
import Network.AWS.CloudFormation.CreateChangeSet
import Network.AWS.CloudFormation.CreateStack
import Network.AWS.CloudFormation.CreateStackInstances
import Network.AWS.CloudFormation.CreateStackSet
import Network.AWS.CloudFormation.DeleteChangeSet
import Network.AWS.CloudFormation.DeleteStack
import Network.AWS.CloudFormation.DeleteStackInstances
import Network.AWS.CloudFormation.DeleteStackSet
import Network.AWS.CloudFormation.DeregisterType
import Network.AWS.CloudFormation.DescribeAccountLimits
import Network.AWS.CloudFormation.DescribeChangeSet
import Network.AWS.CloudFormation.DescribeStackDriftDetectionStatus
import Network.AWS.CloudFormation.DescribeStackEvents
import Network.AWS.CloudFormation.DescribeStackInstance
import Network.AWS.CloudFormation.DescribeStackResource
import Network.AWS.CloudFormation.DescribeStackResourceDrifts
import Network.AWS.CloudFormation.DescribeStackResources
import Network.AWS.CloudFormation.DescribeStackSet
import Network.AWS.CloudFormation.DescribeStackSetOperation
import Network.AWS.CloudFormation.DescribeStacks
import Network.AWS.CloudFormation.DescribeType
import Network.AWS.CloudFormation.DescribeTypeRegistration
import Network.AWS.CloudFormation.DetectStackDrift
import Network.AWS.CloudFormation.DetectStackResourceDrift
import Network.AWS.CloudFormation.DetectStackSetDrift
import Network.AWS.CloudFormation.EstimateTemplateCost
import Network.AWS.CloudFormation.ExecuteChangeSet
import Network.AWS.CloudFormation.GetStackPolicy
import Network.AWS.CloudFormation.GetTemplate
import Network.AWS.CloudFormation.GetTemplateSummary
import Network.AWS.CloudFormation.ListChangeSets
import Network.AWS.CloudFormation.ListExports
import Network.AWS.CloudFormation.ListImports
import Network.AWS.CloudFormation.ListStackInstances
import Network.AWS.CloudFormation.ListStackResources
import Network.AWS.CloudFormation.ListStackSetOperationResults
import Network.AWS.CloudFormation.ListStackSetOperations
import Network.AWS.CloudFormation.ListStackSets
import Network.AWS.CloudFormation.ListStacks
import Network.AWS.CloudFormation.ListTypeRegistrations
import Network.AWS.CloudFormation.ListTypeVersions
import Network.AWS.CloudFormation.ListTypes
import Network.AWS.CloudFormation.RecordHandlerProgress
import Network.AWS.CloudFormation.RegisterType
import Network.AWS.CloudFormation.SetStackPolicy
import Network.AWS.CloudFormation.SetTypeDefaultVersion
import Network.AWS.CloudFormation.SignalResource
import Network.AWS.CloudFormation.StopStackSetOperation
import Network.AWS.CloudFormation.Types
import Network.AWS.CloudFormation.UpdateStack
import Network.AWS.CloudFormation.UpdateStackInstances
import Network.AWS.CloudFormation.UpdateStackSet
import Network.AWS.CloudFormation.UpdateTerminationProtection
import Network.AWS.CloudFormation.ValidateTemplate
import Network.AWS.CloudFormation.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'CloudFormation'.

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
