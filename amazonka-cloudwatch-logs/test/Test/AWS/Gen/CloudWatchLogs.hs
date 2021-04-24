{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.CloudWatchLogs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.CloudWatchLogs where

import Data.Proxy
import Network.AWS.CloudWatchLogs
import Test.AWS.CloudWatchLogs.Internal
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
--         [ requestGetLogRecord $
--             getLogRecord
--
--         , requestDescribeExportTasks $
--             describeExportTasks
--
--         , requestCreateLogStream $
--             createLogStream
--
--         , requestDescribeResourcePolicies $
--             describeResourcePolicies
--
--         , requestDescribeQueryDefinitions $
--             describeQueryDefinitions
--
--         , requestDeleteQueryDefinition $
--             deleteQueryDefinition
--
--         , requestDescribeLogStreams $
--             describeLogStreams
--
--         , requestPutResourcePolicy $
--             putResourcePolicy
--
--         , requestDisassociateKMSKey $
--             disassociateKMSKey
--
--         , requestDescribeSubscriptionFilters $
--             describeSubscriptionFilters
--
--         , requestDescribeLogGroups $
--             describeLogGroups
--
--         , requestPutRetentionPolicy $
--             putRetentionPolicy
--
--         , requestPutDestinationPolicy $
--             putDestinationPolicy
--
--         , requestDeleteDestination $
--             deleteDestination
--
--         , requestDeleteMetricFilter $
--             deleteMetricFilter
--
--         , requestDescribeDestinations $
--             describeDestinations
--
--         , requestPutSubscriptionFilter $
--             putSubscriptionFilter
--
--         , requestDescribeMetricFilters $
--             describeMetricFilters
--
--         , requestCancelExportTask $
--             cancelExportTask
--
--         , requestCreateLogGroup $
--             createLogGroup
--
--         , requestGetLogGroupFields $
--             getLogGroupFields
--
--         , requestDescribeQueries $
--             describeQueries
--
--         , requestDeleteLogStream $
--             deleteLogStream
--
--         , requestTagLogGroup $
--             tagLogGroup
--
--         , requestAssociateKMSKey $
--             associateKMSKey
--
--         , requestGetQueryResults $
--             getQueryResults
--
--         , requestPutQueryDefinition $
--             putQueryDefinition
--
--         , requestDeleteResourcePolicy $
--             deleteResourcePolicy
--
--         , requestFilterLogEvents $
--             filterLogEvents
--
--         , requestListTagsLogGroup $
--             listTagsLogGroup
--
--         , requestDeleteRetentionPolicy $
--             deleteRetentionPolicy
--
--         , requestPutDestination $
--             putDestination
--
--         , requestPutMetricFilter $
--             putMetricFilter
--
--         , requestCreateExportTask $
--             createExportTask
--
--         , requestGetLogEvents $
--             getLogEvents
--
--         , requestPutLogEvents $
--             putLogEvents
--
--         , requestStopQuery $
--             stopQuery
--
--         , requestDeleteLogGroup $
--             deleteLogGroup
--
--         , requestUntagLogGroup $
--             untagLogGroup
--
--         , requestTestMetricFilter $
--             testMetricFilter
--
--         , requestStartQuery $
--             startQuery
--
--         , requestDeleteSubscriptionFilter $
--             deleteSubscriptionFilter
--
--           ]

--     , testGroup "response"
--         [ responseGetLogRecord $
--             getLogRecordResponse
--
--         , responseDescribeExportTasks $
--             describeExportTasksResponse
--
--         , responseCreateLogStream $
--             createLogStreamResponse
--
--         , responseDescribeResourcePolicies $
--             describeResourcePoliciesResponse
--
--         , responseDescribeQueryDefinitions $
--             describeQueryDefinitionsResponse
--
--         , responseDeleteQueryDefinition $
--             deleteQueryDefinitionResponse
--
--         , responseDescribeLogStreams $
--             describeLogStreamsResponse
--
--         , responsePutResourcePolicy $
--             putResourcePolicyResponse
--
--         , responseDisassociateKMSKey $
--             disassociateKMSKeyResponse
--
--         , responseDescribeSubscriptionFilters $
--             describeSubscriptionFiltersResponse
--
--         , responseDescribeLogGroups $
--             describeLogGroupsResponse
--
--         , responsePutRetentionPolicy $
--             putRetentionPolicyResponse
--
--         , responsePutDestinationPolicy $
--             putDestinationPolicyResponse
--
--         , responseDeleteDestination $
--             deleteDestinationResponse
--
--         , responseDeleteMetricFilter $
--             deleteMetricFilterResponse
--
--         , responseDescribeDestinations $
--             describeDestinationsResponse
--
--         , responsePutSubscriptionFilter $
--             putSubscriptionFilterResponse
--
--         , responseDescribeMetricFilters $
--             describeMetricFiltersResponse
--
--         , responseCancelExportTask $
--             cancelExportTaskResponse
--
--         , responseCreateLogGroup $
--             createLogGroupResponse
--
--         , responseGetLogGroupFields $
--             getLogGroupFieldsResponse
--
--         , responseDescribeQueries $
--             describeQueriesResponse
--
--         , responseDeleteLogStream $
--             deleteLogStreamResponse
--
--         , responseTagLogGroup $
--             tagLogGroupResponse
--
--         , responseAssociateKMSKey $
--             associateKMSKeyResponse
--
--         , responseGetQueryResults $
--             getQueryResultsResponse
--
--         , responsePutQueryDefinition $
--             putQueryDefinitionResponse
--
--         , responseDeleteResourcePolicy $
--             deleteResourcePolicyResponse
--
--         , responseFilterLogEvents $
--             filterLogEventsResponse
--
--         , responseListTagsLogGroup $
--             listTagsLogGroupResponse
--
--         , responseDeleteRetentionPolicy $
--             deleteRetentionPolicyResponse
--
--         , responsePutDestination $
--             putDestinationResponse
--
--         , responsePutMetricFilter $
--             putMetricFilterResponse
--
--         , responseCreateExportTask $
--             createExportTaskResponse
--
--         , responseGetLogEvents $
--             getLogEventsResponse
--
--         , responsePutLogEvents $
--             putLogEventsResponse
--
--         , responseStopQuery $
--             stopQueryResponse
--
--         , responseDeleteLogGroup $
--             deleteLogGroupResponse
--
--         , responseUntagLogGroup $
--             untagLogGroupResponse
--
--         , responseTestMetricFilter $
--             testMetricFilterResponse
--
--         , responseStartQuery $
--             startQueryResponse
--
--         , responseDeleteSubscriptionFilter $
--             deleteSubscriptionFilterResponse
--
--           ]
--     ]

