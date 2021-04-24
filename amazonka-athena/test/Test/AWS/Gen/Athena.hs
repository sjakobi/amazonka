{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.Athena
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.Athena where

import Data.Proxy
import Network.AWS.Athena
import Test.AWS.Athena.Internal
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
--         [ requestCreateDataCatalog $
--             createDataCatalog
--
--         , requestListQueryExecutions $
--             listQueryExecutions
--
--         , requestListTableMetadata $
--             listTableMetadata
--
--         , requestGetQueryExecution $
--             getQueryExecution
--
--         , requestBatchGetNamedQuery $
--             batchGetNamedQuery
--
--         , requestUntagResource $
--             untagResource
--
--         , requestGetDatabase $
--             getDatabase
--
--         , requestDeleteNamedQuery $
--             deleteNamedQuery
--
--         , requestTagResource $
--             tagResource
--
--         , requestListEngineVersions $
--             listEngineVersions
--
--         , requestGetDataCatalog $
--             getDataCatalog
--
--         , requestListDataCatalogs $
--             listDataCatalogs
--
--         , requestCreateWorkGroup $
--             createWorkGroup
--
--         , requestGetNamedQuery $
--             getNamedQuery
--
--         , requestUpdateWorkGroup $
--             updateWorkGroup
--
--         , requestDeleteWorkGroup $
--             deleteWorkGroup
--
--         , requestListWorkGroups $
--             listWorkGroups
--
--         , requestListDatabases $
--             listDatabases
--
--         , requestGetQueryResults $
--             getQueryResults
--
--         , requestGetWorkGroup $
--             getWorkGroup
--
--         , requestStartQueryExecution $
--             startQueryExecution
--
--         , requestStopQueryExecution $
--             stopQueryExecution
--
--         , requestGetTableMetadata $
--             getTableMetadata
--
--         , requestCreateNamedQuery $
--             createNamedQuery
--
--         , requestListNamedQueries $
--             listNamedQueries
--
--         , requestBatchGetQueryExecution $
--             batchGetQueryExecution
--
--         , requestListTagsForResource $
--             listTagsForResource
--
--         , requestDeleteDataCatalog $
--             deleteDataCatalog
--
--         , requestUpdateDataCatalog $
--             updateDataCatalog
--
--           ]

--     , testGroup "response"
--         [ responseCreateDataCatalog $
--             createDataCatalogResponse
--
--         , responseListQueryExecutions $
--             listQueryExecutionsResponse
--
--         , responseListTableMetadata $
--             listTableMetadataResponse
--
--         , responseGetQueryExecution $
--             getQueryExecutionResponse
--
--         , responseBatchGetNamedQuery $
--             batchGetNamedQueryResponse
--
--         , responseUntagResource $
--             untagResourceResponse
--
--         , responseGetDatabase $
--             getDatabaseResponse
--
--         , responseDeleteNamedQuery $
--             deleteNamedQueryResponse
--
--         , responseTagResource $
--             tagResourceResponse
--
--         , responseListEngineVersions $
--             listEngineVersionsResponse
--
--         , responseGetDataCatalog $
--             getDataCatalogResponse
--
--         , responseListDataCatalogs $
--             listDataCatalogsResponse
--
--         , responseCreateWorkGroup $
--             createWorkGroupResponse
--
--         , responseGetNamedQuery $
--             getNamedQueryResponse
--
--         , responseUpdateWorkGroup $
--             updateWorkGroupResponse
--
--         , responseDeleteWorkGroup $
--             deleteWorkGroupResponse
--
--         , responseListWorkGroups $
--             listWorkGroupsResponse
--
--         , responseListDatabases $
--             listDatabasesResponse
--
--         , responseGetQueryResults $
--             getQueryResultsResponse
--
--         , responseGetWorkGroup $
--             getWorkGroupResponse
--
--         , responseStartQueryExecution $
--             startQueryExecutionResponse
--
--         , responseStopQueryExecution $
--             stopQueryExecutionResponse
--
--         , responseGetTableMetadata $
--             getTableMetadataResponse
--
--         , responseCreateNamedQuery $
--             createNamedQueryResponse
--
--         , responseListNamedQueries $
--             listNamedQueriesResponse
--
--         , responseBatchGetQueryExecution $
--             batchGetQueryExecutionResponse
--
--         , responseListTagsForResource $
--             listTagsForResourceResponse
--
--         , responseDeleteDataCatalog $
--             deleteDataCatalogResponse
--
--         , responseUpdateDataCatalog $
--             updateDataCatalogResponse
--
--           ]
--     ]

