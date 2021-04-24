{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.SSM
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.SSM where

import Data.Proxy
import Network.AWS.SSM
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.AWS.SSM.Internal
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestListResourceComplianceSummaries $
--             listResourceComplianceSummaries
--
--         , requestDescribePatchGroups $
--             describePatchGroups
--
--         , requestDescribeOpsItems $
--             describeOpsItems
--
--         , requestTerminateSession $
--             terminateSession
--
--         , requestGetParameter $
--             getParameter
--
--         , requestGetOpsMetadata $
--             getOpsMetadata
--
--         , requestUpdateDocumentDefaultVersion $
--             updateDocumentDefaultVersion
--
--         , requestListResourceDataSync $
--             listResourceDataSync
--
--         , requestDescribeParameters $
--             describeParameters
--
--         , requestRegisterTaskWithMaintenanceWindow $
--             registerTaskWithMaintenanceWindow
--
--         , requestGetOpsItem $
--             getOpsItem
--
--         , requestGetInventory $
--             getInventory
--
--         , requestDescribeAssociation $
--             describeAssociation
--
--         , requestUpdateAssociationStatus $
--             updateAssociationStatus
--
--         , requestDeregisterManagedInstance $
--             deregisterManagedInstance
--
--         , requestDescribeAssociationExecutionTargets $
--             describeAssociationExecutionTargets
--
--         , requestUpdateMaintenanceWindowTarget $
--             updateMaintenanceWindowTarget
--
--         , requestDescribeAutomationStepExecutions $
--             describeAutomationStepExecutions
--
--         , requestCreatePatchBaseline $
--             createPatchBaseline
--
--         , requestGetCommandInvocation $
--             getCommandInvocation
--
--         , requestListCommands $
--             listCommands
--
--         , requestDeregisterTargetFromMaintenanceWindow $
--             deregisterTargetFromMaintenanceWindow
--
--         , requestDescribeInstancePatchStates $
--             describeInstancePatchStates
--
--         , requestUpdateDocument $
--             updateDocument
--
--         , requestListDocuments $
--             listDocuments
--
--         , requestResetServiceSetting $
--             resetServiceSetting
--
--         , requestStartSession $
--             startSession
--
--         , requestGetOpsSummary $
--             getOpsSummary
--
--         , requestDeleteDocument $
--             deleteDocument
--
--         , requestDeleteInventory $
--             deleteInventory
--
--         , requestDeleteParameters $
--             deleteParameters
--
--         , requestListOpsMetadata $
--             listOpsMetadata
--
--         , requestSendCommand $
--             sendCommand
--
--         , requestRemoveTagsFromResource $
--             removeTagsFromResource
--
--         , requestDescribeEffectiveInstanceAssociations $
--             describeEffectiveInstanceAssociations
--
--         , requestCreateDocument $
--             createDocument
--
--         , requestGetCalendarState $
--             getCalendarState
--
--         , requestRegisterTargetWithMaintenanceWindow $
--             registerTargetWithMaintenanceWindow
--
--         , requestDescribeSessions $
--             describeSessions
--
--         , requestDeleteOpsMetadata $
--             deleteOpsMetadata
--
--         , requestUpdateOpsItem $
--             updateOpsItem
--
--         , requestDeleteAssociation $
--             deleteAssociation
--
--         , requestUpdateAssociation $
--             updateAssociation
--
--         , requestUpdateOpsMetadata $
--             updateOpsMetadata
--
--         , requestDescribeInstanceInformation $
--             describeInstanceInformation
--
--         , requestDescribeMaintenanceWindowExecutionTaskInvocations $
--             describeMaintenanceWindowExecutionTaskInvocations
--
--         , requestDeleteParameter $
--             deleteParameter
--
--         , requestGetMaintenanceWindowExecutionTaskInvocation $
--             getMaintenanceWindowExecutionTaskInvocation
--
--         , requestCreateActivation $
--             createActivation
--
--         , requestCreateOpsMetadata $
--             createOpsMetadata
--
--         , requestSendAutomationSignal $
--             sendAutomationSignal
--
--         , requestListComplianceSummaries $
--             listComplianceSummaries
--
--         , requestDescribeMaintenanceWindowExecutions $
--             describeMaintenanceWindowExecutions
--
--         , requestDescribeMaintenanceWindowsForTarget $
--             describeMaintenanceWindowsForTarget
--
--         , requestCreateAssociation $
--             createAssociation
--
--         , requestCreateOpsItem $
--             createOpsItem
--
--         , requestStartChangeRequestExecution $
--             startChangeRequestExecution
--
--         , requestListAssociationVersions $
--             listAssociationVersions
--
--         , requestDescribeDocument $
--             describeDocument
--
--         , requestDeregisterTaskFromMaintenanceWindow $
--             deregisterTaskFromMaintenanceWindow
--
--         , requestPutComplianceItems $
--             putComplianceItems
--
--         , requestGetMaintenanceWindowTask $
--             getMaintenanceWindowTask
--
--         , requestGetDeployablePatchSnapshotForInstance $
--             getDeployablePatchSnapshotForInstance
--
--         , requestGetMaintenanceWindow $
--             getMaintenanceWindow
--
--         , requestDeregisterPatchBaselineForPatchGroup $
--             deregisterPatchBaselineForPatchGroup
--
--         , requestResumeSession $
--             resumeSession
--
--         , requestRegisterDefaultPatchBaseline $
--             registerDefaultPatchBaseline
--
--         , requestDescribeMaintenanceWindows $
--             describeMaintenanceWindows
--
--         , requestModifyDocumentPermission $
--             modifyDocumentPermission
--
--         , requestDescribeInstancePatches $
--             describeInstancePatches
--
--         , requestGetParameters $
--             getParameters
--
--         , requestListDocumentVersions $
--             listDocumentVersions
--
--         , requestUpdateResourceDataSync $
--             updateResourceDataSync
--
--         , requestDeletePatchBaseline $
--             deletePatchBaseline
--
--         , requestListOpsItemEvents $
--             listOpsItemEvents
--
--         , requestDeleteResourceDataSync $
--             deleteResourceDataSync
--
--         , requestDescribeInstancePatchStatesForPatchGroup $
--             describeInstancePatchStatesForPatchGroup
--
--         , requestGetConnectionStatus $
--             getConnectionStatus
--
--         , requestUpdatePatchBaseline $
--             updatePatchBaseline
--
--         , requestDescribeAvailablePatches $
--             describeAvailablePatches
--
--         , requestListComplianceItems $
--             listComplianceItems
--
--         , requestGetDocument $
--             getDocument
--
--         , requestAddTagsToResource $
--             addTagsToResource
--
--         , requestGetPatchBaselineForPatchGroup $
--             getPatchBaselineForPatchGroup
--
--         , requestUpdateManagedInstanceRole $
--             updateManagedInstanceRole
--
--         , requestDescribeMaintenanceWindowSchedule $
--             describeMaintenanceWindowSchedule
--
--         , requestCreateResourceDataSync $
--             createResourceDataSync
--
--         , requestCreateAssociationBatch $
--             createAssociationBatch
--
--         , requestCancelCommand $
--             cancelCommand
--
--         , requestDescribeDocumentPermission $
--             describeDocumentPermission
--
--         , requestRegisterPatchBaselineForPatchGroup $
--             registerPatchBaselineForPatchGroup
--
--         , requestDescribeEffectivePatchesForPatchBaseline $
--             describeEffectivePatchesForPatchBaseline
--
--         , requestListCommandInvocations $
--             listCommandInvocations
--
--         , requestDescribeMaintenanceWindowTargets $
--             describeMaintenanceWindowTargets
--
--         , requestGetAutomationExecution $
--             getAutomationExecution
--
--         , requestGetPatchBaseline $
--             getPatchBaseline
--
--         , requestDescribePatchGroupState $
--             describePatchGroupState
--
--         , requestDescribePatchBaselines $
--             describePatchBaselines
--
--         , requestUpdateDocumentMetadata $
--             updateDocumentMetadata
--
--         , requestDescribeAutomationExecutions $
--             describeAutomationExecutions
--
--         , requestPutInventory $
--             putInventory
--
--         , requestDescribeInventoryDeletions $
--             describeInventoryDeletions
--
--         , requestDescribeMaintenanceWindowExecutionTasks $
--             describeMaintenanceWindowExecutionTasks
--
--         , requestDeleteMaintenanceWindow $
--             deleteMaintenanceWindow
--
--         , requestGetDefaultPatchBaseline $
--             getDefaultPatchBaseline
--
--         , requestPutParameter $
--             putParameter
--
--         , requestUpdateMaintenanceWindow $
--             updateMaintenanceWindow
--
--         , requestListAssociations $
--             listAssociations
--
--         , requestGetMaintenanceWindowExecutionTask $
--             getMaintenanceWindowExecutionTask
--
--         , requestStartAutomationExecution $
--             startAutomationExecution
--
--         , requestDeleteActivation $
--             deleteActivation
--
--         , requestCreateMaintenanceWindow $
--             createMaintenanceWindow
--
--         , requestDescribeAssociationExecutions $
--             describeAssociationExecutions
--
--         , requestGetMaintenanceWindowExecution $
--             getMaintenanceWindowExecution
--
--         , requestStopAutomationExecution $
--             stopAutomationExecution
--
--         , requestGetInventorySchema $
--             getInventorySchema
--
--         , requestStartAssociationsOnce $
--             startAssociationsOnce
--
--         , requestCancelMaintenanceWindowExecution $
--             cancelMaintenanceWindowExecution
--
--         , requestLabelParameterVersion $
--             labelParameterVersion
--
--         , requestGetParameterHistory $
--             getParameterHistory
--
--         , requestGetServiceSetting $
--             getServiceSetting
--
--         , requestUpdateMaintenanceWindowTask $
--             updateMaintenanceWindowTask
--
--         , requestListDocumentMetadataHistory $
--             listDocumentMetadataHistory
--
--         , requestListInventoryEntries $
--             listInventoryEntries
--
--         , requestListTagsForResource $
--             listTagsForResource
--
--         , requestGetParametersByPath $
--             getParametersByPath
--
--         , requestDescribeActivations $
--             describeActivations
--
--         , requestDescribeInstanceAssociationsStatus $
--             describeInstanceAssociationsStatus
--
--         , requestDescribePatchProperties $
--             describePatchProperties
--
--         , requestUpdateServiceSetting $
--             updateServiceSetting
--
--         , requestDescribeMaintenanceWindowTasks $
--             describeMaintenanceWindowTasks
--
--           ]