-- Requests

requestGetLogRecord :: GetLogRecord -> TestTree
requestGetLogRecord =
  req
    "GetLogRecord"
    "fixture/GetLogRecord.yaml"

requestDescribeExportTasks :: DescribeExportTasks -> TestTree
requestDescribeExportTasks =
  req
    "DescribeExportTasks"
    "fixture/DescribeExportTasks.yaml"

requestCreateLogStream :: CreateLogStream -> TestTree
requestCreateLogStream =
  req
    "CreateLogStream"
    "fixture/CreateLogStream.yaml"

requestDescribeResourcePolicies :: DescribeResourcePolicies -> TestTree
requestDescribeResourcePolicies =
  req
    "DescribeResourcePolicies"
    "fixture/DescribeResourcePolicies.yaml"

requestDescribeQueryDefinitions :: DescribeQueryDefinitions -> TestTree
requestDescribeQueryDefinitions =
  req
    "DescribeQueryDefinitions"
    "fixture/DescribeQueryDefinitions.yaml"

requestDeleteQueryDefinition :: DeleteQueryDefinition -> TestTree
requestDeleteQueryDefinition =
  req
    "DeleteQueryDefinition"
    "fixture/DeleteQueryDefinition.yaml"

requestDescribeLogStreams :: DescribeLogStreams -> TestTree
requestDescribeLogStreams =
  req
    "DescribeLogStreams"
    "fixture/DescribeLogStreams.yaml"

