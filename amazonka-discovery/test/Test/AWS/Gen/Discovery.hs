{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.Discovery
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.Discovery where

import Data.Proxy
import Network.AWS.Discovery
import Test.AWS.Discovery.Internal
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
--         [ requestDescribeExportTasks $
--             describeExportTasks
--
--         , requestDescribeTags $
--             describeTags
--
--         , requestStartExportTask $
--             startExportTask
--
--         , requestListConfigurations $
--             listConfigurations
--
--         , requestCreateApplication $
--             createApplication
--
--         , requestDescribeImportTasks $
--             describeImportTasks
--
--         , requestDeleteApplications $
--             deleteApplications
--
--         , requestGetDiscoverySummary $
--             getDiscoverySummary
--
--         , requestDeleteTags $
--             deleteTags
--
--         , requestDisassociateConfigurationItemsFromApplication $
--             disassociateConfigurationItemsFromApplication
--
--         , requestStopDataCollectionByAgentIds $
--             stopDataCollectionByAgentIds
--
--         , requestStartDataCollectionByAgentIds $
--             startDataCollectionByAgentIds
--
--         , requestDescribeAgents $
--             describeAgents
--
--         , requestDescribeContinuousExports $
--             describeContinuousExports
--
--         , requestStopContinuousExport $
--             stopContinuousExport
--
--         , requestStartContinuousExport $
--             startContinuousExport
--
--         , requestDescribeConfigurations $
--             describeConfigurations
--
--         , requestListServerNeighbors $
--             listServerNeighbors
--
--         , requestAssociateConfigurationItemsToApplication $
--             associateConfigurationItemsToApplication
--
--         , requestUpdateApplication $
--             updateApplication
--
--         , requestStartImportTask $
--             startImportTask
--
--         , requestBatchDeleteImportData $
--             batchDeleteImportData
--
--         , requestCreateTags $
--             createTags
--
--           ]

--     , testGroup "response"
--         [ responseDescribeExportTasks $
--             describeExportTasksResponse
--
--         , responseDescribeTags $
--             describeTagsResponse
--
--         , responseStartExportTask $
--             startExportTaskResponse
--
--         , responseListConfigurations $
--             listConfigurationsResponse
--
--         , responseCreateApplication $
--             createApplicationResponse
--
--         , responseDescribeImportTasks $
--             describeImportTasksResponse
--
--         , responseDeleteApplications $
--             deleteApplicationsResponse
--
--         , responseGetDiscoverySummary $
--             getDiscoverySummaryResponse
--
--         , responseDeleteTags $
--             deleteTagsResponse
--
--         , responseDisassociateConfigurationItemsFromApplication $
--             disassociateConfigurationItemsFromApplicationResponse
--
--         , responseStopDataCollectionByAgentIds $
--             stopDataCollectionByAgentIdsResponse
--
--         , responseStartDataCollectionByAgentIds $
--             startDataCollectionByAgentIdsResponse
--
--         , responseDescribeAgents $
--             describeAgentsResponse
--
--         , responseDescribeContinuousExports $
--             describeContinuousExportsResponse
--
--         , responseStopContinuousExport $
--             stopContinuousExportResponse
--
--         , responseStartContinuousExport $
--             startContinuousExportResponse
--
--         , responseDescribeConfigurations $
--             describeConfigurationsResponse
--
--         , responseListServerNeighbors $
--             listServerNeighborsResponse
--
--         , responseAssociateConfigurationItemsToApplication $
--             associateConfigurationItemsToApplicationResponse
--
--         , responseUpdateApplication $
--             updateApplicationResponse
--
--         , responseStartImportTask $
--             startImportTaskResponse
--
--         , responseBatchDeleteImportData $
--             batchDeleteImportDataResponse
--
--         , responseCreateTags $
--             createTagsResponse
--
--           ]
--     ]

-- Requests

requestDescribeExportTasks :: DescribeExportTasks -> TestTree
requestDescribeExportTasks =
  req
    "DescribeExportTasks"
    "fixture/DescribeExportTasks.yaml"

requestDescribeTags :: DescribeTags -> TestTree
requestDescribeTags =
  req
    "DescribeTags"
    "fixture/DescribeTags.yaml"

requestStartExportTask :: StartExportTask -> TestTree
requestStartExportTask =
  req
    "StartExportTask"
    "fixture/StartExportTask.yaml"

requestListConfigurations :: ListConfigurations -> TestTree
requestListConfigurations =
  req
    "ListConfigurations"
    "fixture/ListConfigurations.yaml"

requestCreateApplication :: CreateApplication -> TestTree
requestCreateApplication =
  req
    "CreateApplication"
    "fixture/CreateApplication.yaml"

requestDescribeImportTasks :: DescribeImportTasks -> TestTree
requestDescribeImportTasks =
  req
    "DescribeImportTasks"
    "fixture/DescribeImportTasks.yaml"

requestDeleteApplications :: DeleteApplications -> TestTree
requestDeleteApplications =
  req
    "DeleteApplications"
    "fixture/DeleteApplications.yaml"