--     , testGroup "response"
--         [ responseListResourceComplianceSummaries $
--             listResourceComplianceSummariesResponse
--
--         , responseDescribePatchGroups $
--             describePatchGroupsResponse
--
--         , responseDescribeOpsItems $
--             describeOpsItemsResponse
--
--         , responseTerminateSession $
--             terminateSessionResponse
--
--         , responseGetParameter $
--             getParameterResponse
--
--         , responseGetOpsMetadata $
--             getOpsMetadataResponse
--
--         , responseUpdateDocumentDefaultVersion $
--             updateDocumentDefaultVersionResponse
--
--         , responseListResourceDataSync $
--             listResourceDataSyncResponse
--
--         , responseDescribeParameters $
--             describeParametersResponse
--
--         , responseRegisterTaskWithMaintenanceWindow $
--             registerTaskWithMaintenanceWindowResponse
--
--         , responseGetOpsItem $
--             getOpsItemResponse
--
--         , responseGetInventory $
--             getInventoryResponse
--
--         , responseDescribeAssociation $
--             describeAssociationResponse
--
--         , responseUpdateAssociationStatus $
--             updateAssociationStatusResponse
--
--         , responseDeregisterManagedInstance $
--             deregisterManagedInstanceResponse
--
--         , responseDescribeAssociationExecutionTargets $
--             describeAssociationExecutionTargetsResponse
--
--         , responseUpdateMaintenanceWindowTarget $
--             updateMaintenanceWindowTargetResponse
--
--         , responseDescribeAutomationStepExecutions $
--             describeAutomationStepExecutionsResponse
--
--         , responseCreatePatchBaseline $
--             createPatchBaselineResponse
--
--         , responseGetCommandInvocation $
--             getCommandInvocationResponse
--
--         , responseListCommands $
--             listCommandsResponse
--
--         , responseDeregisterTargetFromMaintenanceWindow $
--             deregisterTargetFromMaintenanceWindowResponse
--
--         , responseDescribeInstancePatchStates $
--             describeInstancePatchStatesResponse
--
--         , responseUpdateDocument $
--             updateDocumentResponse
--
--         , responseListDocuments $
--             listDocumentsResponse
--
--         , responseResetServiceSetting $
--             resetServiceSettingResponse
--
--         , responseStartSession $
--             startSessionResponse
--
--         , responseGetOpsSummary $
--             getOpsSummaryResponse
--
--         , responseDeleteDocument $
--             deleteDocumentResponse
--
--         , responseDeleteInventory $
--             deleteInventoryResponse
--
--         , responseDeleteParameters $
--             deleteParametersResponse
--
--         , responseListOpsMetadata $
--             listOpsMetadataResponse
--
--         , responseSendCommand $
--             sendCommandResponse
--
--         , responseRemoveTagsFromResource $
--             removeTagsFromResourceResponse
--
--         , responseDescribeEffectiveInstanceAssociations $
--             describeEffectiveInstanceAssociationsResponse
--
--         , responseCreateDocument $
--             createDocumentResponse
--
--         , responseGetCalendarState $
--             getCalendarStateResponse
--
--         , responseRegisterTargetWithMaintenanceWindow $
--             registerTargetWithMaintenanceWindowResponse
--
--         , responseDescribeSessions $
--             describeSessionsResponse
--
--         , responseDeleteOpsMetadata $
--             deleteOpsMetadataResponse
--
--         , responseUpdateOpsItem $
--             updateOpsItemResponse
--
--         , responseDeleteAssociation $
--             deleteAssociationResponse
--
--         , responseUpdateAssociation $
--             updateAssociationResponse
--
--         , responseUpdateOpsMetadata $
--             updateOpsMetadataResponse
--
--         , responseDescribeInstanceInformation $
--             describeInstanceInformationResponse
--
--         , responseDescribeMaintenanceWindowExecutionTaskInvocations $
--             describeMaintenanceWindowExecutionTaskInvocationsResponse
--
--         , responseDeleteParameter $
--             deleteParameterResponse
--
--         , responseGetMaintenanceWindowExecutionTaskInvocation $
--             getMaintenanceWindowExecutionTaskInvocationResponse
--
--         , responseCreateActivation $
--             createActivationResponse
--
--         , responseCreateOpsMetadata $
--             createOpsMetadataResponse
--
--         , responseSendAutomationSignal $
--             sendAutomationSignalResponse
--
--         , responseListComplianceSummaries $
--             listComplianceSummariesResponse
--
--         , responseDescribeMaintenanceWindowExecutions $
--             describeMaintenanceWindowExecutionsResponse
--
--         , responseDescribeMaintenanceWindowsForTarget $
--             describeMaintenanceWindowsForTargetResponse
--
--         , responseCreateAssociation $
--             createAssociationResponse
--
--         , responseCreateOpsItem $
--             createOpsItemResponse
--
--         , responseStartChangeRequestExecution $
--             startChangeRequestExecutionResponse
--
--         , responseListAssociationVersions $
--             listAssociationVersionsResponse
--
--         , responseDescribeDocument $
--             describeDocumentResponse
--
--         , responseDeregisterTaskFromMaintenanceWindow $
--             deregisterTaskFromMaintenanceWindowResponse
--
--         , responsePutComplianceItems $
--             putComplianceItemsResponse
--
--         , responseGetMaintenanceWindowTask $
--             getMaintenanceWindowTaskResponse
--
--         , responseGetDeployablePatchSnapshotForInstance $
--             getDeployablePatchSnapshotForInstanceResponse
--
--         , responseGetMaintenanceWindow $
--             getMaintenanceWindowResponse
--
--         , responseDeregisterPatchBaselineForPatchGroup $
--             deregisterPatchBaselineForPatchGroupResponse
--
--         , responseResumeSession $
--             resumeSessionResponse
--
--         , responseRegisterDefaultPatchBaseline $
--             registerDefaultPatchBaselineResponse
--
--         , responseDescribeMaintenanceWindows $
--             describeMaintenanceWindowsResponse
--
--         , responseModifyDocumentPermission $
--             modifyDocumentPermissionResponse
--
--         , responseDescribeInstancePatches $
--             describeInstancePatchesResponse
--
--         , responseGetParameters $
--             getParametersResponse
--
--         , responseListDocumentVersions $
--             listDocumentVersionsResponse
--
--         , responseUpdateResourceDataSync $
--             updateResourceDataSyncResponse
--
--         , responseDeletePatchBaseline $
--             deletePatchBaselineResponse
--
--         , responseListOpsItemEvents $
--             listOpsItemEventsResponse
--
--         , responseDeleteResourceDataSync $
--             deleteResourceDataSyncResponse
--
--         , responseDescribeInstancePatchStatesForPatchGroup $
--             describeInstancePatchStatesForPatchGroupResponse
--
--         , responseGetConnectionStatus $
--             getConnectionStatusResponse
--
--         , responseUpdatePatchBaseline $
--             updatePatchBaselineResponse
--
--         , responseDescribeAvailablePatches $
--             describeAvailablePatchesResponse
--
--         , responseListComplianceItems $
--             listComplianceItemsResponse
--
--         , responseGetDocument $
--             getDocumentResponse
--
--         , responseAddTagsToResource $
--             addTagsToResourceResponse
--
--         , responseGetPatchBaselineForPatchGroup $
--             getPatchBaselineForPatchGroupResponse
--
--         , responseUpdateManagedInstanceRole $
--             updateManagedInstanceRoleResponse
--
--         , responseDescribeMaintenanceWindowSchedule $
--             describeMaintenanceWindowScheduleResponse
--
--         , responseCreateResourceDataSync $
--             createResourceDataSyncResponse
--
--         , responseCreateAssociationBatch $
--             createAssociationBatchResponse
--
--         , responseCancelCommand $
--             cancelCommandResponse
--
--         , responseDescribeDocumentPermission $
--             describeDocumentPermissionResponse
--
--         , responseRegisterPatchBaselineForPatchGroup $
--             registerPatchBaselineForPatchGroupResponse
--
--         , responseDescribeEffectivePatchesForPatchBaseline $
--             describeEffectivePatchesForPatchBaselineResponse
--
--         , responseListCommandInvocations $
--             listCommandInvocationsResponse
--
--         , responseDescribeMaintenanceWindowTargets $
--             describeMaintenanceWindowTargetsResponse
--
--         , responseGetAutomationExecution $
--             getAutomationExecutionResponse
--
--         , responseGetPatchBaseline $
--             getPatchBaselineResponse
--
--         , responseDescribePatchGroupState $
--             describePatchGroupStateResponse
--
--         , responseDescribePatchBaselines $
--             describePatchBaselinesResponse
--
--         , responseUpdateDocumentMetadata $
--             updateDocumentMetadataResponse
--
--         , responseDescribeAutomationExecutions $
--             describeAutomationExecutionsResponse
--
--         , responsePutInventory $
--             putInventoryResponse
--
--         , responseDescribeInventoryDeletions $
--             describeInventoryDeletionsResponse
--
--         , responseDescribeMaintenanceWindowExecutionTasks $
--             describeMaintenanceWindowExecutionTasksResponse
--
--         , responseDeleteMaintenanceWindow $
--             deleteMaintenanceWindowResponse
--
--         , responseGetDefaultPatchBaseline $
--             getDefaultPatchBaselineResponse
--
--         , responsePutParameter $
--             putParameterResponse
--
--         , responseUpdateMaintenanceWindow $
--             updateMaintenanceWindowResponse
--
--         , responseListAssociations $
--             listAssociationsResponse
--
--         , responseGetMaintenanceWindowExecutionTask $
--             getMaintenanceWindowExecutionTaskResponse
--
--         , responseStartAutomationExecution $
--             startAutomationExecutionResponse
--
--         , responseDeleteActivation $
--             deleteActivationResponse
--
--         , responseCreateMaintenanceWindow $
--             createMaintenanceWindowResponse
--
--         , responseDescribeAssociationExecutions $
--             describeAssociationExecutionsResponse
--
--         , responseGetMaintenanceWindowExecution $
--             getMaintenanceWindowExecutionResponse
--
--         , responseStopAutomationExecution $
--             stopAutomationExecutionResponse
--
--         , responseGetInventorySchema $
--             getInventorySchemaResponse
--
--         , responseStartAssociationsOnce $
--             startAssociationsOnceResponse
--
--         , responseCancelMaintenanceWindowExecution $
--             cancelMaintenanceWindowExecutionResponse
--
--         , responseLabelParameterVersion $
--             labelParameterVersionResponse
--
--         , responseGetParameterHistory $
--             getParameterHistoryResponse
--
--         , responseGetServiceSetting $
--             getServiceSettingResponse
--
--         , responseUpdateMaintenanceWindowTask $
--             updateMaintenanceWindowTaskResponse
--
--         , responseListDocumentMetadataHistory $
--             listDocumentMetadataHistoryResponse
--
--         , responseListInventoryEntries $
--             listInventoryEntriesResponse
--
--         , responseListTagsForResource $
--             listTagsForResourceResponse
--
--         , responseGetParametersByPath $
--             getParametersByPathResponse
--
--         , responseDescribeActivations $
--             describeActivationsResponse
--
--         , responseDescribeInstanceAssociationsStatus $
--             describeInstanceAssociationsStatusResponse
--
--         , responseDescribePatchProperties $
--             describePatchPropertiesResponse
--
--         , responseUpdateServiceSetting $
--             updateServiceSettingResponse
--
--         , responseDescribeMaintenanceWindowTasks $
--             describeMaintenanceWindowTasksResponse
--
--           ]
--     ]

-- Requests

requestListResourceComplianceSummaries :: ListResourceComplianceSummaries -> TestTree
requestListResourceComplianceSummaries =
  req
    "ListResourceComplianceSummaries"
    "fixture/ListResourceComplianceSummaries.yaml"

requestDescribePatchGroups :: DescribePatchGroups -> TestTree
requestDescribePatchGroups =
  req
    "DescribePatchGroups"
    "fixture/DescribePatchGroups.yaml"

requestDescribeOpsItems :: DescribeOpsItems -> TestTree
requestDescribeOpsItems =
  req
    "DescribeOpsItems"
    "fixture/DescribeOpsItems.yaml"

requestTerminateSession :: TerminateSession -> TestTree
requestTerminateSession =
  req
    "TerminateSession"
    "fixture/TerminateSession.yaml"

