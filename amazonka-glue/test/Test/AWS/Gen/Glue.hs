{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.Glue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.Glue where

import Data.Proxy
import Network.AWS.Glue
import Test.AWS.Fixture
import Test.AWS.Glue.Internal
import Test.AWS.Prelude
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestGetDataCatalogEncryptionSettings $
--             getDataCatalogEncryptionSettings
--
--         , requestUpdateColumnStatisticsForTable $
--             updateColumnStatisticsForTable
--
--         , requestStartMLLabelingSetGenerationTaskRun $
--             startMLLabelingSetGenerationTaskRun
--
--         , requestDeleteColumnStatisticsForTable $
--             deleteColumnStatisticsForTable
--
--         , requestGetSchema $
--             getSchema
--
--         , requestDeleteConnection $
--             deleteConnection
--
--         , requestUpdateConnection $
--             updateConnection
--
--         , requestCheckSchemaVersionValidity $
--             checkSchemaVersionValidity
--
--         , requestCreateWorkflow $
--             createWorkflow
--
--         , requestGetPartitions $
--             getPartitions
--
--         , requestDeleteSecurityConfiguration $
--             deleteSecurityConfiguration
--
--         , requestGetPartition $
--             getPartition
--
--         , requestUpdateRegistry $
--             updateRegistry
--
--         , requestListMLTransforms $
--             listMLTransforms
--
--         , requestStopCrawler $
--             stopCrawler
--
--         , requestStartImportLabelsTaskRun $
--             startImportLabelsTaskRun
--
--         , requestGetResourcePolicy $
--             getResourcePolicy
--
--         , requestQuerySchemaVersionMetadata $
--             querySchemaVersionMetadata
--
--         , requestDeleteRegistry $
--             deleteRegistry
--
--         , requestGetPartitionIndexes $
--             getPartitionIndexes
--
--         , requestStartCrawler $
--             startCrawler
--
--         , requestGetCatalogImportStatus $
--             getCatalogImportStatus
--
--         , requestGetColumnStatisticsForPartition $
--             getColumnStatisticsForPartition
--
--         , requestCreateRegistry $
--             createRegistry
--
--         , requestListTriggers $
--             listTriggers
--
--         , requestCreateMLTransform $
--             createMLTransform
--
--         , requestStopCrawlerSchedule $
--             stopCrawlerSchedule
--
--         , requestUpdateTrigger $
--             updateTrigger
--
--         , requestGetSchemaByDefinition $
--             getSchemaByDefinition
--
--         , requestListRegistries $
--             listRegistries
--
--         , requestStartCrawlerSchedule $
--             startCrawlerSchedule
--
--         , requestDeleteTrigger $
--             deleteTrigger
--
--         , requestGetJob $
--             getJob
--
--         , requestUpdateClassifier $
--             updateClassifier
--
--         , requestDeleteClassifier $
--             deleteClassifier
--
--         , requestDeleteJob $
--             deleteJob
--
--         , requestUpdateJob $
--             updateJob
--
--         , requestCreateUserDefinedFunction $
--             createUserDefinedFunction
--
--         , requestGetTrigger $
--             getTrigger
--
--         , requestBatchGetJobs $
--             batchGetJobs
--
--         , requestCreateClassifier $
--             createClassifier
--
--         , requestGetSecurityConfigurations $
--             getSecurityConfigurations
--
--         , requestPutResourcePolicy $
--             putResourcePolicy
--
--         , requestUpdatePartition $
--             updatePartition
--
--         , requestGetSchemaVersionsDiff $
--             getSchemaVersionsDiff
--
--         , requestUntagResource $
--             untagResource
--
--         , requestBatchDeleteTable $
--             batchDeleteTable
--
--         , requestStartMLEvaluationTaskRun $
--             startMLEvaluationTaskRun
--
--         , requestGetDatabase $
--             getDatabase
--
--         , requestDeletePartition $
--             deletePartition
--
--         , requestGetJobRuns $
--             getJobRuns
--
--         , requestGetMLTransforms $
--             getMLTransforms
--
--         , requestGetJobRun $
--             getJobRun
--
--         , requestCreateDevEndpoint $
--             createDevEndpoint
--
--         , requestCreatePartitionIndex $
--             createPartitionIndex
--
--         , requestTagResource $
--             tagResource
--
--         , requestGetSecurityConfiguration $
--             getSecurityConfiguration
--
--         , requestCreateCrawler $
--             createCrawler
--
--         , requestGetMLTaskRuns $
--             getMLTaskRuns
--
--         , requestListCrawlers $
--             listCrawlers
--
--         , requestUpdateDevEndpoint $
--             updateDevEndpoint
--
--         , requestCreateSchema $
--             createSchema
--
--         , requestListDevEndpoints $
--             listDevEndpoints
--
--         , requestDeleteCrawler $
--             deleteCrawler
--
--         , requestDeleteDevEndpoint $
--             deleteDevEndpoint
--
--         , requestGetWorkflow $
--             getWorkflow
--
--         , requestGetSchemaVersion $
--             getSchemaVersion
--
--         , requestUpdateCrawler $
--             updateCrawler
--
--         , requestDeleteWorkflow $
--             deleteWorkflow
--
--         , requestRegisterSchemaVersion $
--             registerSchemaVersion
--
--         , requestGetMapping $
--             getMapping
--
--         , requestStopWorkflowRun $
--             stopWorkflowRun
--
--         , requestCreateConnection $
--             createConnection
--
--         , requestBatchCreatePartition $
--             batchCreatePartition
--
--         , requestCreateTable $
--             createTable
--
--         , requestUpdateWorkflow $
--             updateWorkflow
--
--         , requestGetClassifiers $
--             getClassifiers
--
--         , requestBatchStopJobRun $
--             batchStopJobRun
--
--         , requestStartWorkflowRun $
--             startWorkflowRun
--
--         , requestListWorkflows $
--             listWorkflows
--
--         , requestListSchemaVersions $
--             listSchemaVersions
--
--         , requestBatchDeletePartition $
--             batchDeletePartition
--
--         , requestPutSchemaVersionMetadata $
--             putSchemaVersionMetadata
--
--         , requestGetWorkflowRuns $
--             getWorkflowRuns
--
--         , requestGetTags $
--             getTags
--
--         , requestBatchUpdatePartition $
--             batchUpdatePartition
--
--         , requestGetUserDefinedFunctions $
--             getUserDefinedFunctions
--
--         , requestUpdateTable $
--             updateTable
--
--         , requestDeleteTable $
--             deleteTable
--
--         , requestDeleteDatabase $
--             deleteDatabase
--
--         , requestUpdateDatabase $
--             updateDatabase
--
--         , requestGetUserDefinedFunction $
--             getUserDefinedFunction
--
--         , requestUpdateMLTransform $
--             updateMLTransform
--
--         , requestGetWorkflowRun $
--             getWorkflowRun
--
--         , requestDeleteMLTransform $
--             deleteMLTransform
--
--         , requestCreateTrigger $
--             createTrigger
--
--         , requestCreateDatabase $
--             createDatabase
--
--         , requestGetClassifier $
--             getClassifier
--
--         , requestDeleteSchemaVersions $
--             deleteSchemaVersions
--
--         , requestBatchGetTriggers $
--             batchGetTriggers
--
--         , requestBatchDeleteTableVersion $
--             batchDeleteTableVersion
--
--         , requestGetTableVersions $
--             getTableVersions
--
--         , requestGetDevEndpoints $
--             getDevEndpoints
--
--         , requestGetCrawlers $
--             getCrawlers
--
--         , requestStartJobRun $
--             startJobRun
--
--         , requestImportCatalogToGlue $
--             importCatalogToGlue
--
--         , requestCreatePartition $
--             createPartition
--
--         , requestResetJobBookmark $
--             resetJobBookmark
--
--         , requestListJobs $
--             listJobs
--
--         , requestBatchDeleteConnection $
--             batchDeleteConnection
--
--         , requestGetTables $
--             getTables
--
--         , requestDeleteColumnStatisticsForPartition $
--             deleteColumnStatisticsForPartition
--
--         , requestDeleteResourcePolicy $
--             deleteResourcePolicy
--
--         , requestGetRegistry $
--             getRegistry
--
--         , requestResumeWorkflowRun $
--             resumeWorkflowRun
--
--         , requestCancelMLTaskRun $
--             cancelMLTaskRun
--
--         , requestCreateJob $
--             createJob
--
--         , requestSearchTables $
--             searchTables
--
--         , requestUpdateUserDefinedFunction $
--             updateUserDefinedFunction
--
--         , requestUpdateColumnStatisticsForPartition $
--             updateColumnStatisticsForPartition
--
--         , requestGetConnections $
--             getConnections
--
--         , requestGetMLTransform $
--             getMLTransform
--
--         , requestCreateScript $
--             createScript
--
--         , requestGetMLTaskRun $
--             getMLTaskRun
--
--         , requestDeleteUserDefinedFunction $
--             deleteUserDefinedFunction
--
--         , requestStartTrigger $
--             startTrigger
--
--         , requestPutDataCatalogEncryptionSettings $
--             putDataCatalogEncryptionSettings
--
--         , requestRemoveSchemaVersionMetadata $
--             removeSchemaVersionMetadata
--
--         , requestBatchGetPartition $
--             batchGetPartition
--
--         , requestGetTable $
--             getTable
--
--         , requestUpdateCrawlerSchedule $
--             updateCrawlerSchedule
--
--         , requestGetColumnStatisticsForTable $
--             getColumnStatisticsForTable
--
--         , requestStopTrigger $
--             stopTrigger
--
--         , requestListSchemas $
--             listSchemas
--
--         , requestGetConnection $
--             getConnection
--
--         , requestGetDatabases $
--             getDatabases
--
--         , requestDeleteSchema $
--             deleteSchema
--
--         , requestUpdateSchema $
--             updateSchema
--
--         , requestGetDataflowGraph $
--             getDataflowGraph
--
--         , requestBatchGetDevEndpoints $
--             batchGetDevEndpoints
--
--         , requestStartExportLabelsTaskRun $
--             startExportLabelsTaskRun
--
--         , requestGetTriggers $
--             getTriggers
--
--         , requestBatchGetCrawlers $
--             batchGetCrawlers
--
--         , requestGetPlan $
--             getPlan
--
--         , requestGetCrawlerMetrics $
--             getCrawlerMetrics
--
--         , requestGetWorkflowRunProperties $
--             getWorkflowRunProperties
--
--         , requestDeletePartitionIndex $
--             deletePartitionIndex
--
--         , requestGetJobBookmark $
--             getJobBookmark
--
--         , requestDeleteTableVersion $
--             deleteTableVersion
--
--         , requestGetTableVersion $
--             getTableVersion
--
--         , requestPutWorkflowRunProperties $
--             putWorkflowRunProperties
--
--         , requestBatchGetWorkflows $
--             batchGetWorkflows
--
--         , requestGetResourcePolicies $
--             getResourcePolicies
--
--         , requestGetJobs $
--             getJobs
--
--         , requestGetDevEndpoint $
--             getDevEndpoint
--
--         , requestGetCrawler $
--             getCrawler
--
--         , requestCreateSecurityConfiguration $
--             createSecurityConfiguration
--
--           ]