requestGetDiscoverySummary :: GetDiscoverySummary -> TestTree
requestGetDiscoverySummary =
  req
    "GetDiscoverySummary"
    "fixture/GetDiscoverySummary.yaml"

requestDeleteTags :: DeleteTags -> TestTree
requestDeleteTags =
  req
    "DeleteTags"
    "fixture/DeleteTags.yaml"

requestDisassociateConfigurationItemsFromApplication :: DisassociateConfigurationItemsFromApplication -> TestTree
requestDisassociateConfigurationItemsFromApplication =
  req
    "DisassociateConfigurationItemsFromApplication"
    "fixture/DisassociateConfigurationItemsFromApplication.yaml"

requestStopDataCollectionByAgentIds :: StopDataCollectionByAgentIds -> TestTree
requestStopDataCollectionByAgentIds =
  req
    "StopDataCollectionByAgentIds"
    "fixture/StopDataCollectionByAgentIds.yaml"

requestStartDataCollectionByAgentIds :: StartDataCollectionByAgentIds -> TestTree
requestStartDataCollectionByAgentIds =
  req
    "StartDataCollectionByAgentIds"
    "fixture/StartDataCollectionByAgentIds.yaml"

requestDescribeAgents :: DescribeAgents -> TestTree
requestDescribeAgents =
  req
    "DescribeAgents"
    "fixture/DescribeAgents.yaml"

requestDescribeContinuousExports :: DescribeContinuousExports -> TestTree
requestDescribeContinuousExports =
  req
    "DescribeContinuousExports"
    "fixture/DescribeContinuousExports.yaml"

requestStopContinuousExport :: StopContinuousExport -> TestTree
requestStopContinuousExport =
  req
    "StopContinuousExport"
    "fixture/StopContinuousExport.yaml"

requestStartContinuousExport :: StartContinuousExport -> TestTree
requestStartContinuousExport =
  req
    "StartContinuousExport"
    "fixture/StartContinuousExport.yaml"

requestDescribeConfigurations :: DescribeConfigurations -> TestTree
requestDescribeConfigurations =
  req
    "DescribeConfigurations"
    "fixture/DescribeConfigurations.yaml"

requestListServerNeighbors :: ListServerNeighbors -> TestTree
requestListServerNeighbors =
  req
    "ListServerNeighbors"
    "fixture/ListServerNeighbors.yaml"

requestAssociateConfigurationItemsToApplication :: AssociateConfigurationItemsToApplication -> TestTree
requestAssociateConfigurationItemsToApplication =
  req
    "AssociateConfigurationItemsToApplication"
    "fixture/AssociateConfigurationItemsToApplication.yaml"

requestUpdateApplication :: UpdateApplication -> TestTree
requestUpdateApplication =
  req
    "UpdateApplication"
    "fixture/UpdateApplication.yaml"

requestStartImportTask :: StartImportTask -> TestTree
requestStartImportTask =
  req
    "StartImportTask"
    "fixture/StartImportTask.yaml"

requestBatchDeleteImportData :: BatchDeleteImportData -> TestTree
requestBatchDeleteImportData =
  req
    "BatchDeleteImportData"
    "fixture/BatchDeleteImportData.yaml"

requestCreateTags :: CreateTags -> TestTree
requestCreateTags =
  req
    "CreateTags"
    "fixture/CreateTags.yaml"

-- Responses

responseDescribeExportTasks :: DescribeExportTasksResponse -> TestTree
responseDescribeExportTasks =
  res
    "DescribeExportTasksResponse"
    "fixture/DescribeExportTasksResponse.proto"
    discovery
    (Proxy :: Proxy DescribeExportTasks)

responseDescribeTags :: DescribeTagsResponse -> TestTree
responseDescribeTags =
  res
    "DescribeTagsResponse"
    "fixture/DescribeTagsResponse.proto"
    discovery
    (Proxy :: Proxy DescribeTags)

responseStartExportTask :: StartExportTaskResponse -> TestTree
responseStartExportTask =
  res
    "StartExportTaskResponse"
    "fixture/StartExportTaskResponse.proto"
    discovery
    (Proxy :: Proxy StartExportTask)

responseListConfigurations :: ListConfigurationsResponse -> TestTree
responseListConfigurations =
  res
    "ListConfigurationsResponse"
    "fixture/ListConfigurationsResponse.proto"
    discovery
    (Proxy :: Proxy ListConfigurations)

responseCreateApplication :: CreateApplicationResponse -> TestTree
responseCreateApplication =
  res
    "CreateApplicationResponse"
    "fixture/CreateApplicationResponse.proto"
    discovery
    (Proxy :: Proxy CreateApplication)

responseDescribeImportTasks :: DescribeImportTasksResponse -> TestTree
responseDescribeImportTasks =
  res
    "DescribeImportTasksResponse"
    "fixture/DescribeImportTasksResponse.proto"
    discovery
    (Proxy :: Proxy DescribeImportTasks)