-- Requests

requestCreateDataCatalog :: CreateDataCatalog -> TestTree
requestCreateDataCatalog =
  req
    "CreateDataCatalog"
    "fixture/CreateDataCatalog.yaml"

requestListQueryExecutions :: ListQueryExecutions -> TestTree
requestListQueryExecutions =
  req
    "ListQueryExecutions"
    "fixture/ListQueryExecutions.yaml"

requestListTableMetadata :: ListTableMetadata -> TestTree
requestListTableMetadata =
  req
    "ListTableMetadata"
    "fixture/ListTableMetadata.yaml"

requestGetQueryExecution :: GetQueryExecution -> TestTree
requestGetQueryExecution =
  req
    "GetQueryExecution"
    "fixture/GetQueryExecution.yaml"

requestBatchGetNamedQuery :: BatchGetNamedQuery -> TestTree
requestBatchGetNamedQuery =
  req
    "BatchGetNamedQuery"
    "fixture/BatchGetNamedQuery.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource =
  req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestGetDatabase :: GetDatabase -> TestTree
requestGetDatabase =
  req
    "GetDatabase"
    "fixture/GetDatabase.yaml"

requestDeleteNamedQuery :: DeleteNamedQuery -> TestTree
requestDeleteNamedQuery =
  req
    "DeleteNamedQuery"
    "fixture/DeleteNamedQuery.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource =
  req
    "TagResource"
    "fixture/TagResource.yaml"

requestListEngineVersions :: ListEngineVersions -> TestTree
requestListEngineVersions =
  req
    "ListEngineVersions"
    "fixture/ListEngineVersions.yaml"

requestGetDataCatalog :: GetDataCatalog -> TestTree
requestGetDataCatalog =
  req
    "GetDataCatalog"
    "fixture/GetDataCatalog.yaml"

requestListDataCatalogs :: ListDataCatalogs -> TestTree
requestListDataCatalogs =
  req
    "ListDataCatalogs"
    "fixture/ListDataCatalogs.yaml"

requestCreateWorkGroup :: CreateWorkGroup -> TestTree
requestCreateWorkGroup =
  req
    "CreateWorkGroup"
    "fixture/CreateWorkGroup.yaml"

requestGetNamedQuery :: GetNamedQuery -> TestTree
requestGetNamedQuery =
  req
    "GetNamedQuery"
    "fixture/GetNamedQuery.yaml"

requestUpdateWorkGroup :: UpdateWorkGroup -> TestTree
requestUpdateWorkGroup =
  req
    "UpdateWorkGroup"
    "fixture/UpdateWorkGroup.yaml"

requestDeleteWorkGroup :: DeleteWorkGroup -> TestTree
requestDeleteWorkGroup =
  req
    "DeleteWorkGroup"
    "fixture/DeleteWorkGroup.yaml"

requestListWorkGroups :: ListWorkGroups -> TestTree
requestListWorkGroups =
  req
    "ListWorkGroups"
    "fixture/ListWorkGroups.yaml"

requestListDatabases :: ListDatabases -> TestTree
requestListDatabases =
  req
    "ListDatabases"
    "fixture/ListDatabases.yaml"

requestGetQueryResults :: GetQueryResults -> TestTree
requestGetQueryResults =
  req
    "GetQueryResults"
    "fixture/GetQueryResults.yaml"

requestGetWorkGroup :: GetWorkGroup -> TestTree
requestGetWorkGroup =
  req
    "GetWorkGroup"
    "fixture/GetWorkGroup.yaml"

requestStartQueryExecution :: StartQueryExecution -> TestTree
requestStartQueryExecution =
  req
    "StartQueryExecution"
    "fixture/StartQueryExecution.yaml"

requestStopQueryExecution :: StopQueryExecution -> TestTree
requestStopQueryExecution =
  req
    "StopQueryExecution"
    "fixture/StopQueryExecution.yaml"

requestGetTableMetadata :: GetTableMetadata -> TestTree
requestGetTableMetadata =
  req
    "GetTableMetadata"
    "fixture/GetTableMetadata.yaml"