--     , testGroup "response"
--         [ responseGetDataCatalogEncryptionSettings $
--             getDataCatalogEncryptionSettingsResponse
--
--         , responseUpdateColumnStatisticsForTable $
--             updateColumnStatisticsForTableResponse
--
--         , responseStartMLLabelingSetGenerationTaskRun $
--             startMLLabelingSetGenerationTaskRunResponse
--
--         , responseDeleteColumnStatisticsForTable $
--             deleteColumnStatisticsForTableResponse
--
--         , responseGetSchema $
--             getSchemaResponse
--
--         , responseDeleteConnection $
--             deleteConnectionResponse
--
--         , responseUpdateConnection $
--             updateConnectionResponse
--
--         , responseCheckSchemaVersionValidity $
--             checkSchemaVersionValidityResponse
--
--         , responseCreateWorkflow $
--             createWorkflowResponse
--
--         , responseGetPartitions $
--             getPartitionsResponse
--
--         , responseDeleteSecurityConfiguration $
--             deleteSecurityConfigurationResponse
--
--         , responseGetPartition $
--             getPartitionResponse
--
--         , responseUpdateRegistry $
--             updateRegistryResponse
--
--         , responseListMLTransforms $
--             listMLTransformsResponse
--
--         , responseStopCrawler $
--             stopCrawlerResponse
--
--         , responseStartImportLabelsTaskRun $
--             startImportLabelsTaskRunResponse
--
--         , responseGetResourcePolicy $
--             getResourcePolicyResponse
--
--         , responseQuerySchemaVersionMetadata $
--             querySchemaVersionMetadataResponse
--
--         , responseDeleteRegistry $
--             deleteRegistryResponse
--
--         , responseGetPartitionIndexes $
--             getPartitionIndexesResponse
--
--         , responseStartCrawler $
--             startCrawlerResponse
--
--         , responseGetCatalogImportStatus $
--             getCatalogImportStatusResponse
--
--         , responseGetColumnStatisticsForPartition $
--             getColumnStatisticsForPartitionResponse
--
--         , responseCreateRegistry $
--             createRegistryResponse
--
--         , responseListTriggers $
--             listTriggersResponse
--
--         , responseCreateMLTransform $
--             createMLTransformResponse
--
--         , responseStopCrawlerSchedule $
--             stopCrawlerScheduleResponse
--
--         , responseUpdateTrigger $
--             updateTriggerResponse
--
--         , responseGetSchemaByDefinition $
--             getSchemaByDefinitionResponse
--
--         , responseListRegistries $
--             listRegistriesResponse
--
--         , responseStartCrawlerSchedule $
--             startCrawlerScheduleResponse
--
--         , responseDeleteTrigger $
--             deleteTriggerResponse
--
--         , responseGetJob $
--             getJobResponse
--
--         , responseUpdateClassifier $
--             updateClassifierResponse
--
--         , responseDeleteClassifier $
--             deleteClassifierResponse
--
--         , responseDeleteJob $
--             deleteJobResponse
--
--         , responseUpdateJob $
--             updateJobResponse
--
--         , responseCreateUserDefinedFunction $
--             createUserDefinedFunctionResponse
--
--         , responseGetTrigger $
--             getTriggerResponse
--
--         , responseBatchGetJobs $
--             batchGetJobsResponse
--
--         , responseCreateClassifier $
--             createClassifierResponse
--
--         , responseGetSecurityConfigurations $
--             getSecurityConfigurationsResponse
--
--         , responsePutResourcePolicy $
--             putResourcePolicyResponse
--
--         , responseUpdatePartition $
--             updatePartitionResponse
--
--         , responseGetSchemaVersionsDiff $
--             getSchemaVersionsDiffResponse
--
--         , responseUntagResource $
--             untagResourceResponse
--
--         , responseBatchDeleteTable $
--             batchDeleteTableResponse
--
--         , responseStartMLEvaluationTaskRun $
--             startMLEvaluationTaskRunResponse
--
--         , responseGetDatabase $
--             getDatabaseResponse
--
--         , responseDeletePartition $
--             deletePartitionResponse
--
--         , responseGetJobRuns $
--             getJobRunsResponse
--
--         , responseGetMLTransforms $
--             getMLTransformsResponse
--
--         , responseGetJobRun $
--             getJobRunResponse
--
--         , responseCreateDevEndpoint $
--             createDevEndpointResponse
--
--         , responseCreatePartitionIndex $
--             createPartitionIndexResponse
--
--         , responseTagResource $
--             tagResourceResponse
--
--         , responseGetSecurityConfiguration $
--             getSecurityConfigurationResponse
--
--         , responseCreateCrawler $
--             createCrawlerResponse
--
--         , responseGetMLTaskRuns $
--             getMLTaskRunsResponse
--
--         , responseListCrawlers $
--             listCrawlersResponse
--
--         , responseUpdateDevEndpoint $
--             updateDevEndpointResponse
--
--         , responseCreateSchema $
--             createSchemaResponse
--
--         , responseListDevEndpoints $
--             listDevEndpointsResponse
--
--         , responseDeleteCrawler $
--             deleteCrawlerResponse
--
--         , responseDeleteDevEndpoint $
--             deleteDevEndpointResponse
--
--         , responseGetWorkflow $
--             getWorkflowResponse
--
--         , responseGetSchemaVersion $
--             getSchemaVersionResponse
--
--         , responseUpdateCrawler $
--             updateCrawlerResponse
--
--         , responseDeleteWorkflow $
--             deleteWorkflowResponse
--
--         , responseRegisterSchemaVersion $
--             registerSchemaVersionResponse
--
--         , responseGetMapping $
--             getMappingResponse
--
--         , responseStopWorkflowRun $
--             stopWorkflowRunResponse
--
--         , responseCreateConnection $
--             createConnectionResponse
--
--         , responseBatchCreatePartition $
--             batchCreatePartitionResponse
--
--         , responseCreateTable $
--             createTableResponse
--
--         , responseUpdateWorkflow $
--             updateWorkflowResponse
--
--         , responseGetClassifiers $
--             getClassifiersResponse
--
--         , responseBatchStopJobRun $
--             batchStopJobRunResponse
--
--         , responseStartWorkflowRun $
--             startWorkflowRunResponse
--
--         , responseListWorkflows $
--             listWorkflowsResponse
--
--         , responseListSchemaVersions $
--             listSchemaVersionsResponse
--
--         , responseBatchDeletePartition $
--             batchDeletePartitionResponse
--
--         , responsePutSchemaVersionMetadata $
--             putSchemaVersionMetadataResponse
--
--         , responseGetWorkflowRuns $
--             getWorkflowRunsResponse
--
--         , responseGetTags $
--             getTagsResponse
--
--         , responseBatchUpdatePartition $
--             batchUpdatePartitionResponse
--
--         , responseGetUserDefinedFunctions $
--             getUserDefinedFunctionsResponse
--
--         , responseUpdateTable $
--             updateTableResponse
--
--         , responseDeleteTable $
--             deleteTableResponse
--
--         , responseDeleteDatabase $
--             deleteDatabaseResponse
--
--         , responseUpdateDatabase $
--             updateDatabaseResponse
--
--         , responseGetUserDefinedFunction $
--             getUserDefinedFunctionResponse
--
--         , responseUpdateMLTransform $
--             updateMLTransformResponse
--
--         , responseGetWorkflowRun $
--             getWorkflowRunResponse
--
--         , responseDeleteMLTransform $
--             deleteMLTransformResponse
--
--         , responseCreateTrigger $
--             createTriggerResponse
--
--         , responseCreateDatabase $
--             createDatabaseResponse
--
--         , responseGetClassifier $
--             getClassifierResponse
--
--         , responseDeleteSchemaVersions $
--             deleteSchemaVersionsResponse
--
--         , responseBatchGetTriggers $
--             batchGetTriggersResponse
--
--         , responseBatchDeleteTableVersion $
--             batchDeleteTableVersionResponse
--
--         , responseGetTableVersions $
--             getTableVersionsResponse
--
--         , responseGetDevEndpoints $
--             getDevEndpointsResponse
--
--         , responseGetCrawlers $
--             getCrawlersResponse
--
--         , responseStartJobRun $
--             startJobRunResponse
--
--         , responseImportCatalogToGlue $
--             importCatalogToGlueResponse
--
--         , responseCreatePartition $
--             createPartitionResponse
--
--         , responseResetJobBookmark $
--             resetJobBookmarkResponse
--
--         , responseListJobs $
--             listJobsResponse
--
--         , responseBatchDeleteConnection $
--             batchDeleteConnectionResponse
--
--         , responseGetTables $
--             getTablesResponse
--
--         , responseDeleteColumnStatisticsForPartition $
--             deleteColumnStatisticsForPartitionResponse
--
--         , responseDeleteResourcePolicy $
--             deleteResourcePolicyResponse
--
--         , responseGetRegistry $
--             getRegistryResponse
--
--         , responseResumeWorkflowRun $
--             resumeWorkflowRunResponse
--
--         , responseCancelMLTaskRun $
--             cancelMLTaskRunResponse
--
--         , responseCreateJob $
--             createJobResponse
--
--         , responseSearchTables $
--             searchTablesResponse
--
--         , responseUpdateUserDefinedFunction $
--             updateUserDefinedFunctionResponse
--
--         , responseUpdateColumnStatisticsForPartition $
--             updateColumnStatisticsForPartitionResponse
--
--         , responseGetConnections $
--             getConnectionsResponse
--
--         , responseGetMLTransform $
--             getMLTransformResponse
--
--         , responseCreateScript $
--             createScriptResponse
--
--         , responseGetMLTaskRun $
--             getMLTaskRunResponse
--
--         , responseDeleteUserDefinedFunction $
--             deleteUserDefinedFunctionResponse
--
--         , responseStartTrigger $
--             startTriggerResponse
--
--         , responsePutDataCatalogEncryptionSettings $
--             putDataCatalogEncryptionSettingsResponse
--
--         , responseRemoveSchemaVersionMetadata $
--             removeSchemaVersionMetadataResponse
--
--         , responseBatchGetPartition $
--             batchGetPartitionResponse
--
--         , responseGetTable $
--             getTableResponse
--
--         , responseUpdateCrawlerSchedule $
--             updateCrawlerScheduleResponse
--
--         , responseGetColumnStatisticsForTable $
--             getColumnStatisticsForTableResponse
--
--         , responseStopTrigger $
--             stopTriggerResponse
--
--         , responseListSchemas $
--             listSchemasResponse
--
--         , responseGetConnection $
--             getConnectionResponse
--
--         , responseGetDatabases $
--             getDatabasesResponse
--
--         , responseDeleteSchema $
--             deleteSchemaResponse
--
--         , responseUpdateSchema $
--             updateSchemaResponse
--
--         , responseGetDataflowGraph $
--             getDataflowGraphResponse
--
--         , responseBatchGetDevEndpoints $
--             batchGetDevEndpointsResponse
--
--         , responseStartExportLabelsTaskRun $
--             startExportLabelsTaskRunResponse
--
--         , responseGetTriggers $
--             getTriggersResponse
--
--         , responseBatchGetCrawlers $
--             batchGetCrawlersResponse
--
--         , responseGetPlan $
--             getPlanResponse
--
--         , responseGetCrawlerMetrics $
--             getCrawlerMetricsResponse
--
--         , responseGetWorkflowRunProperties $
--             getWorkflowRunPropertiesResponse
--
--         , responseDeletePartitionIndex $
--             deletePartitionIndexResponse
--
--         , responseGetJobBookmark $
--             getJobBookmarkResponse
--
--         , responseDeleteTableVersion $
--             deleteTableVersionResponse
--
--         , responseGetTableVersion $
--             getTableVersionResponse
--
--         , responsePutWorkflowRunProperties $
--             putWorkflowRunPropertiesResponse
--
--         , responseBatchGetWorkflows $
--             batchGetWorkflowsResponse
--
--         , responseGetResourcePolicies $
--             getResourcePoliciesResponse
--
--         , responseGetJobs $
--             getJobsResponse
--
--         , responseGetDevEndpoint $
--             getDevEndpointResponse
--
--         , responseGetCrawler $
--             getCrawlerResponse
--
--         , responseCreateSecurityConfiguration $
--             createSecurityConfigurationResponse
--
--           ]
--     ]

-- Requests

requestGetDataCatalogEncryptionSettings :: GetDataCatalogEncryptionSettings -> TestTree
requestGetDataCatalogEncryptionSettings =
  req
    "GetDataCatalogEncryptionSettings"
    "fixture/GetDataCatalogEncryptionSettings.yaml"

requestUpdateColumnStatisticsForTable :: UpdateColumnStatisticsForTable -> TestTree
requestUpdateColumnStatisticsForTable =
  req
    "UpdateColumnStatisticsForTable"
    "fixture/UpdateColumnStatisticsForTable.yaml"

requestStartMLLabelingSetGenerationTaskRun :: StartMLLabelingSetGenerationTaskRun -> TestTree
requestStartMLLabelingSetGenerationTaskRun =
  req
    "StartMLLabelingSetGenerationTaskRun"
    "fixture/StartMLLabelingSetGenerationTaskRun.yaml"