requestPutResourcePolicy :: PutResourcePolicy -> TestTree
requestPutResourcePolicy =
  req
    "PutResourcePolicy"
    "fixture/PutResourcePolicy.yaml"

requestDisassociateKMSKey :: DisassociateKMSKey -> TestTree
requestDisassociateKMSKey =
  req
    "DisassociateKMSKey"
    "fixture/DisassociateKMSKey.yaml"

requestDescribeSubscriptionFilters :: DescribeSubscriptionFilters -> TestTree
requestDescribeSubscriptionFilters =
  req
    "DescribeSubscriptionFilters"
    "fixture/DescribeSubscriptionFilters.yaml"

requestDescribeLogGroups :: DescribeLogGroups -> TestTree
requestDescribeLogGroups =
  req
    "DescribeLogGroups"
    "fixture/DescribeLogGroups.yaml"

requestPutRetentionPolicy :: PutRetentionPolicy -> TestTree
requestPutRetentionPolicy =
  req
    "PutRetentionPolicy"
    "fixture/PutRetentionPolicy.yaml"

requestPutDestinationPolicy :: PutDestinationPolicy -> TestTree
requestPutDestinationPolicy =
  req
    "PutDestinationPolicy"
    "fixture/PutDestinationPolicy.yaml"

requestDeleteDestination :: DeleteDestination -> TestTree
requestDeleteDestination =
  req
    "DeleteDestination"
    "fixture/DeleteDestination.yaml"

requestDeleteMetricFilter :: DeleteMetricFilter -> TestTree
requestDeleteMetricFilter =
  req
    "DeleteMetricFilter"
    "fixture/DeleteMetricFilter.yaml"

requestDescribeDestinations :: DescribeDestinations -> TestTree
requestDescribeDestinations =
  req
    "DescribeDestinations"
    "fixture/DescribeDestinations.yaml"

requestPutSubscriptionFilter :: PutSubscriptionFilter -> TestTree
requestPutSubscriptionFilter =
  req
    "PutSubscriptionFilter"
    "fixture/PutSubscriptionFilter.yaml"

requestDescribeMetricFilters :: DescribeMetricFilters -> TestTree
requestDescribeMetricFilters =
  req
    "DescribeMetricFilters"
    "fixture/DescribeMetricFilters.yaml"

requestCancelExportTask :: CancelExportTask -> TestTree
requestCancelExportTask =
  req
    "CancelExportTask"
    "fixture/CancelExportTask.yaml"

requestCreateLogGroup :: CreateLogGroup -> TestTree
requestCreateLogGroup =
  req
    "CreateLogGroup"
    "fixture/CreateLogGroup.yaml"

requestGetLogGroupFields :: GetLogGroupFields -> TestTree
requestGetLogGroupFields =
  req
    "GetLogGroupFields"
    "fixture/GetLogGroupFields.yaml"

requestDescribeQueries :: DescribeQueries -> TestTree
requestDescribeQueries =
  req
    "DescribeQueries"
    "fixture/DescribeQueries.yaml"

requestDeleteLogStream :: DeleteLogStream -> TestTree
requestDeleteLogStream =
  req
    "DeleteLogStream"
    "fixture/DeleteLogStream.yaml"

requestTagLogGroup :: TagLogGroup -> TestTree
requestTagLogGroup =
  req
    "TagLogGroup"
    "fixture/TagLogGroup.yaml"

requestAssociateKMSKey :: AssociateKMSKey -> TestTree
requestAssociateKMSKey =
  req
    "AssociateKMSKey"
    "fixture/AssociateKMSKey.yaml"

requestGetQueryResults :: GetQueryResults -> TestTree
requestGetQueryResults =
  req
    "GetQueryResults"
    "fixture/GetQueryResults.yaml"

