{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.CostExplorer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.CostExplorer where

import Data.Proxy
import Network.AWS.CostExplorer
import Test.AWS.CostExplorer.Internal
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestListCostCategoryDefinitions $
--             listCostCategoryDefinitions
--
--         , requestGetRightsizingRecommendation $
--             getRightsizingRecommendation
--
--         , requestGetAnomalySubscriptions $
--             getAnomalySubscriptions
--
--         , requestGetAnomalies $
--             getAnomalies
--
--         , requestGetSavingsPlansUtilizationDetails $
--             getSavingsPlansUtilizationDetails
--
--         , requestGetCostForecast $
--             getCostForecast
--
--         , requestGetCostAndUsage $
--             getCostAndUsage
--
--         , requestGetSavingsPlansPurchaseRecommendation $
--             getSavingsPlansPurchaseRecommendation
--
--         , requestUpdateAnomalySubscription $
--             updateAnomalySubscription
--
--         , requestDeleteAnomalySubscription $
--             deleteAnomalySubscription
--
--         , requestGetReservationCoverage $
--             getReservationCoverage
--
--         , requestGetUsageForecast $
--             getUsageForecast
--
--         , requestGetCostAndUsageWithResources $
--             getCostAndUsageWithResources
--
--         , requestGetTags $
--             getTags
--
--         , requestDeleteCostCategoryDefinition $
--             deleteCostCategoryDefinition
--
--         , requestUpdateCostCategoryDefinition $
--             updateCostCategoryDefinition
--
--         , requestGetSavingsPlansCoverage $
--             getSavingsPlansCoverage
--
--         , requestDeleteAnomalyMonitor $
--             deleteAnomalyMonitor
--
--         , requestGetReservationUtilization $
--             getReservationUtilization
--
--         , requestGetReservationPurchaseRecommendation $
--             getReservationPurchaseRecommendation
--
--         , requestUpdateAnomalyMonitor $
--             updateAnomalyMonitor
--
--         , requestCreateAnomalyMonitor $
--             createAnomalyMonitor
--
--         , requestGetDimensionValues $
--             getDimensionValues
--
--         , requestCreateAnomalySubscription $
--             createAnomalySubscription
--
--         , requestDescribeCostCategoryDefinition $
--             describeCostCategoryDefinition
--
--         , requestGetCostCategories $
--             getCostCategories
--
--         , requestGetSavingsPlansUtilization $
--             getSavingsPlansUtilization
--
--         , requestProvideAnomalyFeedback $
--             provideAnomalyFeedback
--
--         , requestGetAnomalyMonitors $
--             getAnomalyMonitors
--
--         , requestCreateCostCategoryDefinition $
--             createCostCategoryDefinition
--
--           ]

--     , testGroup "response"
--         [ responseListCostCategoryDefinitions $
--             listCostCategoryDefinitionsResponse
--
--         , responseGetRightsizingRecommendation $
--             getRightsizingRecommendationResponse
--
--         , responseGetAnomalySubscriptions $
--             getAnomalySubscriptionsResponse
--
--         , responseGetAnomalies $
--             getAnomaliesResponse
--
--         , responseGetSavingsPlansUtilizationDetails $
--             getSavingsPlansUtilizationDetailsResponse
--
--         , responseGetCostForecast $
--             getCostForecastResponse
--
--         , responseGetCostAndUsage $
--             getCostAndUsageResponse
--
--         , responseGetSavingsPlansPurchaseRecommendation $
--             getSavingsPlansPurchaseRecommendationResponse
--
--         , responseUpdateAnomalySubscription $
--             updateAnomalySubscriptionResponse
--
--         , responseDeleteAnomalySubscription $
--             deleteAnomalySubscriptionResponse
--
--         , responseGetReservationCoverage $
--             getReservationCoverageResponse
--
--         , responseGetUsageForecast $
--             getUsageForecastResponse
--
--         , responseGetCostAndUsageWithResources $
--             getCostAndUsageWithResourcesResponse
--
--         , responseGetTags $
--             getTagsResponse
--
--         , responseDeleteCostCategoryDefinition $
--             deleteCostCategoryDefinitionResponse
--
--         , responseUpdateCostCategoryDefinition $
--             updateCostCategoryDefinitionResponse
--
--         , responseGetSavingsPlansCoverage $
--             getSavingsPlansCoverageResponse
--
--         , responseDeleteAnomalyMonitor $
--             deleteAnomalyMonitorResponse
--
--         , responseGetReservationUtilization $
--             getReservationUtilizationResponse
--
--         , responseGetReservationPurchaseRecommendation $
--             getReservationPurchaseRecommendationResponse
--
--         , responseUpdateAnomalyMonitor $
--             updateAnomalyMonitorResponse
--
--         , responseCreateAnomalyMonitor $
--             createAnomalyMonitorResponse
--
--         , responseGetDimensionValues $
--             getDimensionValuesResponse
--
--         , responseCreateAnomalySubscription $
--             createAnomalySubscriptionResponse
--
--         , responseDescribeCostCategoryDefinition $
--             describeCostCategoryDefinitionResponse
--
--         , responseGetCostCategories $
--             getCostCategoriesResponse
--
--         , responseGetSavingsPlansUtilization $
--             getSavingsPlansUtilizationResponse
--
--         , responseProvideAnomalyFeedback $
--             provideAnomalyFeedbackResponse
--
--         , responseGetAnomalyMonitors $
--             getAnomalyMonitorsResponse
--
--         , responseCreateCostCategoryDefinition $
--             createCostCategoryDefinitionResponse
--
--           ]
--     ]