requestDeleteColumnStatisticsForTable :: DeleteColumnStatisticsForTable -> TestTree
requestDeleteColumnStatisticsForTable =
  req
    "DeleteColumnStatisticsForTable"
    "fixture/DeleteColumnStatisticsForTable.yaml"

requestGetSchema :: GetSchema -> TestTree
requestGetSchema =
  req
    "GetSchema"
    "fixture/GetSchema.yaml"

requestDeleteConnection :: DeleteConnection -> TestTree
requestDeleteConnection =
  req
    "DeleteConnection"
    "fixture/DeleteConnection.yaml"

requestUpdateConnection :: UpdateConnection -> TestTree
requestUpdateConnection =
  req
    "UpdateConnection"
    "fixture/UpdateConnection.yaml"

requestCheckSchemaVersionValidity :: CheckSchemaVersionValidity -> TestTree
requestCheckSchemaVersionValidity =
  req
    "CheckSchemaVersionValidity"
    "fixture/CheckSchemaVersionValidity.yaml"

requestCreateWorkflow :: CreateWorkflow -> TestTree
requestCreateWorkflow =
  req
    "CreateWorkflow"
    "fixture/CreateWorkflow.yaml"

requestGetPartitions :: GetPartitions -> TestTree
requestGetPartitions =
  req
    "GetPartitions"
    "fixture/GetPartitions.yaml"

requestDeleteSecurityConfiguration :: DeleteSecurityConfiguration -> TestTree
requestDeleteSecurityConfiguration =
  req
    "DeleteSecurityConfiguration"
    "fixture/DeleteSecurityConfiguration.yaml"

requestGetPartition :: GetPartition -> TestTree
requestGetPartition =
  req
    "GetPartition"
    "fixture/GetPartition.yaml"

requestUpdateRegistry :: UpdateRegistry -> TestTree
requestUpdateRegistry =
  req
    "UpdateRegistry"
    "fixture/UpdateRegistry.yaml"

requestListMLTransforms :: ListMLTransforms -> TestTree
requestListMLTransforms =
  req
    "ListMLTransforms"
    "fixture/ListMLTransforms.yaml"

requestStopCrawler :: StopCrawler -> TestTree
requestStopCrawler =
  req
    "StopCrawler"
    "fixture/StopCrawler.yaml"

requestStartImportLabelsTaskRun :: StartImportLabelsTaskRun -> TestTree
requestStartImportLabelsTaskRun =
  req
    "StartImportLabelsTaskRun"
    "fixture/StartImportLabelsTaskRun.yaml"

requestGetResourcePolicy :: GetResourcePolicy -> TestTree
requestGetResourcePolicy =
  req
    "GetResourcePolicy"
    "fixture/GetResourcePolicy.yaml"

requestQuerySchemaVersionMetadata :: QuerySchemaVersionMetadata -> TestTree
requestQuerySchemaVersionMetadata =
  req
    "QuerySchemaVersionMetadata"
    "fixture/QuerySchemaVersionMetadata.yaml"

requestDeleteRegistry :: DeleteRegistry -> TestTree
requestDeleteRegistry =
  req
    "DeleteRegistry"
    "fixture/DeleteRegistry.yaml"

requestGetPartitionIndexes :: GetPartitionIndexes -> TestTree
requestGetPartitionIndexes =
  req
    "GetPartitionIndexes"
    "fixture/GetPartitionIndexes.yaml"

requestStartCrawler :: StartCrawler -> TestTree
requestStartCrawler =
  req
    "StartCrawler"
    "fixture/StartCrawler.yaml"

requestGetCatalogImportStatus :: GetCatalogImportStatus -> TestTree
requestGetCatalogImportStatus =
  req
    "GetCatalogImportStatus"
    "fixture/GetCatalogImportStatus.yaml"

requestGetColumnStatisticsForPartition :: GetColumnStatisticsForPartition -> TestTree
requestGetColumnStatisticsForPartition =
  req
    "GetColumnStatisticsForPartition"
    "fixture/GetColumnStatisticsForPartition.yaml"

requestCreateRegistry :: CreateRegistry -> TestTree
requestCreateRegistry =
  req
    "CreateRegistry"
    "fixture/CreateRegistry.yaml"

requestListTriggers :: ListTriggers -> TestTree
requestListTriggers =
  req
    "ListTriggers"
    "fixture/ListTriggers.yaml"

requestCreateMLTransform :: CreateMLTransform -> TestTree
requestCreateMLTransform =
  req
    "CreateMLTransform"
    "fixture/CreateMLTransform.yaml"

requestStopCrawlerSchedule :: StopCrawlerSchedule -> TestTree
requestStopCrawlerSchedule =
  req
    "StopCrawlerSchedule"
    "fixture/StopCrawlerSchedule.yaml"

requestUpdateTrigger :: UpdateTrigger -> TestTree
requestUpdateTrigger =
  req
    "UpdateTrigger"
    "fixture/UpdateTrigger.yaml"

requestGetSchemaByDefinition :: GetSchemaByDefinition -> TestTree
requestGetSchemaByDefinition =
  req
    "GetSchemaByDefinition"
    "fixture/GetSchemaByDefinition.yaml"

requestListRegistries :: ListRegistries -> TestTree
requestListRegistries =
  req
    "ListRegistries"
    "fixture/ListRegistries.yaml"

requestStartCrawlerSchedule :: StartCrawlerSchedule -> TestTree
requestStartCrawlerSchedule =
  req
    "StartCrawlerSchedule"
    "fixture/StartCrawlerSchedule.yaml"

requestDeleteTrigger :: DeleteTrigger -> TestTree
requestDeleteTrigger =
  req
    "DeleteTrigger"
    "fixture/DeleteTrigger.yaml"

requestGetJob :: GetJob -> TestTree
requestGetJob =
  req
    "GetJob"
    "fixture/GetJob.yaml"

requestUpdateClassifier :: UpdateClassifier -> TestTree
requestUpdateClassifier =
  req
    "UpdateClassifier"
    "fixture/UpdateClassifier.yaml"

requestDeleteClassifier :: DeleteClassifier -> TestTree
requestDeleteClassifier =
  req
    "DeleteClassifier"
    "fixture/DeleteClassifier.yaml"

requestDeleteJob :: DeleteJob -> TestTree
requestDeleteJob =
  req
    "DeleteJob"
    "fixture/DeleteJob.yaml"

requestUpdateJob :: UpdateJob -> TestTree
requestUpdateJob =
  req
    "UpdateJob"
    "fixture/UpdateJob.yaml"

requestCreateUserDefinedFunction :: CreateUserDefinedFunction -> TestTree
requestCreateUserDefinedFunction =
  req
    "CreateUserDefinedFunction"
    "fixture/CreateUserDefinedFunction.yaml"

requestGetTrigger :: GetTrigger -> TestTree
requestGetTrigger =
  req
    "GetTrigger"
    "fixture/GetTrigger.yaml"

requestBatchGetJobs :: BatchGetJobs -> TestTree
requestBatchGetJobs =
  req
    "BatchGetJobs"
    "fixture/BatchGetJobs.yaml"

requestCreateClassifier :: CreateClassifier -> TestTree
requestCreateClassifier =
  req
    "CreateClassifier"
    "fixture/CreateClassifier.yaml"

requestGetSecurityConfigurations :: GetSecurityConfigurations -> TestTree
requestGetSecurityConfigurations =
  req
    "GetSecurityConfigurations"
    "fixture/GetSecurityConfigurations.yaml"

requestPutResourcePolicy :: PutResourcePolicy -> TestTree
requestPutResourcePolicy =
  req
    "PutResourcePolicy"
    "fixture/PutResourcePolicy.yaml"

requestUpdatePartition :: UpdatePartition -> TestTree
requestUpdatePartition =
  req
    "UpdatePartition"
    "fixture/UpdatePartition.yaml"

requestGetSchemaVersionsDiff :: GetSchemaVersionsDiff -> TestTree
requestGetSchemaVersionsDiff =
  req
    "GetSchemaVersionsDiff"
    "fixture/GetSchemaVersionsDiff.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource =
  req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestBatchDeleteTable :: BatchDeleteTable -> TestTree
requestBatchDeleteTable =
  req
    "BatchDeleteTable"
    "fixture/BatchDeleteTable.yaml"

requestStartMLEvaluationTaskRun :: StartMLEvaluationTaskRun -> TestTree
requestStartMLEvaluationTaskRun =
  req
    "StartMLEvaluationTaskRun"
    "fixture/StartMLEvaluationTaskRun.yaml"

requestGetDatabase :: GetDatabase -> TestTree
requestGetDatabase =
  req
    "GetDatabase"
    "fixture/GetDatabase.yaml"

requestDeletePartition :: DeletePartition -> TestTree
requestDeletePartition =
  req
    "DeletePartition"
    "fixture/DeletePartition.yaml"

requestGetJobRuns :: GetJobRuns -> TestTree
requestGetJobRuns =
  req
    "GetJobRuns"
    "fixture/GetJobRuns.yaml"

requestGetMLTransforms :: GetMLTransforms -> TestTree
requestGetMLTransforms =
  req
    "GetMLTransforms"
    "fixture/GetMLTransforms.yaml"

requestGetJobRun :: GetJobRun -> TestTree
requestGetJobRun =
  req
    "GetJobRun"
    "fixture/GetJobRun.yaml"

requestCreateDevEndpoint :: CreateDevEndpoint -> TestTree
requestCreateDevEndpoint =
  req
    "CreateDevEndpoint"
    "fixture/CreateDevEndpoint.yaml"

requestCreatePartitionIndex :: CreatePartitionIndex -> TestTree
requestCreatePartitionIndex =
  req
    "CreatePartitionIndex"
    "fixture/CreatePartitionIndex.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource =
  req
    "TagResource"
    "fixture/TagResource.yaml"

requestGetSecurityConfiguration :: GetSecurityConfiguration -> TestTree
requestGetSecurityConfiguration =
  req
    "GetSecurityConfiguration"
    "fixture/GetSecurityConfiguration.yaml"

requestCreateCrawler :: CreateCrawler -> TestTree
requestCreateCrawler =
  req
    "CreateCrawler"
    "fixture/CreateCrawler.yaml"

requestGetMLTaskRuns :: GetMLTaskRuns -> TestTree
requestGetMLTaskRuns =
  req
    "GetMLTaskRuns"
    "fixture/GetMLTaskRuns.yaml"

requestListCrawlers :: ListCrawlers -> TestTree
requestListCrawlers =
  req
    "ListCrawlers"
    "fixture/ListCrawlers.yaml"

requestUpdateDevEndpoint :: UpdateDevEndpoint -> TestTree
requestUpdateDevEndpoint =
  req
    "UpdateDevEndpoint"
    "fixture/UpdateDevEndpoint.yaml"

requestCreateSchema :: CreateSchema -> TestTree
requestCreateSchema =
  req
    "CreateSchema"
    "fixture/CreateSchema.yaml"

requestListDevEndpoints :: ListDevEndpoints -> TestTree
requestListDevEndpoints =
  req
    "ListDevEndpoints"
    "fixture/ListDevEndpoints.yaml"

requestDeleteCrawler :: DeleteCrawler -> TestTree
requestDeleteCrawler =
  req
    "DeleteCrawler"
    "fixture/DeleteCrawler.yaml"

requestDeleteDevEndpoint :: DeleteDevEndpoint -> TestTree
requestDeleteDevEndpoint =
  req
    "DeleteDevEndpoint"
    "fixture/DeleteDevEndpoint.yaml"

requestGetWorkflow :: GetWorkflow -> TestTree
requestGetWorkflow =
  req
    "GetWorkflow"
    "fixture/GetWorkflow.yaml"

requestGetSchemaVersion :: GetSchemaVersion -> TestTree
requestGetSchemaVersion =
  req
    "GetSchemaVersion"
    "fixture/GetSchemaVersion.yaml"

requestUpdateCrawler :: UpdateCrawler -> TestTree
requestUpdateCrawler =
  req
    "UpdateCrawler"
    "fixture/UpdateCrawler.yaml"