requestGetParameter :: GetParameter -> TestTree
requestGetParameter =
  req
    "GetParameter"
    "fixture/GetParameter.yaml"

requestGetOpsMetadata :: GetOpsMetadata -> TestTree
requestGetOpsMetadata =
  req
    "GetOpsMetadata"
    "fixture/GetOpsMetadata.yaml"

requestUpdateDocumentDefaultVersion :: UpdateDocumentDefaultVersion -> TestTree
requestUpdateDocumentDefaultVersion =
  req
    "UpdateDocumentDefaultVersion"
    "fixture/UpdateDocumentDefaultVersion.yaml"

requestListResourceDataSync :: ListResourceDataSync -> TestTree
requestListResourceDataSync =
  req
    "ListResourceDataSync"
    "fixture/ListResourceDataSync.yaml"

requestDescribeParameters :: DescribeParameters -> TestTree
requestDescribeParameters =
  req
    "DescribeParameters"
    "fixture/DescribeParameters.yaml"

requestRegisterTaskWithMaintenanceWindow :: RegisterTaskWithMaintenanceWindow -> TestTree
requestRegisterTaskWithMaintenanceWindow =
  req
    "RegisterTaskWithMaintenanceWindow"
    "fixture/RegisterTaskWithMaintenanceWindow.yaml"

requestGetOpsItem :: GetOpsItem -> TestTree
requestGetOpsItem =
  req
    "GetOpsItem"
    "fixture/GetOpsItem.yaml"

requestGetInventory :: GetInventory -> TestTree
requestGetInventory =
  req
    "GetInventory"
    "fixture/GetInventory.yaml"

requestDescribeAssociation :: DescribeAssociation -> TestTree
requestDescribeAssociation =
  req
    "DescribeAssociation"
    "fixture/DescribeAssociation.yaml"

requestUpdateAssociationStatus :: UpdateAssociationStatus -> TestTree
requestUpdateAssociationStatus =
  req
    "UpdateAssociationStatus"
    "fixture/UpdateAssociationStatus.yaml"

requestDeregisterManagedInstance :: DeregisterManagedInstance -> TestTree
requestDeregisterManagedInstance =
  req
    "DeregisterManagedInstance"
    "fixture/DeregisterManagedInstance.yaml"

requestDescribeAssociationExecutionTargets :: DescribeAssociationExecutionTargets -> TestTree
requestDescribeAssociationExecutionTargets =
  req
    "DescribeAssociationExecutionTargets"
    "fixture/DescribeAssociationExecutionTargets.yaml"

requestUpdateMaintenanceWindowTarget :: UpdateMaintenanceWindowTarget -> TestTree
requestUpdateMaintenanceWindowTarget =
  req
    "UpdateMaintenanceWindowTarget"
    "fixture/UpdateMaintenanceWindowTarget.yaml"

requestDescribeAutomationStepExecutions :: DescribeAutomationStepExecutions -> TestTree
requestDescribeAutomationStepExecutions =
  req
    "DescribeAutomationStepExecutions"
    "fixture/DescribeAutomationStepExecutions.yaml"

requestCreatePatchBaseline :: CreatePatchBaseline -> TestTree
requestCreatePatchBaseline =
  req
    "CreatePatchBaseline"
    "fixture/CreatePatchBaseline.yaml"

requestGetCommandInvocation :: GetCommandInvocation -> TestTree
requestGetCommandInvocation =
  req
    "GetCommandInvocation"
    "fixture/GetCommandInvocation.yaml"

requestListCommands :: ListCommands -> TestTree
requestListCommands =
  req
    "ListCommands"
    "fixture/ListCommands.yaml"

requestDeregisterTargetFromMaintenanceWindow :: DeregisterTargetFromMaintenanceWindow -> TestTree
requestDeregisterTargetFromMaintenanceWindow =
  req
    "DeregisterTargetFromMaintenanceWindow"
    "fixture/DeregisterTargetFromMaintenanceWindow.yaml"

requestDescribeInstancePatchStates :: DescribeInstancePatchStates -> TestTree
requestDescribeInstancePatchStates =
  req
    "DescribeInstancePatchStates"
    "fixture/DescribeInstancePatchStates.yaml"

requestUpdateDocument :: UpdateDocument -> TestTree
requestUpdateDocument =
  req
    "UpdateDocument"
    "fixture/UpdateDocument.yaml"

requestListDocuments :: ListDocuments -> TestTree
requestListDocuments =
  req
    "ListDocuments"
    "fixture/ListDocuments.yaml"

requestResetServiceSetting :: ResetServiceSetting -> TestTree
requestResetServiceSetting =
  req
    "ResetServiceSetting"
    "fixture/ResetServiceSetting.yaml"

requestStartSession :: StartSession -> TestTree
requestStartSession =
  req
    "StartSession"
    "fixture/StartSession.yaml"

requestGetOpsSummary :: GetOpsSummary -> TestTree
requestGetOpsSummary =
  req
    "GetOpsSummary"
    "fixture/GetOpsSummary.yaml"

requestDeleteDocument :: DeleteDocument -> TestTree
requestDeleteDocument =
  req
    "DeleteDocument"
    "fixture/DeleteDocument.yaml"

requestDeleteInventory :: DeleteInventory -> TestTree
requestDeleteInventory =
  req
    "DeleteInventory"
    "fixture/DeleteInventory.yaml"

requestDeleteParameters :: DeleteParameters -> TestTree
requestDeleteParameters =
  req
    "DeleteParameters"
    "fixture/DeleteParameters.yaml"

requestListOpsMetadata :: ListOpsMetadata -> TestTree
requestListOpsMetadata =
  req
    "ListOpsMetadata"
    "fixture/ListOpsMetadata.yaml"

requestSendCommand :: SendCommand -> TestTree
requestSendCommand =
  req
    "SendCommand"
    "fixture/SendCommand.yaml"

requestRemoveTagsFromResource :: RemoveTagsFromResource -> TestTree
requestRemoveTagsFromResource =
  req
    "RemoveTagsFromResource"
    "fixture/RemoveTagsFromResource.yaml"

requestDescribeEffectiveInstanceAssociations :: DescribeEffectiveInstanceAssociations -> TestTree
requestDescribeEffectiveInstanceAssociations =
  req
    "DescribeEffectiveInstanceAssociations"
    "fixture/DescribeEffectiveInstanceAssociations.yaml"

requestCreateDocument :: CreateDocument -> TestTree
requestCreateDocument =
  req
    "CreateDocument"
    "fixture/CreateDocument.yaml"

requestGetCalendarState :: GetCalendarState -> TestTree
requestGetCalendarState =
  req
    "GetCalendarState"
    "fixture/GetCalendarState.yaml"

requestRegisterTargetWithMaintenanceWindow :: RegisterTargetWithMaintenanceWindow -> TestTree
requestRegisterTargetWithMaintenanceWindow =
  req
    "RegisterTargetWithMaintenanceWindow"
    "fixture/RegisterTargetWithMaintenanceWindow.yaml"

requestDescribeSessions :: DescribeSessions -> TestTree
requestDescribeSessions =
  req
    "DescribeSessions"
    "fixture/DescribeSessions.yaml"

requestDeleteOpsMetadata :: DeleteOpsMetadata -> TestTree
requestDeleteOpsMetadata =
  req
    "DeleteOpsMetadata"
    "fixture/DeleteOpsMetadata.yaml"

requestUpdateOpsItem :: UpdateOpsItem -> TestTree
requestUpdateOpsItem =
  req
    "UpdateOpsItem"
    "fixture/UpdateOpsItem.yaml"

requestDeleteAssociation :: DeleteAssociation -> TestTree
requestDeleteAssociation =
  req
    "DeleteAssociation"
    "fixture/DeleteAssociation.yaml"

requestUpdateAssociation :: UpdateAssociation -> TestTree
requestUpdateAssociation =
  req
    "UpdateAssociation"
    "fixture/UpdateAssociation.yaml"

requestUpdateOpsMetadata :: UpdateOpsMetadata -> TestTree
requestUpdateOpsMetadata =
  req
    "UpdateOpsMetadata"
    "fixture/UpdateOpsMetadata.yaml"

requestDescribeInstanceInformation :: DescribeInstanceInformation -> TestTree
requestDescribeInstanceInformation =
  req
    "DescribeInstanceInformation"
    "fixture/DescribeInstanceInformation.yaml"

requestDescribeMaintenanceWindowExecutionTaskInvocations :: DescribeMaintenanceWindowExecutionTaskInvocations -> TestTree
requestDescribeMaintenanceWindowExecutionTaskInvocations =
  req
    "DescribeMaintenanceWindowExecutionTaskInvocations"
    "fixture/DescribeMaintenanceWindowExecutionTaskInvocations.yaml"

requestDeleteParameter :: DeleteParameter -> TestTree
requestDeleteParameter =
  req
    "DeleteParameter"
    "fixture/DeleteParameter.yaml"

requestGetMaintenanceWindowExecutionTaskInvocation :: GetMaintenanceWindowExecutionTaskInvocation -> TestTree
requestGetMaintenanceWindowExecutionTaskInvocation =
  req
    "GetMaintenanceWindowExecutionTaskInvocation"
    "fixture/GetMaintenanceWindowExecutionTaskInvocation.yaml"

requestCreateActivation :: CreateActivation -> TestTree
requestCreateActivation =
  req
    "CreateActivation"
    "fixture/CreateActivation.yaml"

requestCreateOpsMetadata :: CreateOpsMetadata -> TestTree
requestCreateOpsMetadata =
  req
    "CreateOpsMetadata"
    "fixture/CreateOpsMetadata.yaml"

requestSendAutomationSignal :: SendAutomationSignal -> TestTree
requestSendAutomationSignal =
  req
    "SendAutomationSignal"
    "fixture/SendAutomationSignal.yaml"

requestListComplianceSummaries :: ListComplianceSummaries -> TestTree
requestListComplianceSummaries =
  req
    "ListComplianceSummaries"
    "fixture/ListComplianceSummaries.yaml"

requestDescribeMaintenanceWindowExecutions :: DescribeMaintenanceWindowExecutions -> TestTree
requestDescribeMaintenanceWindowExecutions =
  req
    "DescribeMaintenanceWindowExecutions"
    "fixture/DescribeMaintenanceWindowExecutions.yaml"

requestDescribeMaintenanceWindowsForTarget :: DescribeMaintenanceWindowsForTarget -> TestTree
requestDescribeMaintenanceWindowsForTarget =
  req
    "DescribeMaintenanceWindowsForTarget"
    "fixture/DescribeMaintenanceWindowsForTarget.yaml"

requestCreateAssociation :: CreateAssociation -> TestTree
requestCreateAssociation =
  req
    "CreateAssociation"
    "fixture/CreateAssociation.yaml"

requestCreateOpsItem :: CreateOpsItem -> TestTree
requestCreateOpsItem =
  req
    "CreateOpsItem"
    "fixture/CreateOpsItem.yaml"

requestStartChangeRequestExecution :: StartChangeRequestExecution -> TestTree
requestStartChangeRequestExecution =
  req
    "StartChangeRequestExecution"
    "fixture/StartChangeRequestExecution.yaml"

requestListAssociationVersions :: ListAssociationVersions -> TestTree
requestListAssociationVersions =
  req
    "ListAssociationVersions"
    "fixture/ListAssociationVersions.yaml"

