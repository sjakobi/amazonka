{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

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
    defaultService,

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
    newAccessLevelFilter,

    -- * BudgetDetail
    BudgetDetail (..),
    newBudgetDetail,

    -- * CloudWatchDashboard
    CloudWatchDashboard (..),
    newCloudWatchDashboard,

    -- * ConstraintDetail
    ConstraintDetail (..),
    newConstraintDetail,

    -- * ConstraintSummary
    ConstraintSummary (..),
    newConstraintSummary,

    -- * ExecutionParameter
    ExecutionParameter (..),
    newExecutionParameter,

    -- * FailedServiceActionAssociation
    FailedServiceActionAssociation (..),
    newFailedServiceActionAssociation,

    -- * LaunchPath
    LaunchPath (..),
    newLaunchPath,

    -- * LaunchPathSummary
    LaunchPathSummary (..),
    newLaunchPathSummary,

    -- * ListRecordHistorySearchFilter
    ListRecordHistorySearchFilter (..),
    newListRecordHistorySearchFilter,

    -- * ListTagOptionsFilters
    ListTagOptionsFilters (..),
    newListTagOptionsFilters,

    -- * OrganizationNode
    OrganizationNode (..),
    newOrganizationNode,

    -- * ParameterConstraints
    ParameterConstraints (..),
    newParameterConstraints,

    -- * PortfolioDetail
    PortfolioDetail (..),
    newPortfolioDetail,

    -- * PortfolioShareDetail
    PortfolioShareDetail (..),
    newPortfolioShareDetail,

    -- * Principal
    Principal (..),
    newPrincipal,

    -- * ProductViewAggregationValue
    ProductViewAggregationValue (..),
    newProductViewAggregationValue,

    -- * ProductViewDetail
    ProductViewDetail (..),
    newProductViewDetail,

    -- * ProductViewSummary
    ProductViewSummary (..),
    newProductViewSummary,

    -- * ProvisionedProductAttribute
    ProvisionedProductAttribute (..),
    newProvisionedProductAttribute,

    -- * ProvisionedProductDetail
    ProvisionedProductDetail (..),
    newProvisionedProductDetail,

    -- * ProvisionedProductPlanDetails
    ProvisionedProductPlanDetails (..),
    newProvisionedProductPlanDetails,

    -- * ProvisionedProductPlanSummary
    ProvisionedProductPlanSummary (..),
    newProvisionedProductPlanSummary,

    -- * ProvisioningArtifact
    ProvisioningArtifact (..),
    newProvisioningArtifact,

    -- * ProvisioningArtifactDetail
    ProvisioningArtifactDetail (..),
    newProvisioningArtifactDetail,

    -- * ProvisioningArtifactOutput
    ProvisioningArtifactOutput (..),
    newProvisioningArtifactOutput,

    -- * ProvisioningArtifactParameter
    ProvisioningArtifactParameter (..),
    newProvisioningArtifactParameter,

    -- * ProvisioningArtifactPreferences
    ProvisioningArtifactPreferences (..),
    newProvisioningArtifactPreferences,

    -- * ProvisioningArtifactProperties
    ProvisioningArtifactProperties (..),
    newProvisioningArtifactProperties,

    -- * ProvisioningArtifactSummary
    ProvisioningArtifactSummary (..),
    newProvisioningArtifactSummary,

    -- * ProvisioningArtifactView
    ProvisioningArtifactView (..),
    newProvisioningArtifactView,

    -- * ProvisioningParameter
    ProvisioningParameter (..),
    newProvisioningParameter,

    -- * ProvisioningPreferences
    ProvisioningPreferences (..),
    newProvisioningPreferences,

    -- * RecordDetail
    RecordDetail (..),
    newRecordDetail,

    -- * RecordError
    RecordError (..),
    newRecordError,

    -- * RecordOutput
    RecordOutput (..),
    newRecordOutput,

    -- * RecordTag
    RecordTag (..),
    newRecordTag,

    -- * ResourceChange
    ResourceChange (..),
    newResourceChange,

    -- * ResourceChangeDetail
    ResourceChangeDetail (..),
    newResourceChangeDetail,

    -- * ResourceDetail
    ResourceDetail (..),
    newResourceDetail,

    -- * ResourceTargetDefinition
    ResourceTargetDefinition (..),
    newResourceTargetDefinition,

    -- * ServiceActionAssociation
    ServiceActionAssociation (..),
    newServiceActionAssociation,

    -- * ServiceActionDetail
    ServiceActionDetail (..),
    newServiceActionDetail,

    -- * ServiceActionSummary
    ServiceActionSummary (..),
    newServiceActionSummary,

    -- * ShareDetails
    ShareDetails (..),
    newShareDetails,

    -- * ShareError
    ShareError (..),
    newShareError,

    -- * StackInstance
    StackInstance (..),
    newStackInstance,

    -- * Tag
    Tag (..),
    newTag,

    -- * TagOptionDetail
    TagOptionDetail (..),
    newTagOptionDetail,

    -- * TagOptionSummary
    TagOptionSummary (..),
    newTagOptionSummary,

    -- * UpdateProvisioningParameter
    UpdateProvisioningParameter (..),
    newUpdateProvisioningParameter,

    -- * UpdateProvisioningPreferences
    UpdateProvisioningPreferences (..),
    newUpdateProvisioningPreferences,

    -- * UsageInstruction
    UsageInstruction (..),
    newUsageInstruction,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
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
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2015-12-10@ of the Amazon Service Catalog SDK configuration.
defaultService :: Prelude.Service
defaultService =
  Prelude.Service
    { Prelude._svcAbbrev =
        "ServiceCatalog",
      Prelude._svcSigner = Sign.v4,
      Prelude._svcPrefix = "servicecatalog",
      Prelude._svcVersion = "2015-12-10",
      Prelude._svcEndpoint =
        Prelude.defaultEndpoint defaultService,
      Prelude._svcTimeout = Prelude.Just 70,
      Prelude._svcCheck = Prelude.statusSuccess,
      Prelude._svcError =
        Prelude.parseJSONError "ServiceCatalog",
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

-- | One or more parameters provided to the operation are not valid.
_InvalidParametersException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidParametersException =
  Prelude._MatchServiceError
    defaultService
    "InvalidParametersException"

-- | The operation is not supported.
_OperationNotSupportedException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_OperationNotSupportedException =
  Prelude._MatchServiceError
    defaultService
    "OperationNotSupportedException"

-- | An attempt was made to modify a resource that is in a state that is not
-- valid. Check your resources to ensure that they are in valid states
-- before retrying the operation.
_InvalidStateException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidStateException =
  Prelude._MatchServiceError
    defaultService
    "InvalidStateException"

-- | The specified resource is a duplicate.
_DuplicateResourceException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DuplicateResourceException =
  Prelude._MatchServiceError
    defaultService
    "DuplicateResourceException"

-- | A resource that is currently in use. Ensure that the resource is not in
-- use and retry the operation.
_ResourceInUseException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceInUseException =
  Prelude._MatchServiceError
    defaultService
    "ResourceInUseException"

-- | The current limits of the service would have been exceeded by this
-- operation. Decrease your resource use or increase your service limits
-- and retry the operation.
_LimitExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_LimitExceededException =
  Prelude._MatchServiceError
    defaultService
    "LimitExceededException"

-- | An operation requiring TagOptions failed because the TagOptions
-- migration process has not been performed for this account. Please use
-- the AWS console to perform the migration process before retrying the
-- operation.
_TagOptionNotMigratedException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TagOptionNotMigratedException =
  Prelude._MatchServiceError
    defaultService
    "TagOptionNotMigratedException"

-- | The specified resource was not found.
_ResourceNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "ResourceNotFoundException"