requestDeleteWorkflow :: DeleteWorkflow -> TestTree
requestDeleteWorkflow =
  req
    "DeleteWorkflow"
    "fixture/DeleteWorkflow.yaml"

requestRegisterSchemaVersion :: RegisterSchemaVersion -> TestTree
requestRegisterSchemaVersion =
  req
    "RegisterSchemaVersion"
    "fixture/RegisterSchemaVersion.yaml"

requestGetMapping :: GetMapping -> TestTree
requestGetMapping =
  req
    "GetMapping"
    "fixture/GetMapping.yaml"

requestStopWorkflowRun :: StopWorkflowRun -> TestTree
requestStopWorkflowRun =
  req
    "StopWorkflowRun"
    "fixture/StopWorkflowRun.yaml"

requestCreateConnection :: CreateConnection -> TestTree
requestCreateConnection =
  req
    "CreateConnection"
    "fixture/CreateConnection.yaml"

requestBatchCreatePartition :: BatchCreatePartition -> TestTree
requestBatchCreatePartition =
  req
    "BatchCreatePartition"
    "fixture/BatchCreatePartition.yaml"

requestCreateTable :: CreateTable -> TestTree
requestCreateTable =
  req
    "CreateTable"
    "fixture/CreateTable.yaml"

requestUpdateWorkflow :: UpdateWorkflow -> TestTree
requestUpdateWorkflow =
  req
    "UpdateWorkflow"
    "fixture/UpdateWorkflow.yaml"

requestGetClassifiers :: GetClassifiers -> TestTree
requestGetClassifiers =
  req
    "GetClassifiers"
    "fixture/GetClassifiers.yaml"

requestBatchStopJobRun :: BatchStopJobRun -> TestTree
requestBatchStopJobRun =
  req
    "BatchStopJobRun"
    "fixture/BatchStopJobRun.yaml"

requestStartWorkflowRun :: StartWorkflowRun -> TestTree
requestStartWorkflowRun =
  req
    "StartWorkflowRun"
    "fixture/StartWorkflowRun.yaml"

requestListWorkflows :: ListWorkflows -> TestTree
requestListWorkflows =
  req
    "ListWorkflows"
    "fixture/ListWorkflows.yaml"

requestListSchemaVersions :: ListSchemaVersions -> TestTree
requestListSchemaVersions =
  req
    "ListSchemaVersions"
    "fixture/ListSchemaVersions.yaml"

requestBatchDeletePartition :: BatchDeletePartition -> TestTree
requestBatchDeletePartition =
  req
    "BatchDeletePartition"
    "fixture/BatchDeletePartition.yaml"

requestPutSchemaVersionMetadata :: PutSchemaVersionMetadata -> TestTree
requestPutSchemaVersionMetadata =
  req
    "PutSchemaVersionMetadata"
    "fixture/PutSchemaVersionMetadata.yaml"

requestGetWorkflowRuns :: GetWorkflowRuns -> TestTree
requestGetWorkflowRuns =
  req
    "GetWorkflowRuns"
    "fixture/GetWorkflowRuns.yaml"

requestGetTags :: GetTags -> TestTree
requestGetTags =
  req
    "GetTags"
    "fixture/GetTags.yaml"

requestBatchUpdatePartition :: BatchUpdatePartition -> TestTree
requestBatchUpdatePartition =
  req
    "BatchUpdatePartition"
    "fixture/BatchUpdatePartition.yaml"

requestGetUserDefinedFunctions :: GetUserDefinedFunctions -> TestTree
requestGetUserDefinedFunctions =
  req
    "GetUserDefinedFunctions"
    "fixture/GetUserDefinedFunctions.yaml"

requestUpdateTable :: UpdateTable -> TestTree
requestUpdateTable =
  req
    "UpdateTable"
    "fixture/UpdateTable.yaml"

requestDeleteTable :: DeleteTable -> TestTree
requestDeleteTable =
  req
    "DeleteTable"
    "fixture/DeleteTable.yaml"

requestDeleteDatabase :: DeleteDatabase -> TestTree
requestDeleteDatabase =
  req
    "DeleteDatabase"
    "fixture/DeleteDatabase.yaml"

requestUpdateDatabase :: UpdateDatabase -> TestTree
requestUpdateDatabase =
  req
    "UpdateDatabase"
    "fixture/UpdateDatabase.yaml"

requestGetUserDefinedFunction :: GetUserDefinedFunction -> TestTree
requestGetUserDefinedFunction =
  req
    "GetUserDefinedFunction"
    "fixture/GetUserDefinedFunction.yaml"

requestUpdateMLTransform :: UpdateMLTransform -> TestTree
requestUpdateMLTransform =
  req
    "UpdateMLTransform"
    "fixture/UpdateMLTransform.yaml"

requestGetWorkflowRun :: GetWorkflowRun -> TestTree
requestGetWorkflowRun =
  req
    "GetWorkflowRun"
    "fixture/GetWorkflowRun.yaml"

requestDeleteMLTransform :: DeleteMLTransform -> TestTree
requestDeleteMLTransform =
  req
    "DeleteMLTransform"
    "fixture/DeleteMLTransform.yaml"

requestCreateTrigger :: CreateTrigger -> TestTree
requestCreateTrigger =
  req
    "CreateTrigger"
    "fixture/CreateTrigger.yaml"

requestCreateDatabase :: CreateDatabase -> TestTree
requestCreateDatabase =
  req
    "CreateDatabase"
    "fixture/CreateDatabase.yaml"

requestGetClassifier :: GetClassifier -> TestTree
requestGetClassifier =
  req
    "GetClassifier"
    "fixture/GetClassifier.yaml"

requestDeleteSchemaVersions :: DeleteSchemaVersions -> TestTree
requestDeleteSchemaVersions =
  req
    "DeleteSchemaVersions"
    "fixture/DeleteSchemaVersions.yaml"

requestBatchGetTriggers :: BatchGetTriggers -> TestTree
requestBatchGetTriggers =
  req
    "BatchGetTriggers"
    "fixture/BatchGetTriggers.yaml"

requestBatchDeleteTableVersion :: BatchDeleteTableVersion -> TestTree
requestBatchDeleteTableVersion =
  req
    "BatchDeleteTableVersion"
    "fixture/BatchDeleteTableVersion.yaml"

requestGetTableVersions :: GetTableVersions -> TestTree
requestGetTableVersions =
  req
    "GetTableVersions"
    "fixture/GetTableVersions.yaml"

requestGetDevEndpoints :: GetDevEndpoints -> TestTree
requestGetDevEndpoints =
  req
    "GetDevEndpoints"
    "fixture/GetDevEndpoints.yaml"

requestGetCrawlers :: GetCrawlers -> TestTree
requestGetCrawlers =
  req
    "GetCrawlers"
    "fixture/GetCrawlers.yaml"

requestStartJobRun :: StartJobRun -> TestTree
requestStartJobRun =
  req
    "StartJobRun"
    "fixture/StartJobRun.yaml"

requestImportCatalogToGlue :: ImportCatalogToGlue -> TestTree
requestImportCatalogToGlue =
  req
    "ImportCatalogToGlue"
    "fixture/ImportCatalogToGlue.yaml"

requestCreatePartition :: CreatePartition -> TestTree
requestCreatePartition =
  req
    "CreatePartition"
    "fixture/CreatePartition.yaml"

requestResetJobBookmark :: ResetJobBookmark -> TestTree
requestResetJobBookmark =
  req
    "ResetJobBookmark"
    "fixture/ResetJobBookmark.yaml"

requestListJobs :: ListJobs -> TestTree
requestListJobs =
  req
    "ListJobs"
    "fixture/ListJobs.yaml"

requestBatchDeleteConnection :: BatchDeleteConnection -> TestTree
requestBatchDeleteConnection =
  req
    "BatchDeleteConnection"
    "fixture/BatchDeleteConnection.yaml"

requestGetTables :: GetTables -> TestTree
requestGetTables =
  req
    "GetTables"
    "fixture/GetTables.yaml"

requestDeleteColumnStatisticsForPartition :: DeleteColumnStatisticsForPartition -> TestTree
requestDeleteColumnStatisticsForPartition =
  req
    "DeleteColumnStatisticsForPartition"
    "fixture/DeleteColumnStatisticsForPartition.yaml"

requestDeleteResourcePolicy :: DeleteResourcePolicy -> TestTree
requestDeleteResourcePolicy =
  req
    "DeleteResourcePolicy"
    "fixture/DeleteResourcePolicy.yaml"

requestGetRegistry :: GetRegistry -> TestTree
requestGetRegistry =
  req
    "GetRegistry"
    "fixture/GetRegistry.yaml"

requestResumeWorkflowRun :: ResumeWorkflowRun -> TestTree
requestResumeWorkflowRun =
  req
    "ResumeWorkflowRun"
    "fixture/ResumeWorkflowRun.yaml"

requestCancelMLTaskRun :: CancelMLTaskRun -> TestTree
requestCancelMLTaskRun =
  req
    "CancelMLTaskRun"
    "fixture/CancelMLTaskRun.yaml"

requestCreateJob :: CreateJob -> TestTree
requestCreateJob =
  req
    "CreateJob"
    "fixture/CreateJob.yaml"

requestSearchTables :: SearchTables -> TestTree
requestSearchTables =
  req
    "SearchTables"
    "fixture/SearchTables.yaml"

requestUpdateUserDefinedFunction :: UpdateUserDefinedFunction -> TestTree
requestUpdateUserDefinedFunction =
  req
    "UpdateUserDefinedFunction"
    "fixture/UpdateUserDefinedFunction.yaml"

requestUpdateColumnStatisticsForPartition :: UpdateColumnStatisticsForPartition -> TestTree
requestUpdateColumnStatisticsForPartition =
  req
    "UpdateColumnStatisticsForPartition"
    "fixture/UpdateColumnStatisticsForPartition.yaml"

requestGetConnections :: GetConnections -> TestTree
requestGetConnections =
  req
    "GetConnections"
    "fixture/GetConnections.yaml"

requestGetMLTransform :: GetMLTransform -> TestTree
requestGetMLTransform =
  req
    "GetMLTransform"
    "fixture/GetMLTransform.yaml"

requestCreateScript :: CreateScript -> TestTree
requestCreateScript =
  req
    "CreateScript"
    "fixture/CreateScript.yaml"

requestGetMLTaskRun :: GetMLTaskRun -> TestTree
requestGetMLTaskRun =
  req
    "GetMLTaskRun"
    "fixture/GetMLTaskRun.yaml"

requestDeleteUserDefinedFunction :: DeleteUserDefinedFunction -> TestTree
requestDeleteUserDefinedFunction =
  req
    "DeleteUserDefinedFunction"
    "fixture/DeleteUserDefinedFunction.yaml"

requestStartTrigger :: StartTrigger -> TestTree
requestStartTrigger =
  req
    "StartTrigger"
    "fixture/StartTrigger.yaml"

requestPutDataCatalogEncryptionSettings :: PutDataCatalogEncryptionSettings -> TestTree
requestPutDataCatalogEncryptionSettings =
  req
    "PutDataCatalogEncryptionSettings"
    "fixture/PutDataCatalogEncryptionSettings.yaml"

requestRemoveSchemaVersionMetadata :: RemoveSchemaVersionMetadata -> TestTree
requestRemoveSchemaVersionMetadata =
  req
    "RemoveSchemaVersionMetadata"
    "fixture/RemoveSchemaVersionMetadata.yaml"

requestBatchGetPartition :: BatchGetPartition -> TestTree
requestBatchGetPartition =
  req
    "BatchGetPartition"
    "fixture/BatchGetPartition.yaml"

requestGetTable :: GetTable -> TestTree
requestGetTable =
  req
    "GetTable"
    "fixture/GetTable.yaml"

requestUpdateCrawlerSchedule :: UpdateCrawlerSchedule -> TestTree
requestUpdateCrawlerSchedule =
  req
    "UpdateCrawlerSchedule"
    "fixture/UpdateCrawlerSchedule.yaml"