requestDescribeDocument :: DescribeDocument -> TestTree
requestDescribeDocument =
  req
    "DescribeDocument"
    "fixture/DescribeDocument.yaml"

requestDeregisterTaskFromMaintenanceWindow :: DeregisterTaskFromMaintenanceWindow -> TestTree
requestDeregisterTaskFromMaintenanceWindow =
  req
    "DeregisterTaskFromMaintenanceWindow"
    "fixture/DeregisterTaskFromMaintenanceWindow.yaml"

requestPutComplianceItems :: PutComplianceItems -> TestTree
requestPutComplianceItems =
  req
    "PutComplianceItems"
    "fixture/PutComplianceItems.yaml"

requestGetMaintenanceWindowTask :: GetMaintenanceWindowTask -> TestTree
requestGetMaintenanceWindowTask =
  req
    "GetMaintenanceWindowTask"
    "fixture/GetMaintenanceWindowTask.yaml"

requestGetDeployablePatchSnapshotForInstance :: GetDeployablePatchSnapshotForInstance -> TestTree
requestGetDeployablePatchSnapshotForInstance =
  req
    "GetDeployablePatchSnapshotForInstance"
    "fixture/GetDeployablePatchSnapshotForInstance.yaml"

requestGetMaintenanceWindow :: GetMaintenanceWindow -> TestTree
requestGetMaintenanceWindow =
  req
    "GetMaintenanceWindow"
    "fixture/GetMaintenanceWindow.yaml"

requestDeregisterPatchBaselineForPatchGroup :: DeregisterPatchBaselineForPatchGroup -> TestTree
requestDeregisterPatchBaselineForPatchGroup =
  req
    "DeregisterPatchBaselineForPatchGroup"
    "fixture/DeregisterPatchBaselineForPatchGroup.yaml"

requestResumeSession :: ResumeSession -> TestTree
requestResumeSession =
  req
    "ResumeSession"
    "fixture/ResumeSession.yaml"

requestRegisterDefaultPatchBaseline :: RegisterDefaultPatchBaseline -> TestTree
requestRegisterDefaultPatchBaseline =
  req
    "RegisterDefaultPatchBaseline"
    "fixture/RegisterDefaultPatchBaseline.yaml"

requestDescribeMaintenanceWindows :: DescribeMaintenanceWindows -> TestTree
requestDescribeMaintenanceWindows =
  req
    "DescribeMaintenanceWindows"
    "fixture/DescribeMaintenanceWindows.yaml"

requestModifyDocumentPermission :: ModifyDocumentPermission -> TestTree
requestModifyDocumentPermission =
  req
    "ModifyDocumentPermission"
    "fixture/ModifyDocumentPermission.yaml"

requestDescribeInstancePatches :: DescribeInstancePatches -> TestTree
requestDescribeInstancePatches =
  req
    "DescribeInstancePatches"
    "fixture/DescribeInstancePatches.yaml"

requestGetParameters :: GetParameters -> TestTree
requestGetParameters =
  req
    "GetParameters"
    "fixture/GetParameters.yaml"

requestListDocumentVersions :: ListDocumentVersions -> TestTree
requestListDocumentVersions =
  req
    "ListDocumentVersions"
    "fixture/ListDocumentVersions.yaml"

requestUpdateResourceDataSync :: UpdateResourceDataSync -> TestTree
requestUpdateResourceDataSync =
  req
    "UpdateResourceDataSync"
    "fixture/UpdateResourceDataSync.yaml"

requestDeletePatchBaseline :: DeletePatchBaseline -> TestTree
requestDeletePatchBaseline =
  req
    "DeletePatchBaseline"
    "fixture/DeletePatchBaseline.yaml"

requestListOpsItemEvents :: ListOpsItemEvents -> TestTree
requestListOpsItemEvents =
  req
    "ListOpsItemEvents"
    "fixture/ListOpsItemEvents.yaml"

requestDeleteResourceDataSync :: DeleteResourceDataSync -> TestTree
requestDeleteResourceDataSync =
  req
    "DeleteResourceDataSync"
    "fixture/DeleteResourceDataSync.yaml"

requestDescribeInstancePatchStatesForPatchGroup :: DescribeInstancePatchStatesForPatchGroup -> TestTree
requestDescribeInstancePatchStatesForPatchGroup =
  req
    "DescribeInstancePatchStatesForPatchGroup"
    "fixture/DescribeInstancePatchStatesForPatchGroup.yaml"

requestGetConnectionStatus :: GetConnectionStatus -> TestTree
requestGetConnectionStatus =
  req
    "GetConnectionStatus"
    "fixture/GetConnectionStatus.yaml"

requestUpdatePatchBaseline :: UpdatePatchBaseline -> TestTree
requestUpdatePatchBaseline =
  req
    "UpdatePatchBaseline"
    "fixture/UpdatePatchBaseline.yaml"

requestDescribeAvailablePatches :: DescribeAvailablePatches -> TestTree
requestDescribeAvailablePatches =
  req
    "DescribeAvailablePatches"
    "fixture/DescribeAvailablePatches.yaml"

requestListComplianceItems :: ListComplianceItems -> TestTree
requestListComplianceItems =
  req
    "ListComplianceItems"
    "fixture/ListComplianceItems.yaml"

requestGetDocument :: GetDocument -> TestTree
requestGetDocument =
  req
    "GetDocument"
    "fixture/GetDocument.yaml"

requestAddTagsToResource :: AddTagsToResource -> TestTree
requestAddTagsToResource =
  req
    "AddTagsToResource"
    "fixture/AddTagsToResource.yaml"

requestGetPatchBaselineForPatchGroup :: GetPatchBaselineForPatchGroup -> TestTree
requestGetPatchBaselineForPatchGroup =
  req
    "GetPatchBaselineForPatchGroup"
    "fixture/GetPatchBaselineForPatchGroup.yaml"

requestUpdateManagedInstanceRole :: UpdateManagedInstanceRole -> TestTree
requestUpdateManagedInstanceRole =
  req
    "UpdateManagedInstanceRole"
    "fixture/UpdateManagedInstanceRole.yaml"

requestDescribeMaintenanceWindowSchedule :: DescribeMaintenanceWindowSchedule -> TestTree
requestDescribeMaintenanceWindowSchedule =
  req
    "DescribeMaintenanceWindowSchedule"
    "fixture/DescribeMaintenanceWindowSchedule.yaml"

requestCreateResourceDataSync :: CreateResourceDataSync -> TestTree
requestCreateResourceDataSync =
  req
    "CreateResourceDataSync"
    "fixture/CreateResourceDataSync.yaml"

requestCreateAssociationBatch :: CreateAssociationBatch -> TestTree
requestCreateAssociationBatch =
  req
    "CreateAssociationBatch"
    "fixture/CreateAssociationBatch.yaml"

requestCancelCommand :: CancelCommand -> TestTree
requestCancelCommand =
  req
    "CancelCommand"
    "fixture/CancelCommand.yaml"

requestDescribeDocumentPermission :: DescribeDocumentPermission -> TestTree
requestDescribeDocumentPermission =
  req
    "DescribeDocumentPermission"
    "fixture/DescribeDocumentPermission.yaml"

requestRegisterPatchBaselineForPatchGroup :: RegisterPatchBaselineForPatchGroup -> TestTree
requestRegisterPatchBaselineForPatchGroup =
  req
    "RegisterPatchBaselineForPatchGroup"
    "fixture/RegisterPatchBaselineForPatchGroup.yaml"

requestDescribeEffectivePatchesForPatchBaseline :: DescribeEffectivePatchesForPatchBaseline -> TestTree
requestDescribeEffectivePatchesForPatchBaseline =
  req
    "DescribeEffectivePatchesForPatchBaseline"
    "fixture/DescribeEffectivePatchesForPatchBaseline.yaml"

requestListCommandInvocations :: ListCommandInvocations -> TestTree
requestListCommandInvocations =
  req
    "ListCommandInvocations"
    "fixture/ListCommandInvocations.yaml"

requestDescribeMaintenanceWindowTargets :: DescribeMaintenanceWindowTargets -> TestTree
requestDescribeMaintenanceWindowTargets =
  req
    "DescribeMaintenanceWindowTargets"
    "fixture/DescribeMaintenanceWindowTargets.yaml"

requestGetAutomationExecution :: GetAutomationExecution -> TestTree
requestGetAutomationExecution =
  req
    "GetAutomationExecution"
    "fixture/GetAutomationExecution.yaml"

requestGetPatchBaseline :: GetPatchBaseline -> TestTree
requestGetPatchBaseline =
  req
    "GetPatchBaseline"
    "fixture/GetPatchBaseline.yaml"

requestDescribePatchGroupState :: DescribePatchGroupState -> TestTree
requestDescribePatchGroupState =
  req
    "DescribePatchGroupState"
    "fixture/DescribePatchGroupState.yaml"

requestDescribePatchBaselines :: DescribePatchBaselines -> TestTree
requestDescribePatchBaselines =
  req
    "DescribePatchBaselines"
    "fixture/DescribePatchBaselines.yaml"

requestUpdateDocumentMetadata :: UpdateDocumentMetadata -> TestTree
requestUpdateDocumentMetadata =
  req
    "UpdateDocumentMetadata"
    "fixture/UpdateDocumentMetadata.yaml"

requestDescribeAutomationExecutions :: DescribeAutomationExecutions -> TestTree
requestDescribeAutomationExecutions =
  req
    "DescribeAutomationExecutions"
    "fixture/DescribeAutomationExecutions.yaml"

requestPutInventory :: PutInventory -> TestTree
requestPutInventory =
  req
    "PutInventory"
    "fixture/PutInventory.yaml"

requestDescribeInventoryDeletions :: DescribeInventoryDeletions -> TestTree
requestDescribeInventoryDeletions =
  req
    "DescribeInventoryDeletions"
    "fixture/DescribeInventoryDeletions.yaml"

requestDescribeMaintenanceWindowExecutionTasks :: DescribeMaintenanceWindowExecutionTasks -> TestTree
requestDescribeMaintenanceWindowExecutionTasks =
  req
    "DescribeMaintenanceWindowExecutionTasks"
    "fixture/DescribeMaintenanceWindowExecutionTasks.yaml"

requestDeleteMaintenanceWindow :: DeleteMaintenanceWindow -> TestTree
requestDeleteMaintenanceWindow =
  req
    "DeleteMaintenanceWindow"
    "fixture/DeleteMaintenanceWindow.yaml"

requestGetDefaultPatchBaseline :: GetDefaultPatchBaseline -> TestTree
requestGetDefaultPatchBaseline =
  req
    "GetDefaultPatchBaseline"
    "fixture/GetDefaultPatchBaseline.yaml"

requestPutParameter :: PutParameter -> TestTree
requestPutParameter =
  req
    "PutParameter"
    "fixture/PutParameter.yaml"

requestUpdateMaintenanceWindow :: UpdateMaintenanceWindow -> TestTree
requestUpdateMaintenanceWindow =
  req
    "UpdateMaintenanceWindow"
    "fixture/UpdateMaintenanceWindow.yaml"

requestListAssociations :: ListAssociations -> TestTree
requestListAssociations =
  req
    "ListAssociations"
    "fixture/ListAssociations.yaml"

