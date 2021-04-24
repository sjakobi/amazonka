{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.ServiceCatalog
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.ServiceCatalog where

import Data.Proxy
import Network.AWS.ServiceCatalog
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.AWS.ServiceCatalog.Internal
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestDescribePortfolio $
--             describePortfolio
--
--         , requestListAcceptedPortfolioShares $
--             listAcceptedPortfolioShares
--
--         , requestDisassociateTagOptionFromResource $
--             disassociateTagOptionFromResource
--
--         , requestScanProvisionedProducts $
--             scanProvisionedProducts
--
--         , requestAssociateProductWithPortfolio $
--             associateProductWithPortfolio
--
--         , requestListOrganizationPortfolioAccess $
--             listOrganizationPortfolioAccess
--
--         , requestExecuteProvisionedProductPlan $
--             executeProvisionedProductPlan
--
--         , requestExecuteProvisionedProductServiceAction $
--             executeProvisionedProductServiceAction
--
--         , requestImportAsProvisionedProduct $
--             importAsProvisionedProduct
--
--         , requestListPortfolioAccess $
--             listPortfolioAccess
--
--         , requestCreateProvisionedProductPlan $
--             createProvisionedProductPlan
--
--         , requestDescribeTagOption $
--             describeTagOption
--
--         , requestDeleteConstraint $
--             deleteConstraint
--
--         , requestUpdateConstraint $
--             updateConstraint
--
--         , requestListResourcesForTagOption $
--             listResourcesForTagOption
--
--         , requestDescribePortfolioShares $
--             describePortfolioShares
--
--         , requestGetProvisionedProductOutputs $
--             getProvisionedProductOutputs
--
--         , requestAssociateBudgetWithResource $
--             associateBudgetWithResource
--
--         , requestDeleteProvisionedProductPlan $
--             deleteProvisionedProductPlan
--
--         , requestListLaunchPaths $
--             listLaunchPaths
--
--         , requestCreateConstraint $
--             createConstraint
--
--         , requestDescribePortfolioShareStatus $
--             describePortfolioShareStatus
--
--         , requestDeletePortfolioShare $
--             deletePortfolioShare
--
--         , requestDescribeServiceAction $
--             describeServiceAction
--
--         , requestUpdateProvisioningArtifact $
--             updateProvisioningArtifact
--
--         , requestListStackInstancesForProvisionedProduct $
--             listStackInstancesForProvisionedProduct
--
--         , requestDeleteProvisioningArtifact $
--             deleteProvisioningArtifact
--
--         , requestDescribeProvisioningParameters $
--             describeProvisioningParameters
--
--         , requestListProvisioningArtifacts $
--             listProvisioningArtifacts
--
--         , requestDescribeProvisionedProduct $
--             describeProvisionedProduct
--
--         , requestDescribeProduct $
--             describeProduct
--
--         , requestUpdatePortfolioShare $
--             updatePortfolioShare
--
--         , requestSearchProvisionedProducts $
--             searchProvisionedProducts
--
--         , requestListServiceActionsForProvisioningArtifact $
--             listServiceActionsForProvisioningArtifact
--
--         , requestCreateProvisioningArtifact $
--             createProvisioningArtifact
--
--         , requestDeletePortfolio $
--             deletePortfolio
--
--         , requestCreatePortfolioShare $
--             createPortfolioShare
--
--         , requestDisassociateBudgetFromResource $
--             disassociateBudgetFromResource
--
--         , requestUpdatePortfolio $
--             updatePortfolio
--
--         , requestListPortfolios $
--             listPortfolios
--
--         , requestGetAWSOrganizationsAccessStatus $
--             getAWSOrganizationsAccessStatus
--
--         , requestSearchProductsAsAdmin $
--             searchProductsAsAdmin
--
--         , requestDescribeRecord $
--             describeRecord
--
--         , requestDescribeConstraint $
--             describeConstraint
--
--         , requestEnableAWSOrganizationsAccess $
--             enableAWSOrganizationsAccess
--
--         , requestDeleteTagOption $
--             deleteTagOption
--
--         , requestDisassociateServiceActionFromProvisioningArtifact $
--             disassociateServiceActionFromProvisioningArtifact
--
--         , requestUpdateTagOption $
--             updateTagOption
--
--         , requestListConstraintsForPortfolio $
--             listConstraintsForPortfolio
--
--         , requestListRecordHistory $
--             listRecordHistory
--
--         , requestCreateTagOption $
--             createTagOption
--
--         , requestUpdateProduct $
--             updateProduct
--
--         , requestUpdateServiceAction $
--             updateServiceAction
--
--         , requestDescribeProvisioningArtifact $
--             describeProvisioningArtifact
--
--         , requestDeleteServiceAction $
--             deleteServiceAction
--
--         , requestAssociateServiceActionWithProvisioningArtifact $
--             associateServiceActionWithProvisioningArtifact
--
--         , requestUpdateProvisionedProduct $
--             updateProvisionedProduct
--
--         , requestDeleteProduct $
--             deleteProduct
--
--         , requestDescribeCopyProductStatus $
--             describeCopyProductStatus
--
--         , requestCreateServiceAction $
--             createServiceAction
--
--         , requestCreateProduct $
--             createProduct
--
--         , requestAcceptPortfolioShare $
--             acceptPortfolioShare
--
--         , requestDisassociatePrincipalFromPortfolio $
--             disassociatePrincipalFromPortfolio
--
--         , requestBatchDisassociateServiceActionFromProvisioningArtifact $
--             batchDisassociateServiceActionFromProvisioningArtifact
--
--         , requestListProvisionedProductPlans $
--             listProvisionedProductPlans
--
--         , requestBatchAssociateServiceActionWithProvisioningArtifact $
--             batchAssociateServiceActionWithProvisioningArtifact
--
--         , requestSearchProducts $
--             searchProducts
--
--         , requestListProvisioningArtifactsForServiceAction $
--             listProvisioningArtifactsForServiceAction
--
--         , requestAssociatePrincipalWithPortfolio $
--             associatePrincipalWithPortfolio
--
--         , requestDescribeServiceActionExecutionParameters $
--             describeServiceActionExecutionParameters
--
--         , requestCopyProduct $
--             copyProduct
--
--         , requestCreatePortfolio $
--             createPortfolio
--
--         , requestUpdateProvisionedProductProperties $
--             updateProvisionedProductProperties
--
--         , requestDescribeProductView $
--             describeProductView
--
--         , requestDescribeProductAsAdmin $
--             describeProductAsAdmin
--
--         , requestListPortfoliosForProduct $
--             listPortfoliosForProduct
--
--         , requestRejectPortfolioShare $
--             rejectPortfolioShare
--
--         , requestListTagOptions $
--             listTagOptions
--
--         , requestAssociateTagOptionWithResource $
--             associateTagOptionWithResource
--
--         , requestDisableAWSOrganizationsAccess $
--             disableAWSOrganizationsAccess
--
--         , requestDescribeProvisionedProductPlan $
--             describeProvisionedProductPlan
--
--         , requestListBudgetsForResource $
--             listBudgetsForResource
--
--         , requestDisassociateProductFromPortfolio $
--             disassociateProductFromPortfolio
--
--         , requestListPrincipalsForPortfolio $
--             listPrincipalsForPortfolio
--
--         , requestProvisionProduct $
--             provisionProduct
--
--         , requestTerminateProvisionedProduct $
--             terminateProvisionedProduct
--
--         , requestListServiceActions $
--             listServiceActions
--
--           ]