requestGetColumnStatisticsForTable :: GetColumnStatisticsForTable -> TestTree
requestGetColumnStatisticsForTable =
  req
    "GetColumnStatisticsForTable"
    "fixture/GetColumnStatisticsForTable.yaml"

requestStopTrigger :: StopTrigger -> TestTree
requestStopTrigger =
  req
    "StopTrigger"
    "fixture/StopTrigger.yaml"

requestListSchemas :: ListSchemas -> TestTree
requestListSchemas =
  req
    "ListSchemas"
    "fixture/ListSchemas.yaml"

requestGetConnection :: GetConnection -> TestTree
requestGetConnection =
  req
    "GetConnection"
    "fixture/GetConnection.yaml"

requestGetDatabases :: GetDatabases -> TestTree
requestGetDatabases =
  req
    "GetDatabases"
    "fixture/GetDatabases.yaml"

requestDeleteSchema :: DeleteSchema -> TestTree
requestDeleteSchema =
  req
    "DeleteSchema"
    "fixture/DeleteSchema.yaml"

requestUpdateSchema :: UpdateSchema -> TestTree
requestUpdateSchema =
  req
    "UpdateSchema"
    "fixture/UpdateSchema.yaml"

requestGetDataflowGraph :: GetDataflowGraph -> TestTree
requestGetDataflowGraph =
  req
    "GetDataflowGraph"
    "fixture/GetDataflowGraph.yaml"

requestBatchGetDevEndpoints :: BatchGetDevEndpoints -> TestTree
requestBatchGetDevEndpoints =
  req
    "BatchGetDevEndpoints"
    "fixture/BatchGetDevEndpoints.yaml"

requestStartExportLabelsTaskRun :: StartExportLabelsTaskRun -> TestTree
requestStartExportLabelsTaskRun =
  req
    "StartExportLabelsTaskRun"
    "fixture/StartExportLabelsTaskRun.yaml"

requestGetTriggers :: GetTriggers -> TestTree
requestGetTriggers =
  req
    "GetTriggers"
    "fixture/GetTriggers.yaml"

requestBatchGetCrawlers :: BatchGetCrawlers -> TestTree
requestBatchGetCrawlers =
  req
    "BatchGetCrawlers"
    "fixture/BatchGetCrawlers.yaml"

requestGetPlan :: GetPlan -> TestTree
requestGetPlan =
  req
    "GetPlan"
    "fixture/GetPlan.yaml"

requestGetCrawlerMetrics :: GetCrawlerMetrics -> TestTree
requestGetCrawlerMetrics =
  req
    "GetCrawlerMetrics"
    "fixture/GetCrawlerMetrics.yaml"

requestGetWorkflowRunProperties :: GetWorkflowRunProperties -> TestTree
requestGetWorkflowRunProperties =
  req
    "GetWorkflowRunProperties"
    "fixture/GetWorkflowRunProperties.yaml"

requestDeletePartitionIndex :: DeletePartitionIndex -> TestTree
requestDeletePartitionIndex =
  req
    "DeletePartitionIndex"
    "fixture/DeletePartitionIndex.yaml"

requestGetJobBookmark :: GetJobBookmark -> TestTree
requestGetJobBookmark =
  req
    "GetJobBookmark"
    "fixture/GetJobBookmark.yaml"

requestDeleteTableVersion :: DeleteTableVersion -> TestTree
requestDeleteTableVersion =
  req
    "DeleteTableVersion"
    "fixture/DeleteTableVersion.yaml"

requestGetTableVersion :: GetTableVersion -> TestTree
requestGetTableVersion =
  req
    "GetTableVersion"
    "fixture/GetTableVersion.yaml"

requestPutWorkflowRunProperties :: PutWorkflowRunProperties -> TestTree
requestPutWorkflowRunProperties =
  req
    "PutWorkflowRunProperties"
    "fixture/PutWorkflowRunProperties.yaml"

requestBatchGetWorkflows :: BatchGetWorkflows -> TestTree
requestBatchGetWorkflows =
  req
    "BatchGetWorkflows"
    "fixture/BatchGetWorkflows.yaml"

requestGetResourcePolicies :: GetResourcePolicies -> TestTree
requestGetResourcePolicies =
  req
    "GetResourcePolicies"
    "fixture/GetResourcePolicies.yaml"

requestGetJobs :: GetJobs -> TestTree
requestGetJobs =
  req
    "GetJobs"
    "fixture/GetJobs.yaml"

requestGetDevEndpoint :: GetDevEndpoint -> TestTree
requestGetDevEndpoint =
  req
    "GetDevEndpoint"
    "fixture/GetDevEndpoint.yaml"

requestGetCrawler :: GetCrawler -> TestTree
requestGetCrawler =
  req
    "GetCrawler"
    "fixture/GetCrawler.yaml"

requestCreateSecurityConfiguration :: CreateSecurityConfiguration -> TestTree
requestCreateSecurityConfiguration =
  req
    "CreateSecurityConfiguration"
    "fixture/CreateSecurityConfiguration.yaml"

-- Responses

responseGetDataCatalogEncryptionSettings :: GetDataCatalogEncryptionSettingsResponse -> TestTree
responseGetDataCatalogEncryptionSettings =
  res
    "GetDataCatalogEncryptionSettingsResponse"
    "fixture/GetDataCatalogEncryptionSettingsResponse.proto"
    glue
    (Proxy :: Proxy GetDataCatalogEncryptionSettings)

responseUpdateColumnStatisticsForTable :: UpdateColumnStatisticsForTableResponse -> TestTree
responseUpdateColumnStatisticsForTable =
  res
    "UpdateColumnStatisticsForTableResponse"
    "fixture/UpdateColumnStatisticsForTableResponse.proto"
    glue
    (Proxy :: Proxy UpdateColumnStatisticsForTable)

responseStartMLLabelingSetGenerationTaskRun :: StartMLLabelingSetGenerationTaskRunResponse -> TestTree
responseStartMLLabelingSetGenerationTaskRun =
  res
    "StartMLLabelingSetGenerationTaskRunResponse"
    "fixture/StartMLLabelingSetGenerationTaskRunResponse.proto"
    glue
    (Proxy :: Proxy StartMLLabelingSetGenerationTaskRun)

responseDeleteColumnStatisticsForTable :: DeleteColumnStatisticsForTableResponse -> TestTree
responseDeleteColumnStatisticsForTable =
  res
    "DeleteColumnStatisticsForTableResponse"
    "fixture/DeleteColumnStatisticsForTableResponse.proto"
    glue
    (Proxy :: Proxy DeleteColumnStatisticsForTable)

responseGetSchema :: GetSchemaResponse -> TestTree
responseGetSchema =
  res
    "GetSchemaResponse"
    "fixture/GetSchemaResponse.proto"
    glue
    (Proxy :: Proxy GetSchema)

responseDeleteConnection :: DeleteConnectionResponse -> TestTree
responseDeleteConnection =
  res
    "DeleteConnectionResponse"
    "fixture/DeleteConnectionResponse.proto"
    glue
    (Proxy :: Proxy DeleteConnection)

responseUpdateConnection :: UpdateConnectionResponse -> TestTree
responseUpdateConnection =
  res
    "UpdateConnectionResponse"
    "fixture/UpdateConnectionResponse.proto"
    glue
    (Proxy :: Proxy UpdateConnection)

responseCheckSchemaVersionValidity :: CheckSchemaVersionValidityResponse -> TestTree
responseCheckSchemaVersionValidity =
  res
    "CheckSchemaVersionValidityResponse"
    "fixture/CheckSchemaVersionValidityResponse.proto"
    glue
    (Proxy :: Proxy CheckSchemaVersionValidity)

responseCreateWorkflow :: CreateWorkflowResponse -> TestTree
responseCreateWorkflow =
  res
    "CreateWorkflowResponse"
    "fixture/CreateWorkflowResponse.proto"
    glue
    (Proxy :: Proxy CreateWorkflow)

responseGetPartitions :: GetPartitionsResponse -> TestTree
responseGetPartitions =
  res
    "GetPartitionsResponse"
    "fixture/GetPartitionsResponse.proto"
    glue
    (Proxy :: Proxy GetPartitions)

responseDeleteSecurityConfiguration :: DeleteSecurityConfigurationResponse -> TestTree
responseDeleteSecurityConfiguration =
  res
    "DeleteSecurityConfigurationResponse"
    "fixture/DeleteSecurityConfigurationResponse.proto"
    glue
    (Proxy :: Proxy DeleteSecurityConfiguration)

responseGetPartition :: GetPartitionResponse -> TestTree
responseGetPartition =
  res
    "GetPartitionResponse"
    "fixture/GetPartitionResponse.proto"
    glue
    (Proxy :: Proxy GetPartition)

responseUpdateRegistry :: UpdateRegistryResponse -> TestTree
responseUpdateRegistry =
  res
    "UpdateRegistryResponse"
    "fixture/UpdateRegistryResponse.proto"
    glue
    (Proxy :: Proxy UpdateRegistry)

responseListMLTransforms :: ListMLTransformsResponse -> TestTree
responseListMLTransforms =
  res
    "ListMLTransformsResponse"
    "fixture/ListMLTransformsResponse.proto"
    glue
    (Proxy :: Proxy ListMLTransforms)

responseStopCrawler :: StopCrawlerResponse -> TestTree
responseStopCrawler =
  res
    "StopCrawlerResponse"
    "fixture/StopCrawlerResponse.proto"
    glue
    (Proxy :: Proxy StopCrawler)

responseStartImportLabelsTaskRun :: StartImportLabelsTaskRunResponse -> TestTree
responseStartImportLabelsTaskRun =
  res
    "StartImportLabelsTaskRunResponse"
    "fixture/StartImportLabelsTaskRunResponse.proto"
    glue
    (Proxy :: Proxy StartImportLabelsTaskRun)

responseGetResourcePolicy :: GetResourcePolicyResponse -> TestTree
responseGetResourcePolicy =
  res
    "GetResourcePolicyResponse"
    "fixture/GetResourcePolicyResponse.proto"
    glue
    (Proxy :: Proxy GetResourcePolicy)

responseQuerySchemaVersionMetadata :: QuerySchemaVersionMetadataResponse -> TestTree
responseQuerySchemaVersionMetadata =
  res
    "QuerySchemaVersionMetadataResponse"
    "fixture/QuerySchemaVersionMetadataResponse.proto"
    glue
    (Proxy :: Proxy QuerySchemaVersionMetadata)

responseDeleteRegistry :: DeleteRegistryResponse -> TestTree
responseDeleteRegistry =
  res
    "DeleteRegistryResponse"
    "fixture/DeleteRegistryResponse.proto"
    glue
    (Proxy :: Proxy DeleteRegistry)

responseGetPartitionIndexes :: GetPartitionIndexesResponse -> TestTree
responseGetPartitionIndexes =
  res
    "GetPartitionIndexesResponse"
    "fixture/GetPartitionIndexesResponse.proto"
    glue
    (Proxy :: Proxy GetPartitionIndexes)

responseStartCrawler :: StartCrawlerResponse -> TestTree
responseStartCrawler =
  res
    "StartCrawlerResponse"
    "fixture/StartCrawlerResponse.proto"
    glue
    (Proxy :: Proxy StartCrawler)

responseGetCatalogImportStatus :: GetCatalogImportStatusResponse -> TestTree
responseGetCatalogImportStatus =
  res
    "GetCatalogImportStatusResponse"
    "fixture/GetCatalogImportStatusResponse.proto"
    glue
    (Proxy :: Proxy GetCatalogImportStatus)

responseGetColumnStatisticsForPartition :: GetColumnStatisticsForPartitionResponse -> TestTree
responseGetColumnStatisticsForPartition =
  res
    "GetColumnStatisticsForPartitionResponse"
    "fixture/GetColumnStatisticsForPartitionResponse.proto"
    glue
    (Proxy :: Proxy GetColumnStatisticsForPartition)

responseCreateRegistry :: CreateRegistryResponse -> TestTree
responseCreateRegistry =
  res
    "CreateRegistryResponse"
    "fixture/CreateRegistryResponse.proto"
    glue
    (Proxy :: Proxy CreateRegistry)