requestGetMaintenanceWindowExecutionTask :: GetMaintenanceWindowExecutionTask -> TestTree
requestGetMaintenanceWindowExecutionTask =
  req
    "GetMaintenanceWindowExecutionTask"
    "fixture/GetMaintenanceWindowExecutionTask.yaml"

requestStartAutomationExecution :: StartAutomationExecution -> TestTree
requestStartAutomationExecution =
  req
    "StartAutomationExecution"
    "fixture/StartAutomationExecution.yaml"

requestDeleteActivation :: DeleteActivation -> TestTree
requestDeleteActivation =
  req
    "DeleteActivation"
    "fixture/DeleteActivation.yaml"

requestCreateMaintenanceWindow :: CreateMaintenanceWindow -> TestTree
requestCreateMaintenanceWindow =
  req
    "CreateMaintenanceWindow"
    "fixture/CreateMaintenanceWindow.yaml"

requestDescribeAssociationExecutions :: DescribeAssociationExecutions -> TestTree
requestDescribeAssociationExecutions =
  req
    "DescribeAssociationExecutions"
    "fixture/DescribeAssociationExecutions.yaml"

requestGetMaintenanceWindowExecution :: GetMaintenanceWindowExecution -> TestTree
requestGetMaintenanceWindowExecution =
  req
    "GetMaintenanceWindowExecution"
    "fixture/GetMaintenanceWindowExecution.yaml"

requestStopAutomationExecution :: StopAutomationExecution -> TestTree
requestStopAutomationExecution =
  req
    "StopAutomationExecution"
    "fixture/StopAutomationExecution.yaml"

requestGetInventorySchema :: GetInventorySchema -> TestTree
requestGetInventorySchema =
  req
    "GetInventorySchema"
    "fixture/GetInventorySchema.yaml"

requestStartAssociationsOnce :: StartAssociationsOnce -> TestTree
requestStartAssociationsOnce =
  req
    "StartAssociationsOnce"
    "fixture/StartAssociationsOnce.yaml"

requestCancelMaintenanceWindowExecution :: CancelMaintenanceWindowExecution -> TestTree
requestCancelMaintenanceWindowExecution =
  req
    "CancelMaintenanceWindowExecution"
    "fixture/CancelMaintenanceWindowExecution.yaml"

requestLabelParameterVersion :: LabelParameterVersion -> TestTree
requestLabelParameterVersion =
  req
    "LabelParameterVersion"
    "fixture/LabelParameterVersion.yaml"

requestGetParameterHistory :: GetParameterHistory -> TestTree
requestGetParameterHistory =
  req
    "GetParameterHistory"
    "fixture/GetParameterHistory.yaml"

requestGetServiceSetting :: GetServiceSetting -> TestTree
requestGetServiceSetting =
  req
    "GetServiceSetting"
    "fixture/GetServiceSetting.yaml"

requestUpdateMaintenanceWindowTask :: UpdateMaintenanceWindowTask -> TestTree
requestUpdateMaintenanceWindowTask =
  req
    "UpdateMaintenanceWindowTask"
    "fixture/UpdateMaintenanceWindowTask.yaml"

requestListDocumentMetadataHistory :: ListDocumentMetadataHistory -> TestTree
requestListDocumentMetadataHistory =
  req
    "ListDocumentMetadataHistory"
    "fixture/ListDocumentMetadataHistory.yaml"

requestListInventoryEntries :: ListInventoryEntries -> TestTree
requestListInventoryEntries =
  req
    "ListInventoryEntries"
    "fixture/ListInventoryEntries.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestGetParametersByPath :: GetParametersByPath -> TestTree
requestGetParametersByPath =
  req
    "GetParametersByPath"
    "fixture/GetParametersByPath.yaml"

requestDescribeActivations :: DescribeActivations -> TestTree
requestDescribeActivations =
  req
    "DescribeActivations"
    "fixture/DescribeActivations.yaml"

requestDescribeInstanceAssociationsStatus :: DescribeInstanceAssociationsStatus -> TestTree
requestDescribeInstanceAssociationsStatus =
  req
    "DescribeInstanceAssociationsStatus"
    "fixture/DescribeInstanceAssociationsStatus.yaml"

requestDescribePatchProperties :: DescribePatchProperties -> TestTree
requestDescribePatchProperties =
  req
    "DescribePatchProperties"
    "fixture/DescribePatchProperties.yaml"

requestUpdateServiceSetting :: UpdateServiceSetting -> TestTree
requestUpdateServiceSetting =
  req
    "UpdateServiceSetting"
    "fixture/UpdateServiceSetting.yaml"

requestDescribeMaintenanceWindowTasks :: DescribeMaintenanceWindowTasks -> TestTree
requestDescribeMaintenanceWindowTasks =
  req
    "DescribeMaintenanceWindowTasks"
    "fixture/DescribeMaintenanceWindowTasks.yaml"

-- Responses

responseListResourceComplianceSummaries :: ListResourceComplianceSummariesResponse -> TestTree
responseListResourceComplianceSummaries =
  res
    "ListResourceComplianceSummariesResponse"
    "fixture/ListResourceComplianceSummariesResponse.proto"
    ssm
    (Proxy :: Proxy ListResourceComplianceSummaries)

responseDescribePatchGroups :: DescribePatchGroupsResponse -> TestTree
responseDescribePatchGroups =
  res
    "DescribePatchGroupsResponse"
    "fixture/DescribePatchGroupsResponse.proto"
    ssm
    (Proxy :: Proxy DescribePatchGroups)

responseDescribeOpsItems :: DescribeOpsItemsResponse -> TestTree
responseDescribeOpsItems =
  res
    "DescribeOpsItemsResponse"
    "fixture/DescribeOpsItemsResponse.proto"
    ssm
    (Proxy :: Proxy DescribeOpsItems)

responseTerminateSession :: TerminateSessionResponse -> TestTree
responseTerminateSession =
  res
    "TerminateSessionResponse"
    "fixture/TerminateSessionResponse.proto"
    ssm
    (Proxy :: Proxy TerminateSession)

responseGetParameter :: GetParameterResponse -> TestTree
responseGetParameter =
  res
    "GetParameterResponse"
    "fixture/GetParameterResponse.proto"
    ssm
    (Proxy :: Proxy GetParameter)

responseGetOpsMetadata :: GetOpsMetadataResponse -> TestTree
responseGetOpsMetadata =
  res
    "GetOpsMetadataResponse"
    "fixture/GetOpsMetadataResponse.proto"
    ssm
    (Proxy :: Proxy GetOpsMetadata)

responseUpdateDocumentDefaultVersion :: UpdateDocumentDefaultVersionResponse -> TestTree
responseUpdateDocumentDefaultVersion =
  res
    "UpdateDocumentDefaultVersionResponse"
    "fixture/UpdateDocumentDefaultVersionResponse.proto"
    ssm
    (Proxy :: Proxy UpdateDocumentDefaultVersion)

responseListResourceDataSync :: ListResourceDataSyncResponse -> TestTree
responseListResourceDataSync =
  res
    "ListResourceDataSyncResponse"
    "fixture/ListResourceDataSyncResponse.proto"
    ssm
    (Proxy :: Proxy ListResourceDataSync)

responseDescribeParameters :: DescribeParametersResponse -> TestTree
responseDescribeParameters =
  res
    "DescribeParametersResponse"
    "fixture/DescribeParametersResponse.proto"
    ssm
    (Proxy :: Proxy DescribeParameters)

responseRegisterTaskWithMaintenanceWindow :: RegisterTaskWithMaintenanceWindowResponse -> TestTree
responseRegisterTaskWithMaintenanceWindow =
  res
    "RegisterTaskWithMaintenanceWindowResponse"
    "fixture/RegisterTaskWithMaintenanceWindowResponse.proto"
    ssm
    (Proxy :: Proxy RegisterTaskWithMaintenanceWindow)

responseGetOpsItem :: GetOpsItemResponse -> TestTree
responseGetOpsItem =
  res
    "GetOpsItemResponse"
    "fixture/GetOpsItemResponse.proto"
    ssm
    (Proxy :: Proxy GetOpsItem)

responseGetInventory :: GetInventoryResponse -> TestTree
responseGetInventory =
  res
    "GetInventoryResponse"
    "fixture/GetInventoryResponse.proto"
    ssm
    (Proxy :: Proxy GetInventory)

responseDescribeAssociation :: DescribeAssociationResponse -> TestTree
responseDescribeAssociation =
  res
    "DescribeAssociationResponse"
    "fixture/DescribeAssociationResponse.proto"
    ssm
    (Proxy :: Proxy DescribeAssociation)

responseUpdateAssociationStatus :: UpdateAssociationStatusResponse -> TestTree
responseUpdateAssociationStatus =
  res
    "UpdateAssociationStatusResponse"
    "fixture/UpdateAssociationStatusResponse.proto"
    ssm
    (Proxy :: Proxy UpdateAssociationStatus)

responseDeregisterManagedInstance :: DeregisterManagedInstanceResponse -> TestTree
responseDeregisterManagedInstance =
  res
    "DeregisterManagedInstanceResponse"
    "fixture/DeregisterManagedInstanceResponse.proto"
    ssm
    (Proxy :: Proxy DeregisterManagedInstance)

responseDescribeAssociationExecutionTargets :: DescribeAssociationExecutionTargetsResponse -> TestTree
responseDescribeAssociationExecutionTargets =
  res
    "DescribeAssociationExecutionTargetsResponse"
    "fixture/DescribeAssociationExecutionTargetsResponse.proto"
    ssm
    (Proxy :: Proxy DescribeAssociationExecutionTargets)

responseUpdateMaintenanceWindowTarget :: UpdateMaintenanceWindowTargetResponse -> TestTree
responseUpdateMaintenanceWindowTarget =
  res
    "UpdateMaintenanceWindowTargetResponse"
    "fixture/UpdateMaintenanceWindowTargetResponse.proto"
    ssm
    (Proxy :: Proxy UpdateMaintenanceWindowTarget)

responseDescribeAutomationStepExecutions :: DescribeAutomationStepExecutionsResponse -> TestTree
responseDescribeAutomationStepExecutions =
  res
    "DescribeAutomationStepExecutionsResponse"
    "fixture/DescribeAutomationStepExecutionsResponse.proto"
    ssm
    (Proxy :: Proxy DescribeAutomationStepExecutions)

responseCreatePatchBaseline :: CreatePatchBaselineResponse -> TestTree
responseCreatePatchBaseline =
  res
    "CreatePatchBaselineResponse"
    "fixture/CreatePatchBaselineResponse.proto"
    ssm
    (Proxy :: Proxy CreatePatchBaseline)

responseGetCommandInvocation :: GetCommandInvocationResponse -> TestTree
responseGetCommandInvocation =
  res
    "GetCommandInvocationResponse"
    "fixture/GetCommandInvocationResponse.proto"
    ssm
    (Proxy :: Proxy GetCommandInvocation)

responseListCommands :: ListCommandsResponse -> TestTree
responseListCommands =
  res
    "ListCommandsResponse"
    "fixture/ListCommandsResponse.proto"
    ssm
    (Proxy :: Proxy ListCommands)

responseDeregisterTargetFromMaintenanceWindow :: DeregisterTargetFromMaintenanceWindowResponse -> TestTree
responseDeregisterTargetFromMaintenanceWindow =
  res
    "DeregisterTargetFromMaintenanceWindowResponse"
    "fixture/DeregisterTargetFromMaintenanceWindowResponse.proto"
    ssm
    (Proxy :: Proxy DeregisterTargetFromMaintenanceWindow)