--     , testGroup "response"
--         [ responseDescribePortfolio $
--             describePortfolioResponse
--
--         , responseListAcceptedPortfolioShares $
--             listAcceptedPortfolioSharesResponse
--
--         , responseDisassociateTagOptionFromResource $
--             disassociateTagOptionFromResourceResponse
--
--         , responseScanProvisionedProducts $
--             scanProvisionedProductsResponse
--
--         , responseAssociateProductWithPortfolio $
--             associateProductWithPortfolioResponse
--
--         , responseListOrganizationPortfolioAccess $
--             listOrganizationPortfolioAccessResponse
--
--         , responseExecuteProvisionedProductPlan $
--             executeProvisionedProductPlanResponse
--
--         , responseExecuteProvisionedProductServiceAction $
--             executeProvisionedProductServiceActionResponse
--
--         , responseImportAsProvisionedProduct $
--             importAsProvisionedProductResponse
--
--         , responseListPortfolioAccess $
--             listPortfolioAccessResponse
--
--         , responseCreateProvisionedProductPlan $
--             createProvisionedProductPlanResponse
--
--         , responseDescribeTagOption $
--             describeTagOptionResponse
--
--         , responseDeleteConstraint $
--             deleteConstraintResponse
--
--         , responseUpdateConstraint $
--             updateConstraintResponse
--
--         , responseListResourcesForTagOption $
--             listResourcesForTagOptionResponse
--
--         , responseDescribePortfolioShares $
--             describePortfolioSharesResponse
--
--         , responseGetProvisionedProductOutputs $
--             getProvisionedProductOutputsResponse
--
--         , responseAssociateBudgetWithResource $
--             associateBudgetWithResourceResponse
--
--         , responseDeleteProvisionedProductPlan $
--             deleteProvisionedProductPlanResponse
--
--         , responseListLaunchPaths $
--             listLaunchPathsResponse
--
--         , responseCreateConstraint $
--             createConstraintResponse
--
--         , responseDescribePortfolioShareStatus $
--             describePortfolioShareStatusResponse
--
--         , responseDeletePortfolioShare $
--             deletePortfolioShareResponse
--
--         , responseDescribeServiceAction $
--             describeServiceActionResponse
--
--         , responseUpdateProvisioningArtifact $
--             updateProvisioningArtifactResponse
--
--         , responseListStackInstancesForProvisionedProduct $
--             listStackInstancesForProvisionedProductResponse
--
--         , responseDeleteProvisioningArtifact $
--             deleteProvisioningArtifactResponse
--
--         , responseDescribeProvisioningParameters $
--             describeProvisioningParametersResponse
--
--         , responseListProvisioningArtifacts $
--             listProvisioningArtifactsResponse
--
--         , responseDescribeProvisionedProduct $
--             describeProvisionedProductResponse
--
--         , responseDescribeProduct $
--             describeProductResponse
--
--         , responseUpdatePortfolioShare $
--             updatePortfolioShareResponse
--
--         , responseSearchProvisionedProducts $
--             searchProvisionedProductsResponse
--
--         , responseListServiceActionsForProvisioningArtifact $
--             listServiceActionsForProvisioningArtifactResponse
--
--         , responseCreateProvisioningArtifact $
--             createProvisioningArtifactResponse
--
--         , responseDeletePortfolio $
--             deletePortfolioResponse
--
--         , responseCreatePortfolioShare $
--             createPortfolioShareResponse
--
--         , responseDisassociateBudgetFromResource $
--             disassociateBudgetFromResourceResponse
--
--         , responseUpdatePortfolio $
--             updatePortfolioResponse
--
--         , responseListPortfolios $
--             listPortfoliosResponse
--
--         , responseGetAWSOrganizationsAccessStatus $
--             getAWSOrganizationsAccessStatusResponse
--
--         , responseSearchProductsAsAdmin $
--             searchProductsAsAdminResponse
--
--         , responseDescribeRecord $
--             describeRecordResponse
--
--         , responseDescribeConstraint $
--             describeConstraintResponse
--
--         , responseEnableAWSOrganizationsAccess $
--             enableAWSOrganizationsAccessResponse
--
--         , responseDeleteTagOption $
--             deleteTagOptionResponse
--
--         , responseDisassociateServiceActionFromProvisioningArtifact $
--             disassociateServiceActionFromProvisioningArtifactResponse
--
--         , responseUpdateTagOption $
--             updateTagOptionResponse
--
--         , responseListConstraintsForPortfolio $
--             listConstraintsForPortfolioResponse
--
--         , responseListRecordHistory $
--             listRecordHistoryResponse
--
--         , responseCreateTagOption $
--             createTagOptionResponse
--
--         , responseUpdateProduct $
--             updateProductResponse
--
--         , responseUpdateServiceAction $
--             updateServiceActionResponse
--
--         , responseDescribeProvisioningArtifact $
--             describeProvisioningArtifactResponse
--
--         , responseDeleteServiceAction $
--             deleteServiceActionResponse
--
--         , responseAssociateServiceActionWithProvisioningArtifact $
--             associateServiceActionWithProvisioningArtifactResponse
--
--         , responseUpdateProvisionedProduct $
--             updateProvisionedProductResponse
--
--         , responseDeleteProduct $
--             deleteProductResponse
--
--         , responseDescribeCopyProductStatus $
--             describeCopyProductStatusResponse
--
--         , responseCreateServiceAction $
--             createServiceActionResponse
--
--         , responseCreateProduct $
--             createProductResponse
--
--         , responseAcceptPortfolioShare $
--             acceptPortfolioShareResponse
--
--         , responseDisassociatePrincipalFromPortfolio $
--             disassociatePrincipalFromPortfolioResponse
--
--         , responseBatchDisassociateServiceActionFromProvisioningArtifact $
--             batchDisassociateServiceActionFromProvisioningArtifactResponse
--
--         , responseListProvisionedProductPlans $
--             listProvisionedProductPlansResponse
--
--         , responseBatchAssociateServiceActionWithProvisioningArtifact $
--             batchAssociateServiceActionWithProvisioningArtifactResponse
--
--         , responseSearchProducts $
--             searchProductsResponse
--
--         , responseListProvisioningArtifactsForServiceAction $
--             listProvisioningArtifactsForServiceActionResponse
--
--         , responseAssociatePrincipalWithPortfolio $
--             associatePrincipalWithPortfolioResponse
--
--         , responseDescribeServiceActionExecutionParameters $
--             describeServiceActionExecutionParametersResponse
--
--         , responseCopyProduct $
--             copyProductResponse
--
--         , responseCreatePortfolio $
--             createPortfolioResponse
--
--         , responseUpdateProvisionedProductProperties $
--             updateProvisionedProductPropertiesResponse
--
--         , responseDescribeProductView $
--             describeProductViewResponse
--
--         , responseDescribeProductAsAdmin $
--             describeProductAsAdminResponse
--
--         , responseListPortfoliosForProduct $
--             listPortfoliosForProductResponse
--
--         , responseRejectPortfolioShare $
--             rejectPortfolioShareResponse
--
--         , responseListTagOptions $
--             listTagOptionsResponse
--
--         , responseAssociateTagOptionWithResource $
--             associateTagOptionWithResourceResponse
--
--         , responseDisableAWSOrganizationsAccess $
--             disableAWSOrganizationsAccessResponse
--
--         , responseDescribeProvisionedProductPlan $
--             describeProvisionedProductPlanResponse
--
--         , responseListBudgetsForResource $
--             listBudgetsForResourceResponse
--
--         , responseDisassociateProductFromPortfolio $
--             disassociateProductFromPortfolioResponse
--
--         , responseListPrincipalsForPortfolio $
--             listPrincipalsForPortfolioResponse
--
--         , responseProvisionProduct $
--             provisionProductResponse
--
--         , responseTerminateProvisionedProduct $
--             terminateProvisionedProductResponse
--
--         , responseListServiceActions $
--             listServiceActionsResponse
--
--           ]
--     ]

-- Requests

requestDescribePortfolio :: DescribePortfolio -> TestTree
requestDescribePortfolio =
  req
    "DescribePortfolio"
    "fixture/DescribePortfolio.yaml"

requestListAcceptedPortfolioShares :: ListAcceptedPortfolioShares -> TestTree
requestListAcceptedPortfolioShares =
  req
    "ListAcceptedPortfolioShares"
    "fixture/ListAcceptedPortfolioShares.yaml"

requestDisassociateTagOptionFromResource :: DisassociateTagOptionFromResource -> TestTree
requestDisassociateTagOptionFromResource =
  req
    "DisassociateTagOptionFromResource"
    "fixture/DisassociateTagOptionFromResource.yaml"

