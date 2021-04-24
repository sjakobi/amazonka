{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.AppSync
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.AppSync where

import Data.Proxy
import Network.AWS.AppSync
import Test.AWS.AppSync.Internal
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
--         [ requestListResolvers $
--             listResolvers
--
--         , requestUpdateDataSource $
--             updateDataSource
--
--         , requestListDataSources $
--             listDataSources
--
--         , requestCreateType $
--             createType
--
--         , requestGetFunction $
--             getFunction
--
--         , requestDeleteDataSource $
--             deleteDataSource
--
--         , requestCreateDataSource $
--             createDataSource
--
--         , requestDeleteType $
--             deleteType
--
--         , requestUpdateType $
--             updateType
--
--         , requestListResolversByFunction $
--             listResolversByFunction
--
--         , requestUntagResource $
--             untagResource
--
--         , requestListFunctions $
--             listFunctions
--
--         , requestGetIntrospectionSchema $
--             getIntrospectionSchema
--
--         , requestUpdateGraphqlAPI $
--             updateGraphqlAPI
--
--         , requestListGraphqlAPIs $
--             listGraphqlAPIs
--
--         , requestTagResource $
--             tagResource
--
--         , requestDeleteGraphqlAPI $
--             deleteGraphqlAPI
--
--         , requestGetResolver $
--             getResolver
--
--         , requestDeleteAPICache $
--             deleteAPICache
--
--         , requestUpdateAPICache $
--             updateAPICache
--
--         , requestGetSchemaCreationStatus $
--             getSchemaCreationStatus
--
--         , requestGetAPICache $
--             getAPICache
--
--         , requestUpdateResolver $
--             updateResolver
--
--         , requestDeleteResolver $
--             deleteResolver
--
--         , requestGetGraphqlAPI $
--             getGraphqlAPI
--
--         , requestListTypes $
--             listTypes
--
--         , requestGetType $
--             getType
--
--         , requestCreateFunction $
--             createFunction
--
--         , requestListAPIKeys $
--             listAPIKeys
--
--         , requestDeleteAPIKey $
--             deleteAPIKey
--
--         , requestUpdateAPIKey $
--             updateAPIKey
--
--         , requestGetDataSource $
--             getDataSource
--
--         , requestDeleteFunction $
--             deleteFunction
--
--         , requestUpdateFunction $
--             updateFunction
--
--         , requestCreateAPIKey $
--             createAPIKey
--
--         , requestStartSchemaCreation $
--             startSchemaCreation
--
--         , requestFlushAPICache $
--             flushAPICache
--
--         , requestCreateAPICache $
--             createAPICache
--
--         , requestCreateGraphqlAPI $
--             createGraphqlAPI
--
--         , requestListTagsForResource $
--             listTagsForResource
--
--         , requestCreateResolver $
--             createResolver
--
--           ]

--     , testGroup "response"
--         [ responseListResolvers $
--             listResolversResponse
--
--         , responseUpdateDataSource $
--             updateDataSourceResponse
--
--         , responseListDataSources $
--             listDataSourcesResponse
--
--         , responseCreateType $
--             createTypeResponse
--
--         , responseGetFunction $
--             getFunctionResponse
--
--         , responseDeleteDataSource $
--             deleteDataSourceResponse
--
--         , responseCreateDataSource $
--             createDataSourceResponse
--
--         , responseDeleteType $
--             deleteTypeResponse
--
--         , responseUpdateType $
--             updateTypeResponse
--
--         , responseListResolversByFunction $
--             listResolversByFunctionResponse
--
--         , responseUntagResource $
--             untagResourceResponse
--
--         , responseListFunctions $
--             listFunctionsResponse
--
--         , responseGetIntrospectionSchema $
--             getIntrospectionSchemaResponse
--
--         , responseUpdateGraphqlAPI $
--             updateGraphqlAPIResponse
--
--         , responseListGraphqlAPIs $
--             listGraphqlAPIsResponse
--
--         , responseTagResource $
--             tagResourceResponse
--
--         , responseDeleteGraphqlAPI $
--             deleteGraphqlAPIResponse
--
--         , responseGetResolver $
--             getResolverResponse
--
--         , responseDeleteAPICache $
--             deleteAPICacheResponse
--
--         , responseUpdateAPICache $
--             updateAPICacheResponse
--
--         , responseGetSchemaCreationStatus $
--             getSchemaCreationStatusResponse
--
--         , responseGetAPICache $
--             getAPICacheResponse
--
--         , responseUpdateResolver $
--             updateResolverResponse
--
--         , responseDeleteResolver $
--             deleteResolverResponse
--
--         , responseGetGraphqlAPI $
--             getGraphqlAPIResponse
--
--         , responseListTypes $
--             listTypesResponse
--
--         , responseGetType $
--             getTypeResponse
--
--         , responseCreateFunction $
--             createFunctionResponse
--
--         , responseListAPIKeys $
--             listAPIKeysResponse
--
--         , responseDeleteAPIKey $
--             deleteAPIKeyResponse
--
--         , responseUpdateAPIKey $
--             updateAPIKeyResponse
--
--         , responseGetDataSource $
--             getDataSourceResponse
--
--         , responseDeleteFunction $
--             deleteFunctionResponse
--
--         , responseUpdateFunction $
--             updateFunctionResponse
--
--         , responseCreateAPIKey $
--             createAPIKeyResponse
--
--         , responseStartSchemaCreation $
--             startSchemaCreationResponse
--
--         , responseFlushAPICache $
--             flushAPICacheResponse
--
--         , responseCreateAPICache $
--             createAPICacheResponse
--
--         , responseCreateGraphqlAPI $
--             createGraphqlAPIResponse
--
--         , responseListTagsForResource $
--             listTagsForResourceResponse
--
--         , responseCreateResolver $
--             createResolverResponse
--
--           ]
--     ]