responseListTriggers :: ListTriggersResponse -> TestTree
responseListTriggers =
  res
    "ListTriggersResponse"
    "fixture/ListTriggersResponse.proto"
    glue
    (Proxy :: Proxy ListTriggers)

responseCreateMLTransform :: CreateMLTransformResponse -> TestTree
responseCreateMLTransform =
  res
    "CreateMLTransformResponse"
    "fixture/CreateMLTransformResponse.proto"
    glue
    (Proxy :: Proxy CreateMLTransform)

responseStopCrawlerSchedule :: StopCrawlerScheduleResponse -> TestTree
responseStopCrawlerSchedule =
  res
    "StopCrawlerScheduleResponse"
    "fixture/StopCrawlerScheduleResponse.proto"
    glue
    (Proxy :: Proxy StopCrawlerSchedule)

responseUpdateTrigger :: UpdateTriggerResponse -> TestTree
responseUpdateTrigger =
  res
    "UpdateTriggerResponse"
    "fixture/UpdateTriggerResponse.proto"
    glue
    (Proxy :: Proxy UpdateTrigger)

responseGetSchemaByDefinition :: GetSchemaByDefinitionResponse -> TestTree
responseGetSchemaByDefinition =
  res
    "GetSchemaByDefinitionResponse"
    "fixture/GetSchemaByDefinitionResponse.proto"
    glue
    (Proxy :: Proxy GetSchemaByDefinition)

responseListRegistries :: ListRegistriesResponse -> TestTree
responseListRegistries =
  res
    "ListRegistriesResponse"
    "fixture/ListRegistriesResponse.proto"
    glue
    (Proxy :: Proxy ListRegistries)

responseStartCrawlerSchedule :: StartCrawlerScheduleResponse -> TestTree
responseStartCrawlerSchedule =
  res
    "StartCrawlerScheduleResponse"
    "fixture/StartCrawlerScheduleResponse.proto"
    glue
    (Proxy :: Proxy StartCrawlerSchedule)

responseDeleteTrigger :: DeleteTriggerResponse -> TestTree
responseDeleteTrigger =
  res
    "DeleteTriggerResponse"
    "fixture/DeleteTriggerResponse.proto"
    glue
    (Proxy :: Proxy DeleteTrigger)

responseGetJob :: GetJobResponse -> TestTree
responseGetJob =
  res
    "GetJobResponse"
    "fixture/GetJobResponse.proto"
    glue
    (Proxy :: Proxy GetJob)

responseUpdateClassifier :: UpdateClassifierResponse -> TestTree
responseUpdateClassifier =
  res
    "UpdateClassifierResponse"
    "fixture/UpdateClassifierResponse.proto"
    glue
    (Proxy :: Proxy UpdateClassifier)

responseDeleteClassifier :: DeleteClassifierResponse -> TestTree
responseDeleteClassifier =
  res
    "DeleteClassifierResponse"
    "fixture/DeleteClassifierResponse.proto"
    glue
    (Proxy :: Proxy DeleteClassifier)

responseDeleteJob :: DeleteJobResponse -> TestTree
responseDeleteJob =
  res
    "DeleteJobResponse"
    "fixture/DeleteJobResponse.proto"
    glue
    (Proxy :: Proxy DeleteJob)

responseUpdateJob :: UpdateJobResponse -> TestTree
responseUpdateJob =
  res
    "UpdateJobResponse"
    "fixture/UpdateJobResponse.proto"
    glue
    (Proxy :: Proxy UpdateJob)

responseCreateUserDefinedFunction :: CreateUserDefinedFunctionResponse -> TestTree
responseCreateUserDefinedFunction =
  res
    "CreateUserDefinedFunctionResponse"
    "fixture/CreateUserDefinedFunctionResponse.proto"
    glue
    (Proxy :: Proxy CreateUserDefinedFunction)

responseGetTrigger :: GetTriggerResponse -> TestTree
responseGetTrigger =
  res
    "GetTriggerResponse"
    "fixture/GetTriggerResponse.proto"
    glue
    (Proxy :: Proxy GetTrigger)

responseBatchGetJobs :: BatchGetJobsResponse -> TestTree
responseBatchGetJobs =
  res
    "BatchGetJobsResponse"
    "fixture/BatchGetJobsResponse.proto"
    glue
    (Proxy :: Proxy BatchGetJobs)

responseCreateClassifier :: CreateClassifierResponse -> TestTree
responseCreateClassifier =
  res
    "CreateClassifierResponse"
    "fixture/CreateClassifierResponse.proto"
    glue
    (Proxy :: Proxy CreateClassifier)

responseGetSecurityConfigurations :: GetSecurityConfigurationsResponse -> TestTree
responseGetSecurityConfigurations =
  res
    "GetSecurityConfigurationsResponse"
    "fixture/GetSecurityConfigurationsResponse.proto"
    glue
    (Proxy :: Proxy GetSecurityConfigurations)

responsePutResourcePolicy :: PutResourcePolicyResponse -> TestTree
responsePutResourcePolicy =
  res
    "PutResourcePolicyResponse"
    "fixture/PutResourcePolicyResponse.proto"
    glue
    (Proxy :: Proxy PutResourcePolicy)

responseUpdatePartition :: UpdatePartitionResponse -> TestTree
responseUpdatePartition =
  res
    "UpdatePartitionResponse"
    "fixture/UpdatePartitionResponse.proto"
    glue
    (Proxy :: Proxy UpdatePartition)

responseGetSchemaVersionsDiff :: GetSchemaVersionsDiffResponse -> TestTree
responseGetSchemaVersionsDiff =
  res
    "GetSchemaVersionsDiffResponse"
    "fixture/GetSchemaVersionsDiffResponse.proto"
    glue
    (Proxy :: Proxy GetSchemaVersionsDiff)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    glue
    (Proxy :: Proxy UntagResource)

responseBatchDeleteTable :: BatchDeleteTableResponse -> TestTree
responseBatchDeleteTable =
  res
    "BatchDeleteTableResponse"
    "fixture/BatchDeleteTableResponse.proto"
    glue
    (Proxy :: Proxy BatchDeleteTable)

responseStartMLEvaluationTaskRun :: StartMLEvaluationTaskRunResponse -> TestTree
responseStartMLEvaluationTaskRun =
  res
    "StartMLEvaluationTaskRunResponse"
    "fixture/StartMLEvaluationTaskRunResponse.proto"
    glue
    (Proxy :: Proxy StartMLEvaluationTaskRun)

responseGetDatabase :: GetDatabaseResponse -> TestTree
responseGetDatabase =
  res
    "GetDatabaseResponse"
    "fixture/GetDatabaseResponse.proto"
    glue
    (Proxy :: Proxy GetDatabase)

responseDeletePartition :: DeletePartitionResponse -> TestTree
responseDeletePartition =
  res
    "DeletePartitionResponse"
    "fixture/DeletePartitionResponse.proto"
    glue
    (Proxy :: Proxy DeletePartition)

responseGetJobRuns :: GetJobRunsResponse -> TestTree
responseGetJobRuns =
  res
    "GetJobRunsResponse"
    "fixture/GetJobRunsResponse.proto"
    glue
    (Proxy :: Proxy GetJobRuns)

responseGetMLTransforms :: GetMLTransformsResponse -> TestTree
responseGetMLTransforms =
  res
    "GetMLTransformsResponse"
    "fixture/GetMLTransformsResponse.proto"
    glue
    (Proxy :: Proxy GetMLTransforms)

responseGetJobRun :: GetJobRunResponse -> TestTree
responseGetJobRun =
  res
    "GetJobRunResponse"
    "fixture/GetJobRunResponse.proto"
    glue
    (Proxy :: Proxy GetJobRun)

responseCreateDevEndpoint :: CreateDevEndpointResponse -> TestTree
responseCreateDevEndpoint =
  res
    "CreateDevEndpointResponse"
    "fixture/CreateDevEndpointResponse.proto"
    glue
    (Proxy :: Proxy CreateDevEndpoint)

responseCreatePartitionIndex :: CreatePartitionIndexResponse -> TestTree
responseCreatePartitionIndex =
  res
    "CreatePartitionIndexResponse"
    "fixture/CreatePartitionIndexResponse.proto"
    glue
    (Proxy :: Proxy CreatePartitionIndex)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    glue
    (Proxy :: Proxy TagResource)

responseGetSecurityConfiguration :: GetSecurityConfigurationResponse -> TestTree
responseGetSecurityConfiguration =
  res
    "GetSecurityConfigurationResponse"
    "fixture/GetSecurityConfigurationResponse.proto"
    glue
    (Proxy :: Proxy GetSecurityConfiguration)

responseCreateCrawler :: CreateCrawlerResponse -> TestTree
responseCreateCrawler =
  res
    "CreateCrawlerResponse"
    "fixture/CreateCrawlerResponse.proto"
    glue
    (Proxy :: Proxy CreateCrawler)

responseGetMLTaskRuns :: GetMLTaskRunsResponse -> TestTree
responseGetMLTaskRuns =
  res
    "GetMLTaskRunsResponse"
    "fixture/GetMLTaskRunsResponse.proto"
    glue
    (Proxy :: Proxy GetMLTaskRuns)

responseListCrawlers :: ListCrawlersResponse -> TestTree
responseListCrawlers =
  res
    "ListCrawlersResponse"
    "fixture/ListCrawlersResponse.proto"
    glue
    (Proxy :: Proxy ListCrawlers)

responseUpdateDevEndpoint :: UpdateDevEndpointResponse -> TestTree
responseUpdateDevEndpoint =
  res
    "UpdateDevEndpointResponse"
    "fixture/UpdateDevEndpointResponse.proto"
    glue
    (Proxy :: Proxy UpdateDevEndpoint)

responseCreateSchema :: CreateSchemaResponse -> TestTree
responseCreateSchema =
  res
    "CreateSchemaResponse"
    "fixture/CreateSchemaResponse.proto"
    glue
    (Proxy :: Proxy CreateSchema)

responseListDevEndpoints :: ListDevEndpointsResponse -> TestTree
responseListDevEndpoints =
  res
    "ListDevEndpointsResponse"
    "fixture/ListDevEndpointsResponse.proto"
    glue
    (Proxy :: Proxy ListDevEndpoints)

responseDeleteCrawler :: DeleteCrawlerResponse -> TestTree
responseDeleteCrawler =
  res
    "DeleteCrawlerResponse"
    "fixture/DeleteCrawlerResponse.proto"
    glue
    (Proxy :: Proxy DeleteCrawler)

responseDeleteDevEndpoint :: DeleteDevEndpointResponse -> TestTree
responseDeleteDevEndpoint =
  res
    "DeleteDevEndpointResponse"
    "fixture/DeleteDevEndpointResponse.proto"
    glue
    (Proxy :: Proxy DeleteDevEndpoint)

responseGetWorkflow :: GetWorkflowResponse -> TestTree
responseGetWorkflow =
  res
    "GetWorkflowResponse"
    "fixture/GetWorkflowResponse.proto"
    glue
    (Proxy :: Proxy GetWorkflow)

responseGetSchemaVersion :: GetSchemaVersionResponse -> TestTree
responseGetSchemaVersion =
  res
    "GetSchemaVersionResponse"
    "fixture/GetSchemaVersionResponse.proto"
    glue
    (Proxy :: Proxy GetSchemaVersion)

responseUpdateCrawler :: UpdateCrawlerResponse -> TestTree
responseUpdateCrawler =
  res
    "UpdateCrawlerResponse"
    "fixture/UpdateCrawlerResponse.proto"
    glue
    (Proxy :: Proxy UpdateCrawler)

responseDeleteWorkflow :: DeleteWorkflowResponse -> TestTree
responseDeleteWorkflow =
  res
    "DeleteWorkflowResponse"
    "fixture/DeleteWorkflowResponse.proto"
    glue
    (Proxy :: Proxy DeleteWorkflow)

responseRegisterSchemaVersion :: RegisterSchemaVersionResponse -> TestTree
responseRegisterSchemaVersion =
  res
    "RegisterSchemaVersionResponse"
    "fixture/RegisterSchemaVersionResponse.proto"
    glue
    (Proxy :: Proxy RegisterSchemaVersion)