responseDeleteApplications :: DeleteApplicationsResponse -> TestTree
responseDeleteApplications =
  res
    "DeleteApplicationsResponse"
    "fixture/DeleteApplicationsResponse.proto"
    discovery
    (Proxy :: Proxy DeleteApplications)

responseGetDiscoverySummary :: GetDiscoverySummaryResponse -> TestTree
responseGetDiscoverySummary =
  res
    "GetDiscoverySummaryResponse"
    "fixture/GetDiscoverySummaryResponse.proto"
    discovery
    (Proxy :: Proxy GetDiscoverySummary)

responseDeleteTags :: DeleteTagsResponse -> TestTree
responseDeleteTags =
  res
    "DeleteTagsResponse"
    "fixture/DeleteTagsResponse.proto"
    discovery
    (Proxy :: Proxy DeleteTags)

responseDisassociateConfigurationItemsFromApplication :: DisassociateConfigurationItemsFromApplicationResponse -> TestTree
responseDisassociateConfigurationItemsFromApplication =
  res
    "DisassociateConfigurationItemsFromApplicationResponse"
    "fixture/DisassociateConfigurationItemsFromApplicationResponse.proto"
    discovery
    (Proxy :: Proxy DisassociateConfigurationItemsFromApplication)

responseStopDataCollectionByAgentIds :: StopDataCollectionByAgentIdsResponse -> TestTree
responseStopDataCollectionByAgentIds =
  res
    "StopDataCollectionByAgentIdsResponse"
    "fixture/StopDataCollectionByAgentIdsResponse.proto"
    discovery
    (Proxy :: Proxy StopDataCollectionByAgentIds)

responseStartDataCollectionByAgentIds :: StartDataCollectionByAgentIdsResponse -> TestTree
responseStartDataCollectionByAgentIds =
  res
    "StartDataCollectionByAgentIdsResponse"
    "fixture/StartDataCollectionByAgentIdsResponse.proto"
    discovery
    (Proxy :: Proxy StartDataCollectionByAgentIds)

responseDescribeAgents :: DescribeAgentsResponse -> TestTree
responseDescribeAgents =
  res
    "DescribeAgentsResponse"
    "fixture/DescribeAgentsResponse.proto"
    discovery
    (Proxy :: Proxy DescribeAgents)

responseDescribeContinuousExports :: DescribeContinuousExportsResponse -> TestTree
responseDescribeContinuousExports =
  res
    "DescribeContinuousExportsResponse"
    "fixture/DescribeContinuousExportsResponse.proto"
    discovery
    (Proxy :: Proxy DescribeContinuousExports)

responseStopContinuousExport :: StopContinuousExportResponse -> TestTree
responseStopContinuousExport =
  res
    "StopContinuousExportResponse"
    "fixture/StopContinuousExportResponse.proto"
    discovery
    (Proxy :: Proxy StopContinuousExport)

responseStartContinuousExport :: StartContinuousExportResponse -> TestTree
responseStartContinuousExport =
  res
    "StartContinuousExportResponse"
    "fixture/StartContinuousExportResponse.proto"
    discovery
    (Proxy :: Proxy StartContinuousExport)

responseDescribeConfigurations :: DescribeConfigurationsResponse -> TestTree
responseDescribeConfigurations =
  res
    "DescribeConfigurationsResponse"
    "fixture/DescribeConfigurationsResponse.proto"
    discovery
    (Proxy :: Proxy DescribeConfigurations)

responseListServerNeighbors :: ListServerNeighborsResponse -> TestTree
responseListServerNeighbors =
  res
    "ListServerNeighborsResponse"
    "fixture/ListServerNeighborsResponse.proto"
    discovery
    (Proxy :: Proxy ListServerNeighbors)

responseAssociateConfigurationItemsToApplication :: AssociateConfigurationItemsToApplicationResponse -> TestTree
responseAssociateConfigurationItemsToApplication =
  res
    "AssociateConfigurationItemsToApplicationResponse"
    "fixture/AssociateConfigurationItemsToApplicationResponse.proto"
    discovery
    (Proxy :: Proxy AssociateConfigurationItemsToApplication)

responseUpdateApplication :: UpdateApplicationResponse -> TestTree
responseUpdateApplication =
  res
    "UpdateApplicationResponse"
    "fixture/UpdateApplicationResponse.proto"
    discovery
    (Proxy :: Proxy UpdateApplication)

responseStartImportTask :: StartImportTaskResponse -> TestTree
responseStartImportTask =
  res
    "StartImportTaskResponse"
    "fixture/StartImportTaskResponse.proto"
    discovery
    (Proxy :: Proxy StartImportTask)

responseBatchDeleteImportData :: BatchDeleteImportDataResponse -> TestTree
responseBatchDeleteImportData =
  res
    "BatchDeleteImportDataResponse"
    "fixture/BatchDeleteImportDataResponse.proto"
    discovery
    (Proxy :: Proxy BatchDeleteImportData)

responseCreateTags :: CreateTagsResponse -> TestTree
responseCreateTags =
  res
    "CreateTagsResponse"
    "fixture/CreateTagsResponse.proto"
    discovery
    (Proxy :: Proxy CreateTags)