responseDescribeInstancePatchStates :: DescribeInstancePatchStatesResponse -> TestTree
responseDescribeInstancePatchStates =
  res
    "DescribeInstancePatchStatesResponse"
    "fixture/DescribeInstancePatchStatesResponse.proto"
    ssm
    (Proxy :: Proxy DescribeInstancePatchStates)

responseUpdateDocument :: UpdateDocumentResponse -> TestTree
responseUpdateDocument =
  res
    "UpdateDocumentResponse"
    "fixture/UpdateDocumentResponse.proto"
    ssm
    (Proxy :: Proxy UpdateDocument)

responseListDocuments :: ListDocumentsResponse -> TestTree
responseListDocuments =
  res
    "ListDocumentsResponse"
    "fixture/ListDocumentsResponse.proto"
    ssm
    (Proxy :: Proxy ListDocuments)

responseResetServiceSetting :: ResetServiceSettingResponse -> TestTree
responseResetServiceSetting =
  res
    "ResetServiceSettingResponse"
    "fixture/ResetServiceSettingResponse.proto"
    ssm
    (Proxy :: Proxy ResetServiceSetting)

responseStartSession :: StartSessionResponse -> TestTree
responseStartSession =
  res
    "StartSessionResponse"
    "fixture/StartSessionResponse.proto"
    ssm
    (Proxy :: Proxy StartSession)

responseGetOpsSummary :: GetOpsSummaryResponse -> TestTree
responseGetOpsSummary =
  res
    "GetOpsSummaryResponse"
    "fixture/GetOpsSummaryResponse.proto"
    ssm
    (Proxy :: Proxy GetOpsSummary)

responseDeleteDocument :: DeleteDocumentResponse -> TestTree
responseDeleteDocument =
  res
    "DeleteDocumentResponse"
    "fixture/DeleteDocumentResponse.proto"
    ssm
    (Proxy :: Proxy DeleteDocument)

responseDeleteInventory :: DeleteInventoryResponse -> TestTree
responseDeleteInventory =
  res
    "DeleteInventoryResponse"
    "fixture/DeleteInventoryResponse.proto"
    ssm
    (Proxy :: Proxy DeleteInventory)

responseDeleteParameters :: DeleteParametersResponse -> TestTree
responseDeleteParameters =
  res
    "DeleteParametersResponse"
    "fixture/DeleteParametersResponse.proto"
    ssm
    (Proxy :: Proxy DeleteParameters)

responseListOpsMetadata :: ListOpsMetadataResponse -> TestTree
responseListOpsMetadata =
  res
    "ListOpsMetadataResponse"
    "fixture/ListOpsMetadataResponse.proto"
    ssm
    (Proxy :: Proxy ListOpsMetadata)

responseSendCommand :: SendCommandResponse -> TestTree
responseSendCommand =
  res
    "SendCommandResponse"
    "fixture/SendCommandResponse.proto"
    ssm
    (Proxy :: Proxy SendCommand)

responseRemoveTagsFromResource :: RemoveTagsFromResourceResponse -> TestTree
responseRemoveTagsFromResource =
  res
    "RemoveTagsFromResourceResponse"
    "fixture/RemoveTagsFromResourceResponse.proto"
    ssm
    (Proxy :: Proxy RemoveTagsFromResource)

responseDescribeEffectiveInstanceAssociations :: DescribeEffectiveInstanceAssociationsResponse -> TestTree
responseDescribeEffectiveInstanceAssociations =
  res
    "DescribeEffectiveInstanceAssociationsResponse"
    "fixture/DescribeEffectiveInstanceAssociationsResponse.proto"
    ssm
    (Proxy :: Proxy DescribeEffectiveInstanceAssociations)

responseCreateDocument :: CreateDocumentResponse -> TestTree
responseCreateDocument =
  res
    "CreateDocumentResponse"
    "fixture/CreateDocumentResponse.proto"
    ssm
    (Proxy :: Proxy CreateDocument)

responseGetCalendarState :: GetCalendarStateResponse -> TestTree
responseGetCalendarState =
  res
    "GetCalendarStateResponse"
    "fixture/GetCalendarStateResponse.proto"
    ssm
    (Proxy :: Proxy GetCalendarState)

responseRegisterTargetWithMaintenanceWindow :: RegisterTargetWithMaintenanceWindowResponse -> TestTree
responseRegisterTargetWithMaintenanceWindow =
  res
    "RegisterTargetWithMaintenanceWindowResponse"
    "fixture/RegisterTargetWithMaintenanceWindowResponse.proto"
    ssm
    (Proxy :: Proxy RegisterTargetWithMaintenanceWindow)

responseDescribeSessions :: DescribeSessionsResponse -> TestTree
responseDescribeSessions =
  res
    "DescribeSessionsResponse"
    "fixture/DescribeSessionsResponse.proto"
    ssm
    (Proxy :: Proxy DescribeSessions)

responseDeleteOpsMetadata :: DeleteOpsMetadataResponse -> TestTree
responseDeleteOpsMetadata =
  res
    "DeleteOpsMetadataResponse"
    "fixture/DeleteOpsMetadataResponse.proto"
    ssm
    (Proxy :: Proxy DeleteOpsMetadata)

responseUpdateOpsItem :: UpdateOpsItemResponse -> TestTree
responseUpdateOpsItem =
  res
    "UpdateOpsItemResponse"
    "fixture/UpdateOpsItemResponse.proto"
    ssm
    (Proxy :: Proxy UpdateOpsItem)

responseDeleteAssociation :: DeleteAssociationResponse -> TestTree
responseDeleteAssociation =
  res
    "DeleteAssociationResponse"
    "fixture/DeleteAssociationResponse.proto"
    ssm
    (Proxy :: Proxy DeleteAssociation)

responseUpdateAssociation :: UpdateAssociationResponse -> TestTree
responseUpdateAssociation =
  res
    "UpdateAssociationResponse"
    "fixture/UpdateAssociationResponse.proto"
    ssm
    (Proxy :: Proxy UpdateAssociation)

responseUpdateOpsMetadata :: UpdateOpsMetadataResponse -> TestTree
responseUpdateOpsMetadata =
  res
    "UpdateOpsMetadataResponse"
    "fixture/UpdateOpsMetadataResponse.proto"
    ssm
    (Proxy :: Proxy UpdateOpsMetadata)

responseDescribeInstanceInformation :: DescribeInstanceInformationResponse -> TestTree
responseDescribeInstanceInformation =
  res
    "DescribeInstanceInformationResponse"
    "fixture/DescribeInstanceInformationResponse.proto"
    ssm
    (Proxy :: Proxy DescribeInstanceInformation)

responseDescribeMaintenanceWindowExecutionTaskInvocations :: DescribeMaintenanceWindowExecutionTaskInvocationsResponse -> TestTree
responseDescribeMaintenanceWindowExecutionTaskInvocations =
  res
    "DescribeMaintenanceWindowExecutionTaskInvocationsResponse"
    "fixture/DescribeMaintenanceWindowExecutionTaskInvocationsResponse.proto"
    ssm
    (Proxy :: Proxy DescribeMaintenanceWindowExecutionTaskInvocations)

responseDeleteParameter :: DeleteParameterResponse -> TestTree
responseDeleteParameter =
  res
    "DeleteParameterResponse"
    "fixture/DeleteParameterResponse.proto"
    ssm
    (Proxy :: Proxy DeleteParameter)

responseGetMaintenanceWindowExecutionTaskInvocation :: GetMaintenanceWindowExecutionTaskInvocationResponse -> TestTree
responseGetMaintenanceWindowExecutionTaskInvocation =
  res
    "GetMaintenanceWindowExecutionTaskInvocationResponse"
    "fixture/GetMaintenanceWindowExecutionTaskInvocationResponse.proto"
    ssm
    (Proxy :: Proxy GetMaintenanceWindowExecutionTaskInvocation)

responseCreateActivation :: CreateActivationResponse -> TestTree
responseCreateActivation =
  res
    "CreateActivationResponse"
    "fixture/CreateActivationResponse.proto"
    ssm
    (Proxy :: Proxy CreateActivation)

responseCreateOpsMetadata :: CreateOpsMetadataResponse -> TestTree
responseCreateOpsMetadata =
  res
    "CreateOpsMetadataResponse"
    "fixture/CreateOpsMetadataResponse.proto"
    ssm
    (Proxy :: Proxy CreateOpsMetadata)

responseSendAutomationSignal :: SendAutomationSignalResponse -> TestTree
responseSendAutomationSignal =
  res
    "SendAutomationSignalResponse"
    "fixture/SendAutomationSignalResponse.proto"
    ssm
    (Proxy :: Proxy SendAutomationSignal)

responseListComplianceSummaries :: ListComplianceSummariesResponse -> TestTree
responseListComplianceSummaries =
  res
    "ListComplianceSummariesResponse"
    "fixture/ListComplianceSummariesResponse.proto"
    ssm
    (Proxy :: Proxy ListComplianceSummaries)

responseDescribeMaintenanceWindowExecutions :: DescribeMaintenanceWindowExecutionsResponse -> TestTree
responseDescribeMaintenanceWindowExecutions =
  res
    "DescribeMaintenanceWindowExecutionsResponse"
    "fixture/DescribeMaintenanceWindowExecutionsResponse.proto"
    ssm
    (Proxy :: Proxy DescribeMaintenanceWindowExecutions)

responseDescribeMaintenanceWindowsForTarget :: DescribeMaintenanceWindowsForTargetResponse -> TestTree
responseDescribeMaintenanceWindowsForTarget =
  res
    "DescribeMaintenanceWindowsForTargetResponse"
    "fixture/DescribeMaintenanceWindowsForTargetResponse.proto"
    ssm
    (Proxy :: Proxy DescribeMaintenanceWindowsForTarget)

responseCreateAssociation :: CreateAssociationResponse -> TestTree
responseCreateAssociation =
  res
    "CreateAssociationResponse"
    "fixture/CreateAssociationResponse.proto"
    ssm
    (Proxy :: Proxy CreateAssociation)

responseCreateOpsItem :: CreateOpsItemResponse -> TestTree
responseCreateOpsItem =
  res
    "CreateOpsItemResponse"
    "fixture/CreateOpsItemResponse.proto"
    ssm
    (Proxy :: Proxy CreateOpsItem)

responseStartChangeRequestExecution :: StartChangeRequestExecutionResponse -> TestTree
responseStartChangeRequestExecution =
  res
    "StartChangeRequestExecutionResponse"
    "fixture/StartChangeRequestExecutionResponse.proto"
    ssm
    (Proxy :: Proxy StartChangeRequestExecution)

responseListAssociationVersions :: ListAssociationVersionsResponse -> TestTree
responseListAssociationVersions =
  res
    "ListAssociationVersionsResponse"
    "fixture/ListAssociationVersionsResponse.proto"
    ssm
    (Proxy :: Proxy ListAssociationVersions)

responseDescribeDocument :: DescribeDocumentResponse -> TestTree
responseDescribeDocument =
  res
    "DescribeDocumentResponse"
    "fixture/DescribeDocumentResponse.proto"
    ssm
    (Proxy :: Proxy DescribeDocument)