responseGetMapping :: GetMappingResponse -> TestTree
responseGetMapping =
  res
    "GetMappingResponse"
    "fixture/GetMappingResponse.proto"
    glue
    (Proxy :: Proxy GetMapping)

responseStopWorkflowRun :: StopWorkflowRunResponse -> TestTree
responseStopWorkflowRun =
  res
    "StopWorkflowRunResponse"
    "fixture/StopWorkflowRunResponse.proto"
    glue
    (Proxy :: Proxy StopWorkflowRun)

responseCreateConnection :: CreateConnectionResponse -> TestTree
responseCreateConnection =
  res
    "CreateConnectionResponse"
    "fixture/CreateConnectionResponse.proto"
    glue
    (Proxy :: Proxy CreateConnection)

responseBatchCreatePartition :: BatchCreatePartitionResponse -> TestTree
responseBatchCreatePartition =
  res
    "BatchCreatePartitionResponse"
    "fixture/BatchCreatePartitionResponse.proto"
    glue
    (Proxy :: Proxy BatchCreatePartition)

responseCreateTable :: CreateTableResponse -> TestTree
responseCreateTable =
  res
    "CreateTableResponse"
    "fixture/CreateTableResponse.proto"
    glue
    (Proxy :: Proxy CreateTable)

responseUpdateWorkflow :: UpdateWorkflowResponse -> TestTree
responseUpdateWorkflow =
  res
    "UpdateWorkflowResponse"
    "fixture/UpdateWorkflowResponse.proto"
    glue
    (Proxy :: Proxy UpdateWorkflow)

responseGetClassifiers :: GetClassifiersResponse -> TestTree
responseGetClassifiers =
  res
    "GetClassifiersResponse"
    "fixture/GetClassifiersResponse.proto"
    glue
    (Proxy :: Proxy GetClassifiers)

responseBatchStopJobRun :: BatchStopJobRunResponse -> TestTree
responseBatchStopJobRun =
  res
    "BatchStopJobRunResponse"
    "fixture/BatchStopJobRunResponse.proto"
    glue
    (Proxy :: Proxy BatchStopJobRun)

responseStartWorkflowRun :: StartWorkflowRunResponse -> TestTree
responseStartWorkflowRun =
  res
    "StartWorkflowRunResponse"
    "fixture/StartWorkflowRunResponse.proto"
    glue
    (Proxy :: Proxy StartWorkflowRun)

responseListWorkflows :: ListWorkflowsResponse -> TestTree
responseListWorkflows =
  res
    "ListWorkflowsResponse"
    "fixture/ListWorkflowsResponse.proto"
    glue
    (Proxy :: Proxy ListWorkflows)

responseListSchemaVersions :: ListSchemaVersionsResponse -> TestTree
responseListSchemaVersions =
  res
    "ListSchemaVersionsResponse"
    "fixture/ListSchemaVersionsResponse.proto"
    glue
    (Proxy :: Proxy ListSchemaVersions)

responseBatchDeletePartition :: BatchDeletePartitionResponse -> TestTree
responseBatchDeletePartition =
  res
    "BatchDeletePartitionResponse"
    "fixture/BatchDeletePartitionResponse.proto"
    glue
    (Proxy :: Proxy BatchDeletePartition)

responsePutSchemaVersionMetadata :: PutSchemaVersionMetadataResponse -> TestTree
responsePutSchemaVersionMetadata =
  res
    "PutSchemaVersionMetadataResponse"
    "fixture/PutSchemaVersionMetadataResponse.proto"
    glue
    (Proxy :: Proxy PutSchemaVersionMetadata)

responseGetWorkflowRuns :: GetWorkflowRunsResponse -> TestTree
responseGetWorkflowRuns =
  res
    "GetWorkflowRunsResponse"
    "fixture/GetWorkflowRunsResponse.proto"
    glue
    (Proxy :: Proxy GetWorkflowRuns)

responseGetTags :: GetTagsResponse -> TestTree
responseGetTags =
  res
    "GetTagsResponse"
    "fixture/GetTagsResponse.proto"
    glue
    (Proxy :: Proxy GetTags)

responseBatchUpdatePartition :: BatchUpdatePartitionResponse -> TestTree
responseBatchUpdatePartition =
  res
    "BatchUpdatePartitionResponse"
    "fixture/BatchUpdatePartitionResponse.proto"
    glue
    (Proxy :: Proxy BatchUpdatePartition)

responseGetUserDefinedFunctions :: GetUserDefinedFunctionsResponse -> TestTree
responseGetUserDefinedFunctions =
  res
    "GetUserDefinedFunctionsResponse"
    "fixture/GetUserDefinedFunctionsResponse.proto"
    glue
    (Proxy :: Proxy GetUserDefinedFunctions)

responseUpdateTable :: UpdateTableResponse -> TestTree
responseUpdateTable =
  res
    "UpdateTableResponse"
    "fixture/UpdateTableResponse.proto"
    glue
    (Proxy :: Proxy UpdateTable)

responseDeleteTable :: DeleteTableResponse -> TestTree
responseDeleteTable =
  res
    "DeleteTableResponse"
    "fixture/DeleteTableResponse.proto"
    glue
    (Proxy :: Proxy DeleteTable)

responseDeleteDatabase :: DeleteDatabaseResponse -> TestTree
responseDeleteDatabase =
  res
    "DeleteDatabaseResponse"
    "fixture/DeleteDatabaseResponse.proto"
    glue
    (Proxy :: Proxy DeleteDatabase)

responseUpdateDatabase :: UpdateDatabaseResponse -> TestTree
responseUpdateDatabase =
  res
    "UpdateDatabaseResponse"
    "fixture/UpdateDatabaseResponse.proto"
    glue
    (Proxy :: Proxy UpdateDatabase)

responseGetUserDefinedFunction :: GetUserDefinedFunctionResponse -> TestTree
responseGetUserDefinedFunction =
  res
    "GetUserDefinedFunctionResponse"
    "fixture/GetUserDefinedFunctionResponse.proto"
    glue
    (Proxy :: Proxy GetUserDefinedFunction)

responseUpdateMLTransform :: UpdateMLTransformResponse -> TestTree
responseUpdateMLTransform =
  res
    "UpdateMLTransformResponse"
    "fixture/UpdateMLTransformResponse.proto"
    glue
    (Proxy :: Proxy UpdateMLTransform)

responseGetWorkflowRun :: GetWorkflowRunResponse -> TestTree
responseGetWorkflowRun =
  res
    "GetWorkflowRunResponse"
    "fixture/GetWorkflowRunResponse.proto"
    glue
    (Proxy :: Proxy GetWorkflowRun)

responseDeleteMLTransform :: DeleteMLTransformResponse -> TestTree
responseDeleteMLTransform =
  res
    "DeleteMLTransformResponse"
    "fixture/DeleteMLTransformResponse.proto"
    glue
    (Proxy :: Proxy DeleteMLTransform)

responseCreateTrigger :: CreateTriggerResponse -> TestTree
responseCreateTrigger =
  res
    "CreateTriggerResponse"
    "fixture/CreateTriggerResponse.proto"
    glue
    (Proxy :: Proxy CreateTrigger)

responseCreateDatabase :: CreateDatabaseResponse -> TestTree
responseCreateDatabase =
  res
    "CreateDatabaseResponse"
    "fixture/CreateDatabaseResponse.proto"
    glue
    (Proxy :: Proxy CreateDatabase)

responseGetClassifier :: GetClassifierResponse -> TestTree
responseGetClassifier =
  res
    "GetClassifierResponse"
    "fixture/GetClassifierResponse.proto"
    glue
    (Proxy :: Proxy GetClassifier)

responseDeleteSchemaVersions :: DeleteSchemaVersionsResponse -> TestTree
responseDeleteSchemaVersions =
  res
    "DeleteSchemaVersionsResponse"
    "fixture/DeleteSchemaVersionsResponse.proto"
    glue
    (Proxy :: Proxy DeleteSchemaVersions)

responseBatchGetTriggers :: BatchGetTriggersResponse -> TestTree
responseBatchGetTriggers =
  res
    "BatchGetTriggersResponse"
    "fixture/BatchGetTriggersResponse.proto"
    glue
    (Proxy :: Proxy BatchGetTriggers)

responseBatchDeleteTableVersion :: BatchDeleteTableVersionResponse -> TestTree
responseBatchDeleteTableVersion =
  res
    "BatchDeleteTableVersionResponse"
    "fixture/BatchDeleteTableVersionResponse.proto"
    glue
    (Proxy :: Proxy BatchDeleteTableVersion)

responseGetTableVersions :: GetTableVersionsResponse -> TestTree
responseGetTableVersions =
  res
    "GetTableVersionsResponse"
    "fixture/GetTableVersionsResponse.proto"
    glue
    (Proxy :: Proxy GetTableVersions)

responseGetDevEndpoints :: GetDevEndpointsResponse -> TestTree
responseGetDevEndpoints =
  res
    "GetDevEndpointsResponse"
    "fixture/GetDevEndpointsResponse.proto"
    glue
    (Proxy :: Proxy GetDevEndpoints)

responseGetCrawlers :: GetCrawlersResponse -> TestTree
responseGetCrawlers =
  res
    "GetCrawlersResponse"
    "fixture/GetCrawlersResponse.proto"
    glue
    (Proxy :: Proxy GetCrawlers)

responseStartJobRun :: StartJobRunResponse -> TestTree
responseStartJobRun =
  res
    "StartJobRunResponse"
    "fixture/StartJobRunResponse.proto"
    glue
    (Proxy :: Proxy StartJobRun)

responseImportCatalogToGlue :: ImportCatalogToGlueResponse -> TestTree
responseImportCatalogToGlue =
  res
    "ImportCatalogToGlueResponse"
    "fixture/ImportCatalogToGlueResponse.proto"
    glue
    (Proxy :: Proxy ImportCatalogToGlue)

responseCreatePartition :: CreatePartitionResponse -> TestTree
responseCreatePartition =
  res
    "CreatePartitionResponse"
    "fixture/CreatePartitionResponse.proto"
    glue
    (Proxy :: Proxy CreatePartition)

responseResetJobBookmark :: ResetJobBookmarkResponse -> TestTree
responseResetJobBookmark =
  res
    "ResetJobBookmarkResponse"
    "fixture/ResetJobBookmarkResponse.proto"
    glue
    (Proxy :: Proxy ResetJobBookmark)

responseListJobs :: ListJobsResponse -> TestTree
responseListJobs =
  res
    "ListJobsResponse"
    "fixture/ListJobsResponse.proto"
    glue
    (Proxy :: Proxy ListJobs)

responseBatchDeleteConnection :: BatchDeleteConnectionResponse -> TestTree
responseBatchDeleteConnection =
  res
    "BatchDeleteConnectionResponse"
    "fixture/BatchDeleteConnectionResponse.proto"
    glue
    (Proxy :: Proxy BatchDeleteConnection)

responseGetTables :: GetTablesResponse -> TestTree
responseGetTables =
  res
    "GetTablesResponse"
    "fixture/GetTablesResponse.proto"
    glue
    (Proxy :: Proxy GetTables)

responseDeleteColumnStatisticsForPartition :: DeleteColumnStatisticsForPartitionResponse -> TestTree
responseDeleteColumnStatisticsForPartition =
  res
    "DeleteColumnStatisticsForPartitionResponse"
    "fixture/DeleteColumnStatisticsForPartitionResponse.proto"
    glue
    (Proxy :: Proxy DeleteColumnStatisticsForPartition)

responseDeleteResourcePolicy :: DeleteResourcePolicyResponse -> TestTree
responseDeleteResourcePolicy =
  res
    "DeleteResourcePolicyResponse"
    "fixture/DeleteResourcePolicyResponse.proto"
    glue
    (Proxy :: Proxy DeleteResourcePolicy)

responseGetRegistry :: GetRegistryResponse -> TestTree
responseGetRegistry =
  res
    "GetRegistryResponse"
    "fixture/GetRegistryResponse.proto"
    glue
    (Proxy :: Proxy GetRegistry)