-- Requests

requestListResolvers :: ListResolvers -> TestTree
requestListResolvers =
  req
    "ListResolvers"
    "fixture/ListResolvers.yaml"

requestUpdateDataSource :: UpdateDataSource -> TestTree
requestUpdateDataSource =
  req
    "UpdateDataSource"
    "fixture/UpdateDataSource.yaml"

requestListDataSources :: ListDataSources -> TestTree
requestListDataSources =
  req
    "ListDataSources"
    "fixture/ListDataSources.yaml"

requestCreateType :: CreateType -> TestTree
requestCreateType =
  req
    "CreateType"
    "fixture/CreateType.yaml"

requestGetFunction :: GetFunction -> TestTree
requestGetFunction =
  req
    "GetFunction"
    "fixture/GetFunction.yaml"

requestDeleteDataSource :: DeleteDataSource -> TestTree
requestDeleteDataSource =
  req
    "DeleteDataSource"
    "fixture/DeleteDataSource.yaml"

requestCreateDataSource :: CreateDataSource -> TestTree
requestCreateDataSource =
  req
    "CreateDataSource"
    "fixture/CreateDataSource.yaml"

requestDeleteType :: DeleteType -> TestTree
requestDeleteType =
  req
    "DeleteType"
    "fixture/DeleteType.yaml"

requestUpdateType :: UpdateType -> TestTree
requestUpdateType =
  req
    "UpdateType"
    "fixture/UpdateType.yaml"

requestListResolversByFunction :: ListResolversByFunction -> TestTree
requestListResolversByFunction =
  req
    "ListResolversByFunction"
    "fixture/ListResolversByFunction.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource =
  req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestListFunctions :: ListFunctions -> TestTree
requestListFunctions =
  req
    "ListFunctions"
    "fixture/ListFunctions.yaml"