-- Requests

requestListCostCategoryDefinitions :: ListCostCategoryDefinitions -> TestTree
requestListCostCategoryDefinitions =
  req
    "ListCostCategoryDefinitions"
    "fixture/ListCostCategoryDefinitions.yaml"

requestGetRightsizingRecommendation :: GetRightsizingRecommendation -> TestTree
requestGetRightsizingRecommendation =
  req
    "GetRightsizingRecommendation"
    "fixture/GetRightsizingRecommendation.yaml"

requestGetAnomalySubscriptions :: GetAnomalySubscriptions -> TestTree
requestGetAnomalySubscriptions =
  req
    "GetAnomalySubscriptions"
    "fixture/GetAnomalySubscriptions.yaml"

requestGetAnomalies :: GetAnomalies -> TestTree
requestGetAnomalies =
  req
    "GetAnomalies"
    "fixture/GetAnomalies.yaml"

requestGetSavingsPlansUtilizationDetails :: GetSavingsPlansUtilizationDetails -> TestTree
requestGetSavingsPlansUtilizationDetails =
  req
    "GetSavingsPlansUtilizationDetails"
    "fixture/GetSavingsPlansUtilizationDetails.yaml"

requestGetCostForecast :: GetCostForecast -> TestTree
requestGetCostForecast =
  req
    "GetCostForecast"
    "fixture/GetCostForecast.yaml"

requestGetCostAndUsage :: GetCostAndUsage -> TestTree
requestGetCostAndUsage =
  req
    "GetCostAndUsage"
    "fixture/GetCostAndUsage.yaml"

requestGetSavingsPlansPurchaseRecommendation :: GetSavingsPlansPurchaseRecommendation -> TestTree
requestGetSavingsPlansPurchaseRecommendation =
  req
    "GetSavingsPlansPurchaseRecommendation"
    "fixture/GetSavingsPlansPurchaseRecommendation.yaml"

requestUpdateAnomalySubscription :: UpdateAnomalySubscription -> TestTree
requestUpdateAnomalySubscription =
  req
    "UpdateAnomalySubscription"
    "fixture/UpdateAnomalySubscription.yaml"

requestDeleteAnomalySubscription :: DeleteAnomalySubscription -> TestTree
requestDeleteAnomalySubscription =
  req
    "DeleteAnomalySubscription"
    "fixture/DeleteAnomalySubscription.yaml"

requestGetReservationCoverage :: GetReservationCoverage -> TestTree
requestGetReservationCoverage =
  req
    "GetReservationCoverage"
    "fixture/GetReservationCoverage.yaml"

requestGetUsageForecast :: GetUsageForecast -> TestTree
requestGetUsageForecast =
  req
    "GetUsageForecast"
    "fixture/GetUsageForecast.yaml"

requestGetCostAndUsageWithResources :: GetCostAndUsageWithResources -> TestTree
requestGetCostAndUsageWithResources =
  req
    "GetCostAndUsageWithResources"
    "fixture/GetCostAndUsageWithResources.yaml"

requestGetTags :: GetTags -> TestTree
requestGetTags =
  req
    "GetTags"
    "fixture/GetTags.yaml"

requestDeleteCostCategoryDefinition :: DeleteCostCategoryDefinition -> TestTree
requestDeleteCostCategoryDefinition =
  req
    "DeleteCostCategoryDefinition"
    "fixture/DeleteCostCategoryDefinition.yaml"