requestPutQueryDefinition :: PutQueryDefinition -> TestTree
requestPutQueryDefinition =
  req
    "PutQueryDefinition"
    "fixture/PutQueryDefinition.yaml"

requestDeleteResourcePolicy :: DeleteResourcePolicy -> TestTree
requestDeleteResourcePolicy =
  req
    "DeleteResourcePolicy"
    "fixture/DeleteResourcePolicy.yaml"

requestFilterLogEvents :: FilterLogEvents -> TestTree
requestFilterLogEvents =
  req
    "FilterLogEvents"
    "fixture/FilterLogEvents.yaml"

requestListTagsLogGroup :: ListTagsLogGroup -> TestTree
requestListTagsLogGroup =
  req
    "ListTagsLogGroup"
    "fixture/ListTagsLogGroup.yaml"

requestDeleteRetentionPolicy :: DeleteRetentionPolicy -> TestTree
requestDeleteRetentionPolicy =
  req
    "DeleteRetentionPolicy"
    "fixture/DeleteRetentionPolicy.yaml"

requestPutDestination :: PutDestination -> TestTree
requestPutDestination =
  req
    "PutDestination"
    "fixture/PutDestination.yaml"

requestPutMetricFilter :: PutMetricFilter -> TestTree
requestPutMetricFilter =
  req
    "PutMetricFilter"
    "fixture/PutMetricFilter.yaml"

requestCreateExportTask :: CreateExportTask -> TestTree
requestCreateExportTask =
  req
    "CreateExportTask"
    "fixture/CreateExportTask.yaml"

requestGetLogEvents :: GetLogEvents -> TestTree
requestGetLogEvents =
  req
    "GetLogEvents"
    "fixture/GetLogEvents.yaml"

requestPutLogEvents :: PutLogEvents -> TestTree
requestPutLogEvents =
  req
    "PutLogEvents"
    "fixture/PutLogEvents.yaml"

requestStopQuery :: StopQuery -> TestTree
requestStopQuery =
  req
    "StopQuery"
    "fixture/StopQuery.yaml"

requestDeleteLogGroup :: DeleteLogGroup -> TestTree
requestDeleteLogGroup =
  req
    "DeleteLogGroup"
    "fixture/DeleteLogGroup.yaml"

requestUntagLogGroup :: UntagLogGroup -> TestTree
requestUntagLogGroup =
  req
    "UntagLogGroup"
    "fixture/UntagLogGroup.yaml"

requestTestMetricFilter :: TestMetricFilter -> TestTree
requestTestMetricFilter =
  req
    "TestMetricFilter"
    "fixture/TestMetricFilter.yaml"

requestStartQuery :: StartQuery -> TestTree
requestStartQuery =
  req
    "StartQuery"
    "fixture/StartQuery.yaml"

requestDeleteSubscriptionFilter :: DeleteSubscriptionFilter -> TestTree
requestDeleteSubscriptionFilter =
  req
    "DeleteSubscriptionFilter"
    "fixture/DeleteSubscriptionFilter.yaml"

-- Responses

responseGetLogRecord :: GetLogRecordResponse -> TestTree
responseGetLogRecord =
  res
    "GetLogRecordResponse"
    "fixture/GetLogRecordResponse.proto"
    cloudWatchLogs
    (Proxy :: Proxy GetLogRecord)

responseDescribeExportTasks :: DescribeExportTasksResponse -> TestTree
responseDescribeExportTasks =
  res
    "DescribeExportTasksResponse"
    "fixture/DescribeExportTasksResponse.proto"
    cloudWatchLogs
    (Proxy :: Proxy DescribeExportTasks)

responseCreateLogStream :: CreateLogStreamResponse -> TestTree
responseCreateLogStream =
  res
    "CreateLogStreamResponse"
    "fixture/CreateLogStreamResponse.proto"
    cloudWatchLogs
    (Proxy :: Proxy CreateLogStream)