requestGetIntrospectionSchema :: GetIntrospectionSchema -> TestTree
requestGetIntrospectionSchema =
  req
    "GetIntrospectionSchema"
    "fixture/GetIntrospectionSchema.yaml"

requestUpdateGraphqlAPI :: UpdateGraphqlAPI -> TestTree
requestUpdateGraphqlAPI =
  req
    "UpdateGraphqlAPI"
    "fixture/UpdateGraphqlAPI.yaml"

requestListGraphqlAPIs :: ListGraphqlAPIs -> TestTree
requestListGraphqlAPIs =
  req
    "ListGraphqlAPIs"
    "fixture/ListGraphqlAPIs.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource =
  req
    "TagResource"
    "fixture/TagResource.yaml"

requestDeleteGraphqlAPI :: DeleteGraphqlAPI -> TestTree
requestDeleteGraphqlAPI =
  req
    "DeleteGraphqlAPI"
    "fixture/DeleteGraphqlAPI.yaml"

requestGetResolver :: GetResolver -> TestTree
requestGetResolver =
  req
    "GetResolver"
    "fixture/GetResolver.yaml"

requestDeleteAPICache :: DeleteAPICache -> TestTree
requestDeleteAPICache =
  req
    "DeleteAPICache"
    "fixture/DeleteAPICache.yaml"

requestUpdateAPICache :: UpdateAPICache -> TestTree
requestUpdateAPICache =
  req
    "UpdateAPICache"
    "fixture/UpdateAPICache.yaml"

requestGetSchemaCreationStatus :: GetSchemaCreationStatus -> TestTree
requestGetSchemaCreationStatus =
  req
    "GetSchemaCreationStatus"
    "fixture/GetSchemaCreationStatus.yaml"

requestGetAPICache :: GetAPICache -> TestTree
requestGetAPICache =
  req
    "GetAPICache"
    "fixture/GetAPICache.yaml"

requestUpdateResolver :: UpdateResolver -> TestTree
requestUpdateResolver =
  req
    "UpdateResolver"
    "fixture/UpdateResolver.yaml"

requestDeleteResolver :: DeleteResolver -> TestTree
requestDeleteResolver =
  req
    "DeleteResolver"
    "fixture/DeleteResolver.yaml"

requestGetGraphqlAPI :: GetGraphqlAPI -> TestTree
requestGetGraphqlAPI =
  req
    "GetGraphqlAPI"
    "fixture/GetGraphqlAPI.yaml"

requestListTypes :: ListTypes -> TestTree
requestListTypes =
  req
    "ListTypes"
    "fixture/ListTypes.yaml"

requestGetType :: GetType -> TestTree
requestGetType =
  req
    "GetType"
    "fixture/GetType.yaml"

requestCreateFunction :: CreateFunction -> TestTree
requestCreateFunction =
  req
    "CreateFunction"
    "fixture/CreateFunction.yaml"

requestListAPIKeys :: ListAPIKeys -> TestTree
requestListAPIKeys =
  req
    "ListAPIKeys"
    "fixture/ListAPIKeys.yaml"

requestDeleteAPIKey :: DeleteAPIKey -> TestTree
requestDeleteAPIKey =
  req
    "DeleteAPIKey"
    "fixture/DeleteAPIKey.yaml"

requestUpdateAPIKey :: UpdateAPIKey -> TestTree
requestUpdateAPIKey =
  req
    "UpdateAPIKey"
    "fixture/UpdateAPIKey.yaml"

requestGetDataSource :: GetDataSource -> TestTree
requestGetDataSource =
  req
    "GetDataSource"
    "fixture/GetDataSource.yaml"

requestDeleteFunction :: DeleteFunction -> TestTree
requestDeleteFunction =
  req
    "DeleteFunction"
    "fixture/DeleteFunction.yaml"

requestUpdateFunction :: UpdateFunction -> TestTree
requestUpdateFunction =
  req
    "UpdateFunction"
    "fixture/UpdateFunction.yaml"