requestUpdateCostCategoryDefinition :: UpdateCostCategoryDefinition -> TestTree
requestUpdateCostCategoryDefinition =
  req
    "UpdateCostCategoryDefinition"
    "fixture/UpdateCostCategoryDefinition.yaml"

requestGetSavingsPlansCoverage :: GetSavingsPlansCoverage -> TestTree
requestGetSavingsPlansCoverage =
  req
    "GetSavingsPlansCoverage"
    "fixture/GetSavingsPlansCoverage.yaml"

requestDeleteAnomalyMonitor :: DeleteAnomalyMonitor -> TestTree
requestDeleteAnomalyMonitor =
  req
    "DeleteAnomalyMonitor"
    "fixture/DeleteAnomalyMonitor.yaml"

requestGetReservationUtilization :: GetReservationUtilization -> TestTree
requestGetReservationUtilization =
  req
    "GetReservationUtilization"
    "fixture/GetReservationUtilization.yaml"

requestGetReservationPurchaseRecommendation :: GetReservationPurchaseRecommendation -> TestTree
requestGetReservationPurchaseRecommendation =
  req
    "GetReservationPurchaseRecommendation"
    "fixture/GetReservationPurchaseRecommendation.yaml"

requestUpdateAnomalyMonitor :: UpdateAnomalyMonitor -> TestTree
requestUpdateAnomalyMonitor =
  req
    "UpdateAnomalyMonitor"
    "fixture/UpdateAnomalyMonitor.yaml"

requestCreateAnomalyMonitor :: CreateAnomalyMonitor -> TestTree
requestCreateAnomalyMonitor =
  req
    "CreateAnomalyMonitor"
    "fixture/CreateAnomalyMonitor.yaml"

requestGetDimensionValues :: GetDimensionValues -> TestTree
requestGetDimensionValues =
  req
    "GetDimensionValues"
    "fixture/GetDimensionValues.yaml"

requestCreateAnomalySubscription :: CreateAnomalySubscription -> TestTree
requestCreateAnomalySubscription =
  req
    "CreateAnomalySubscription"
    "fixture/CreateAnomalySubscription.yaml"

requestDescribeCostCategoryDefinition :: DescribeCostCategoryDefinition -> TestTree
requestDescribeCostCategoryDefinition =
  req
    "DescribeCostCategoryDefinition"
    "fixture/DescribeCostCategoryDefinition.yaml"

requestGetCostCategories :: GetCostCategories -> TestTree
requestGetCostCategories =
  req
    "GetCostCategories"
    "fixture/GetCostCategories.yaml"

requestGetSavingsPlansUtilization :: GetSavingsPlansUtilization -> TestTree
requestGetSavingsPlansUtilization =
  req
    "GetSavingsPlansUtilization"
    "fixture/GetSavingsPlansUtilization.yaml"

requestProvideAnomalyFeedback :: ProvideAnomalyFeedback -> TestTree
requestProvideAnomalyFeedback =
  req
    "ProvideAnomalyFeedback"
    "fixture/ProvideAnomalyFeedback.yaml"

requestGetAnomalyMonitors :: GetAnomalyMonitors -> TestTree
requestGetAnomalyMonitors =
  req
    "GetAnomalyMonitors"
    "fixture/GetAnomalyMonitors.yaml"

requestCreateCostCategoryDefinition :: CreateCostCategoryDefinition -> TestTree
requestCreateCostCategoryDefinition =
  req
    "CreateCostCategoryDefinition"
    "fixture/CreateCostCategoryDefinition.yaml"

-- Responses

responseListCostCategoryDefinitions :: ListCostCategoryDefinitionsResponse -> TestTree
responseListCostCategoryDefinitions =
  res
    "ListCostCategoryDefinitionsResponse"
    "fixture/ListCostCategoryDefinitionsResponse.proto"
    costExplorer
    (Proxy :: Proxy ListCostCategoryDefinitions)

responseGetRightsizingRecommendation :: GetRightsizingRecommendationResponse -> TestTree
responseGetRightsizingRecommendation =
  res
    "GetRightsizingRecommendationResponse"
    "fixture/GetRightsizingRecommendationResponse.proto"
    costExplorer
    (Proxy :: Proxy GetRightsizingRecommendation)

responseGetAnomalySubscriptions :: GetAnomalySubscriptionsResponse -> TestTree
responseGetAnomalySubscriptions =
  res
    "GetAnomalySubscriptionsResponse"
    "fixture/GetAnomalySubscriptionsResponse.proto"
    costExplorer
    (Proxy :: Proxy GetAnomalySubscriptions)