responseDescribeResourcePolicies :: DescribeResourcePoliciesResponse -> TestTree
responseDescribeResourcePolicies =
  res
    "DescribeResourcePoliciesResponse"
    "fixture/DescribeResourcePoliciesResponse.proto"
    cloudWatchLogs
    (Proxy :: Proxy DescribeResourcePolicies)

responseDescribeQueryDefinitions :: DescribeQueryDefinitionsResponse -> TestTree
responseDescribeQueryDefinitions =
  res
    "DescribeQueryDefinitionsResponse"
    "fixture/DescribeQueryDefinitionsResponse.proto"
    cloudWatchLogs
    (Proxy :: Proxy DescribeQueryDefinitions)

responseDeleteQueryDefinition :: DeleteQueryDefinitionResponse -> TestTree
responseDeleteQueryDefinition =
  res
    "DeleteQueryDefinitionResponse"
    "fixture/DeleteQueryDefinitionResponse.proto"
    cloudWatchLogs
    (Proxy :: Proxy DeleteQueryDefinition)

responseDescribeLogStreams :: DescribeLogStreamsResponse -> TestTree
responseDescribeLogStreams =
  res
    "DescribeLogStreamsResponse"
    "fixture/DescribeLogStreamsResponse.proto"
    cloudWatchLogs
    (Proxy :: Proxy DescribeLogStreams)

responsePutResourcePolicy :: PutResourcePolicyResponse -> TestTree
responsePutResourcePolicy =
  res
    "PutResourcePolicyResponse"
    "fixture/PutResourcePolicyResponse.proto"
    cloudWatchLogs
    (Proxy :: Proxy PutResourcePolicy)

responseDisassociateKMSKey :: DisassociateKMSKeyResponse -> TestTree
responseDisassociateKMSKey =
  res
    "DisassociateKMSKeyResponse"
    "fixture/DisassociateKMSKeyResponse.proto"
    cloudWatchLogs
    (Proxy :: Proxy DisassociateKMSKey)

responseDescribeSubscriptionFilters :: DescribeSubscriptionFiltersResponse -> TestTree
responseDescribeSubscriptionFilters =
  res
    "DescribeSubscriptionFiltersResponse"
    "fixture/DescribeSubscriptionFiltersResponse.proto"
    cloudWatchLogs
    (Proxy :: Proxy DescribeSubscriptionFilters)

responseDescribeLogGroups :: DescribeLogGroupsResponse -> TestTree
responseDescribeLogGroups =
  res
    "DescribeLogGroupsResponse"
    "fixture/DescribeLogGroupsResponse.proto"
    cloudWatchLogs
    (Proxy :: Proxy DescribeLogGroups)

responsePutRetentionPolicy :: PutRetentionPolicyResponse -> TestTree
responsePutRetentionPolicy =
  res
    "PutRetentionPolicyResponse"
    "fixture/PutRetentionPolicyResponse.proto"
    cloudWatchLogs
    (Proxy :: Proxy PutRetentionPolicy)

responsePutDestinationPolicy :: PutDestinationPolicyResponse -> TestTree
responsePutDestinationPolicy =
  res
    "PutDestinationPolicyResponse"
    "fixture/PutDestinationPolicyResponse.proto"
    cloudWatchLogs
    (Proxy :: Proxy PutDestinationPolicy)

responseDeleteDestination :: DeleteDestinationResponse -> TestTree
responseDeleteDestination =
  res
    "DeleteDestinationResponse"
    "fixture/DeleteDestinationResponse.proto"
    cloudWatchLogs
    (Proxy :: Proxy DeleteDestination)

responseDeleteMetricFilter :: DeleteMetricFilterResponse -> TestTree
responseDeleteMetricFilter =
  res
    "DeleteMetricFilterResponse"
    "fixture/DeleteMetricFilterResponse.proto"
    cloudWatchLogs
    (Proxy :: Proxy DeleteMetricFilter)