requestScanProvisionedProducts :: ScanProvisionedProducts -> TestTree
requestScanProvisionedProducts =
  req
    "ScanProvisionedProducts"
    "fixture/ScanProvisionedProducts.yaml"

requestAssociateProductWithPortfolio :: AssociateProductWithPortfolio -> TestTree
requestAssociateProductWithPortfolio =
  req
    "AssociateProductWithPortfolio"
    "fixture/AssociateProductWithPortfolio.yaml"

requestListOrganizationPortfolioAccess :: ListOrganizationPortfolioAccess -> TestTree
requestListOrganizationPortfolioAccess =
  req
    "ListOrganizationPortfolioAccess"
    "fixture/ListOrganizationPortfolioAccess.yaml"

requestExecuteProvisionedProductPlan :: ExecuteProvisionedProductPlan -> TestTree
requestExecuteProvisionedProductPlan =
  req
    "ExecuteProvisionedProductPlan"
    "fixture/ExecuteProvisionedProductPlan.yaml"

requestExecuteProvisionedProductServiceAction :: ExecuteProvisionedProductServiceAction -> TestTree
requestExecuteProvisionedProductServiceAction =
  req
    "ExecuteProvisionedProductServiceAction"
    "fixture/ExecuteProvisionedProductServiceAction.yaml"

requestImportAsProvisionedProduct :: ImportAsProvisionedProduct -> TestTree
requestImportAsProvisionedProduct =
  req
    "ImportAsProvisionedProduct"
    "fixture/ImportAsProvisionedProduct.yaml"

requestListPortfolioAccess :: ListPortfolioAccess -> TestTree
requestListPortfolioAccess =
  req
    "ListPortfolioAccess"
    "fixture/ListPortfolioAccess.yaml"

requestCreateProvisionedProductPlan :: CreateProvisionedProductPlan -> TestTree
requestCreateProvisionedProductPlan =
  req
    "CreateProvisionedProductPlan"
    "fixture/CreateProvisionedProductPlan.yaml"

requestDescribeTagOption :: DescribeTagOption -> TestTree
requestDescribeTagOption =
  req
    "DescribeTagOption"
    "fixture/DescribeTagOption.yaml"

requestDeleteConstraint :: DeleteConstraint -> TestTree
requestDeleteConstraint =
  req
    "DeleteConstraint"
    "fixture/DeleteConstraint.yaml"

requestUpdateConstraint :: UpdateConstraint -> TestTree
requestUpdateConstraint =
  req
    "UpdateConstraint"
    "fixture/UpdateConstraint.yaml"

requestListResourcesForTagOption :: ListResourcesForTagOption -> TestTree
requestListResourcesForTagOption =
  req
    "ListResourcesForTagOption"
    "fixture/ListResourcesForTagOption.yaml"

requestDescribePortfolioShares :: DescribePortfolioShares -> TestTree
requestDescribePortfolioShares =
  req
    "DescribePortfolioShares"
    "fixture/DescribePortfolioShares.yaml"

requestGetProvisionedProductOutputs :: GetProvisionedProductOutputs -> TestTree
requestGetProvisionedProductOutputs =
  req
    "GetProvisionedProductOutputs"
    "fixture/GetProvisionedProductOutputs.yaml"

requestAssociateBudgetWithResource :: AssociateBudgetWithResource -> TestTree
requestAssociateBudgetWithResource =
  req
    "AssociateBudgetWithResource"
    "fixture/AssociateBudgetWithResource.yaml"

requestDeleteProvisionedProductPlan :: DeleteProvisionedProductPlan -> TestTree
requestDeleteProvisionedProductPlan =
  req
    "DeleteProvisionedProductPlan"
    "fixture/DeleteProvisionedProductPlan.yaml"

requestListLaunchPaths :: ListLaunchPaths -> TestTree
requestListLaunchPaths =
  req
    "ListLaunchPaths"
    "fixture/ListLaunchPaths.yaml"

requestCreateConstraint :: CreateConstraint -> TestTree
requestCreateConstraint =
  req
    "CreateConstraint"
    "fixture/CreateConstraint.yaml"

requestDescribePortfolioShareStatus :: DescribePortfolioShareStatus -> TestTree
requestDescribePortfolioShareStatus =
  req
    "DescribePortfolioShareStatus"
    "fixture/DescribePortfolioShareStatus.yaml"

requestDeletePortfolioShare :: DeletePortfolioShare -> TestTree
requestDeletePortfolioShare =
  req
    "DeletePortfolioShare"
    "fixture/DeletePortfolioShare.yaml"

requestDescribeServiceAction :: DescribeServiceAction -> TestTree
requestDescribeServiceAction =
  req
    "DescribeServiceAction"
    "fixture/DescribeServiceAction.yaml"

requestUpdateProvisioningArtifact :: UpdateProvisioningArtifact -> TestTree
requestUpdateProvisioningArtifact =
  req
    "UpdateProvisioningArtifact"
    "fixture/UpdateProvisioningArtifact.yaml"

requestListStackInstancesForProvisionedProduct :: ListStackInstancesForProvisionedProduct -> TestTree
requestListStackInstancesForProvisionedProduct =
  req
    "ListStackInstancesForProvisionedProduct"
    "fixture/ListStackInstancesForProvisionedProduct.yaml"

requestDeleteProvisioningArtifact :: DeleteProvisioningArtifact -> TestTree
requestDeleteProvisioningArtifact =
  req
    "DeleteProvisioningArtifact"
    "fixture/DeleteProvisioningArtifact.yaml"

requestDescribeProvisioningParameters :: DescribeProvisioningParameters -> TestTree
requestDescribeProvisioningParameters =
  req
    "DescribeProvisioningParameters"
    "fixture/DescribeProvisioningParameters.yaml"

requestListProvisioningArtifacts :: ListProvisioningArtifacts -> TestTree
requestListProvisioningArtifacts =
  req
    "ListProvisioningArtifacts"
    "fixture/ListProvisioningArtifacts.yaml"

requestDescribeProvisionedProduct :: DescribeProvisionedProduct -> TestTree
requestDescribeProvisionedProduct =
  req
    "DescribeProvisionedProduct"
    "fixture/DescribeProvisionedProduct.yaml"

requestDescribeProduct :: DescribeProduct -> TestTree
requestDescribeProduct =
  req
    "DescribeProduct"
    "fixture/DescribeProduct.yaml"

requestUpdatePortfolioShare :: UpdatePortfolioShare -> TestTree
requestUpdatePortfolioShare =
  req
    "UpdatePortfolioShare"
    "fixture/UpdatePortfolioShare.yaml"

requestSearchProvisionedProducts :: SearchProvisionedProducts -> TestTree
requestSearchProvisionedProducts =
  req
    "SearchProvisionedProducts"
    "fixture/SearchProvisionedProducts.yaml"

requestListServiceActionsForProvisioningArtifact :: ListServiceActionsForProvisioningArtifact -> TestTree
requestListServiceActionsForProvisioningArtifact =
  req
    "ListServiceActionsForProvisioningArtifact"
    "fixture/ListServiceActionsForProvisioningArtifact.yaml"

requestCreateProvisioningArtifact :: CreateProvisioningArtifact -> TestTree
requestCreateProvisioningArtifact =
  req
    "CreateProvisioningArtifact"
    "fixture/CreateProvisioningArtifact.yaml"

requestDeletePortfolio :: DeletePortfolio -> TestTree
requestDeletePortfolio =
  req
    "DeletePortfolio"
    "fixture/DeletePortfolio.yaml"

requestCreatePortfolioShare :: CreatePortfolioShare -> TestTree
requestCreatePortfolioShare =
  req
    "CreatePortfolioShare"
    "fixture/CreatePortfolioShare.yaml"

requestDisassociateBudgetFromResource :: DisassociateBudgetFromResource -> TestTree
requestDisassociateBudgetFromResource =
  req
    "DisassociateBudgetFromResource"
    "fixture/DisassociateBudgetFromResource.yaml"