responseResumeWorkflowRun :: ResumeWorkflowRunResponse -> TestTree
responseResumeWorkflowRun =
  res
    "ResumeWorkflowRunResponse"
    "fixture/ResumeWorkflowRunResponse.proto"
    glue
    (Proxy :: Proxy ResumeWorkflowRun)

responseCancelMLTaskRun :: CancelMLTaskRunResponse -> TestTree
responseCancelMLTaskRun =
  res
    "CancelMLTaskRunResponse"
    "fixture/CancelMLTaskRunResponse.proto"
    glue
    (Proxy :: Proxy CancelMLTaskRun)

responseCreateJob :: CreateJobResponse -> TestTree
responseCreateJob =
  res
    "CreateJobResponse"
    "fixture/CreateJobResponse.proto"
    glue
    (Proxy :: Proxy CreateJob)

responseSearchTables :: SearchTablesResponse -> TestTree
responseSearchTables =
  res
    "SearchTablesResponse"
    "fixture/SearchTablesResponse.proto"
    glue
    (Proxy :: Proxy SearchTables)

responseUpdateUserDefinedFunction :: UpdateUserDefinedFunctionResponse -> TestTree
responseUpdateUserDefinedFunction =
  res
    "UpdateUserDefinedFunctionResponse"
    "fixture/UpdateUserDefinedFunctionResponse.proto"
    glue
    (Proxy :: Proxy UpdateUserDefinedFunction)

responseUpdateColumnStatisticsForPartition :: UpdateColumnStatisticsForPartitionResponse -> TestTree
responseUpdateColumnStatisticsForPartition =
  res
    "UpdateColumnStatisticsForPartitionResponse"
    "fixture/UpdateColumnStatisticsForPartitionResponse.proto"
    glue
    (Proxy :: Proxy UpdateColumnStatisticsForPartition)

responseGetConnections :: GetConnectionsResponse -> TestTree
responseGetConnections =
  res
    "GetConnectionsResponse"
    "fixture/GetConnectionsResponse.proto"
    glue
    (Proxy :: Proxy GetConnections)

responseGetMLTransform :: GetMLTransformResponse -> TestTree
responseGetMLTransform =
  res
    "GetMLTransformResponse"
    "fixture/GetMLTransformResponse.proto"
    glue
    (Proxy :: Proxy GetMLTransform)

responseCreateScript :: CreateScriptResponse -> TestTree
responseCreateScript =
  res
    "CreateScriptResponse"
    "fixture/CreateScriptResponse.proto"
    glue
    (Proxy :: Proxy CreateScript)

responseGetMLTaskRun :: GetMLTaskRunResponse -> TestTree
responseGetMLTaskRun =
  res
    "GetMLTaskRunResponse"
    "fixture/GetMLTaskRunResponse.proto"
    glue
    (Proxy :: Proxy GetMLTaskRun)

responseDeleteUserDefinedFunction :: DeleteUserDefinedFunctionResponse -> TestTree
responseDeleteUserDefinedFunction =
  res
    "DeleteUserDefinedFunctionResponse"
    "fixture/DeleteUserDefinedFunctionResponse.proto"
    glue
    (Proxy :: Proxy DeleteUserDefinedFunction)

responseStartTrigger :: StartTriggerResponse -> TestTree
responseStartTrigger =
  res
    "StartTriggerResponse"
    "fixture/StartTriggerResponse.proto"
    glue
    (Proxy :: Proxy StartTrigger)

responsePutDataCatalogEncryptionSettings :: PutDataCatalogEncryptionSettingsResponse -> TestTree
responsePutDataCatalogEncryptionSettings =
  res
    "PutDataCatalogEncryptionSettingsResponse"
    "fixture/PutDataCatalogEncryptionSettingsResponse.proto"
    glue
    (Proxy :: Proxy PutDataCatalogEncryptionSettings)

responseRemoveSchemaVersionMetadata :: RemoveSchemaVersionMetadataResponse -> TestTree
responseRemoveSchemaVersionMetadata =
  res
    "RemoveSchemaVersionMetadataResponse"
    "fixture/RemoveSchemaVersionMetadataResponse.proto"
    glue
    (Proxy :: Proxy RemoveSchemaVersionMetadata)

responseBatchGetPartition :: BatchGetPartitionResponse -> TestTree
responseBatchGetPartition =
  res
    "BatchGetPartitionResponse"
    "fixture/BatchGetPartitionResponse.proto"
    glue
    (Proxy :: Proxy BatchGetPartition)

responseGetTable :: GetTableResponse -> TestTree
responseGetTable =
  res
    "GetTableResponse"
    "fixture/GetTableResponse.proto"
    glue
    (Proxy :: Proxy GetTable)

responseUpdateCrawlerSchedule :: UpdateCrawlerScheduleResponse -> TestTree
responseUpdateCrawlerSchedule =
  res
    "UpdateCrawlerScheduleResponse"
    "fixture/UpdateCrawlerScheduleResponse.proto"
    glue
    (Proxy :: Proxy UpdateCrawlerSchedule)

responseGetColumnStatisticsForTable :: GetColumnStatisticsForTableResponse -> TestTree
responseGetColumnStatisticsForTable =
  res
    "GetColumnStatisticsForTableResponse"
    "fixture/GetColumnStatisticsForTableResponse.proto"
    glue
    (Proxy :: Proxy GetColumnStatisticsForTable)

responseStopTrigger :: StopTriggerResponse -> TestTree
responseStopTrigger =
  res
    "StopTriggerResponse"
    "fixture/StopTriggerResponse.proto"
    glue
    (Proxy :: Proxy StopTrigger)

responseListSchemas :: ListSchemasResponse -> TestTree
responseListSchemas =
  res
    "ListSchemasResponse"
    "fixture/ListSchemasResponse.proto"
    glue
    (Proxy :: Proxy ListSchemas)

responseGetConnection :: GetConnectionResponse -> TestTree
responseGetConnection =
  res
    "GetConnectionResponse"
    "fixture/GetConnectionResponse.proto"
    glue
    (Proxy :: Proxy GetConnection)

responseGetDatabases :: GetDatabasesResponse -> TestTree
responseGetDatabases =
  res
    "GetDatabasesResponse"
    "fixture/GetDatabasesResponse.proto"
    glue
    (Proxy :: Proxy GetDatabases)

responseDeleteSchema :: DeleteSchemaResponse -> TestTree
responseDeleteSchema =
  res
    "DeleteSchemaResponse"
    "fixture/DeleteSchemaResponse.proto"
    glue
    (Proxy :: Proxy DeleteSchema)

responseUpdateSchema :: UpdateSchemaResponse -> TestTree
responseUpdateSchema =
  res
    "UpdateSchemaResponse"
    "fixture/UpdateSchemaResponse.proto"
    glue
    (Proxy :: Proxy UpdateSchema)

responseGetDataflowGraph :: GetDataflowGraphResponse -> TestTree
responseGetDataflowGraph =
  res
    "GetDataflowGraphResponse"
    "fixture/GetDataflowGraphResponse.proto"
    glue
    (Proxy :: Proxy GetDataflowGraph)

responseBatchGetDevEndpoints :: BatchGetDevEndpointsResponse -> TestTree
responseBatchGetDevEndpoints =
  res
    "BatchGetDevEndpointsResponse"
    "fixture/BatchGetDevEndpointsResponse.proto"
    glue
    (Proxy :: Proxy BatchGetDevEndpoints)

responseStartExportLabelsTaskRun :: StartExportLabelsTaskRunResponse -> TestTree
responseStartExportLabelsTaskRun =
  res
    "StartExportLabelsTaskRunResponse"
    "fixture/StartExportLabelsTaskRunResponse.proto"
    glue
    (Proxy :: Proxy StartExportLabelsTaskRun)

responseGetTriggers :: GetTriggersResponse -> TestTree
responseGetTriggers =
  res
    "GetTriggersResponse"
    "fixture/GetTriggersResponse.proto"
    glue
    (Proxy :: Proxy GetTriggers)

responseBatchGetCrawlers :: BatchGetCrawlersResponse -> TestTree
responseBatchGetCrawlers =
  res
    "BatchGetCrawlersResponse"
    "fixture/BatchGetCrawlersResponse.proto"
    glue
    (Proxy :: Proxy BatchGetCrawlers)

responseGetPlan :: GetPlanResponse -> TestTree
responseGetPlan =
  res
    "GetPlanResponse"
    "fixture/GetPlanResponse.proto"
    glue
    (Proxy :: Proxy GetPlan)

responseGetCrawlerMetrics :: GetCrawlerMetricsResponse -> TestTree
responseGetCrawlerMetrics =
  res
    "GetCrawlerMetricsResponse"
    "fixture/GetCrawlerMetricsResponse.proto"
    glue
    (Proxy :: Proxy GetCrawlerMetrics)

responseGetWorkflowRunProperties :: GetWorkflowRunPropertiesResponse -> TestTree
responseGetWorkflowRunProperties =
  res
    "GetWorkflowRunPropertiesResponse"
    "fixture/GetWorkflowRunPropertiesResponse.proto"
    glue
    (Proxy :: Proxy GetWorkflowRunProperties)

responseDeletePartitionIndex :: DeletePartitionIndexResponse -> TestTree
responseDeletePartitionIndex =
  res
    "DeletePartitionIndexResponse"
    "fixture/DeletePartitionIndexResponse.proto"
    glue
    (Proxy :: Proxy DeletePartitionIndex)

responseGetJobBookmark :: GetJobBookmarkResponse -> TestTree
responseGetJobBookmark =
  res
    "GetJobBookmarkResponse"
    "fixture/GetJobBookmarkResponse.proto"
    glue
    (Proxy :: Proxy GetJobBookmark)

responseDeleteTableVersion :: DeleteTableVersionResponse -> TestTree
responseDeleteTableVersion =
  res
    "DeleteTableVersionResponse"
    "fixture/DeleteTableVersionResponse.proto"
    glue
    (Proxy :: Proxy DeleteTableVersion)

responseGetTableVersion :: GetTableVersionResponse -> TestTree
responseGetTableVersion =
  res
    "GetTableVersionResponse"
    "fixture/GetTableVersionResponse.proto"
    glue
    (Proxy :: Proxy GetTableVersion)

responsePutWorkflowRunProperties :: PutWorkflowRunPropertiesResponse -> TestTree
responsePutWorkflowRunProperties =
  res
    "PutWorkflowRunPropertiesResponse"
    "fixture/PutWorkflowRunPropertiesResponse.proto"
    glue
    (Proxy :: Proxy PutWorkflowRunProperties)

responseBatchGetWorkflows :: BatchGetWorkflowsResponse -> TestTree
responseBatchGetWorkflows =
  res
    "BatchGetWorkflowsResponse"
    "fixture/BatchGetWorkflowsResponse.proto"
    glue
    (Proxy :: Proxy BatchGetWorkflows)

responseGetResourcePolicies :: GetResourcePoliciesResponse -> TestTree
responseGetResourcePolicies =
  res
    "GetResourcePoliciesResponse"
    "fixture/GetResourcePoliciesResponse.proto"
    glue
    (Proxy :: Proxy GetResourcePolicies)

responseGetJobs :: GetJobsResponse -> TestTree
responseGetJobs =
  res
    "GetJobsResponse"
    "fixture/GetJobsResponse.proto"
    glue
    (Proxy :: Proxy GetJobs)

responseGetDevEndpoint :: GetDevEndpointResponse -> TestTree
responseGetDevEndpoint =
  res
    "GetDevEndpointResponse"
    "fixture/GetDevEndpointResponse.proto"
    glue
    (Proxy :: Proxy GetDevEndpoint)

responseGetCrawler :: GetCrawlerResponse -> TestTree
responseGetCrawler =
  res
    "GetCrawlerResponse"
    "fixture/GetCrawlerResponse.proto"
    glue
    (Proxy :: Proxy GetCrawler)

responseCreateSecurityConfiguration :: CreateSecurityConfigurationResponse -> TestTree
responseCreateSecurityConfiguration =
  res
    "CreateSecurityConfigurationResponse"
    "fixture/CreateSecurityConfigurationResponse.proto"
    glue
    (Proxy :: Proxy CreateSecurityConfiguration)