responseDescribeDestinations :: DescribeDestinationsResponse -> TestTree
responseDescribeDestinations =
  res
    "DescribeDestinationsResponse"
    "fixture/DescribeDestinationsResponse.proto"
    cloudWatchLogs
    (Proxy :: Proxy DescribeDestinations)

responsePutSubscriptionFilter :: PutSubscriptionFilterResponse -> TestTree
responsePutSubscriptionFilter =
  res
    "PutSubscriptionFilterResponse"
    "fixture/PutSubscriptionFilterResponse.proto"
    cloudWatchLogs
    (Proxy :: Proxy PutSubscriptionFilter)

responseDescribeMetricFilters :: DescribeMetricFiltersResponse -> TestTree
responseDescribeMetricFilters =
  res
    "DescribeMetricFiltersResponse"
    "fixture/DescribeMetricFiltersResponse.proto"
    cloudWatchLogs
    (Proxy :: Proxy DescribeMetricFilters)

responseCancelExportTask :: CancelExportTaskResponse -> TestTree
responseCancelExportTask =
  res
    "CancelExportTaskResponse"
    "fixture/CancelExportTaskResponse.proto"
    cloudWatchLogs
    (Proxy :: Proxy CancelExportTask)

responseCreateLogGroup :: CreateLogGroupResponse -> TestTree
responseCreateLogGroup =
  res
    "CreateLogGroupResponse"
    "fixture/CreateLogGroupResponse.proto"
    cloudWatchLogs
    (Proxy :: Proxy CreateLogGroup)

responseGetLogGroupFields :: GetLogGroupFieldsResponse -> TestTree
responseGetLogGroupFields =
  res
    "GetLogGroupFieldsResponse"
    "fixture/GetLogGroupFieldsResponse.proto"
    cloudWatchLogs
    (Proxy :: Proxy GetLogGroupFields)

responseDescribeQueries :: DescribeQueriesResponse -> TestTree
responseDescribeQueries =
  res
    "DescribeQueriesResponse"
    "fixture/DescribeQueriesResponse.proto"
    cloudWatchLogs
    (Proxy :: Proxy DescribeQueries)

responseDeleteLogStream :: DeleteLogStreamResponse -> TestTree
responseDeleteLogStream =
  res
    "DeleteLogStreamResponse"
    "fixture/DeleteLogStreamResponse.proto"
    cloudWatchLogs
    (Proxy :: Proxy DeleteLogStream)

responseTagLogGroup :: TagLogGroupResponse -> TestTree
responseTagLogGroup =
  res
    "TagLogGroupResponse"
    "fixture/TagLogGroupResponse.proto"
    cloudWatchLogs
    (Proxy :: Proxy TagLogGroup)

responseAssociateKMSKey :: AssociateKMSKeyResponse -> TestTree
responseAssociateKMSKey =
  res
    "AssociateKMSKeyResponse"
    "fixture/AssociateKMSKeyResponse.proto"
    cloudWatchLogs
    (Proxy :: Proxy AssociateKMSKey)

responseGetQueryResults :: GetQueryResultsResponse -> TestTree
responseGetQueryResults =
  res
    "GetQueryResultsResponse"
    "fixture/GetQueryResultsResponse.proto"
    cloudWatchLogs
    (Proxy :: Proxy GetQueryResults)

responsePutQueryDefinition :: PutQueryDefinitionResponse -> TestTree
responsePutQueryDefinition =
  res
    "PutQueryDefinitionResponse"
    "fixture/PutQueryDefinitionResponse.proto"
    cloudWatchLogs
    (Proxy :: Proxy PutQueryDefinition)

responseDeleteResourcePolicy :: DeleteResourcePolicyResponse -> TestTree
responseDeleteResourcePolicy =
  res
    "DeleteResourcePolicyResponse"
    "fixture/DeleteResourcePolicyResponse.proto"
    cloudWatchLogs
    (Proxy :: Proxy DeleteResourcePolicy)