requestUpdatePortfolio :: UpdatePortfolio -> TestTree
requestUpdatePortfolio =
  req
    "UpdatePortfolio"
    "fixture/UpdatePortfolio.yaml"

requestListPortfolios :: ListPortfolios -> TestTree
requestListPortfolios =
  req
    "ListPortfolios"
    "fixture/ListPortfolios.yaml"

requestGetAWSOrganizationsAccessStatus :: GetAWSOrganizationsAccessStatus -> TestTree
requestGetAWSOrganizationsAccessStatus =
  req
    "GetAWSOrganizationsAccessStatus"
    "fixture/GetAWSOrganizationsAccessStatus.yaml"

requestSearchProductsAsAdmin :: SearchProductsAsAdmin -> TestTree
requestSearchProductsAsAdmin =
  req
    "SearchProductsAsAdmin"
    "fixture/SearchProductsAsAdmin.yaml"

requestDescribeRecord :: DescribeRecord -> TestTree
requestDescribeRecord =
  req
    "DescribeRecord"
    "fixture/DescribeRecord.yaml"

requestDescribeConstraint :: DescribeConstraint -> TestTree
requestDescribeConstraint =
  req
    "DescribeConstraint"
    "fixture/DescribeConstraint.yaml"

requestEnableAWSOrganizationsAccess :: EnableAWSOrganizationsAccess -> TestTree
requestEnableAWSOrganizationsAccess =
  req
    "EnableAWSOrganizationsAccess"
    "fixture/EnableAWSOrganizationsAccess.yaml"

requestDeleteTagOption :: DeleteTagOption -> TestTree
requestDeleteTagOption =
  req
    "DeleteTagOption"
    "fixture/DeleteTagOption.yaml"

requestDisassociateServiceActionFromProvisioningArtifact :: DisassociateServiceActionFromProvisioningArtifact -> TestTree
requestDisassociateServiceActionFromProvisioningArtifact =
  req
    "DisassociateServiceActionFromProvisioningArtifact"
    "fixture/DisassociateServiceActionFromProvisioningArtifact.yaml"

requestUpdateTagOption :: UpdateTagOption -> TestTree
requestUpdateTagOption =
  req
    "UpdateTagOption"
    "fixture/UpdateTagOption.yaml"

requestListConstraintsForPortfolio :: ListConstraintsForPortfolio -> TestTree
requestListConstraintsForPortfolio =
  req
    "ListConstraintsForPortfolio"
    "fixture/ListConstraintsForPortfolio.yaml"

requestListRecordHistory :: ListRecordHistory -> TestTree
requestListRecordHistory =
  req
    "ListRecordHistory"
    "fixture/ListRecordHistory.yaml"

requestCreateTagOption :: CreateTagOption -> TestTree
requestCreateTagOption =
  req
    "CreateTagOption"
    "fixture/CreateTagOption.yaml"

requestUpdateProduct :: UpdateProduct -> TestTree
requestUpdateProduct =
  req
    "UpdateProduct"
    "fixture/UpdateProduct.yaml"

requestUpdateServiceAction :: UpdateServiceAction -> TestTree
requestUpdateServiceAction =
  req
    "UpdateServiceAction"
    "fixture/UpdateServiceAction.yaml"

requestDescribeProvisioningArtifact :: DescribeProvisioningArtifact -> TestTree
requestDescribeProvisioningArtifact =
  req
    "DescribeProvisioningArtifact"
    "fixture/DescribeProvisioningArtifact.yaml"

requestDeleteServiceAction :: DeleteServiceAction -> TestTree
requestDeleteServiceAction =
  req
    "DeleteServiceAction"
    "fixture/DeleteServiceAction.yaml"

requestAssociateServiceActionWithProvisioningArtifact :: AssociateServiceActionWithProvisioningArtifact -> TestTree
requestAssociateServiceActionWithProvisioningArtifact =
  req
    "AssociateServiceActionWithProvisioningArtifact"
    "fixture/AssociateServiceActionWithProvisioningArtifact.yaml"

requestUpdateProvisionedProduct :: UpdateProvisionedProduct -> TestTree
requestUpdateProvisionedProduct =
  req
    "UpdateProvisionedProduct"
    "fixture/UpdateProvisionedProduct.yaml"

requestDeleteProduct :: DeleteProduct -> TestTree
requestDeleteProduct =
  req
    "DeleteProduct"
    "fixture/DeleteProduct.yaml"

requestDescribeCopyProductStatus :: DescribeCopyProductStatus -> TestTree
requestDescribeCopyProductStatus =
  req
    "DescribeCopyProductStatus"
    "fixture/DescribeCopyProductStatus.yaml"

requestCreateServiceAction :: CreateServiceAction -> TestTree
requestCreateServiceAction =
  req
    "CreateServiceAction"
    "fixture/CreateServiceAction.yaml"

requestCreateProduct :: CreateProduct -> TestTree
requestCreateProduct =
  req
    "CreateProduct"
    "fixture/CreateProduct.yaml"

requestAcceptPortfolioShare :: AcceptPortfolioShare -> TestTree
requestAcceptPortfolioShare =
  req
    "AcceptPortfolioShare"
    "fixture/AcceptPortfolioShare.yaml"

requestDisassociatePrincipalFromPortfolio :: DisassociatePrincipalFromPortfolio -> TestTree
requestDisassociatePrincipalFromPortfolio =
  req
    "DisassociatePrincipalFromPortfolio"
    "fixture/DisassociatePrincipalFromPortfolio.yaml"

requestBatchDisassociateServiceActionFromProvisioningArtifact :: BatchDisassociateServiceActionFromProvisioningArtifact -> TestTree
requestBatchDisassociateServiceActionFromProvisioningArtifact =
  req
    "BatchDisassociateServiceActionFromProvisioningArtifact"
    "fixture/BatchDisassociateServiceActionFromProvisioningArtifact.yaml"

requestListProvisionedProductPlans :: ListProvisionedProductPlans -> TestTree
requestListProvisionedProductPlans =
  req
    "ListProvisionedProductPlans"
    "fixture/ListProvisionedProductPlans.yaml"

requestBatchAssociateServiceActionWithProvisioningArtifact :: BatchAssociateServiceActionWithProvisioningArtifact -> TestTree
requestBatchAssociateServiceActionWithProvisioningArtifact =
  req
    "BatchAssociateServiceActionWithProvisioningArtifact"
    "fixture/BatchAssociateServiceActionWithProvisioningArtifact.yaml"

requestSearchProducts :: SearchProducts -> TestTree
requestSearchProducts =
  req
    "SearchProducts"
    "fixture/SearchProducts.yaml"

requestListProvisioningArtifactsForServiceAction :: ListProvisioningArtifactsForServiceAction -> TestTree
requestListProvisioningArtifactsForServiceAction =
  req
    "ListProvisioningArtifactsForServiceAction"
    "fixture/ListProvisioningArtifactsForServiceAction.yaml"

requestAssociatePrincipalWithPortfolio :: AssociatePrincipalWithPortfolio -> TestTree
requestAssociatePrincipalWithPortfolio =
  req
    "AssociatePrincipalWithPortfolio"
    "fixture/AssociatePrincipalWithPortfolio.yaml"

requestDescribeServiceActionExecutionParameters :: DescribeServiceActionExecutionParameters -> TestTree
requestDescribeServiceActionExecutionParameters =
  req
    "DescribeServiceActionExecutionParameters"
    "fixture/DescribeServiceActionExecutionParameters.yaml"

requestCopyProduct :: CopyProduct -> TestTree
requestCopyProduct =
  req
    "CopyProduct"
    "fixture/CopyProduct.yaml"

requestCreatePortfolio :: CreatePortfolio -> TestTree
requestCreatePortfolio =
  req
    "CreatePortfolio"
    "fixture/CreatePortfolio.yaml"

requestUpdateProvisionedProductProperties :: UpdateProvisionedProductProperties -> TestTree
requestUpdateProvisionedProductProperties =
  req
    "UpdateProvisionedProductProperties"
    "fixture/UpdateProvisionedProductProperties.yaml"