responseGetAnomalies :: GetAnomaliesResponse -> TestTree
responseGetAnomalies =
  res
    "GetAnomaliesResponse"
    "fixture/GetAnomaliesResponse.proto"
    costExplorer
    (Proxy :: Proxy GetAnomalies)

responseGetSavingsPlansUtilizationDetails :: GetSavingsPlansUtilizationDetailsResponse -> TestTree
responseGetSavingsPlansUtilizationDetails =
  res
    "GetSavingsPlansUtilizationDetailsResponse"
    "fixture/GetSavingsPlansUtilizationDetailsResponse.proto"
    costExplorer
    (Proxy :: Proxy GetSavingsPlansUtilizationDetails)

responseGetCostForecast :: GetCostForecastResponse -> TestTree
responseGetCostForecast =
  res
    "GetCostForecastResponse"
    "fixture/GetCostForecastResponse.proto"
    costExplorer
    (Proxy :: Proxy GetCostForecast)

responseGetCostAndUsage :: GetCostAndUsageResponse -> TestTree
responseGetCostAndUsage =
  res
    "GetCostAndUsageResponse"
    "fixture/GetCostAndUsageResponse.proto"
    costExplorer
    (Proxy :: Proxy GetCostAndUsage)

responseGetSavingsPlansPurchaseRecommendation :: GetSavingsPlansPurchaseRecommendationResponse -> TestTree
responseGetSavingsPlansPurchaseRecommendation =
  res
    "GetSavingsPlansPurchaseRecommendationResponse"
    "fixture/GetSavingsPlansPurchaseRecommendationResponse.proto"
    costExplorer
    (Proxy :: Proxy GetSavingsPlansPurchaseRecommendation)

responseUpdateAnomalySubscription :: UpdateAnomalySubscriptionResponse -> TestTree
responseUpdateAnomalySubscription =
  res
    "UpdateAnomalySubscriptionResponse"
    "fixture/UpdateAnomalySubscriptionResponse.proto"
    costExplorer
    (Proxy :: Proxy UpdateAnomalySubscription)

responseDeleteAnomalySubscription :: DeleteAnomalySubscriptionResponse -> TestTree
responseDeleteAnomalySubscription =
  res
    "DeleteAnomalySubscriptionResponse"
    "fixture/DeleteAnomalySubscriptionResponse.proto"
    costExplorer
    (Proxy :: Proxy DeleteAnomalySubscription)

responseGetReservationCoverage :: GetReservationCoverageResponse -> TestTree
responseGetReservationCoverage =
  res
    "GetReservationCoverageResponse"
    "fixture/GetReservationCoverageResponse.proto"
    costExplorer
    (Proxy :: Proxy GetReservationCoverage)

responseGetUsageForecast :: GetUsageForecastResponse -> TestTree
responseGetUsageForecast =
  res
    "GetUsageForecastResponse"
    "fixture/GetUsageForecastResponse.proto"
    costExplorer
    (Proxy :: Proxy GetUsageForecast)

responseGetCostAndUsageWithResources :: GetCostAndUsageWithResourcesResponse -> TestTree
responseGetCostAndUsageWithResources =
  res
    "GetCostAndUsageWithResourcesResponse"
    "fixture/GetCostAndUsageWithResourcesResponse.proto"
    costExplorer
    (Proxy :: Proxy GetCostAndUsageWithResources)

responseGetTags :: GetTagsResponse -> TestTree
responseGetTags =
  res
    "GetTagsResponse"
    "fixture/GetTagsResponse.proto"
    costExplorer
    (Proxy :: Proxy GetTags)

responseDeleteCostCategoryDefinition :: DeleteCostCategoryDefinitionResponse -> TestTree
responseDeleteCostCategoryDefinition =
  res
    "DeleteCostCategoryDefinitionResponse"
    "fixture/DeleteCostCategoryDefinitionResponse.proto"
    costExplorer
    (Proxy :: Proxy DeleteCostCategoryDefinition)

responseUpdateCostCategoryDefinition :: UpdateCostCategoryDefinitionResponse -> TestTree
responseUpdateCostCategoryDefinition =
  res
    "UpdateCostCategoryDefinitionResponse"
    "fixture/UpdateCostCategoryDefinitionResponse.proto"
    costExplorer
    (Proxy :: Proxy UpdateCostCategoryDefinition)

responseGetSavingsPlansCoverage :: GetSavingsPlansCoverageResponse -> TestTree
responseGetSavingsPlansCoverage =
  res
    "GetSavingsPlansCoverageResponse"
    "fixture/GetSavingsPlansCoverageResponse.proto"
    costExplorer
    (Proxy :: Proxy GetSavingsPlansCoverage)