responseFilterLogEvents :: FilterLogEventsResponse -> TestTree
responseFilterLogEvents =
  res
    "FilterLogEventsResponse"
    "fixture/FilterLogEventsResponse.proto"
    cloudWatchLogs
    (Proxy :: Proxy FilterLogEvents)

responseListTagsLogGroup :: ListTagsLogGroupResponse -> TestTree
responseListTagsLogGroup =
  res
    "ListTagsLogGroupResponse"
    "fixture/ListTagsLogGroupResponse.proto"
    cloudWatchLogs
    (Proxy :: Proxy ListTagsLogGroup)

responseDeleteRetentionPolicy :: DeleteRetentionPolicyResponse -> TestTree
responseDeleteRetentionPolicy =
  res
    "DeleteRetentionPolicyResponse"
    "fixture/DeleteRetentionPolicyResponse.proto"
    cloudWatchLogs
    (Proxy :: Proxy DeleteRetentionPolicy)

responsePutDestination :: PutDestinationResponse -> TestTree
responsePutDestination =
  res
    "PutDestinationResponse"
    "fixture/PutDestinationResponse.proto"
    cloudWatchLogs
    (Proxy :: Proxy PutDestination)

responsePutMetricFilter :: PutMetricFilterResponse -> TestTree
responsePutMetricFilter =
  res
    "PutMetricFilterResponse"
    "fixture/PutMetricFilterResponse.proto"
    cloudWatchLogs
    (Proxy :: Proxy PutMetricFilter)

responseCreateExportTask :: CreateExportTaskResponse -> TestTree
responseCreateExportTask =
  res
    "CreateExportTaskResponse"
    "fixture/CreateExportTaskResponse.proto"
    cloudWatchLogs
    (Proxy :: Proxy CreateExportTask)

responseGetLogEvents :: GetLogEventsResponse -> TestTree
responseGetLogEvents =
  res
    "GetLogEventsResponse"
    "fixture/GetLogEventsResponse.proto"
    cloudWatchLogs
    (Proxy :: Proxy GetLogEvents)

responsePutLogEvents :: PutLogEventsResponse -> TestTree
responsePutLogEvents =
  res
    "PutLogEventsResponse"
    "fixture/PutLogEventsResponse.proto"
    cloudWatchLogs
    (Proxy :: Proxy PutLogEvents)

responseStopQuery :: StopQueryResponse -> TestTree
responseStopQuery =
  res
    "StopQueryResponse"
    "fixture/StopQueryResponse.proto"
    cloudWatchLogs
    (Proxy :: Proxy StopQuery)

responseDeleteLogGroup :: DeleteLogGroupResponse -> TestTree
responseDeleteLogGroup =
  res
    "DeleteLogGroupResponse"
    "fixture/DeleteLogGroupResponse.proto"
    cloudWatchLogs
    (Proxy :: Proxy DeleteLogGroup)

responseUntagLogGroup :: UntagLogGroupResponse -> TestTree
responseUntagLogGroup =
  res
    "UntagLogGroupResponse"
    "fixture/UntagLogGroupResponse.proto"
    cloudWatchLogs
    (Proxy :: Proxy UntagLogGroup)

responseTestMetricFilter :: TestMetricFilterResponse -> TestTree
responseTestMetricFilter =
  res
    "TestMetricFilterResponse"
    "fixture/TestMetricFilterResponse.proto"
    cloudWatchLogs
    (Proxy :: Proxy TestMetricFilter)

responseStartQuery :: StartQueryResponse -> TestTree
responseStartQuery =
  res
    "StartQueryResponse"
    "fixture/StartQueryResponse.proto"
    cloudWatchLogs
    (Proxy :: Proxy StartQuery)

responseDeleteSubscriptionFilter :: DeleteSubscriptionFilterResponse -> TestTree
responseDeleteSubscriptionFilter =
  res
    "DeleteSubscriptionFilterResponse"
    "fixture/DeleteSubscriptionFilterResponse.proto"
    cloudWatchLogs
    (Proxy :: Proxy DeleteSubscriptionFilter)