requestDescribeProductView :: DescribeProductView -> TestTree
requestDescribeProductView =
  req
    "DescribeProductView"
    "fixture/DescribeProductView.yaml"

requestDescribeProductAsAdmin :: DescribeProductAsAdmin -> TestTree
requestDescribeProductAsAdmin =
  req
    "DescribeProductAsAdmin"
    "fixture/DescribeProductAsAdmin.yaml"

requestListPortfoliosForProduct :: ListPortfoliosForProduct -> TestTree
requestListPortfoliosForProduct =
  req
    "ListPortfoliosForProduct"
    "fixture/ListPortfoliosForProduct.yaml"

requestRejectPortfolioShare :: RejectPortfolioShare -> TestTree
requestRejectPortfolioShare =
  req
    "RejectPortfolioShare"
    "fixture/RejectPortfolioShare.yaml"

requestListTagOptions :: ListTagOptions -> TestTree
requestListTagOptions =
  req
    "ListTagOptions"
    "fixture/ListTagOptions.yaml"

requestAssociateTagOptionWithResource :: AssociateTagOptionWithResource -> TestTree
requestAssociateTagOptionWithResource =
  req
    "AssociateTagOptionWithResource"
    "fixture/AssociateTagOptionWithResource.yaml"

requestDisableAWSOrganizationsAccess :: DisableAWSOrganizationsAccess -> TestTree
requestDisableAWSOrganizationsAccess =
  req
    "DisableAWSOrganizationsAccess"
    "fixture/DisableAWSOrganizationsAccess.yaml"

requestDescribeProvisionedProductPlan :: DescribeProvisionedProductPlan -> TestTree
requestDescribeProvisionedProductPlan =
  req
    "DescribeProvisionedProductPlan"
    "fixture/DescribeProvisionedProductPlan.yaml"

requestListBudgetsForResource :: ListBudgetsForResource -> TestTree
requestListBudgetsForResource =
  req
    "ListBudgetsForResource"
    "fixture/ListBudgetsForResource.yaml"

requestDisassociateProductFromPortfolio :: DisassociateProductFromPortfolio -> TestTree
requestDisassociateProductFromPortfolio =
  req
    "DisassociateProductFromPortfolio"
    "fixture/DisassociateProductFromPortfolio.yaml"

requestListPrincipalsForPortfolio :: ListPrincipalsForPortfolio -> TestTree
requestListPrincipalsForPortfolio =
  req
    "ListPrincipalsForPortfolio"
    "fixture/ListPrincipalsForPortfolio.yaml"

requestProvisionProduct :: ProvisionProduct -> TestTree
requestProvisionProduct =
  req
    "ProvisionProduct"
    "fixture/ProvisionProduct.yaml"

requestTerminateProvisionedProduct :: TerminateProvisionedProduct -> TestTree
requestTerminateProvisionedProduct =
  req
    "TerminateProvisionedProduct"
    "fixture/TerminateProvisionedProduct.yaml"

requestListServiceActions :: ListServiceActions -> TestTree
requestListServiceActions =
  req
    "ListServiceActions"
    "fixture/ListServiceActions.yaml"

-- Responses

responseDescribePortfolio :: DescribePortfolioResponse -> TestTree
responseDescribePortfolio =
  res
    "DescribePortfolioResponse"
    "fixture/DescribePortfolioResponse.proto"
    serviceCatalog
    (Proxy :: Proxy DescribePortfolio)

responseListAcceptedPortfolioShares :: ListAcceptedPortfolioSharesResponse -> TestTree
responseListAcceptedPortfolioShares =
  res
    "ListAcceptedPortfolioSharesResponse"
    "fixture/ListAcceptedPortfolioSharesResponse.proto"
    serviceCatalog
    (Proxy :: Proxy ListAcceptedPortfolioShares)

responseDisassociateTagOptionFromResource :: DisassociateTagOptionFromResourceResponse -> TestTree
responseDisassociateTagOptionFromResource =
  res
    "DisassociateTagOptionFromResourceResponse"
    "fixture/DisassociateTagOptionFromResourceResponse.proto"
    serviceCatalog
    (Proxy :: Proxy DisassociateTagOptionFromResource)

responseScanProvisionedProducts :: ScanProvisionedProductsResponse -> TestTree
responseScanProvisionedProducts =
  res
    "ScanProvisionedProductsResponse"
    "fixture/ScanProvisionedProductsResponse.proto"
    serviceCatalog
    (Proxy :: Proxy ScanProvisionedProducts)

responseAssociateProductWithPortfolio :: AssociateProductWithPortfolioResponse -> TestTree
responseAssociateProductWithPortfolio =
  res
    "AssociateProductWithPortfolioResponse"
    "fixture/AssociateProductWithPortfolioResponse.proto"
    serviceCatalog
    (Proxy :: Proxy AssociateProductWithPortfolio)

responseListOrganizationPortfolioAccess :: ListOrganizationPortfolioAccessResponse -> TestTree
responseListOrganizationPortfolioAccess =
  res
    "ListOrganizationPortfolioAccessResponse"
    "fixture/ListOrganizationPortfolioAccessResponse.proto"
    serviceCatalog
    (Proxy :: Proxy ListOrganizationPortfolioAccess)

responseExecuteProvisionedProductPlan :: ExecuteProvisionedProductPlanResponse -> TestTree
responseExecuteProvisionedProductPlan =
  res
    "ExecuteProvisionedProductPlanResponse"
    "fixture/ExecuteProvisionedProductPlanResponse.proto"
    serviceCatalog
    (Proxy :: Proxy ExecuteProvisionedProductPlan)

responseExecuteProvisionedProductServiceAction :: ExecuteProvisionedProductServiceActionResponse -> TestTree
responseExecuteProvisionedProductServiceAction =
  res
    "ExecuteProvisionedProductServiceActionResponse"
    "fixture/ExecuteProvisionedProductServiceActionResponse.proto"
    serviceCatalog
    (Proxy :: Proxy ExecuteProvisionedProductServiceAction)

responseImportAsProvisionedProduct :: ImportAsProvisionedProductResponse -> TestTree
responseImportAsProvisionedProduct =
  res
    "ImportAsProvisionedProductResponse"
    "fixture/ImportAsProvisionedProductResponse.proto"
    serviceCatalog
    (Proxy :: Proxy ImportAsProvisionedProduct)

responseListPortfolioAccess :: ListPortfolioAccessResponse -> TestTree
responseListPortfolioAccess =
  res
    "ListPortfolioAccessResponse"
    "fixture/ListPortfolioAccessResponse.proto"
    serviceCatalog
    (Proxy :: Proxy ListPortfolioAccess)

responseCreateProvisionedProductPlan :: CreateProvisionedProductPlanResponse -> TestTree
responseCreateProvisionedProductPlan =
  res
    "CreateProvisionedProductPlanResponse"
    "fixture/CreateProvisionedProductPlanResponse.proto"
    serviceCatalog
    (Proxy :: Proxy CreateProvisionedProductPlan)

responseDescribeTagOption :: DescribeTagOptionResponse -> TestTree
responseDescribeTagOption =
  res
    "DescribeTagOptionResponse"
    "fixture/DescribeTagOptionResponse.proto"
    serviceCatalog
    (Proxy :: Proxy DescribeTagOption)

responseDeleteConstraint :: DeleteConstraintResponse -> TestTree
responseDeleteConstraint =
  res
    "DeleteConstraintResponse"
    "fixture/DeleteConstraintResponse.proto"
    serviceCatalog
    (Proxy :: Proxy DeleteConstraint)

responseUpdateConstraint :: UpdateConstraintResponse -> TestTree
responseUpdateConstraint =
  res
    "UpdateConstraintResponse"
    "fixture/UpdateConstraintResponse.proto"
    serviceCatalog
    (Proxy :: Proxy UpdateConstraint)

responseListResourcesForTagOption :: ListResourcesForTagOptionResponse -> TestTree
responseListResourcesForTagOption =
  res
    "ListResourcesForTagOptionResponse"
    "fixture/ListResourcesForTagOptionResponse.proto"
    serviceCatalog
    (Proxy :: Proxy ListResourcesForTagOption)