responseDeregisterTaskFromMaintenanceWindow :: DeregisterTaskFromMaintenanceWindowResponse -> TestTree
responseDeregisterTaskFromMaintenanceWindow =
  res
    "DeregisterTaskFromMaintenanceWindowResponse"
    "fixture/DeregisterTaskFromMaintenanceWindowResponse.proto"
    ssm
    (Proxy :: Proxy DeregisterTaskFromMaintenanceWindow)

responsePutComplianceItems :: PutComplianceItemsResponse -> TestTree
responsePutComplianceItems =
  res
    "PutComplianceItemsResponse"
    "fixture/PutComplianceItemsResponse.proto"
    ssm
    (Proxy :: Proxy PutComplianceItems)

responseGetMaintenanceWindowTask :: GetMaintenanceWindowTaskResponse -> TestTree
responseGetMaintenanceWindowTask =
  res
    "GetMaintenanceWindowTaskResponse"
    "fixture/GetMaintenanceWindowTaskResponse.proto"
    ssm
    (Proxy :: Proxy GetMaintenanceWindowTask)

responseGetDeployablePatchSnapshotForInstance :: GetDeployablePatchSnapshotForInstanceResponse -> TestTree
responseGetDeployablePatchSnapshotForInstance =
  res
    "GetDeployablePatchSnapshotForInstanceResponse"
    "fixture/GetDeployablePatchSnapshotForInstanceResponse.proto"
    ssm
    (Proxy :: Proxy GetDeployablePatchSnapshotForInstance)

responseGetMaintenanceWindow :: GetMaintenanceWindowResponse -> TestTree
responseGetMaintenanceWindow =
  res
    "GetMaintenanceWindowResponse"
    "fixture/GetMaintenanceWindowResponse.proto"
    ssm
    (Proxy :: Proxy GetMaintenanceWindow)

responseDeregisterPatchBaselineForPatchGroup :: DeregisterPatchBaselineForPatchGroupResponse -> TestTree
responseDeregisterPatchBaselineForPatchGroup =
  res
    "DeregisterPatchBaselineForPatchGroupResponse"
    "fixture/DeregisterPatchBaselineForPatchGroupResponse.proto"
    ssm
    (Proxy :: Proxy DeregisterPatchBaselineForPatchGroup)

responseResumeSession :: ResumeSessionResponse -> TestTree
responseResumeSession =
  res
    "ResumeSessionResponse"
    "fixture/ResumeSessionResponse.proto"
    ssm
    (Proxy :: Proxy ResumeSession)

responseRegisterDefaultPatchBaseline :: RegisterDefaultPatchBaselineResponse -> TestTree
responseRegisterDefaultPatchBaseline =
  res
    "RegisterDefaultPatchBaselineResponse"
    "fixture/RegisterDefaultPatchBaselineResponse.proto"
    ssm
    (Proxy :: Proxy RegisterDefaultPatchBaseline)

responseDescribeMaintenanceWindows :: DescribeMaintenanceWindowsResponse -> TestTree
responseDescribeMaintenanceWindows =
  res
    "DescribeMaintenanceWindowsResponse"
    "fixture/DescribeMaintenanceWindowsResponse.proto"
    ssm
    (Proxy :: Proxy DescribeMaintenanceWindows)

responseModifyDocumentPermission :: ModifyDocumentPermissionResponse -> TestTree
responseModifyDocumentPermission =
  res
    "ModifyDocumentPermissionResponse"
    "fixture/ModifyDocumentPermissionResponse.proto"
    ssm
    (Proxy :: Proxy ModifyDocumentPermission)

responseDescribeInstancePatches :: DescribeInstancePatchesResponse -> TestTree
responseDescribeInstancePatches =
  res
    "DescribeInstancePatchesResponse"
    "fixture/DescribeInstancePatchesResponse.proto"
    ssm
    (Proxy :: Proxy DescribeInstancePatches)

responseGetParameters :: GetParametersResponse -> TestTree
responseGetParameters =
  res
    "GetParametersResponse"
    "fixture/GetParametersResponse.proto"
    ssm
    (Proxy :: Proxy GetParameters)

responseListDocumentVersions :: ListDocumentVersionsResponse -> TestTree
responseListDocumentVersions =
  res
    "ListDocumentVersionsResponse"
    "fixture/ListDocumentVersionsResponse.proto"
    ssm
    (Proxy :: Proxy ListDocumentVersions)

responseUpdateResourceDataSync :: UpdateResourceDataSyncResponse -> TestTree
responseUpdateResourceDataSync =
  res
    "UpdateResourceDataSyncResponse"
    "fixture/UpdateResourceDataSyncResponse.proto"
    ssm
    (Proxy :: Proxy UpdateResourceDataSync)

responseDeletePatchBaseline :: DeletePatchBaselineResponse -> TestTree
responseDeletePatchBaseline =
  res
    "DeletePatchBaselineResponse"
    "fixture/DeletePatchBaselineResponse.proto"
    ssm
    (Proxy :: Proxy DeletePatchBaseline)

responseListOpsItemEvents :: ListOpsItemEventsResponse -> TestTree
responseListOpsItemEvents =
  res
    "ListOpsItemEventsResponse"
    "fixture/ListOpsItemEventsResponse.proto"
    ssm
    (Proxy :: Proxy ListOpsItemEvents)

responseDeleteResourceDataSync :: DeleteResourceDataSyncResponse -> TestTree
responseDeleteResourceDataSync =
  res
    "DeleteResourceDataSyncResponse"
    "fixture/DeleteResourceDataSyncResponse.proto"
    ssm
    (Proxy :: Proxy DeleteResourceDataSync)

responseDescribeInstancePatchStatesForPatchGroup :: DescribeInstancePatchStatesForPatchGroupResponse -> TestTree
responseDescribeInstancePatchStatesForPatchGroup =
  res
    "DescribeInstancePatchStatesForPatchGroupResponse"
    "fixture/DescribeInstancePatchStatesForPatchGroupResponse.proto"
    ssm
    (Proxy :: Proxy DescribeInstancePatchStatesForPatchGroup)

responseGetConnectionStatus :: GetConnectionStatusResponse -> TestTree
responseGetConnectionStatus =
  res
    "GetConnectionStatusResponse"
    "fixture/GetConnectionStatusResponse.proto"
    ssm
    (Proxy :: Proxy GetConnectionStatus)

responseUpdatePatchBaseline :: UpdatePatchBaselineResponse -> TestTree
responseUpdatePatchBaseline =
  res
    "UpdatePatchBaselineResponse"
    "fixture/UpdatePatchBaselineResponse.proto"
    ssm
    (Proxy :: Proxy UpdatePatchBaseline)

responseDescribeAvailablePatches :: DescribeAvailablePatchesResponse -> TestTree
responseDescribeAvailablePatches =
  res
    "DescribeAvailablePatchesResponse"
    "fixture/DescribeAvailablePatchesResponse.proto"
    ssm
    (Proxy :: Proxy DescribeAvailablePatches)

responseListComplianceItems :: ListComplianceItemsResponse -> TestTree
responseListComplianceItems =
  res
    "ListComplianceItemsResponse"
    "fixture/ListComplianceItemsResponse.proto"
    ssm
    (Proxy :: Proxy ListComplianceItems)

responseGetDocument :: GetDocumentResponse -> TestTree
responseGetDocument =
  res
    "GetDocumentResponse"
    "fixture/GetDocumentResponse.proto"
    ssm
    (Proxy :: Proxy GetDocument)

responseAddTagsToResource :: AddTagsToResourceResponse -> TestTree
responseAddTagsToResource =
  res
    "AddTagsToResourceResponse"
    "fixture/AddTagsToResourceResponse.proto"
    ssm
    (Proxy :: Proxy AddTagsToResource)

responseGetPatchBaselineForPatchGroup :: GetPatchBaselineForPatchGroupResponse -> TestTree
responseGetPatchBaselineForPatchGroup =
  res
    "GetPatchBaselineForPatchGroupResponse"
    "fixture/GetPatchBaselineForPatchGroupResponse.proto"
    ssm
    (Proxy :: Proxy GetPatchBaselineForPatchGroup)

responseUpdateManagedInstanceRole :: UpdateManagedInstanceRoleResponse -> TestTree
responseUpdateManagedInstanceRole =
  res
    "UpdateManagedInstanceRoleResponse"
    "fixture/UpdateManagedInstanceRoleResponse.proto"
    ssm
    (Proxy :: Proxy UpdateManagedInstanceRole)

responseDescribeMaintenanceWindowSchedule :: DescribeMaintenanceWindowScheduleResponse -> TestTree
responseDescribeMaintenanceWindowSchedule =
  res
    "DescribeMaintenanceWindowScheduleResponse"
    "fixture/DescribeMaintenanceWindowScheduleResponse.proto"
    ssm
    (Proxy :: Proxy DescribeMaintenanceWindowSchedule)

responseCreateResourceDataSync :: CreateResourceDataSyncResponse -> TestTree
responseCreateResourceDataSync =
  res
    "CreateResourceDataSyncResponse"
    "fixture/CreateResourceDataSyncResponse.proto"
    ssm
    (Proxy :: Proxy CreateResourceDataSync)

responseCreateAssociationBatch :: CreateAssociationBatchResponse -> TestTree
responseCreateAssociationBatch =
  res
    "CreateAssociationBatchResponse"
    "fixture/CreateAssociationBatchResponse.proto"
    ssm
    (Proxy :: Proxy CreateAssociationBatch)

responseCancelCommand :: CancelCommandResponse -> TestTree
responseCancelCommand =
  res
    "CancelCommandResponse"
    "fixture/CancelCommandResponse.proto"
    ssm
    (Proxy :: Proxy CancelCommand)

responseDescribeDocumentPermission :: DescribeDocumentPermissionResponse -> TestTree
responseDescribeDocumentPermission =
  res
    "DescribeDocumentPermissionResponse"
    "fixture/DescribeDocumentPermissionResponse.proto"
    ssm
    (Proxy :: Proxy DescribeDocumentPermission)

responseRegisterPatchBaselineForPatchGroup :: RegisterPatchBaselineForPatchGroupResponse -> TestTree
responseRegisterPatchBaselineForPatchGroup =
  res
    "RegisterPatchBaselineForPatchGroupResponse"
    "fixture/RegisterPatchBaselineForPatchGroupResponse.proto"
    ssm
    (Proxy :: Proxy RegisterPatchBaselineForPatchGroup)

responseDescribeEffectivePatchesForPatchBaseline :: DescribeEffectivePatchesForPatchBaselineResponse -> TestTree
responseDescribeEffectivePatchesForPatchBaseline =
  res
    "DescribeEffectivePatchesForPatchBaselineResponse"
    "fixture/DescribeEffectivePatchesForPatchBaselineResponse.proto"
    ssm
    (Proxy :: Proxy DescribeEffectivePatchesForPatchBaseline)

responseListCommandInvocations :: ListCommandInvocationsResponse -> TestTree
responseListCommandInvocations =
  res
    "ListCommandInvocationsResponse"
    "fixture/ListCommandInvocationsResponse.proto"
    ssm
    (Proxy :: Proxy ListCommandInvocations)

responseDescribeMaintenanceWindowTargets :: DescribeMaintenanceWindowTargetsResponse -> TestTree
responseDescribeMaintenanceWindowTargets =
  res
    "DescribeMaintenanceWindowTargetsResponse"
    "fixture/DescribeMaintenanceWindowTargetsResponse.proto"
    ssm
    (Proxy :: Proxy DescribeMaintenanceWindowTargets)