requestCreateNamedQuery :: CreateNamedQuery -> TestTree
requestCreateNamedQuery =
  req
    "CreateNamedQuery"
    "fixture/CreateNamedQuery.yaml"

requestListNamedQueries :: ListNamedQueries -> TestTree
requestListNamedQueries =
  req
    "ListNamedQueries"
    "fixture/ListNamedQueries.yaml"

requestBatchGetQueryExecution :: BatchGetQueryExecution -> TestTree
requestBatchGetQueryExecution =
  req
    "BatchGetQueryExecution"
    "fixture/BatchGetQueryExecution.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestDeleteDataCatalog :: DeleteDataCatalog -> TestTree
requestDeleteDataCatalog =
  req
    "DeleteDataCatalog"
    "fixture/DeleteDataCatalog.yaml"

requestUpdateDataCatalog :: UpdateDataCatalog -> TestTree
requestUpdateDataCatalog =
  req
    "UpdateDataCatalog"
    "fixture/UpdateDataCatalog.yaml"

-- Responses

responseCreateDataCatalog :: CreateDataCatalogResponse -> TestTree
responseCreateDataCatalog =
  res
    "CreateDataCatalogResponse"
    "fixture/CreateDataCatalogResponse.proto"
    athena
    (Proxy :: Proxy CreateDataCatalog)

responseListQueryExecutions :: ListQueryExecutionsResponse -> TestTree
responseListQueryExecutions =
  res
    "ListQueryExecutionsResponse"
    "fixture/ListQueryExecutionsResponse.proto"
    athena
    (Proxy :: Proxy ListQueryExecutions)

responseListTableMetadata :: ListTableMetadataResponse -> TestTree
responseListTableMetadata =
  res
    "ListTableMetadataResponse"
    "fixture/ListTableMetadataResponse.proto"
    athena
    (Proxy :: Proxy ListTableMetadata)

responseGetQueryExecution :: GetQueryExecutionResponse -> TestTree
responseGetQueryExecution =
  res
    "GetQueryExecutionResponse"
    "fixture/GetQueryExecutionResponse.proto"
    athena
    (Proxy :: Proxy GetQueryExecution)

responseBatchGetNamedQuery :: BatchGetNamedQueryResponse -> TestTree
responseBatchGetNamedQuery =
  res
    "BatchGetNamedQueryResponse"
    "fixture/BatchGetNamedQueryResponse.proto"
    athena
    (Proxy :: Proxy BatchGetNamedQuery)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    athena
    (Proxy :: Proxy UntagResource)

responseGetDatabase :: GetDatabaseResponse -> TestTree
responseGetDatabase =
  res
    "GetDatabaseResponse"
    "fixture/GetDatabaseResponse.proto"
    athena
    (Proxy :: Proxy GetDatabase)

responseDeleteNamedQuery :: DeleteNamedQueryResponse -> TestTree
responseDeleteNamedQuery =
  res
    "DeleteNamedQueryResponse"
    "fixture/DeleteNamedQueryResponse.proto"
    athena
    (Proxy :: Proxy DeleteNamedQuery)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    athena
    (Proxy :: Proxy TagResource)

responseListEngineVersions :: ListEngineVersionsResponse -> TestTree
responseListEngineVersions =
  res
    "ListEngineVersionsResponse"
    "fixture/ListEngineVersionsResponse.proto"
    athena
    (Proxy :: Proxy ListEngineVersions)

responseGetDataCatalog :: GetDataCatalogResponse -> TestTree
responseGetDataCatalog =
  res
    "GetDataCatalogResponse"
    "fixture/GetDataCatalogResponse.proto"
    athena
    (Proxy :: Proxy GetDataCatalog)

responseListDataCatalogs :: ListDataCatalogsResponse -> TestTree
responseListDataCatalogs =
  res
    "ListDataCatalogsResponse"
    "fixture/ListDataCatalogsResponse.proto"
    athena
    (Proxy :: Proxy ListDataCatalogs)

responseCreateWorkGroup :: CreateWorkGroupResponse -> TestTree
responseCreateWorkGroup =
  res
    "CreateWorkGroupResponse"
    "fixture/CreateWorkGroupResponse.proto"
    athena
    (Proxy :: Proxy CreateWorkGroup)