responseDescribePortfolioShares :: DescribePortfolioSharesResponse -> TestTree
responseDescribePortfolioShares =
  res
    "DescribePortfolioSharesResponse"
    "fixture/DescribePortfolioSharesResponse.proto"
    serviceCatalog
    (Proxy :: Proxy DescribePortfolioShares)

responseGetProvisionedProductOutputs :: GetProvisionedProductOutputsResponse -> TestTree
responseGetProvisionedProductOutputs =
  res
    "GetProvisionedProductOutputsResponse"
    "fixture/GetProvisionedProductOutputsResponse.proto"
    serviceCatalog
    (Proxy :: Proxy GetProvisionedProductOutputs)

responseAssociateBudgetWithResource :: AssociateBudgetWithResourceResponse -> TestTree
responseAssociateBudgetWithResource =
  res
    "AssociateBudgetWithResourceResponse"
    "fixture/AssociateBudgetWithResourceResponse.proto"
    serviceCatalog
    (Proxy :: Proxy AssociateBudgetWithResource)

responseDeleteProvisionedProductPlan :: DeleteProvisionedProductPlanResponse -> TestTree
responseDeleteProvisionedProductPlan =
  res
    "DeleteProvisionedProductPlanResponse"
    "fixture/DeleteProvisionedProductPlanResponse.proto"
    serviceCatalog
    (Proxy :: Proxy DeleteProvisionedProductPlan)

responseListLaunchPaths :: ListLaunchPathsResponse -> TestTree
responseListLaunchPaths =
  res
    "ListLaunchPathsResponse"
    "fixture/ListLaunchPathsResponse.proto"
    serviceCatalog
    (Proxy :: Proxy ListLaunchPaths)

responseCreateConstraint :: CreateConstraintResponse -> TestTree
responseCreateConstraint =
  res
    "CreateConstraintResponse"
    "fixture/CreateConstraintResponse.proto"
    serviceCatalog
    (Proxy :: Proxy CreateConstraint)

responseDescribePortfolioShareStatus :: DescribePortfolioShareStatusResponse -> TestTree
responseDescribePortfolioShareStatus =
  res
    "DescribePortfolioShareStatusResponse"
    "fixture/DescribePortfolioShareStatusResponse.proto"
    serviceCatalog
    (Proxy :: Proxy DescribePortfolioShareStatus)

responseDeletePortfolioShare :: DeletePortfolioShareResponse -> TestTree
responseDeletePortfolioShare =
  res
    "DeletePortfolioShareResponse"
    "fixture/DeletePortfolioShareResponse.proto"
    serviceCatalog
    (Proxy :: Proxy DeletePortfolioShare)

responseDescribeServiceAction :: DescribeServiceActionResponse -> TestTree
responseDescribeServiceAction =
  res
    "DescribeServiceActionResponse"
    "fixture/DescribeServiceActionResponse.proto"
    serviceCatalog
    (Proxy :: Proxy DescribeServiceAction)

responseUpdateProvisioningArtifact :: UpdateProvisioningArtifactResponse -> TestTree
responseUpdateProvisioningArtifact =
  res
    "UpdateProvisioningArtifactResponse"
    "fixture/UpdateProvisioningArtifactResponse.proto"
    serviceCatalog
    (Proxy :: Proxy UpdateProvisioningArtifact)

responseListStackInstancesForProvisionedProduct :: ListStackInstancesForProvisionedProductResponse -> TestTree
responseListStackInstancesForProvisionedProduct =
  res
    "ListStackInstancesForProvisionedProductResponse"
    "fixture/ListStackInstancesForProvisionedProductResponse.proto"
    serviceCatalog
    (Proxy :: Proxy ListStackInstancesForProvisionedProduct)

responseDeleteProvisioningArtifact :: DeleteProvisioningArtifactResponse -> TestTree
responseDeleteProvisioningArtifact =
  res
    "DeleteProvisioningArtifactResponse"
    "fixture/DeleteProvisioningArtifactResponse.proto"
    serviceCatalog
    (Proxy :: Proxy DeleteProvisioningArtifact)

responseDescribeProvisioningParameters :: DescribeProvisioningParametersResponse -> TestTree
responseDescribeProvisioningParameters =
  res
    "DescribeProvisioningParametersResponse"
    "fixture/DescribeProvisioningParametersResponse.proto"
    serviceCatalog
    (Proxy :: Proxy DescribeProvisioningParameters)

responseListProvisioningArtifacts :: ListProvisioningArtifactsResponse -> TestTree
responseListProvisioningArtifacts =
  res
    "ListProvisioningArtifactsResponse"
    "fixture/ListProvisioningArtifactsResponse.proto"
    serviceCatalog
    (Proxy :: Proxy ListProvisioningArtifacts)

responseDescribeProvisionedProduct :: DescribeProvisionedProductResponse -> TestTree
responseDescribeProvisionedProduct =
  res
    "DescribeProvisionedProductResponse"
    "fixture/DescribeProvisionedProductResponse.proto"
    serviceCatalog
    (Proxy :: Proxy DescribeProvisionedProduct)

responseDescribeProduct :: DescribeProductResponse -> TestTree
responseDescribeProduct =
  res
    "DescribeProductResponse"
    "fixture/DescribeProductResponse.proto"
    serviceCatalog
    (Proxy :: Proxy DescribeProduct)

responseUpdatePortfolioShare :: UpdatePortfolioShareResponse -> TestTree
responseUpdatePortfolioShare =
  res
    "UpdatePortfolioShareResponse"
    "fixture/UpdatePortfolioShareResponse.proto"
    serviceCatalog
    (Proxy :: Proxy UpdatePortfolioShare)

responseSearchProvisionedProducts :: SearchProvisionedProductsResponse -> TestTree
responseSearchProvisionedProducts =
  res
    "SearchProvisionedProductsResponse"
    "fixture/SearchProvisionedProductsResponse.proto"
    serviceCatalog
    (Proxy :: Proxy SearchProvisionedProducts)

responseListServiceActionsForProvisioningArtifact :: ListServiceActionsForProvisioningArtifactResponse -> TestTree
responseListServiceActionsForProvisioningArtifact =
  res
    "ListServiceActionsForProvisioningArtifactResponse"
    "fixture/ListServiceActionsForProvisioningArtifactResponse.proto"
    serviceCatalog
    (Proxy :: Proxy ListServiceActionsForProvisioningArtifact)

responseCreateProvisioningArtifact :: CreateProvisioningArtifactResponse -> TestTree
responseCreateProvisioningArtifact =
  res
    "CreateProvisioningArtifactResponse"
    "fixture/CreateProvisioningArtifactResponse.proto"
    serviceCatalog
    (Proxy :: Proxy CreateProvisioningArtifact)

responseDeletePortfolio :: DeletePortfolioResponse -> TestTree
responseDeletePortfolio =
  res
    "DeletePortfolioResponse"
    "fixture/DeletePortfolioResponse.proto"
    serviceCatalog
    (Proxy :: Proxy DeletePortfolio)

responseCreatePortfolioShare :: CreatePortfolioShareResponse -> TestTree
responseCreatePortfolioShare =
  res
    "CreatePortfolioShareResponse"
    "fixture/CreatePortfolioShareResponse.proto"
    serviceCatalog
    (Proxy :: Proxy CreatePortfolioShare)

responseDisassociateBudgetFromResource :: DisassociateBudgetFromResourceResponse -> TestTree
responseDisassociateBudgetFromResource =
  res
    "DisassociateBudgetFromResourceResponse"
    "fixture/DisassociateBudgetFromResourceResponse.proto"
    serviceCatalog
    (Proxy :: Proxy DisassociateBudgetFromResource)

responseUpdatePortfolio :: UpdatePortfolioResponse -> TestTree
responseUpdatePortfolio =
  res
    "UpdatePortfolioResponse"
    "fixture/UpdatePortfolioResponse.proto"
    serviceCatalog
    (Proxy :: Proxy UpdatePortfolio)