responseDeleteAnomalyMonitor :: DeleteAnomalyMonitorResponse -> TestTree
responseDeleteAnomalyMonitor =
  res
    "DeleteAnomalyMonitorResponse"
    "fixture/DeleteAnomalyMonitorResponse.proto"
    costExplorer
    (Proxy :: Proxy DeleteAnomalyMonitor)

responseGetReservationUtilization :: GetReservationUtilizationResponse -> TestTree
responseGetReservationUtilization =
  res
    "GetReservationUtilizationResponse"
    "fixture/GetReservationUtilizationResponse.proto"
    costExplorer
    (Proxy :: Proxy GetReservationUtilization)

responseGetReservationPurchaseRecommendation :: GetReservationPurchaseRecommendationResponse -> TestTree
responseGetReservationPurchaseRecommendation =
  res
    "GetReservationPurchaseRecommendationResponse"
    "fixture/GetReservationPurchaseRecommendationResponse.proto"
    costExplorer
    (Proxy :: Proxy GetReservationPurchaseRecommendation)

responseUpdateAnomalyMonitor :: UpdateAnomalyMonitorResponse -> TestTree
responseUpdateAnomalyMonitor =
  res
    "UpdateAnomalyMonitorResponse"
    "fixture/UpdateAnomalyMonitorResponse.proto"
    costExplorer
    (Proxy :: Proxy UpdateAnomalyMonitor)

responseCreateAnomalyMonitor :: CreateAnomalyMonitorResponse -> TestTree
responseCreateAnomalyMonitor =
  res
    "CreateAnomalyMonitorResponse"
    "fixture/CreateAnomalyMonitorResponse.proto"
    costExplorer
    (Proxy :: Proxy CreateAnomalyMonitor)

responseGetDimensionValues :: GetDimensionValuesResponse -> TestTree
responseGetDimensionValues =
  res
    "GetDimensionValuesResponse"
    "fixture/GetDimensionValuesResponse.proto"
    costExplorer
    (Proxy :: Proxy GetDimensionValues)

responseCreateAnomalySubscription :: CreateAnomalySubscriptionResponse -> TestTree
responseCreateAnomalySubscription =
  res
    "CreateAnomalySubscriptionResponse"
    "fixture/CreateAnomalySubscriptionResponse.proto"
    costExplorer
    (Proxy :: Proxy CreateAnomalySubscription)

responseDescribeCostCategoryDefinition :: DescribeCostCategoryDefinitionResponse -> TestTree
responseDescribeCostCategoryDefinition =
  res
    "DescribeCostCategoryDefinitionResponse"
    "fixture/DescribeCostCategoryDefinitionResponse.proto"
    costExplorer
    (Proxy :: Proxy DescribeCostCategoryDefinition)

responseGetCostCategories :: GetCostCategoriesResponse -> TestTree
responseGetCostCategories =
  res
    "GetCostCategoriesResponse"
    "fixture/GetCostCategoriesResponse.proto"
    costExplorer
    (Proxy :: Proxy GetCostCategories)

responseGetSavingsPlansUtilization :: GetSavingsPlansUtilizationResponse -> TestTree
responseGetSavingsPlansUtilization =
  res
    "GetSavingsPlansUtilizationResponse"
    "fixture/GetSavingsPlansUtilizationResponse.proto"
    costExplorer
    (Proxy :: Proxy GetSavingsPlansUtilization)

responseProvideAnomalyFeedback :: ProvideAnomalyFeedbackResponse -> TestTree
responseProvideAnomalyFeedback =
  res
    "ProvideAnomalyFeedbackResponse"
    "fixture/ProvideAnomalyFeedbackResponse.proto"
    costExplorer
    (Proxy :: Proxy ProvideAnomalyFeedback)

responseGetAnomalyMonitors :: GetAnomalyMonitorsResponse -> TestTree
responseGetAnomalyMonitors =
  res
    "GetAnomalyMonitorsResponse"
    "fixture/GetAnomalyMonitorsResponse.proto"
    costExplorer
    (Proxy :: Proxy GetAnomalyMonitors)

responseCreateCostCategoryDefinition :: CreateCostCategoryDefinitionResponse -> TestTree
responseCreateCostCategoryDefinition =
  res
    "CreateCostCategoryDefinitionResponse"
    "fixture/CreateCostCategoryDefinitionResponse.proto"
    costExplorer
    (Proxy :: Proxy CreateCostCategoryDefinition)
