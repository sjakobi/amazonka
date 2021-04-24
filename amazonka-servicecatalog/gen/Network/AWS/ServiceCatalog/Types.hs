{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types
  ( -- * Service Configuration
    serviceCatalog,

    -- * Errors
    _InvalidParametersException,
    _OperationNotSupportedException,
    _InvalidStateException,
    _DuplicateResourceException,
    _ResourceInUseException,
    _LimitExceededException,
    _TagOptionNotMigratedException,
    _ResourceNotFoundException,

    -- * AccessLevelFilterKey
    AccessLevelFilterKey (..),

    -- * AccessStatus
    AccessStatus (..),

    -- * ChangeAction
    ChangeAction (..),

    -- * CopyOption
    CopyOption (..),

    -- * CopyProductStatus
    CopyProductStatus (..),

    -- * DescribePortfolioShareType
    DescribePortfolioShareType (..),

    -- * EvaluationType
    EvaluationType (..),

    -- * OrganizationNodeType
    OrganizationNodeType (..),

    -- * PortfolioShareType
    PortfolioShareType (..),

    -- * PrincipalType
    PrincipalType (..),

    -- * ProductSource
    ProductSource (..),

    -- * ProductType
    ProductType (..),

    -- * ProductViewFilterBy
    ProductViewFilterBy (..),

    -- * ProductViewSortBy
    ProductViewSortBy (..),

    -- * PropertyKey
    PropertyKey (..),

    -- * ProvisionedProductPlanStatus
    ProvisionedProductPlanStatus (..),

    -- * ProvisionedProductPlanType
    ProvisionedProductPlanType (..),

    -- * ProvisionedProductStatus
    ProvisionedProductStatus (..),

    -- * ProvisionedProductViewFilterBy
    ProvisionedProductViewFilterBy (..),

    -- * ProvisioningArtifactGuidance
    ProvisioningArtifactGuidance (..),

    -- * ProvisioningArtifactPropertyName
    ProvisioningArtifactPropertyName (..),

    -- * ProvisioningArtifactType
    ProvisioningArtifactType (..),

    -- * RecordStatus
    RecordStatus (..),

    -- * Replacement
    Replacement (..),

    -- * RequestStatus
    RequestStatus (..),

    -- * RequiresRecreation
    RequiresRecreation (..),

    -- * ResourceAttribute
    ResourceAttribute (..),

    -- * ServiceActionAssociationErrorCode
    ServiceActionAssociationErrorCode (..),

    -- * ServiceActionDefinitionKey
    ServiceActionDefinitionKey (..),

    -- * ServiceActionDefinitionType
    ServiceActionDefinitionType (..),

    -- * ShareStatus
    ShareStatus (..),

    -- * SortOrder
    SortOrder (..),

    -- * StackInstanceStatus
    StackInstanceStatus (..),

    -- * StackSetOperationType
    StackSetOperationType (..),

    -- * AccessLevelFilter
    AccessLevelFilter (..),
    accessLevelFilter,
    alfKey,
    alfValue,

    -- * BudgetDetail
    BudgetDetail (..),
    budgetDetail,
    bdBudgetName,

    -- * CloudWatchDashboard
    CloudWatchDashboard (..),
    cloudWatchDashboard,
    cwdName,

    -- * ConstraintDetail
    ConstraintDetail (..),
    constraintDetail,
    cdConstraintId,
    cdPortfolioId,
    cdOwner,
    cdProductId,
    cdDescription,
    cdType,

    -- * ConstraintSummary
    ConstraintSummary (..),
    constraintSummary,
    csDescription,
    csType,

    -- * ExecutionParameter
    ExecutionParameter (..),
    executionParameter,
    epName,
    epDefaultValues,
    epType,

    -- * FailedServiceActionAssociation
    FailedServiceActionAssociation (..),
    failedServiceActionAssociation,
    fsaaProvisioningArtifactId,
    fsaaServiceActionId,
    fsaaProductId,
    fsaaErrorMessage,
    fsaaErrorCode,

    -- * LaunchPath
    LaunchPath (..),
    launchPath,
    lpId,
    lpName,

    -- * LaunchPathSummary
    LaunchPathSummary (..),
    launchPathSummary,
    lpsConstraintSummaries,
    lpsId,
    lpsName,
    lpsTags,

    -- * ListRecordHistorySearchFilter
    ListRecordHistorySearchFilter (..),
    listRecordHistorySearchFilter,
    lrhsfKey,
    lrhsfValue,

    -- * ListTagOptionsFilters
    ListTagOptionsFilters (..),
    listTagOptionsFilters,
    ltofKey,
    ltofActive,
    ltofValue,

    -- * OrganizationNode
    OrganizationNode (..),
    organizationNode,
    onValue,
    onType,

    -- * ParameterConstraints
    ParameterConstraints (..),
    parameterConstraints,
    pcMaxValue,
    pcMinLength,
    pcAllowedValues,
    pcMinValue,
    pcConstraintDescription,
    pcMaxLength,
    pcAllowedPattern,

    -- * PortfolioDetail
    PortfolioDetail (..),
    portfolioDetail,
    pdProviderName,
    pdId,
    pdARN,
    pdCreatedTime,
    pdDescription,
    pdDisplayName,

    -- * PortfolioShareDetail
    PortfolioShareDetail (..),
    portfolioShareDetail,
    psdShareTagOptions,
    psdPrincipalId,
    psdAccepted,
    psdType,

    -- * Principal
    Principal (..),
    principal,
    pPrincipalARN,
    pPrincipalType,

    -- * ProductViewAggregationValue
    ProductViewAggregationValue (..),
    productViewAggregationValue,
    pvavValue,
    pvavApproximateCount,

    -- * ProductViewDetail
    ProductViewDetail (..),
    productViewDetail,
    pvdStatus,
    pvdProductARN,
    pvdCreatedTime,
    pvdProductViewSummary,

    -- * ProductViewSummary
    ProductViewSummary (..),
    productViewSummary,
    pvsDistributor,
    pvsId,
    pvsName,
    pvsHasDefaultPath,
    pvsShortDescription,
    pvsSupportURL,
    pvsSupportDescription,
    pvsOwner,
    pvsProductId,
    pvsSupportEmail,
    pvsType,

    -- * ProvisionedProductAttribute
    ProvisionedProductAttribute (..),
    provisionedProductAttribute,
    ppaStatusMessage,
    ppaLastSuccessfulProvisioningRecordId,
    ppaIdempotencyToken,
    ppaStatus,
    ppaUserARN,
    ppaProvisioningArtifactName,
    ppaARN,
    ppaId,
    ppaCreatedTime,
    ppaProvisioningArtifactId,
    ppaName,
    ppaProductName,
    ppaTags,
    ppaProductId,
    ppaLastProvisioningRecordId,
    ppaType,
    ppaPhysicalId,
    ppaUserARNSession,
    ppaLastRecordId,

    -- * ProvisionedProductDetail
    ProvisionedProductDetail (..),
    provisionedProductDetail,
    ppdStatusMessage,
    ppdLastSuccessfulProvisioningRecordId,
    ppdIdempotencyToken,
    ppdStatus,
    ppdARN,
    ppdId,
    ppdCreatedTime,
    ppdProvisioningArtifactId,
    ppdName,
    ppdLaunchRoleARN,
    ppdProductId,
    ppdLastProvisioningRecordId,
    ppdType,
    ppdLastRecordId,

    -- * ProvisionedProductPlanDetails
    ProvisionedProductPlanDetails (..),
    provisionedProductPlanDetails,
    pppdProvisionProductId,
    pppdStatusMessage,
    pppdStatus,
    pppdNotificationARNs,
    pppdUpdatedTime,
    pppdCreatedTime,
    pppdProvisioningArtifactId,
    pppdPlanName,
    pppdTags,
    pppdPlanId,
    pppdProductId,
    pppdProvisioningParameters,
    pppdPlanType,
    pppdPathId,
    pppdProvisionProductName,

    -- * ProvisionedProductPlanSummary
    ProvisionedProductPlanSummary (..),
    provisionedProductPlanSummary,
    pppsProvisionProductId,
    pppsProvisioningArtifactId,
    pppsPlanName,
    pppsPlanId,
    pppsPlanType,
    pppsProvisionProductName,

    -- * ProvisioningArtifact
    ProvisioningArtifact (..),
    provisioningArtifact,
    paGuidance,
    paId,
    paCreatedTime,
    paName,
    paDescription,

    -- * ProvisioningArtifactDetail
    ProvisioningArtifactDetail (..),
    provisioningArtifactDetail,
    padGuidance,
    padId,
    padCreatedTime,
    padName,
    padActive,
    padDescription,
    padType,

    -- * ProvisioningArtifactOutput
    ProvisioningArtifactOutput (..),
    provisioningArtifactOutput,
    paoKey,
    paoDescription,

    -- * ProvisioningArtifactParameter
    ProvisioningArtifactParameter (..),
    provisioningArtifactParameter,
    pIsNoEcho,
    pParameterConstraints,
    pParameterType,
    pParameterKey,
    pDescription,
    pDefaultValue,

    -- * ProvisioningArtifactPreferences
    ProvisioningArtifactPreferences (..),
    provisioningArtifactPreferences,
    papStackSetAccounts,
    papStackSetRegions,

    -- * ProvisioningArtifactProperties
    ProvisioningArtifactProperties (..),
    provisioningArtifactProperties,
    papDisableTemplateValidation,
    papName,
    papDescription,
    papType,
    papInfo,

    -- * ProvisioningArtifactSummary
    ProvisioningArtifactSummary (..),
    provisioningArtifactSummary,
    pasId,
    pasCreatedTime,
    pasProvisioningArtifactMetadata,
    pasName,
    pasDescription,

    -- * ProvisioningArtifactView
    ProvisioningArtifactView (..),
    provisioningArtifactView,
    pavProductViewSummary,
    pavProvisioningArtifact,

    -- * ProvisioningParameter
    ProvisioningParameter (..),
    provisioningParameter,
    ppKey,
    ppValue,

    -- * ProvisioningPreferences
    ProvisioningPreferences (..),
    provisioningPreferences,
    ppStackSetFailureToleranceCount,
    ppStackSetAccounts,
    ppStackSetFailureTolerancePercentage,
    ppStackSetRegions,
    ppStackSetMaxConcurrencyCount,
    ppStackSetMaxConcurrencyPercentage,

    -- * RecordDetail
    RecordDetail (..),
    recordDetail,
    rdRecordTags,
    rdStatus,
    rdProvisionedProductName,
    rdRecordErrors,
    rdProvisionedProductId,
    rdProvisionedProductType,
    rdRecordId,
    rdUpdatedTime,
    rdCreatedTime,
    rdProvisioningArtifactId,
    rdLaunchRoleARN,
    rdProductId,
    rdPathId,
    rdRecordType,

    -- * RecordError
    RecordError (..),
    recordError,
    reCode,
    reDescription,

    -- * RecordOutput
    RecordOutput (..),
    recordOutput,
    roOutputKey,
    roOutputValue,
    roDescription,

    -- * RecordTag
    RecordTag (..),
    recordTag,
    rtKey,
    rtValue,

    -- * ResourceChange
    ResourceChange (..),
    resourceChange,
    rcPhysicalResourceId,
    rcResourceType,
    rcScope,
    rcDetails,
    rcLogicalResourceId,
    rcAction,
    rcReplacement,

    -- * ResourceChangeDetail
    ResourceChangeDetail (..),
    resourceChangeDetail,
    rcdEvaluation,
    rcdCausingEntity,
    rcdTarget,

    -- * ResourceDetail
    ResourceDetail (..),
    resourceDetail,
    rId,
    rARN,
    rCreatedTime,
    rName,
    rDescription,

    -- * ResourceTargetDefinition
    ResourceTargetDefinition (..),
    resourceTargetDefinition,
    rtdRequiresRecreation,
    rtdName,
    rtdAttribute,

    -- * ServiceActionAssociation
    ServiceActionAssociation (..),
    serviceActionAssociation,
    saaServiceActionId,
    saaProductId,
    saaProvisioningArtifactId,

    -- * ServiceActionDetail
    ServiceActionDetail (..),
    serviceActionDetail,
    sadServiceActionSummary,
    sadDefinition,

    -- * ServiceActionSummary
    ServiceActionSummary (..),
    serviceActionSummary,
    sasId,
    sasDefinitionType,
    sasName,
    sasDescription,

    -- * ShareDetails
    ShareDetails (..),
    shareDetails,
    sdShareErrors,
    sdSuccessfulShares,

    -- * ShareError
    ShareError (..),
    shareError,
    seMessage,
    seAccounts,
    seError,

    -- * StackInstance
    StackInstance (..),
    stackInstance,
    siStackInstanceStatus,
    siAccount,
    siRegion,

    -- * Tag
    Tag (..),
    tag,
    tagKey,
    tagValue,

    -- * TagOptionDetail
    TagOptionDetail (..),
    tagOptionDetail,
    todKey,
    todId,
    todActive,
    todOwner,
    todValue,

    -- * TagOptionSummary
    TagOptionSummary (..),
    tagOptionSummary,
    tosKey,
    tosValues,

    -- * UpdateProvisioningParameter
    UpdateProvisioningParameter (..),
    updateProvisioningParameter,
    uppKey,
    uppUsePreviousValue,
    uppValue,

    -- * UpdateProvisioningPreferences
    UpdateProvisioningPreferences (..),
    updateProvisioningPreferences,
    uppStackSetOperationType,
    uppStackSetFailureToleranceCount,
    uppStackSetAccounts,
    uppStackSetFailureTolerancePercentage,
    uppStackSetRegions,
    uppStackSetMaxConcurrencyCount,
    uppStackSetMaxConcurrencyPercentage,

    -- * UsageInstruction
    UsageInstruction (..),
    usageInstruction,
    uiValue,
    uiType,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.ServiceCatalog.Types.AccessLevelFilter
import Network.AWS.ServiceCatalog.Types.AccessLevelFilterKey
import Network.AWS.ServiceCatalog.Types.AccessStatus
import Network.AWS.ServiceCatalog.Types.BudgetDetail
import Network.AWS.ServiceCatalog.Types.ChangeAction
import Network.AWS.ServiceCatalog.Types.CloudWatchDashboard
import Network.AWS.ServiceCatalog.Types.ConstraintDetail
import Network.AWS.ServiceCatalog.Types.ConstraintSummary
import Network.AWS.ServiceCatalog.Types.CopyOption
import Network.AWS.ServiceCatalog.Types.CopyProductStatus
import Network.AWS.ServiceCatalog.Types.DescribePortfolioShareType
import Network.AWS.ServiceCatalog.Types.EvaluationType
import Network.AWS.ServiceCatalog.Types.ExecutionParameter
import Network.AWS.ServiceCatalog.Types.FailedServiceActionAssociation
import Network.AWS.ServiceCatalog.Types.LaunchPath
import Network.AWS.ServiceCatalog.Types.LaunchPathSummary
import Network.AWS.ServiceCatalog.Types.ListRecordHistorySearchFilter
import Network.AWS.ServiceCatalog.Types.ListTagOptionsFilters
import Network.AWS.ServiceCatalog.Types.OrganizationNode
import Network.AWS.ServiceCatalog.Types.OrganizationNodeType
import Network.AWS.ServiceCatalog.Types.ParameterConstraints
import Network.AWS.ServiceCatalog.Types.PortfolioDetail
import Network.AWS.ServiceCatalog.Types.PortfolioShareDetail
import Network.AWS.ServiceCatalog.Types.PortfolioShareType
import Network.AWS.ServiceCatalog.Types.Principal
import Network.AWS.ServiceCatalog.Types.PrincipalType
import Network.AWS.ServiceCatalog.Types.ProductSource
import Network.AWS.ServiceCatalog.Types.ProductType
import Network.AWS.ServiceCatalog.Types.ProductViewAggregationValue
import Network.AWS.ServiceCatalog.Types.ProductViewDetail
import Network.AWS.ServiceCatalog.Types.ProductViewFilterBy
import Network.AWS.ServiceCatalog.Types.ProductViewSortBy
import Network.AWS.ServiceCatalog.Types.ProductViewSummary
import Network.AWS.ServiceCatalog.Types.PropertyKey
import Network.AWS.ServiceCatalog.Types.ProvisionedProductAttribute
import Network.AWS.ServiceCatalog.Types.ProvisionedProductDetail
import Network.AWS.ServiceCatalog.Types.ProvisionedProductPlanDetails
import Network.AWS.ServiceCatalog.Types.ProvisionedProductPlanStatus
import Network.AWS.ServiceCatalog.Types.ProvisionedProductPlanSummary
import Network.AWS.ServiceCatalog.Types.ProvisionedProductPlanType
import Network.AWS.ServiceCatalog.Types.ProvisionedProductStatus
import Network.AWS.ServiceCatalog.Types.ProvisionedProductViewFilterBy
import Network.AWS.ServiceCatalog.Types.ProvisioningArtifact
import Network.AWS.ServiceCatalog.Types.ProvisioningArtifactDetail
import Network.AWS.ServiceCatalog.Types.ProvisioningArtifactGuidance
import Network.AWS.ServiceCatalog.Types.ProvisioningArtifactOutput
import Network.AWS.ServiceCatalog.Types.ProvisioningArtifactParameter
import Network.AWS.ServiceCatalog.Types.ProvisioningArtifactPreferences
import Network.AWS.ServiceCatalog.Types.ProvisioningArtifactProperties
import Network.AWS.ServiceCatalog.Types.ProvisioningArtifactPropertyName
import Network.AWS.ServiceCatalog.Types.ProvisioningArtifactSummary
import Network.AWS.ServiceCatalog.Types.ProvisioningArtifactType
import Network.AWS.ServiceCatalog.Types.ProvisioningArtifactView
import Network.AWS.ServiceCatalog.Types.ProvisioningParameter
import Network.AWS.ServiceCatalog.Types.ProvisioningPreferences
import Network.AWS.ServiceCatalog.Types.RecordDetail
import Network.AWS.ServiceCatalog.Types.RecordError
import Network.AWS.ServiceCatalog.Types.RecordOutput
import Network.AWS.ServiceCatalog.Types.RecordStatus
import Network.AWS.ServiceCatalog.Types.RecordTag
import Network.AWS.ServiceCatalog.Types.Replacement
import Network.AWS.ServiceCatalog.Types.RequestStatus
import Network.AWS.ServiceCatalog.Types.RequiresRecreation
import Network.AWS.ServiceCatalog.Types.ResourceAttribute
import Network.AWS.ServiceCatalog.Types.ResourceChange
import Network.AWS.ServiceCatalog.Types.ResourceChangeDetail
import Network.AWS.ServiceCatalog.Types.ResourceDetail
import Network.AWS.ServiceCatalog.Types.ResourceTargetDefinition
import Network.AWS.ServiceCatalog.Types.ServiceActionAssociation
import Network.AWS.ServiceCatalog.Types.ServiceActionAssociationErrorCode
import Network.AWS.ServiceCatalog.Types.ServiceActionDefinitionKey
import Network.AWS.ServiceCatalog.Types.ServiceActionDefinitionType
import Network.AWS.ServiceCatalog.Types.ServiceActionDetail
import Network.AWS.ServiceCatalog.Types.ServiceActionSummary
import Network.AWS.ServiceCatalog.Types.ShareDetails
import Network.AWS.ServiceCatalog.Types.ShareError
import Network.AWS.ServiceCatalog.Types.ShareStatus
import Network.AWS.ServiceCatalog.Types.SortOrder
import Network.AWS.ServiceCatalog.Types.StackInstance
import Network.AWS.ServiceCatalog.Types.StackInstanceStatus
import Network.AWS.ServiceCatalog.Types.StackSetOperationType
import Network.AWS.ServiceCatalog.Types.Tag
import Network.AWS.ServiceCatalog.Types.TagOptionDetail
import Network.AWS.ServiceCatalog.Types.TagOptionSummary
import Network.AWS.ServiceCatalog.Types.UpdateProvisioningParameter
import Network.AWS.ServiceCatalog.Types.UpdateProvisioningPreferences
import Network.AWS.ServiceCatalog.Types.UsageInstruction
import Network.AWS.Sign.V4

-- | API version @2015-12-10@ of the Amazon Service Catalog SDK configuration.
serviceCatalog :: Service
serviceCatalog =
  Service
    { _svcAbbrev = "ServiceCatalog",
      _svcSigner = v4,
      _svcPrefix = "servicecatalog",
      _svcVersion = "2015-12-10",
      _svcEndpoint = defaultEndpoint serviceCatalog,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "ServiceCatalog",
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

-- | One or more parameters provided to the operation are not valid.
_InvalidParametersException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidParametersException =
  _MatchServiceError
    serviceCatalog
    "InvalidParametersException"

-- | The operation is not supported.
_OperationNotSupportedException :: AsError a => Getting (First ServiceError) a ServiceError
_OperationNotSupportedException =
  _MatchServiceError
    serviceCatalog
    "OperationNotSupportedException"

-- | An attempt was made to modify a resource that is in a state that is not valid. Check your resources to ensure that they are in valid states before retrying the operation.
_InvalidStateException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidStateException =
  _MatchServiceError
    serviceCatalog
    "InvalidStateException"

-- | The specified resource is a duplicate.
_DuplicateResourceException :: AsError a => Getting (First ServiceError) a ServiceError
_DuplicateResourceException =
  _MatchServiceError
    serviceCatalog
    "DuplicateResourceException"

-- | A resource that is currently in use. Ensure that the resource is not in use and retry the operation.
_ResourceInUseException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceInUseException =
  _MatchServiceError
    serviceCatalog
    "ResourceInUseException"

-- | The current limits of the service would have been exceeded by this operation. Decrease your resource use or increase your service limits and retry the operation.
_LimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_LimitExceededException =
  _MatchServiceError
    serviceCatalog
    "LimitExceededException"

-- | An operation requiring TagOptions failed because the TagOptions migration process has not been performed for this account. Please use the AWS console to perform the migration process before retrying the operation.
_TagOptionNotMigratedException :: AsError a => Getting (First ServiceError) a ServiceError
_TagOptionNotMigratedException =
  _MatchServiceError
    serviceCatalog
    "TagOptionNotMigratedException"

-- | The specified resource was not found.
_ResourceNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotFoundException =
  _MatchServiceError
    serviceCatalog
    "ResourceNotFoundException"