responseListPortfolios :: ListPortfoliosResponse -> TestTree
responseListPortfolios =
  res
    "ListPortfoliosResponse"
    "fixture/ListPortfoliosResponse.proto"
    serviceCatalog
    (Proxy :: Proxy ListPortfolios)

responseGetAWSOrganizationsAccessStatus :: GetAWSOrganizationsAccessStatusResponse -> TestTree
responseGetAWSOrganizationsAccessStatus =
  res
    "GetAWSOrganizationsAccessStatusResponse"
    "fixture/GetAWSOrganizationsAccessStatusResponse.proto"
    serviceCatalog
    (Proxy :: Proxy GetAWSOrganizationsAccessStatus)

responseSearchProductsAsAdmin :: SearchProductsAsAdminResponse -> TestTree
responseSearchProductsAsAdmin =
  res
    "SearchProductsAsAdminResponse"
    "fixture/SearchProductsAsAdminResponse.proto"
    serviceCatalog
    (Proxy :: Proxy SearchProductsAsAdmin)

responseDescribeRecord :: DescribeRecordResponse -> TestTree
responseDescribeRecord =
  res
    "DescribeRecordResponse"
    "fixture/DescribeRecordResponse.proto"
    serviceCatalog
    (Proxy :: Proxy DescribeRecord)

responseDescribeConstraint :: DescribeConstraintResponse -> TestTree
responseDescribeConstraint =
  res
    "DescribeConstraintResponse"
    "fixture/DescribeConstraintResponse.proto"
    serviceCatalog
    (Proxy :: Proxy DescribeConstraint)

responseEnableAWSOrganizationsAccess :: EnableAWSOrganizationsAccessResponse -> TestTree
responseEnableAWSOrganizationsAccess =
  res
    "EnableAWSOrganizationsAccessResponse"
    "fixture/EnableAWSOrganizationsAccessResponse.proto"
    serviceCatalog
    (Proxy :: Proxy EnableAWSOrganizationsAccess)

responseDeleteTagOption :: DeleteTagOptionResponse -> TestTree
responseDeleteTagOption =
  res
    "DeleteTagOptionResponse"
    "fixture/DeleteTagOptionResponse.proto"
    serviceCatalog
    (Proxy :: Proxy DeleteTagOption)

responseDisassociateServiceActionFromProvisioningArtifact :: DisassociateServiceActionFromProvisioningArtifactResponse -> TestTree
responseDisassociateServiceActionFromProvisioningArtifact =
  res
    "DisassociateServiceActionFromProvisioningArtifactResponse"
    "fixture/DisassociateServiceActionFromProvisioningArtifactResponse.proto"
    serviceCatalog
    (Proxy :: Proxy DisassociateServiceActionFromProvisioningArtifact)

responseUpdateTagOption :: UpdateTagOptionResponse -> TestTree
responseUpdateTagOption =
  res
    "UpdateTagOptionResponse"
    "fixture/UpdateTagOptionResponse.proto"
    serviceCatalog
    (Proxy :: Proxy UpdateTagOption)

responseListConstraintsForPortfolio :: ListConstraintsForPortfolioResponse -> TestTree
responseListConstraintsForPortfolio =
  res
    "ListConstraintsForPortfolioResponse"
    "fixture/ListConstraintsForPortfolioResponse.proto"
    serviceCatalog
    (Proxy :: Proxy ListConstraintsForPortfolio)

responseListRecordHistory :: ListRecordHistoryResponse -> TestTree
responseListRecordHistory =
  res
    "ListRecordHistoryResponse"
    "fixture/ListRecordHistoryResponse.proto"
    serviceCatalog
    (Proxy :: Proxy ListRecordHistory)

responseCreateTagOption :: CreateTagOptionResponse -> TestTree
responseCreateTagOption =
  res
    "CreateTagOptionResponse"
    "fixture/CreateTagOptionResponse.proto"
    serviceCatalog
    (Proxy :: Proxy CreateTagOption)

responseUpdateProduct :: UpdateProductResponse -> TestTree
responseUpdateProduct =
  res
    "UpdateProductResponse"
    "fixture/UpdateProductResponse.proto"
    serviceCatalog
    (Proxy :: Proxy UpdateProduct)

responseUpdateServiceAction :: UpdateServiceActionResponse -> TestTree
responseUpdateServiceAction =
  res
    "UpdateServiceActionResponse"
    "fixture/UpdateServiceActionResponse.proto"
    serviceCatalog
    (Proxy :: Proxy UpdateServiceAction)

responseDescribeProvisioningArtifact :: DescribeProvisioningArtifactResponse -> TestTree
responseDescribeProvisioningArtifact =
  res
    "DescribeProvisioningArtifactResponse"
    "fixture/DescribeProvisioningArtifactResponse.proto"
    serviceCatalog
    (Proxy :: Proxy DescribeProvisioningArtifact)

responseDeleteServiceAction :: DeleteServiceActionResponse -> TestTree
responseDeleteServiceAction =
  res
    "DeleteServiceActionResponse"
    "fixture/DeleteServiceActionResponse.proto"
    serviceCatalog
    (Proxy :: Proxy DeleteServiceAction)

responseAssociateServiceActionWithProvisioningArtifact :: AssociateServiceActionWithProvisioningArtifactResponse -> TestTree
responseAssociateServiceActionWithProvisioningArtifact =
  res
    "AssociateServiceActionWithProvisioningArtifactResponse"
    "fixture/AssociateServiceActionWithProvisioningArtifactResponse.proto"
    serviceCatalog
    (Proxy :: Proxy AssociateServiceActionWithProvisioningArtifact)

responseUpdateProvisionedProduct :: UpdateProvisionedProductResponse -> TestTree
responseUpdateProvisionedProduct =
  res
    "UpdateProvisionedProductResponse"
    "fixture/UpdateProvisionedProductResponse.proto"
    serviceCatalog
    (Proxy :: Proxy UpdateProvisionedProduct)

responseDeleteProduct :: DeleteProductResponse -> TestTree
responseDeleteProduct =
  res
    "DeleteProductResponse"
    "fixture/DeleteProductResponse.proto"
    serviceCatalog
    (Proxy :: Proxy DeleteProduct)

responseDescribeCopyProductStatus :: DescribeCopyProductStatusResponse -> TestTree
responseDescribeCopyProductStatus =
  res
    "DescribeCopyProductStatusResponse"
    "fixture/DescribeCopyProductStatusResponse.proto"
    serviceCatalog
    (Proxy :: Proxy DescribeCopyProductStatus)

responseCreateServiceAction :: CreateServiceActionResponse -> TestTree
responseCreateServiceAction =
  res
    "CreateServiceActionResponse"
    "fixture/CreateServiceActionResponse.proto"
    serviceCatalog
    (Proxy :: Proxy CreateServiceAction)

responseCreateProduct :: CreateProductResponse -> TestTree
responseCreateProduct =
  res
    "CreateProductResponse"
    "fixture/CreateProductResponse.proto"
    serviceCatalog
    (Proxy :: Proxy CreateProduct)

responseAcceptPortfolioShare :: AcceptPortfolioShareResponse -> TestTree
responseAcceptPortfolioShare =
  res
    "AcceptPortfolioShareResponse"
    "fixture/AcceptPortfolioShareResponse.proto"
    serviceCatalog
    (Proxy :: Proxy AcceptPortfolioShare)

responseDisassociatePrincipalFromPortfolio :: DisassociatePrincipalFromPortfolioResponse -> TestTree
responseDisassociatePrincipalFromPortfolio =
  res
    "DisassociatePrincipalFromPortfolioResponse"
    "fixture/DisassociatePrincipalFromPortfolioResponse.proto"
    serviceCatalog
    (Proxy :: Proxy DisassociatePrincipalFromPortfolio)