requestCreateAPIKey :: CreateAPIKey -> TestTree
requestCreateAPIKey =
  req
    "CreateAPIKey"
    "fixture/CreateAPIKey.yaml"

requestStartSchemaCreation :: StartSchemaCreation -> TestTree
requestStartSchemaCreation =
  req
    "StartSchemaCreation"
    "fixture/StartSchemaCreation.yaml"

requestFlushAPICache :: FlushAPICache -> TestTree
requestFlushAPICache =
  req
    "FlushAPICache"
    "fixture/FlushAPICache.yaml"

requestCreateAPICache :: CreateAPICache -> TestTree
requestCreateAPICache =
  req
    "CreateAPICache"
    "fixture/CreateAPICache.yaml"

requestCreateGraphqlAPI :: CreateGraphqlAPI -> TestTree
requestCreateGraphqlAPI =
  req
    "CreateGraphqlAPI"
    "fixture/CreateGraphqlAPI.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestCreateResolver :: CreateResolver -> TestTree
requestCreateResolver =
  req
    "CreateResolver"
    "fixture/CreateResolver.yaml"

-- Responses

responseListResolvers :: ListResolversResponse -> TestTree
responseListResolvers =
  res
    "ListResolversResponse"
    "fixture/ListResolversResponse.proto"
    appSync
    (Proxy :: Proxy ListResolvers)

responseUpdateDataSource :: UpdateDataSourceResponse -> TestTree
responseUpdateDataSource =
  res
    "UpdateDataSourceResponse"
    "fixture/UpdateDataSourceResponse.proto"
    appSync
    (Proxy :: Proxy UpdateDataSource)

responseListDataSources :: ListDataSourcesResponse -> TestTree
responseListDataSources =
  res
    "ListDataSourcesResponse"
    "fixture/ListDataSourcesResponse.proto"
    appSync
    (Proxy :: Proxy ListDataSources)

responseCreateType :: CreateTypeResponse -> TestTree
responseCreateType =
  res
    "CreateTypeResponse"
    "fixture/CreateTypeResponse.proto"
    appSync
    (Proxy :: Proxy CreateType)

responseGetFunction :: GetFunctionResponse -> TestTree
responseGetFunction =
  res
    "GetFunctionResponse"
    "fixture/GetFunctionResponse.proto"
    appSync
    (Proxy :: Proxy GetFunction)

responseDeleteDataSource :: DeleteDataSourceResponse -> TestTree
responseDeleteDataSource =
  res
    "DeleteDataSourceResponse"
    "fixture/DeleteDataSourceResponse.proto"
    appSync
    (Proxy :: Proxy DeleteDataSource)

responseCreateDataSource :: CreateDataSourceResponse -> TestTree
responseCreateDataSource =
  res
    "CreateDataSourceResponse"
    "fixture/CreateDataSourceResponse.proto"
    appSync
    (Proxy :: Proxy CreateDataSource)

responseDeleteType :: DeleteTypeResponse -> TestTree
responseDeleteType =
  res
    "DeleteTypeResponse"
    "fixture/DeleteTypeResponse.proto"
    appSync
    (Proxy :: Proxy DeleteType)

responseUpdateType :: UpdateTypeResponse -> TestTree
responseUpdateType =
  res
    "UpdateTypeResponse"
    "fixture/UpdateTypeResponse.proto"
    appSync
    (Proxy :: Proxy UpdateType)

responseListResolversByFunction :: ListResolversByFunctionResponse -> TestTree
responseListResolversByFunction =
  res
    "ListResolversByFunctionResponse"
    "fixture/ListResolversByFunctionResponse.proto"
    appSync
    (Proxy :: Proxy ListResolversByFunction)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    appSync
    (Proxy :: Proxy UntagResource)

responseListFunctions :: ListFunctionsResponse -> TestTree
responseListFunctions =
  res
    "ListFunctionsResponse"
    "fixture/ListFunctionsResponse.proto"
    appSync
    (Proxy :: Proxy ListFunctions)