responseGetNamedQuery :: GetNamedQueryResponse -> TestTree
responseGetNamedQuery =
  res
    "GetNamedQueryResponse"
    "fixture/GetNamedQueryResponse.proto"
    athena
    (Proxy :: Proxy GetNamedQuery)

responseUpdateWorkGroup :: UpdateWorkGroupResponse -> TestTree
responseUpdateWorkGroup =
  res
    "UpdateWorkGroupResponse"
    "fixture/UpdateWorkGroupResponse.proto"
    athena
    (Proxy :: Proxy UpdateWorkGroup)

responseDeleteWorkGroup :: DeleteWorkGroupResponse -> TestTree
responseDeleteWorkGroup =
  res
    "DeleteWorkGroupResponse"
    "fixture/DeleteWorkGroupResponse.proto"
    athena
    (Proxy :: Proxy DeleteWorkGroup)

responseListWorkGroups :: ListWorkGroupsResponse -> TestTree
responseListWorkGroups =
  res
    "ListWorkGroupsResponse"
    "fixture/ListWorkGroupsResponse.proto"
    athena
    (Proxy :: Proxy ListWorkGroups)

responseListDatabases :: ListDatabasesResponse -> TestTree
responseListDatabases =
  res
    "ListDatabasesResponse"
    "fixture/ListDatabasesResponse.proto"
    athena
    (Proxy :: Proxy ListDatabases)

responseGetQueryResults :: GetQueryResultsResponse -> TestTree
responseGetQueryResults =
  res
    "GetQueryResultsResponse"
    "fixture/GetQueryResultsResponse.proto"
    athena
    (Proxy :: Proxy GetQueryResults)

responseGetWorkGroup :: GetWorkGroupResponse -> TestTree
responseGetWorkGroup =
  res
    "GetWorkGroupResponse"
    "fixture/GetWorkGroupResponse.proto"
    athena
    (Proxy :: Proxy GetWorkGroup)

responseStartQueryExecution :: StartQueryExecutionResponse -> TestTree
responseStartQueryExecution =
  res
    "StartQueryExecutionResponse"
    "fixture/StartQueryExecutionResponse.proto"
    athena
    (Proxy :: Proxy StartQueryExecution)

responseStopQueryExecution :: StopQueryExecutionResponse -> TestTree
responseStopQueryExecution =
  res
    "StopQueryExecutionResponse"
    "fixture/StopQueryExecutionResponse.proto"
    athena
    (Proxy :: Proxy StopQueryExecution)

responseGetTableMetadata :: GetTableMetadataResponse -> TestTree
responseGetTableMetadata =
  res
    "GetTableMetadataResponse"
    "fixture/GetTableMetadataResponse.proto"
    athena
    (Proxy :: Proxy GetTableMetadata)

responseCreateNamedQuery :: CreateNamedQueryResponse -> TestTree
responseCreateNamedQuery =
  res
    "CreateNamedQueryResponse"
    "fixture/CreateNamedQueryResponse.proto"
    athena
    (Proxy :: Proxy CreateNamedQuery)

responseListNamedQueries :: ListNamedQueriesResponse -> TestTree
responseListNamedQueries =
  res
    "ListNamedQueriesResponse"
    "fixture/ListNamedQueriesResponse.proto"
    athena
    (Proxy :: Proxy ListNamedQueries)

responseBatchGetQueryExecution :: BatchGetQueryExecutionResponse -> TestTree
responseBatchGetQueryExecution =
  res
    "BatchGetQueryExecutionResponse"
    "fixture/BatchGetQueryExecutionResponse.proto"
    athena
    (Proxy :: Proxy BatchGetQueryExecution)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    athena
    (Proxy :: Proxy ListTagsForResource)

responseDeleteDataCatalog :: DeleteDataCatalogResponse -> TestTree
responseDeleteDataCatalog =
  res
    "DeleteDataCatalogResponse"
    "fixture/DeleteDataCatalogResponse.proto"
    athena
    (Proxy :: Proxy DeleteDataCatalog)

responseUpdateDataCatalog :: UpdateDataCatalogResponse -> TestTree
responseUpdateDataCatalog =
  res
    "UpdateDataCatalogResponse"
    "fixture/UpdateDataCatalogResponse.proto"
    athena
    (Proxy :: Proxy UpdateDataCatalog)