responseBatchDisassociateServiceActionFromProvisioningArtifact :: BatchDisassociateServiceActionFromProvisioningArtifactResponse -> TestTree
responseBatchDisassociateServiceActionFromProvisioningArtifact =
  res
    "BatchDisassociateServiceActionFromProvisioningArtifactResponse"
    "fixture/BatchDisassociateServiceActionFromProvisioningArtifactResponse.proto"
    serviceCatalog
    (Proxy :: Proxy BatchDisassociateServiceActionFromProvisioningArtifact)

responseListProvisionedProductPlans :: ListProvisionedProductPlansResponse -> TestTree
responseListProvisionedProductPlans =
  res
    "ListProvisionedProductPlansResponse"
    "fixture/ListProvisionedProductPlansResponse.proto"
    serviceCatalog
    (Proxy :: Proxy ListProvisionedProductPlans)

responseBatchAssociateServiceActionWithProvisioningArtifact :: BatchAssociateServiceActionWithProvisioningArtifactResponse -> TestTree
responseBatchAssociateServiceActionWithProvisioningArtifact =
  res
    "BatchAssociateServiceActionWithProvisioningArtifactResponse"
    "fixture/BatchAssociateServiceActionWithProvisioningArtifactResponse.proto"
    serviceCatalog
    (Proxy :: Proxy BatchAssociateServiceActionWithProvisioningArtifact)

responseSearchProducts :: SearchProductsResponse -> TestTree
responseSearchProducts =
  res
    "SearchProductsResponse"
    "fixture/SearchProductsResponse.proto"
    serviceCatalog
    (Proxy :: Proxy SearchProducts)

responseListProvisioningArtifactsForServiceAction :: ListProvisioningArtifactsForServiceActionResponse -> TestTree
responseListProvisioningArtifactsForServiceAction =
  res
    "ListProvisioningArtifactsForServiceActionResponse"
    "fixture/ListProvisioningArtifactsForServiceActionResponse.proto"
    serviceCatalog
    (Proxy :: Proxy ListProvisioningArtifactsForServiceAction)

responseAssociatePrincipalWithPortfolio :: AssociatePrincipalWithPortfolioResponse -> TestTree
responseAssociatePrincipalWithPortfolio =
  res
    "AssociatePrincipalWithPortfolioResponse"
    "fixture/AssociatePrincipalWithPortfolioResponse.proto"
    serviceCatalog
    (Proxy :: Proxy AssociatePrincipalWithPortfolio)

responseDescribeServiceActionExecutionParameters :: DescribeServiceActionExecutionParametersResponse -> TestTree
responseDescribeServiceActionExecutionParameters =
  res
    "DescribeServiceActionExecutionParametersResponse"
    "fixture/DescribeServiceActionExecutionParametersResponse.proto"
    serviceCatalog
    (Proxy :: Proxy DescribeServiceActionExecutionParameters)

responseCopyProduct :: CopyProductResponse -> TestTree
responseCopyProduct =
  res
    "CopyProductResponse"
    "fixture/CopyProductResponse.proto"
    serviceCatalog
    (Proxy :: Proxy CopyProduct)

responseCreatePortfolio :: CreatePortfolioResponse -> TestTree
responseCreatePortfolio =
  res
    "CreatePortfolioResponse"
    "fixture/CreatePortfolioResponse.proto"
    serviceCatalog
    (Proxy :: Proxy CreatePortfolio)

responseUpdateProvisionedProductProperties :: UpdateProvisionedProductPropertiesResponse -> TestTree
responseUpdateProvisionedProductProperties =
  res
    "UpdateProvisionedProductPropertiesResponse"
    "fixture/UpdateProvisionedProductPropertiesResponse.proto"
    serviceCatalog
    (Proxy :: Proxy UpdateProvisionedProductProperties)

responseDescribeProductView :: DescribeProductViewResponse -> TestTree
responseDescribeProductView =
  res
    "DescribeProductViewResponse"
    "fixture/DescribeProductViewResponse.proto"
    serviceCatalog
    (Proxy :: Proxy DescribeProductView)

responseDescribeProductAsAdmin :: DescribeProductAsAdminResponse -> TestTree
responseDescribeProductAsAdmin =
  res
    "DescribeProductAsAdminResponse"
    "fixture/DescribeProductAsAdminResponse.proto"
    serviceCatalog
    (Proxy :: Proxy DescribeProductAsAdmin)

responseListPortfoliosForProduct :: ListPortfoliosForProductResponse -> TestTree
responseListPortfoliosForProduct =
  res
    "ListPortfoliosForProductResponse"
    "fixture/ListPortfoliosForProductResponse.proto"
    serviceCatalog
    (Proxy :: Proxy ListPortfoliosForProduct)

responseRejectPortfolioShare :: RejectPortfolioShareResponse -> TestTree
responseRejectPortfolioShare =
  res
    "RejectPortfolioShareResponse"
    "fixture/RejectPortfolioShareResponse.proto"
    serviceCatalog
    (Proxy :: Proxy RejectPortfolioShare)

responseListTagOptions :: ListTagOptionsResponse -> TestTree
responseListTagOptions =
  res
    "ListTagOptionsResponse"
    "fixture/ListTagOptionsResponse.proto"
    serviceCatalog
    (Proxy :: Proxy ListTagOptions)

responseAssociateTagOptionWithResource :: AssociateTagOptionWithResourceResponse -> TestTree
responseAssociateTagOptionWithResource =
  res
    "AssociateTagOptionWithResourceResponse"
    "fixture/AssociateTagOptionWithResourceResponse.proto"
    serviceCatalog
    (Proxy :: Proxy AssociateTagOptionWithResource)

responseDisableAWSOrganizationsAccess :: DisableAWSOrganizationsAccessResponse -> TestTree
responseDisableAWSOrganizationsAccess =
  res
    "DisableAWSOrganizationsAccessResponse"
    "fixture/DisableAWSOrganizationsAccessResponse.proto"
    serviceCatalog
    (Proxy :: Proxy DisableAWSOrganizationsAccess)

responseDescribeProvisionedProductPlan :: DescribeProvisionedProductPlanResponse -> TestTree
responseDescribeProvisionedProductPlan =
  res
    "DescribeProvisionedProductPlanResponse"
    "fixture/DescribeProvisionedProductPlanResponse.proto"
    serviceCatalog
    (Proxy :: Proxy DescribeProvisionedProductPlan)

responseListBudgetsForResource :: ListBudgetsForResourceResponse -> TestTree
responseListBudgetsForResource =
  res
    "ListBudgetsForResourceResponse"
    "fixture/ListBudgetsForResourceResponse.proto"
    serviceCatalog
    (Proxy :: Proxy ListBudgetsForResource)

responseDisassociateProductFromPortfolio :: DisassociateProductFromPortfolioResponse -> TestTree
responseDisassociateProductFromPortfolio =
  res
    "DisassociateProductFromPortfolioResponse"
    "fixture/DisassociateProductFromPortfolioResponse.proto"
    serviceCatalog
    (Proxy :: Proxy DisassociateProductFromPortfolio)

responseListPrincipalsForPortfolio :: ListPrincipalsForPortfolioResponse -> TestTree
responseListPrincipalsForPortfolio =
  res
    "ListPrincipalsForPortfolioResponse"
    "fixture/ListPrincipalsForPortfolioResponse.proto"
    serviceCatalog
    (Proxy :: Proxy ListPrincipalsForPortfolio)

responseProvisionProduct :: ProvisionProductResponse -> TestTree
responseProvisionProduct =
  res
    "ProvisionProductResponse"
    "fixture/ProvisionProductResponse.proto"
    serviceCatalog
    (Proxy :: Proxy ProvisionProduct)

responseTerminateProvisionedProduct :: TerminateProvisionedProductResponse -> TestTree
responseTerminateProvisionedProduct =
  res
    "TerminateProvisionedProductResponse"
    "fixture/TerminateProvisionedProductResponse.proto"
    serviceCatalog
    (Proxy :: Proxy TerminateProvisionedProduct)

responseListServiceActions :: ListServiceActionsResponse -> TestTree
responseListServiceActions =
  res
    "ListServiceActionsResponse"
    "fixture/ListServiceActionsResponse.proto"
    serviceCatalog
    (Proxy :: Proxy ListServiceActions)