responseGetAutomationExecution :: GetAutomationExecutionResponse -> TestTree
responseGetAutomationExecution =
  res
    "GetAutomationExecutionResponse"
    "fixture/GetAutomationExecutionResponse.proto"
    ssm
    (Proxy :: Proxy GetAutomationExecution)

responseGetPatchBaseline :: GetPatchBaselineResponse -> TestTree
responseGetPatchBaseline =
  res
    "GetPatchBaselineResponse"
    "fixture/GetPatchBaselineResponse.proto"
    ssm
    (Proxy :: Proxy GetPatchBaseline)

responseDescribePatchGroupState :: DescribePatchGroupStateResponse -> TestTree
responseDescribePatchGroupState =
  res
    "DescribePatchGroupStateResponse"
    "fixture/DescribePatchGroupStateResponse.proto"
    ssm
    (Proxy :: Proxy DescribePatchGroupState)

responseDescribePatchBaselines :: DescribePatchBaselinesResponse -> TestTree
responseDescribePatchBaselines =
  res
    "DescribePatchBaselinesResponse"
    "fixture/DescribePatchBaselinesResponse.proto"
    ssm
    (Proxy :: Proxy DescribePatchBaselines)

responseUpdateDocumentMetadata :: UpdateDocumentMetadataResponse -> TestTree
responseUpdateDocumentMetadata =
  res
    "UpdateDocumentMetadataResponse"
    "fixture/UpdateDocumentMetadataResponse.proto"
    ssm
    (Proxy :: Proxy UpdateDocumentMetadata)

responseDescribeAutomationExecutions :: DescribeAutomationExecutionsResponse -> TestTree
responseDescribeAutomationExecutions =
  res
    "DescribeAutomationExecutionsResponse"
    "fixture/DescribeAutomationExecutionsResponse.proto"
    ssm
    (Proxy :: Proxy DescribeAutomationExecutions)

responsePutInventory :: PutInventoryResponse -> TestTree
responsePutInventory =
  res
    "PutInventoryResponse"
    "fixture/PutInventoryResponse.proto"
    ssm
    (Proxy :: Proxy PutInventory)

responseDescribeInventoryDeletions :: DescribeInventoryDeletionsResponse -> TestTree
responseDescribeInventoryDeletions =
  res
    "DescribeInventoryDeletionsResponse"
    "fixture/DescribeInventoryDeletionsResponse.proto"
    ssm
    (Proxy :: Proxy DescribeInventoryDeletions)

responseDescribeMaintenanceWindowExecutionTasks :: DescribeMaintenanceWindowExecutionTasksResponse -> TestTree
responseDescribeMaintenanceWindowExecutionTasks =
  res
    "DescribeMaintenanceWindowExecutionTasksResponse"
    "fixture/DescribeMaintenanceWindowExecutionTasksResponse.proto"
    ssm
    (Proxy :: Proxy DescribeMaintenanceWindowExecutionTasks)

responseDeleteMaintenanceWindow :: DeleteMaintenanceWindowResponse -> TestTree
responseDeleteMaintenanceWindow =
  res
    "DeleteMaintenanceWindowResponse"
    "fixture/DeleteMaintenanceWindowResponse.proto"
    ssm
    (Proxy :: Proxy DeleteMaintenanceWindow)

responseGetDefaultPatchBaseline :: GetDefaultPatchBaselineResponse -> TestTree
responseGetDefaultPatchBaseline =
  res
    "GetDefaultPatchBaselineResponse"
    "fixture/GetDefaultPatchBaselineResponse.proto"
    ssm
    (Proxy :: Proxy GetDefaultPatchBaseline)

responsePutParameter :: PutParameterResponse -> TestTree
responsePutParameter =
  res
    "PutParameterResponse"
    "fixture/PutParameterResponse.proto"
    ssm
    (Proxy :: Proxy PutParameter)

responseUpdateMaintenanceWindow :: UpdateMaintenanceWindowResponse -> TestTree
responseUpdateMaintenanceWindow =
  res
    "UpdateMaintenanceWindowResponse"
    "fixture/UpdateMaintenanceWindowResponse.proto"
    ssm
    (Proxy :: Proxy UpdateMaintenanceWindow)

responseListAssociations :: ListAssociationsResponse -> TestTree
responseListAssociations =
  res
    "ListAssociationsResponse"
    "fixture/ListAssociationsResponse.proto"
    ssm
    (Proxy :: Proxy ListAssociations)

responseGetMaintenanceWindowExecutionTask :: GetMaintenanceWindowExecutionTaskResponse -> TestTree
responseGetMaintenanceWindowExecutionTask =
  res
    "GetMaintenanceWindowExecutionTaskResponse"
    "fixture/GetMaintenanceWindowExecutionTaskResponse.proto"
    ssm
    (Proxy :: Proxy GetMaintenanceWindowExecutionTask)

responseStartAutomationExecution :: StartAutomationExecutionResponse -> TestTree
responseStartAutomationExecution =
  res
    "StartAutomationExecutionResponse"
    "fixture/StartAutomationExecutionResponse.proto"
    ssm
    (Proxy :: Proxy StartAutomationExecution)

responseDeleteActivation :: DeleteActivationResponse -> TestTree
responseDeleteActivation =
  res
    "DeleteActivationResponse"
    "fixture/DeleteActivationResponse.proto"
    ssm
    (Proxy :: Proxy DeleteActivation)

responseCreateMaintenanceWindow :: CreateMaintenanceWindowResponse -> TestTree
responseCreateMaintenanceWindow =
  res
    "CreateMaintenanceWindowResponse"
    "fixture/CreateMaintenanceWindowResponse.proto"
    ssm
    (Proxy :: Proxy CreateMaintenanceWindow)

responseDescribeAssociationExecutions :: DescribeAssociationExecutionsResponse -> TestTree
responseDescribeAssociationExecutions =
  res
    "DescribeAssociationExecutionsResponse"
    "fixture/DescribeAssociationExecutionsResponse.proto"
    ssm
    (Proxy :: Proxy DescribeAssociationExecutions)

responseGetMaintenanceWindowExecution :: GetMaintenanceWindowExecutionResponse -> TestTree
responseGetMaintenanceWindowExecution =
  res
    "GetMaintenanceWindowExecutionResponse"
    "fixture/GetMaintenanceWindowExecutionResponse.proto"
    ssm
    (Proxy :: Proxy GetMaintenanceWindowExecution)

responseStopAutomationExecution :: StopAutomationExecutionResponse -> TestTree
responseStopAutomationExecution =
  res
    "StopAutomationExecutionResponse"
    "fixture/StopAutomationExecutionResponse.proto"
    ssm
    (Proxy :: Proxy StopAutomationExecution)

responseGetInventorySchema :: GetInventorySchemaResponse -> TestTree
responseGetInventorySchema =
  res
    "GetInventorySchemaResponse"
    "fixture/GetInventorySchemaResponse.proto"
    ssm
    (Proxy :: Proxy GetInventorySchema)

responseStartAssociationsOnce :: StartAssociationsOnceResponse -> TestTree
responseStartAssociationsOnce =
  res
    "StartAssociationsOnceResponse"
    "fixture/StartAssociationsOnceResponse.proto"
    ssm
    (Proxy :: Proxy StartAssociationsOnce)

responseCancelMaintenanceWindowExecution :: CancelMaintenanceWindowExecutionResponse -> TestTree
responseCancelMaintenanceWindowExecution =
  res
    "CancelMaintenanceWindowExecutionResponse"
    "fixture/CancelMaintenanceWindowExecutionResponse.proto"
    ssm
    (Proxy :: Proxy CancelMaintenanceWindowExecution)

responseLabelParameterVersion :: LabelParameterVersionResponse -> TestTree
responseLabelParameterVersion =
  res
    "LabelParameterVersionResponse"
    "fixture/LabelParameterVersionResponse.proto"
    ssm
    (Proxy :: Proxy LabelParameterVersion)

responseGetParameterHistory :: GetParameterHistoryResponse -> TestTree
responseGetParameterHistory =
  res
    "GetParameterHistoryResponse"
    "fixture/GetParameterHistoryResponse.proto"
    ssm
    (Proxy :: Proxy GetParameterHistory)

responseGetServiceSetting :: GetServiceSettingResponse -> TestTree
responseGetServiceSetting =
  res
    "GetServiceSettingResponse"
    "fixture/GetServiceSettingResponse.proto"
    ssm
    (Proxy :: Proxy GetServiceSetting)

responseUpdateMaintenanceWindowTask :: UpdateMaintenanceWindowTaskResponse -> TestTree
responseUpdateMaintenanceWindowTask =
  res
    "UpdateMaintenanceWindowTaskResponse"
    "fixture/UpdateMaintenanceWindowTaskResponse.proto"
    ssm
    (Proxy :: Proxy UpdateMaintenanceWindowTask)

responseListDocumentMetadataHistory :: ListDocumentMetadataHistoryResponse -> TestTree
responseListDocumentMetadataHistory =
  res
    "ListDocumentMetadataHistoryResponse"
    "fixture/ListDocumentMetadataHistoryResponse.proto"
    ssm
    (Proxy :: Proxy ListDocumentMetadataHistory)

responseListInventoryEntries :: ListInventoryEntriesResponse -> TestTree
responseListInventoryEntries =
  res
    "ListInventoryEntriesResponse"
    "fixture/ListInventoryEntriesResponse.proto"
    ssm
    (Proxy :: Proxy ListInventoryEntries)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    ssm
    (Proxy :: Proxy ListTagsForResource)

responseGetParametersByPath :: GetParametersByPathResponse -> TestTree
responseGetParametersByPath =
  res
    "GetParametersByPathResponse"
    "fixture/GetParametersByPathResponse.proto"
    ssm
    (Proxy :: Proxy GetParametersByPath)

responseDescribeActivations :: DescribeActivationsResponse -> TestTree
responseDescribeActivations =
  res
    "DescribeActivationsResponse"
    "fixture/DescribeActivationsResponse.proto"
    ssm
    (Proxy :: Proxy DescribeActivations)

responseDescribeInstanceAssociationsStatus :: DescribeInstanceAssociationsStatusResponse -> TestTree
responseDescribeInstanceAssociationsStatus =
  res
    "DescribeInstanceAssociationsStatusResponse"
    "fixture/DescribeInstanceAssociationsStatusResponse.proto"
    ssm
    (Proxy :: Proxy DescribeInstanceAssociationsStatus)

responseDescribePatchProperties :: DescribePatchPropertiesResponse -> TestTree
responseDescribePatchProperties =
  res
    "DescribePatchPropertiesResponse"
    "fixture/DescribePatchPropertiesResponse.proto"
    ssm
    (Proxy :: Proxy DescribePatchProperties)

responseUpdateServiceSetting :: UpdateServiceSettingResponse -> TestTree
responseUpdateServiceSetting =
  res
    "UpdateServiceSettingResponse"
    "fixture/UpdateServiceSettingResponse.proto"
    ssm
    (Proxy :: Proxy UpdateServiceSetting)

responseDescribeMaintenanceWindowTasks :: DescribeMaintenanceWindowTasksResponse -> TestTree
responseDescribeMaintenanceWindowTasks =
  res
    "DescribeMaintenanceWindowTasksResponse"
    "fixture/DescribeMaintenanceWindowTasksResponse.proto"
    ssm
    (Proxy :: Proxy DescribeMaintenanceWindowTasks)
