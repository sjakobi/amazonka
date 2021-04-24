{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __AWS Service Catalog__
--
-- <https://aws.amazon.com/servicecatalog/ AWS Service Catalog> enables organizations to create and manage catalogs of IT services that are approved for AWS. To get the most out of this documentation, you should be familiar with the terminology discussed in <http://docs.aws.amazon.com/servicecatalog/latest/adminguide/what-is_concepts.html AWS Service Catalog Concepts> .
module Network.AWS.ServiceCatalog
  ( -- * Service Configuration
    serviceCatalog,

    -- * Errors
    -- $errors

    -- ** InvalidParametersException
    _InvalidParametersException,

    -- ** OperationNotSupportedException
    _OperationNotSupportedException,

    -- ** InvalidStateException
    _InvalidStateException,

    -- ** DuplicateResourceException
    _DuplicateResourceException,

    -- ** ResourceInUseException
    _ResourceInUseException,

    -- ** LimitExceededException
    _LimitExceededException,

    -- ** TagOptionNotMigratedException
    _TagOptionNotMigratedException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** DescribePortfolio
    module Network.AWS.ServiceCatalog.DescribePortfolio,

    -- ** ListAcceptedPortfolioShares (Paginated)
    module Network.AWS.ServiceCatalog.ListAcceptedPortfolioShares,

    -- ** DisassociateTagOptionFromResource
    module Network.AWS.ServiceCatalog.DisassociateTagOptionFromResource,

    -- ** ScanProvisionedProducts (Paginated)
    module Network.AWS.ServiceCatalog.ScanProvisionedProducts,

    -- ** AssociateProductWithPortfolio
    module Network.AWS.ServiceCatalog.AssociateProductWithPortfolio,

    -- ** ListOrganizationPortfolioAccess (Paginated)
    module Network.AWS.ServiceCatalog.ListOrganizationPortfolioAccess,

    -- ** ExecuteProvisionedProductPlan
    module Network.AWS.ServiceCatalog.ExecuteProvisionedProductPlan,

    -- ** ExecuteProvisionedProductServiceAction
    module Network.AWS.ServiceCatalog.ExecuteProvisionedProductServiceAction,

    -- ** ImportAsProvisionedProduct
    module Network.AWS.ServiceCatalog.ImportAsProvisionedProduct,

    -- ** ListPortfolioAccess
    module Network.AWS.ServiceCatalog.ListPortfolioAccess,

    -- ** CreateProvisionedProductPlan
    module Network.AWS.ServiceCatalog.CreateProvisionedProductPlan,

    -- ** DescribeTagOption
    module Network.AWS.ServiceCatalog.DescribeTagOption,

    -- ** DeleteConstraint
    module Network.AWS.ServiceCatalog.DeleteConstraint,

    -- ** UpdateConstraint
    module Network.AWS.ServiceCatalog.UpdateConstraint,

    -- ** ListResourcesForTagOption (Paginated)
    module Network.AWS.ServiceCatalog.ListResourcesForTagOption,

    -- ** DescribePortfolioShares
    module Network.AWS.ServiceCatalog.DescribePortfolioShares,

    -- ** GetProvisionedProductOutputs
    module Network.AWS.ServiceCatalog.GetProvisionedProductOutputs,

    -- ** AssociateBudgetWithResource
    module Network.AWS.ServiceCatalog.AssociateBudgetWithResource,

    -- ** DeleteProvisionedProductPlan
    module Network.AWS.ServiceCatalog.DeleteProvisionedProductPlan,

    -- ** ListLaunchPaths (Paginated)
    module Network.AWS.ServiceCatalog.ListLaunchPaths,

    -- ** CreateConstraint
    module Network.AWS.ServiceCatalog.CreateConstraint,

    -- ** DescribePortfolioShareStatus
    module Network.AWS.ServiceCatalog.DescribePortfolioShareStatus,

    -- ** DeletePortfolioShare
    module Network.AWS.ServiceCatalog.DeletePortfolioShare,

    -- ** DescribeServiceAction
    module Network.AWS.ServiceCatalog.DescribeServiceAction,

    -- ** UpdateProvisioningArtifact
    module Network.AWS.ServiceCatalog.UpdateProvisioningArtifact,

    -- ** ListStackInstancesForProvisionedProduct
    module Network.AWS.ServiceCatalog.ListStackInstancesForProvisionedProduct,

    -- ** DeleteProvisioningArtifact
    module Network.AWS.ServiceCatalog.DeleteProvisioningArtifact,

    -- ** DescribeProvisioningParameters
    module Network.AWS.ServiceCatalog.DescribeProvisioningParameters,

    -- ** ListProvisioningArtifacts
    module Network.AWS.ServiceCatalog.ListProvisioningArtifacts,

    -- ** DescribeProvisionedProduct
    module Network.AWS.ServiceCatalog.DescribeProvisionedProduct,

    -- ** DescribeProduct
    module Network.AWS.ServiceCatalog.DescribeProduct,

    -- ** UpdatePortfolioShare
    module Network.AWS.ServiceCatalog.UpdatePortfolioShare,

    -- ** SearchProvisionedProducts
    module Network.AWS.ServiceCatalog.SearchProvisionedProducts,

    -- ** ListServiceActionsForProvisioningArtifact (Paginated)
    module Network.AWS.ServiceCatalog.ListServiceActionsForProvisioningArtifact,

    -- ** CreateProvisioningArtifact
    module Network.AWS.ServiceCatalog.CreateProvisioningArtifact,

    -- ** DeletePortfolio
    module Network.AWS.ServiceCatalog.DeletePortfolio,

    -- ** CreatePortfolioShare
    module Network.AWS.ServiceCatalog.CreatePortfolioShare,

    -- ** DisassociateBudgetFromResource
    module Network.AWS.ServiceCatalog.DisassociateBudgetFromResource,

    -- ** UpdatePortfolio
    module Network.AWS.ServiceCatalog.UpdatePortfolio,

    -- ** ListPortfolios (Paginated)
    module Network.AWS.ServiceCatalog.ListPortfolios,

    -- ** GetAWSOrganizationsAccessStatus
    module Network.AWS.ServiceCatalog.GetAWSOrganizationsAccessStatus,

    -- ** SearchProductsAsAdmin (Paginated)
    module Network.AWS.ServiceCatalog.SearchProductsAsAdmin,

    -- ** DescribeRecord
    module Network.AWS.ServiceCatalog.DescribeRecord,

    -- ** DescribeConstraint
    module Network.AWS.ServiceCatalog.DescribeConstraint,

    -- ** EnableAWSOrganizationsAccess
    module Network.AWS.ServiceCatalog.EnableAWSOrganizationsAccess,

    -- ** DeleteTagOption
    module Network.AWS.ServiceCatalog.DeleteTagOption,

    -- ** DisassociateServiceActionFromProvisioningArtifact
    module Network.AWS.ServiceCatalog.DisassociateServiceActionFromProvisioningArtifact,

    -- ** UpdateTagOption
    module Network.AWS.ServiceCatalog.UpdateTagOption,

    -- ** ListConstraintsForPortfolio (Paginated)
    module Network.AWS.ServiceCatalog.ListConstraintsForPortfolio,

    -- ** ListRecordHistory (Paginated)
    module Network.AWS.ServiceCatalog.ListRecordHistory,

    -- ** CreateTagOption
    module Network.AWS.ServiceCatalog.CreateTagOption,

    -- ** UpdateProduct
    module Network.AWS.ServiceCatalog.UpdateProduct,

    -- ** UpdateServiceAction
    module Network.AWS.ServiceCatalog.UpdateServiceAction,

    -- ** DescribeProvisioningArtifact
    module Network.AWS.ServiceCatalog.DescribeProvisioningArtifact,

    -- ** DeleteServiceAction
    module Network.AWS.ServiceCatalog.DeleteServiceAction,

    -- ** AssociateServiceActionWithProvisioningArtifact
    module Network.AWS.ServiceCatalog.AssociateServiceActionWithProvisioningArtifact,

    -- ** UpdateProvisionedProduct
    module Network.AWS.ServiceCatalog.UpdateProvisionedProduct,

    -- ** DeleteProduct
    module Network.AWS.ServiceCatalog.DeleteProduct,

    -- ** DescribeCopyProductStatus
    module Network.AWS.ServiceCatalog.DescribeCopyProductStatus,

    -- ** CreateServiceAction
    module Network.AWS.ServiceCatalog.CreateServiceAction,

    -- ** CreateProduct
    module Network.AWS.ServiceCatalog.CreateProduct,

    -- ** AcceptPortfolioShare
    module Network.AWS.ServiceCatalog.AcceptPortfolioShare,

    -- ** DisassociatePrincipalFromPortfolio
    module Network.AWS.ServiceCatalog.DisassociatePrincipalFromPortfolio,

    -- ** BatchDisassociateServiceActionFromProvisioningArtifact
    module Network.AWS.ServiceCatalog.BatchDisassociateServiceActionFromProvisioningArtifact,

    -- ** ListProvisionedProductPlans (Paginated)
    module Network.AWS.ServiceCatalog.ListProvisionedProductPlans,

    -- ** BatchAssociateServiceActionWithProvisioningArtifact
    module Network.AWS.ServiceCatalog.BatchAssociateServiceActionWithProvisioningArtifact,

    -- ** SearchProducts
    module Network.AWS.ServiceCatalog.SearchProducts,

    -- ** ListProvisioningArtifactsForServiceAction (Paginated)
    module Network.AWS.ServiceCatalog.ListProvisioningArtifactsForServiceAction,

    -- ** AssociatePrincipalWithPortfolio
    module Network.AWS.ServiceCatalog.AssociatePrincipalWithPortfolio,

    -- ** DescribeServiceActionExecutionParameters
    module Network.AWS.ServiceCatalog.DescribeServiceActionExecutionParameters,

    -- ** CopyProduct
    module Network.AWS.ServiceCatalog.CopyProduct,

    -- ** CreatePortfolio
    module Network.AWS.ServiceCatalog.CreatePortfolio,

    -- ** UpdateProvisionedProductProperties
    module Network.AWS.ServiceCatalog.UpdateProvisionedProductProperties,

    -- ** DescribeProductView
    module Network.AWS.ServiceCatalog.DescribeProductView,

    -- ** DescribeProductAsAdmin
    module Network.AWS.ServiceCatalog.DescribeProductAsAdmin,

    -- ** ListPortfoliosForProduct (Paginated)
    module Network.AWS.ServiceCatalog.ListPortfoliosForProduct,

    -- ** RejectPortfolioShare
    module Network.AWS.ServiceCatalog.RejectPortfolioShare,

    -- ** ListTagOptions (Paginated)
    module Network.AWS.ServiceCatalog.ListTagOptions,

    -- ** AssociateTagOptionWithResource
    module Network.AWS.ServiceCatalog.AssociateTagOptionWithResource,

    -- ** DisableAWSOrganizationsAccess
    module Network.AWS.ServiceCatalog.DisableAWSOrganizationsAccess,

    -- ** DescribeProvisionedProductPlan
    module Network.AWS.ServiceCatalog.DescribeProvisionedProductPlan,

    -- ** ListBudgetsForResource
    module Network.AWS.ServiceCatalog.ListBudgetsForResource,

    -- ** DisassociateProductFromPortfolio
    module Network.AWS.ServiceCatalog.DisassociateProductFromPortfolio,

    -- ** ListPrincipalsForPortfolio (Paginated)
    module Network.AWS.ServiceCatalog.ListPrincipalsForPortfolio,

    -- ** ProvisionProduct
    module Network.AWS.ServiceCatalog.ProvisionProduct,

    -- ** TerminateProvisionedProduct
    module Network.AWS.ServiceCatalog.TerminateProvisionedProduct,

    -- ** ListServiceActions (Paginated)
    module Network.AWS.ServiceCatalog.ListServiceActions,

    -- * Types

    -- ** AccessLevelFilterKey
    AccessLevelFilterKey (..),

    -- ** AccessStatus
    AccessStatus (..),

    -- ** ChangeAction
    ChangeAction (..),

    -- ** CopyOption
    CopyOption (..),

    -- ** CopyProductStatus
    CopyProductStatus (..),

    -- ** DescribePortfolioShareType
    DescribePortfolioShareType (..),

    -- ** EvaluationType
    EvaluationType (..),

    -- ** OrganizationNodeType
    OrganizationNodeType (..),

    -- ** PortfolioShareType
    PortfolioShareType (..),

    -- ** PrincipalType
    PrincipalType (..),

    -- ** ProductSource
    ProductSource (..),

    -- ** ProductType
    ProductType (..),

    -- ** ProductViewFilterBy
    ProductViewFilterBy (..),

    -- ** ProductViewSortBy
    ProductViewSortBy (..),

    -- ** PropertyKey
    PropertyKey (..),

    -- ** ProvisionedProductPlanStatus
    ProvisionedProductPlanStatus (..),

    -- ** ProvisionedProductPlanType
    ProvisionedProductPlanType (..),

    -- ** ProvisionedProductStatus
    ProvisionedProductStatus (..),

    -- ** ProvisionedProductViewFilterBy
    ProvisionedProductViewFilterBy (..),

    -- ** ProvisioningArtifactGuidance
    ProvisioningArtifactGuidance (..),

    -- ** ProvisioningArtifactPropertyName
    ProvisioningArtifactPropertyName (..),

    -- ** ProvisioningArtifactType
    ProvisioningArtifactType (..),

    -- ** RecordStatus
    RecordStatus (..),

    -- ** Replacement
    Replacement (..),

    -- ** RequestStatus
    RequestStatus (..),

    -- ** RequiresRecreation
    RequiresRecreation (..),

    -- ** ResourceAttribute
    ResourceAttribute (..),

    -- ** ServiceActionAssociationErrorCode
    ServiceActionAssociationErrorCode (..),

    -- ** ServiceActionDefinitionKey
    ServiceActionDefinitionKey (..),

    -- ** ServiceActionDefinitionType
    ServiceActionDefinitionType (..),

    -- ** ShareStatus
    ShareStatus (..),

    -- ** SortOrder
    SortOrder (..),

    -- ** StackInstanceStatus
    StackInstanceStatus (..),

    -- ** StackSetOperationType
    StackSetOperationType (..),

    -- ** AccessLevelFilter
    AccessLevelFilter,
    accessLevelFilter,
    alfKey,
    alfValue,

    -- ** BudgetDetail
    BudgetDetail,
    budgetDetail,
    bdBudgetName,

    -- ** CloudWatchDashboard
    CloudWatchDashboard,
    cloudWatchDashboard,
    cwdName,

    -- ** ConstraintDetail
    ConstraintDetail,
    constraintDetail,
    cdConstraintId,
    cdPortfolioId,
    cdOwner,
    cdProductId,
    cdDescription,
    cdType,

    -- ** ConstraintSummary
    ConstraintSummary,
    constraintSummary,
    csDescription,
    csType,

    -- ** ExecutionParameter
    ExecutionParameter,
    executionParameter,
    epName,
    epDefaultValues,
    epType,

    -- ** FailedServiceActionAssociation
    FailedServiceActionAssociation,
    failedServiceActionAssociation,
    fsaaProvisioningArtifactId,
    fsaaServiceActionId,
    fsaaProductId,
    fsaaErrorMessage,
    fsaaErrorCode,

    -- ** LaunchPath
    LaunchPath,
    launchPath,
    lpId,
    lpName,

    -- ** LaunchPathSummary
    LaunchPathSummary,
    launchPathSummary,
    lpsConstraintSummaries,
    lpsId,
    lpsName,
    lpsTags,

    -- ** ListRecordHistorySearchFilter
    ListRecordHistorySearchFilter,
    listRecordHistorySearchFilter,
    lrhsfKey,
    lrhsfValue,

    -- ** ListTagOptionsFilters
    ListTagOptionsFilters,
    listTagOptionsFilters,
    ltofKey,
    ltofActive,
    ltofValue,

    -- ** OrganizationNode
    OrganizationNode,
    organizationNode,
    onValue,
    onType,

    -- ** ParameterConstraints
    ParameterConstraints,
    parameterConstraints,
    pcMaxValue,
    pcMinLength,
    pcAllowedValues,
    pcMinValue,
    pcConstraintDescription,
    pcMaxLength,
    pcAllowedPattern,

    -- ** PortfolioDetail
    PortfolioDetail,
    portfolioDetail,
    pdProviderName,
    pdId,
    pdARN,
    pdCreatedTime,
    pdDescription,
    pdDisplayName,

    -- ** PortfolioShareDetail
    PortfolioShareDetail,
    portfolioShareDetail,
    psdShareTagOptions,
    psdPrincipalId,
    psdAccepted,
    psdType,

    -- ** Principal
    Principal,
    principal,
    pPrincipalARN,
    pPrincipalType,

    -- ** ProductViewAggregationValue
    ProductViewAggregationValue,
    productViewAggregationValue,
    pvavValue,
    pvavApproximateCount,

    -- ** ProductViewDetail
    ProductViewDetail,
    productViewDetail,
    pvdStatus,
    pvdProductARN,
    pvdCreatedTime,
    pvdProductViewSummary,

    -- ** ProductViewSummary
    ProductViewSummary,
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

    -- ** ProvisionedProductAttribute
    ProvisionedProductAttribute,
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

    -- ** ProvisionedProductDetail
    ProvisionedProductDetail,
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

    -- ** ProvisionedProductPlanDetails
    ProvisionedProductPlanDetails,
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

    -- ** ProvisionedProductPlanSummary
    ProvisionedProductPlanSummary,
    provisionedProductPlanSummary,
    pppsProvisionProductId,
    pppsProvisioningArtifactId,
    pppsPlanName,
    pppsPlanId,
    pppsPlanType,
    pppsProvisionProductName,

    -- ** ProvisioningArtifact
    ProvisioningArtifact,
    provisioningArtifact,
    paGuidance,
    paId,
    paCreatedTime,
    paName,
    paDescription,

    -- ** ProvisioningArtifactDetail
    ProvisioningArtifactDetail,
    provisioningArtifactDetail,
    padGuidance,
    padId,
    padCreatedTime,
    padName,
    padActive,
    padDescription,
    padType,

    -- ** ProvisioningArtifactOutput
    ProvisioningArtifactOutput,
    provisioningArtifactOutput,
    paoKey,
    paoDescription,

    -- ** ProvisioningArtifactParameter
    ProvisioningArtifactParameter,
    provisioningArtifactParameter,
    pIsNoEcho,
    pParameterConstraints,
    pParameterType,
    pParameterKey,
    pDescription,
    pDefaultValue,

    -- ** ProvisioningArtifactPreferences
    ProvisioningArtifactPreferences,
    provisioningArtifactPreferences,
    papStackSetAccounts,
    papStackSetRegions,

    -- ** ProvisioningArtifactProperties
    ProvisioningArtifactProperties,
    provisioningArtifactProperties,
    papDisableTemplateValidation,
    papName,
    papDescription,
    papType,
    papInfo,

    -- ** ProvisioningArtifactSummary
    ProvisioningArtifactSummary,
    provisioningArtifactSummary,
    pasId,
    pasCreatedTime,
    pasProvisioningArtifactMetadata,
    pasName,
    pasDescription,

    -- ** ProvisioningArtifactView
    ProvisioningArtifactView,
    provisioningArtifactView,
    pavProductViewSummary,
    pavProvisioningArtifact,

    -- ** ProvisioningParameter
    ProvisioningParameter,
    provisioningParameter,
    ppKey,
    ppValue,

    -- ** ProvisioningPreferences
    ProvisioningPreferences,
    provisioningPreferences,
    ppStackSetFailureToleranceCount,
    ppStackSetAccounts,
    ppStackSetFailureTolerancePercentage,
    ppStackSetRegions,
    ppStackSetMaxConcurrencyCount,
    ppStackSetMaxConcurrencyPercentage,

    -- ** RecordDetail
    RecordDetail,
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

    -- ** RecordError
    RecordError,
    recordError,
    reCode,
    reDescription,

    -- ** RecordOutput
    RecordOutput,
    recordOutput,
    roOutputKey,
    roOutputValue,
    roDescription,

    -- ** RecordTag
    RecordTag,
    recordTag,
    rtKey,
    rtValue,

    -- ** ResourceChange
    ResourceChange,
    resourceChange,
    rcPhysicalResourceId,
    rcResourceType,
    rcScope,
    rcDetails,
    rcLogicalResourceId,
    rcAction,
    rcReplacement,

    -- ** ResourceChangeDetail
    ResourceChangeDetail,
    resourceChangeDetail,
    rcdEvaluation,
    rcdCausingEntity,
    rcdTarget,

    -- ** ResourceDetail
    ResourceDetail,
    resourceDetail,
    rId,
    rARN,
    rCreatedTime,
    rName,
    rDescription,

    -- ** ResourceTargetDefinition
    ResourceTargetDefinition,
    resourceTargetDefinition,
    rtdRequiresRecreation,
    rtdName,
    rtdAttribute,

    -- ** ServiceActionAssociation
    ServiceActionAssociation,
    serviceActionAssociation,
    saaServiceActionId,
    saaProductId,
    saaProvisioningArtifactId,

    -- ** ServiceActionDetail
    ServiceActionDetail,
    serviceActionDetail,
    sadServiceActionSummary,
    sadDefinition,

    -- ** ServiceActionSummary
    ServiceActionSummary,
    serviceActionSummary,
    sasId,
    sasDefinitionType,
    sasName,
    sasDescription,

    -- ** ShareDetails
    ShareDetails,
    shareDetails,
    sdShareErrors,
    sdSuccessfulShares,

    -- ** ShareError
    ShareError,
    shareError,
    seMessage,
    seAccounts,
    seError,

    -- ** StackInstance
    StackInstance,
    stackInstance,
    siStackInstanceStatus,
    siAccount,
    siRegion,

    -- ** Tag
    Tag,
    tag,
    tagKey,
    tagValue,

    -- ** TagOptionDetail
    TagOptionDetail,
    tagOptionDetail,
    todKey,
    todId,
    todActive,
    todOwner,
    todValue,

    -- ** TagOptionSummary
    TagOptionSummary,
    tagOptionSummary,
    tosKey,
    tosValues,

    -- ** UpdateProvisioningParameter
    UpdateProvisioningParameter,
    updateProvisioningParameter,
    uppKey,
    uppUsePreviousValue,
    uppValue,

    -- ** UpdateProvisioningPreferences
    UpdateProvisioningPreferences,
    updateProvisioningPreferences,
    uppStackSetOperationType,
    uppStackSetFailureToleranceCount,
    uppStackSetAccounts,
    uppStackSetFailureTolerancePercentage,
    uppStackSetRegions,
    uppStackSetMaxConcurrencyCount,
    uppStackSetMaxConcurrencyPercentage,

    -- ** UsageInstruction
    UsageInstruction,
    usageInstruction,
    uiValue,
    uiType,
  )
where

import Network.AWS.ServiceCatalog.AcceptPortfolioShare
import Network.AWS.ServiceCatalog.AssociateBudgetWithResource
import Network.AWS.ServiceCatalog.AssociatePrincipalWithPortfolio
import Network.AWS.ServiceCatalog.AssociateProductWithPortfolio
import Network.AWS.ServiceCatalog.AssociateServiceActionWithProvisioningArtifact
import Network.AWS.ServiceCatalog.AssociateTagOptionWithResource
import Network.AWS.ServiceCatalog.BatchAssociateServiceActionWithProvisioningArtifact
import Network.AWS.ServiceCatalog.BatchDisassociateServiceActionFromProvisioningArtifact
import Network.AWS.ServiceCatalog.CopyProduct
import Network.AWS.ServiceCatalog.CreateConstraint
import Network.AWS.ServiceCatalog.CreatePortfolio
import Network.AWS.ServiceCatalog.CreatePortfolioShare
import Network.AWS.ServiceCatalog.CreateProduct
import Network.AWS.ServiceCatalog.CreateProvisionedProductPlan
import Network.AWS.ServiceCatalog.CreateProvisioningArtifact
import Network.AWS.ServiceCatalog.CreateServiceAction
import Network.AWS.ServiceCatalog.CreateTagOption
import Network.AWS.ServiceCatalog.DeleteConstraint
import Network.AWS.ServiceCatalog.DeletePortfolio
import Network.AWS.ServiceCatalog.DeletePortfolioShare
import Network.AWS.ServiceCatalog.DeleteProduct
import Network.AWS.ServiceCatalog.DeleteProvisionedProductPlan
import Network.AWS.ServiceCatalog.DeleteProvisioningArtifact
import Network.AWS.ServiceCatalog.DeleteServiceAction
import Network.AWS.ServiceCatalog.DeleteTagOption
import Network.AWS.ServiceCatalog.DescribeConstraint
import Network.AWS.ServiceCatalog.DescribeCopyProductStatus
import Network.AWS.ServiceCatalog.DescribePortfolio
import Network.AWS.ServiceCatalog.DescribePortfolioShareStatus
import Network.AWS.ServiceCatalog.DescribePortfolioShares
import Network.AWS.ServiceCatalog.DescribeProduct
import Network.AWS.ServiceCatalog.DescribeProductAsAdmin
import Network.AWS.ServiceCatalog.DescribeProductView
import Network.AWS.ServiceCatalog.DescribeProvisionedProduct
import Network.AWS.ServiceCatalog.DescribeProvisionedProductPlan
import Network.AWS.ServiceCatalog.DescribeProvisioningArtifact
import Network.AWS.ServiceCatalog.DescribeProvisioningParameters
import Network.AWS.ServiceCatalog.DescribeRecord
import Network.AWS.ServiceCatalog.DescribeServiceAction
import Network.AWS.ServiceCatalog.DescribeServiceActionExecutionParameters
import Network.AWS.ServiceCatalog.DescribeTagOption
import Network.AWS.ServiceCatalog.DisableAWSOrganizationsAccess
import Network.AWS.ServiceCatalog.DisassociateBudgetFromResource
import Network.AWS.ServiceCatalog.DisassociatePrincipalFromPortfolio
import Network.AWS.ServiceCatalog.DisassociateProductFromPortfolio
import Network.AWS.ServiceCatalog.DisassociateServiceActionFromProvisioningArtifact
import Network.AWS.ServiceCatalog.DisassociateTagOptionFromResource
import Network.AWS.ServiceCatalog.EnableAWSOrganizationsAccess
import Network.AWS.ServiceCatalog.ExecuteProvisionedProductPlan
import Network.AWS.ServiceCatalog.ExecuteProvisionedProductServiceAction
import Network.AWS.ServiceCatalog.GetAWSOrganizationsAccessStatus
import Network.AWS.ServiceCatalog.GetProvisionedProductOutputs
import Network.AWS.ServiceCatalog.ImportAsProvisionedProduct
import Network.AWS.ServiceCatalog.ListAcceptedPortfolioShares
import Network.AWS.ServiceCatalog.ListBudgetsForResource
import Network.AWS.ServiceCatalog.ListConstraintsForPortfolio
import Network.AWS.ServiceCatalog.ListLaunchPaths
import Network.AWS.ServiceCatalog.ListOrganizationPortfolioAccess
import Network.AWS.ServiceCatalog.ListPortfolioAccess
import Network.AWS.ServiceCatalog.ListPortfolios
import Network.AWS.ServiceCatalog.ListPortfoliosForProduct
import Network.AWS.ServiceCatalog.ListPrincipalsForPortfolio
import Network.AWS.ServiceCatalog.ListProvisionedProductPlans
import Network.AWS.ServiceCatalog.ListProvisioningArtifacts
import Network.AWS.ServiceCatalog.ListProvisioningArtifactsForServiceAction
import Network.AWS.ServiceCatalog.ListRecordHistory
import Network.AWS.ServiceCatalog.ListResourcesForTagOption
import Network.AWS.ServiceCatalog.ListServiceActions
import Network.AWS.ServiceCatalog.ListServiceActionsForProvisioningArtifact
import Network.AWS.ServiceCatalog.ListStackInstancesForProvisionedProduct
import Network.AWS.ServiceCatalog.ListTagOptions
import Network.AWS.ServiceCatalog.ProvisionProduct
import Network.AWS.ServiceCatalog.RejectPortfolioShare
import Network.AWS.ServiceCatalog.ScanProvisionedProducts
import Network.AWS.ServiceCatalog.SearchProducts
import Network.AWS.ServiceCatalog.SearchProductsAsAdmin
import Network.AWS.ServiceCatalog.SearchProvisionedProducts
import Network.AWS.ServiceCatalog.TerminateProvisionedProduct
import Network.AWS.ServiceCatalog.Types
import Network.AWS.ServiceCatalog.UpdateConstraint
import Network.AWS.ServiceCatalog.UpdatePortfolio
import Network.AWS.ServiceCatalog.UpdatePortfolioShare
import Network.AWS.ServiceCatalog.UpdateProduct
import Network.AWS.ServiceCatalog.UpdateProvisionedProduct
import Network.AWS.ServiceCatalog.UpdateProvisionedProductProperties
import Network.AWS.ServiceCatalog.UpdateProvisioningArtifact
import Network.AWS.ServiceCatalog.UpdateServiceAction
import Network.AWS.ServiceCatalog.UpdateTagOption
import Network.AWS.ServiceCatalog.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'ServiceCatalog'.

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