responseGetIntrospectionSchema :: GetIntrospectionSchemaResponse -> TestTree
responseGetIntrospectionSchema =
  res
    "GetIntrospectionSchemaResponse"
    "fixture/GetIntrospectionSchemaResponse.proto"
    appSync
    (Proxy :: Proxy GetIntrospectionSchema)

responseUpdateGraphqlAPI :: UpdateGraphqlAPIResponse -> TestTree
responseUpdateGraphqlAPI =
  res
    "UpdateGraphqlAPIResponse"
    "fixture/UpdateGraphqlAPIResponse.proto"
    appSync
    (Proxy :: Proxy UpdateGraphqlAPI)

responseListGraphqlAPIs :: ListGraphqlAPIsResponse -> TestTree
responseListGraphqlAPIs =
  res
    "ListGraphqlAPIsResponse"
    "fixture/ListGraphqlAPIsResponse.proto"
    appSync
    (Proxy :: Proxy ListGraphqlAPIs)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    appSync
    (Proxy :: Proxy TagResource)

responseDeleteGraphqlAPI :: DeleteGraphqlAPIResponse -> TestTree
responseDeleteGraphqlAPI =
  res
    "DeleteGraphqlAPIResponse"
    "fixture/DeleteGraphqlAPIResponse.proto"
    appSync
    (Proxy :: Proxy DeleteGraphqlAPI)

responseGetResolver :: GetResolverResponse -> TestTree
responseGetResolver =
  res
    "GetResolverResponse"
    "fixture/GetResolverResponse.proto"
    appSync
    (Proxy :: Proxy GetResolver)

responseDeleteAPICache :: DeleteAPICacheResponse -> TestTree
responseDeleteAPICache =
  res
    "DeleteAPICacheResponse"
    "fixture/DeleteAPICacheResponse.proto"
    appSync
    (Proxy :: Proxy DeleteAPICache)

responseUpdateAPICache :: UpdateAPICacheResponse -> TestTree
responseUpdateAPICache =
  res
    "UpdateAPICacheResponse"
    "fixture/UpdateAPICacheResponse.proto"
    appSync
    (Proxy :: Proxy UpdateAPICache)

responseGetSchemaCreationStatus :: GetSchemaCreationStatusResponse -> TestTree
responseGetSchemaCreationStatus =
  res
    "GetSchemaCreationStatusResponse"
    "fixture/GetSchemaCreationStatusResponse.proto"
    appSync
    (Proxy :: Proxy GetSchemaCreationStatus)

responseGetAPICache :: GetAPICacheResponse -> TestTree
responseGetAPICache =
  res
    "GetAPICacheResponse"
    "fixture/GetAPICacheResponse.proto"
    appSync
    (Proxy :: Proxy GetAPICache)

responseUpdateResolver :: UpdateResolverResponse -> TestTree
responseUpdateResolver =
  res
    "UpdateResolverResponse"
    "fixture/UpdateResolverResponse.proto"
    appSync
    (Proxy :: Proxy UpdateResolver)

responseDeleteResolver :: DeleteResolverResponse -> TestTree
responseDeleteResolver =
  res
    "DeleteResolverResponse"
    "fixture/DeleteResolverResponse.proto"
    appSync
    (Proxy :: Proxy DeleteResolver)

responseGetGraphqlAPI :: GetGraphqlAPIResponse -> TestTree
responseGetGraphqlAPI =
  res
    "GetGraphqlAPIResponse"
    "fixture/GetGraphqlAPIResponse.proto"
    appSync
    (Proxy :: Proxy GetGraphqlAPI)

responseListTypes :: ListTypesResponse -> TestTree
responseListTypes =
  res
    "ListTypesResponse"
    "fixture/ListTypesResponse.proto"
    appSync
    (Proxy :: Proxy ListTypes)

responseGetType :: GetTypeResponse -> TestTree
responseGetType =
  res
    "GetTypeResponse"
    "fixture/GetTypeResponse.proto"
    appSync
    (Proxy :: Proxy GetType)

responseCreateFunction :: CreateFunctionResponse -> TestTree
responseCreateFunction =
  res
    "CreateFunctionResponse"
    "fixture/CreateFunctionResponse.proto"
    appSync
    (Proxy :: Proxy CreateFunction)

responseListAPIKeys :: ListAPIKeysResponse -> TestTree
responseListAPIKeys =
  res
    "ListAPIKeysResponse"
    "fixture/ListAPIKeysResponse.proto"
    appSync
    (Proxy :: Proxy ListAPIKeys)

responseDeleteAPIKey :: DeleteAPIKeyResponse -> TestTree
responseDeleteAPIKey =
  res
    "DeleteAPIKeyResponse"
    "fixture/DeleteAPIKeyResponse.proto"
    appSync
    (Proxy :: Proxy DeleteAPIKey)

responseUpdateAPIKey :: UpdateAPIKeyResponse -> TestTree
responseUpdateAPIKey =
  res
    "UpdateAPIKeyResponse"
    "fixture/UpdateAPIKeyResponse.proto"
    appSync
    (Proxy :: Proxy UpdateAPIKey)

responseGetDataSource :: GetDataSourceResponse -> TestTree
responseGetDataSource =
  res
    "GetDataSourceResponse"
    "fixture/GetDataSourceResponse.proto"
    appSync
    (Proxy :: Proxy GetDataSource)

responseDeleteFunction :: DeleteFunctionResponse -> TestTree
responseDeleteFunction =
  res
    "DeleteFunctionResponse"
    "fixture/DeleteFunctionResponse.proto"
    appSync
    (Proxy :: Proxy DeleteFunction)

responseUpdateFunction :: UpdateFunctionResponse -> TestTree
responseUpdateFunction =
  res
    "UpdateFunctionResponse"
    "fixture/UpdateFunctionResponse.proto"
    appSync
    (Proxy :: Proxy UpdateFunction)

responseCreateAPIKey :: CreateAPIKeyResponse -> TestTree
responseCreateAPIKey =
  res
    "CreateAPIKeyResponse"
    "fixture/CreateAPIKeyResponse.proto"
    appSync
    (Proxy :: Proxy CreateAPIKey)

responseStartSchemaCreation :: StartSchemaCreationResponse -> TestTree
responseStartSchemaCreation =
  res
    "StartSchemaCreationResponse"
    "fixture/StartSchemaCreationResponse.proto"
    appSync
    (Proxy :: Proxy StartSchemaCreation)

responseFlushAPICache :: FlushAPICacheResponse -> TestTree
responseFlushAPICache =
  res
    "FlushAPICacheResponse"
    "fixture/FlushAPICacheResponse.proto"
    appSync
    (Proxy :: Proxy FlushAPICache)

responseCreateAPICache :: CreateAPICacheResponse -> TestTree
responseCreateAPICache =
  res
    "CreateAPICacheResponse"
    "fixture/CreateAPICacheResponse.proto"
    appSync
    (Proxy :: Proxy CreateAPICache)

responseCreateGraphqlAPI :: CreateGraphqlAPIResponse -> TestTree
responseCreateGraphqlAPI =
  res
    "CreateGraphqlAPIResponse"
    "fixture/CreateGraphqlAPIResponse.proto"
    appSync
    (Proxy :: Proxy CreateGraphqlAPI)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    appSync
    (Proxy :: Proxy ListTagsForResource)

responseCreateResolver :: CreateResolverResponse -> TestTree
responseCreateResolver =
  res
    "CreateResolverResponse"
    "fixture/CreateResolverResponse.proto"
    appSync
    (Proxy :: Proxy CreateResolver)
