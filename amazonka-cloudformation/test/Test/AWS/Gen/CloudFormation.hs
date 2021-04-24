{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.CloudFormation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.CloudFormation where

import Data.Proxy
import Network.AWS.CloudFormation
import Test.AWS.CloudFormation.Internal
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
--         [ requestDescribeStackResourceDrifts $
--             describeStackResourceDrifts
--
--         , requestListImports $
--             listImports
--
--         , requestDescribeStackEvents $
--             describeStackEvents
--
--         , requestStopStackSetOperation $
--             stopStackSetOperation
--
--         , requestDescribeChangeSet $
--             describeChangeSet
--
--         , requestDescribeStackResource $
--             describeStackResource
--
--         , requestDetectStackResourceDrift $
--             detectStackResourceDrift
--
--         , requestExecuteChangeSet $
--             executeChangeSet
--
--         , requestSetTypeDefaultVersion $
--             setTypeDefaultVersion
--
--         , requestRecordHandlerProgress $
--             recordHandlerProgress
--
--         , requestListStackSetOperations $
--             listStackSetOperations
--
--         , requestCreateStackInstances $
--             createStackInstances
--
--         , requestGetStackPolicy $
--             getStackPolicy
--
--         , requestDescribeStacks $
--             describeStacks
--
--         , requestDeleteStackSet $
--             deleteStackSet
--
--         , requestEstimateTemplateCost $
--             estimateTemplateCost
--
--         , requestUpdateStackSet $
--             updateStackSet
--
--         , requestDescribeAccountLimits $
--             describeAccountLimits
--
--         , requestCreateStack $
--             createStack
--
--         , requestDescribeStackInstance $
--             describeStackInstance
--
--         , requestGetTemplateSummary $
--             getTemplateSummary
--
--         , requestListStacks $
--             listStacks
--
--         , requestDeleteStack $
--             deleteStack
--
--         , requestUpdateStack $
--             updateStack
--
--         , requestDetectStackDrift $
--             detectStackDrift
--
--         , requestDescribeStackSetOperation $
--             describeStackSetOperation
--
--         , requestDescribeTypeRegistration $
--             describeTypeRegistration
--
--         , requestSetStackPolicy $
--             setStackPolicy
--
--         , requestSignalResource $
--             signalResource
--
--         , requestDescribeStackSet $
--             describeStackSet
--
--         , requestListStackSetOperationResults $
--             listStackSetOperationResults
--
--         , requestCancelUpdateStack $
--             cancelUpdateStack
--
--         , requestListTypes $
--             listTypes
--
--         , requestRegisterType $
--             registerType
--
--         , requestListStackInstances $
--             listStackInstances
--
--         , requestDetectStackSetDrift $
--             detectStackSetDrift
--
--         , requestContinueUpdateRollback $
--             continueUpdateRollback
--
--         , requestValidateTemplate $
--             validateTemplate
--
--         , requestGetTemplate $
--             getTemplate
--
--         , requestUpdateTerminationProtection $
--             updateTerminationProtection
--
--         , requestListTypeVersions $
--             listTypeVersions
--
--         , requestListTypeRegistrations $
--             listTypeRegistrations
--
--         , requestDeregisterType $
--             deregisterType
--
--         , requestCreateStackSet $
--             createStackSet
--
--         , requestCreateChangeSet $
--             createChangeSet
--
--         , requestListExports $
--             listExports
--
--         , requestDescribeType $
--             describeType
--
--         , requestListStackResources $
--             listStackResources
--
--         , requestDeleteStackInstances $
--             deleteStackInstances
--
--         , requestListStackSets $
--             listStackSets
--
--         , requestDescribeStackDriftDetectionStatus $
--             describeStackDriftDetectionStatus
--
--         , requestUpdateStackInstances $
--             updateStackInstances
--
--         , requestListChangeSets $
--             listChangeSets
--
--         , requestDeleteChangeSet $
--             deleteChangeSet
--
--         , requestDescribeStackResources $
--             describeStackResources
--
--           ]

--     , testGroup "response"
--         [ responseDescribeStackResourceDrifts $
--             describeStackResourceDriftsResponse
--
--         , responseListImports $
--             listImportsResponse
--
--         , responseDescribeStackEvents $
--             describeStackEventsResponse
--
--         , responseStopStackSetOperation $
--             stopStackSetOperationResponse
--
--         , responseDescribeChangeSet $
--             describeChangeSetResponse
--
--         , responseDescribeStackResource $
--             describeStackResourceResponse
--
--         , responseDetectStackResourceDrift $
--             detectStackResourceDriftResponse
--
--         , responseExecuteChangeSet $
--             executeChangeSetResponse
--
--         , responseSetTypeDefaultVersion $
--             setTypeDefaultVersionResponse
--
--         , responseRecordHandlerProgress $
--             recordHandlerProgressResponse
--
--         , responseListStackSetOperations $
--             listStackSetOperationsResponse
--
--         , responseCreateStackInstances $
--             createStackInstancesResponse
--
--         , responseGetStackPolicy $
--             getStackPolicyResponse
--
--         , responseDescribeStacks $
--             describeStacksResponse
--
--         , responseDeleteStackSet $
--             deleteStackSetResponse
--
--         , responseEstimateTemplateCost $
--             estimateTemplateCostResponse
--
--         , responseUpdateStackSet $
--             updateStackSetResponse
--
--         , responseDescribeAccountLimits $
--             describeAccountLimitsResponse
--
--         , responseCreateStack $
--             createStackResponse
--
--         , responseDescribeStackInstance $
--             describeStackInstanceResponse
--
--         , responseGetTemplateSummary $
--             getTemplateSummaryResponse
--
--         , responseListStacks $
--             listStacksResponse
--
--         , responseDeleteStack $
--             deleteStackResponse
--
--         , responseUpdateStack $
--             updateStackResponse
--
--         , responseDetectStackDrift $
--             detectStackDriftResponse
--
--         , responseDescribeStackSetOperation $
--             describeStackSetOperationResponse
--
--         , responseDescribeTypeRegistration $
--             describeTypeRegistrationResponse
--
--         , responseSetStackPolicy $
--             setStackPolicyResponse
--
--         , responseSignalResource $
--             signalResourceResponse
--
--         , responseDescribeStackSet $
--             describeStackSetResponse
--
--         , responseListStackSetOperationResults $
--             listStackSetOperationResultsResponse
--
--         , responseCancelUpdateStack $
--             cancelUpdateStackResponse
--
--         , responseListTypes $
--             listTypesResponse
--
--         , responseRegisterType $
--             registerTypeResponse
--
--         , responseListStackInstances $
--             listStackInstancesResponse
--
--         , responseDetectStackSetDrift $
--             detectStackSetDriftResponse
--
--         , responseContinueUpdateRollback $
--             continueUpdateRollbackResponse
--
--         , responseValidateTemplate $
--             validateTemplateResponse
--
--         , responseGetTemplate $
--             getTemplateResponse
--
--         , responseUpdateTerminationProtection $
--             updateTerminationProtectionResponse
--
--         , responseListTypeVersions $
--             listTypeVersionsResponse
--
--         , responseListTypeRegistrations $
--             listTypeRegistrationsResponse
--
--         , responseDeregisterType $
--             deregisterTypeResponse
--
--         , responseCreateStackSet $
--             createStackSetResponse
--
--         , responseCreateChangeSet $
--             createChangeSetResponse
--
--         , responseListExports $
--             listExportsResponse
--
--         , responseDescribeType $
--             describeTypeResponse
--
--         , responseListStackResources $
--             listStackResourcesResponse
--
--         , responseDeleteStackInstances $
--             deleteStackInstancesResponse
--
--         , responseListStackSets $
--             listStackSetsResponse
--
--         , responseDescribeStackDriftDetectionStatus $
--             describeStackDriftDetectionStatusResponse
--
--         , responseUpdateStackInstances $
--             updateStackInstancesResponse
--
--         , responseListChangeSets $
--             listChangeSetsResponse
--
--         , responseDeleteChangeSet $
--             deleteChangeSetResponse
--
--         , responseDescribeStackResources $
--             describeStackResourcesResponse
--
--           ]
--     ]

-- Requests

requestDescribeStackResourceDrifts :: DescribeStackResourceDrifts -> TestTree
requestDescribeStackResourceDrifts =
  req
    "DescribeStackResourceDrifts"
    "fixture/DescribeStackResourceDrifts.yaml"

requestListImports :: ListImports -> TestTree
requestListImports =
  req
    "ListImports"
    "fixture/ListImports.yaml"

requestDescribeStackEvents :: DescribeStackEvents -> TestTree
requestDescribeStackEvents =
  req
    "DescribeStackEvents"
    "fixture/DescribeStackEvents.yaml"

requestStopStackSetOperation :: StopStackSetOperation -> TestTree
requestStopStackSetOperation =
  req
    "StopStackSetOperation"
    "fixture/StopStackSetOperation.yaml"

requestDescribeChangeSet :: DescribeChangeSet -> TestTree
requestDescribeChangeSet =
  req
    "DescribeChangeSet"
    "fixture/DescribeChangeSet.yaml"

requestDescribeStackResource :: DescribeStackResource -> TestTree
requestDescribeStackResource =
  req
    "DescribeStackResource"
    "fixture/DescribeStackResource.yaml"

requestDetectStackResourceDrift :: DetectStackResourceDrift -> TestTree
requestDetectStackResourceDrift =
  req
    "DetectStackResourceDrift"
    "fixture/DetectStackResourceDrift.yaml"

requestExecuteChangeSet :: ExecuteChangeSet -> TestTree
requestExecuteChangeSet =
  req
    "ExecuteChangeSet"
    "fixture/ExecuteChangeSet.yaml"

requestSetTypeDefaultVersion :: SetTypeDefaultVersion -> TestTree
requestSetTypeDefaultVersion =
  req
    "SetTypeDefaultVersion"
    "fixture/SetTypeDefaultVersion.yaml"

requestRecordHandlerProgress :: RecordHandlerProgress -> TestTree
requestRecordHandlerProgress =
  req
    "RecordHandlerProgress"
    "fixture/RecordHandlerProgress.yaml"

requestListStackSetOperations :: ListStackSetOperations -> TestTree
requestListStackSetOperations =
  req
    "ListStackSetOperations"
    "fixture/ListStackSetOperations.yaml"

requestCreateStackInstances :: CreateStackInstances -> TestTree
requestCreateStackInstances =
  req
    "CreateStackInstances"
    "fixture/CreateStackInstances.yaml"

requestGetStackPolicy :: GetStackPolicy -> TestTree
requestGetStackPolicy =
  req
    "GetStackPolicy"
    "fixture/GetStackPolicy.yaml"

requestDescribeStacks :: DescribeStacks -> TestTree
requestDescribeStacks =
  req
    "DescribeStacks"
    "fixture/DescribeStacks.yaml"

requestDeleteStackSet :: DeleteStackSet -> TestTree
requestDeleteStackSet =
  req
    "DeleteStackSet"
    "fixture/DeleteStackSet.yaml"

requestEstimateTemplateCost :: EstimateTemplateCost -> TestTree
requestEstimateTemplateCost =
  req
    "EstimateTemplateCost"
    "fixture/EstimateTemplateCost.yaml"

requestUpdateStackSet :: UpdateStackSet -> TestTree
requestUpdateStackSet =
  req
    "UpdateStackSet"
    "fixture/UpdateStackSet.yaml"

requestDescribeAccountLimits :: DescribeAccountLimits -> TestTree
requestDescribeAccountLimits =
  req
    "DescribeAccountLimits"
    "fixture/DescribeAccountLimits.yaml"

requestCreateStack :: CreateStack -> TestTree
requestCreateStack =
  req
    "CreateStack"
    "fixture/CreateStack.yaml"

requestDescribeStackInstance :: DescribeStackInstance -> TestTree
requestDescribeStackInstance =
  req
    "DescribeStackInstance"
    "fixture/DescribeStackInstance.yaml"

requestGetTemplateSummary :: GetTemplateSummary -> TestTree
requestGetTemplateSummary =
  req
    "GetTemplateSummary"
    "fixture/GetTemplateSummary.yaml"

requestListStacks :: ListStacks -> TestTree
requestListStacks =
  req
    "ListStacks"
    "fixture/ListStacks.yaml"

requestDeleteStack :: DeleteStack -> TestTree
requestDeleteStack =
  req
    "DeleteStack"
    "fixture/DeleteStack.yaml"

requestUpdateStack :: UpdateStack -> TestTree
requestUpdateStack =
  req
    "UpdateStack"
    "fixture/UpdateStack.yaml"

requestDetectStackDrift :: DetectStackDrift -> TestTree
requestDetectStackDrift =
  req
    "DetectStackDrift"
    "fixture/DetectStackDrift.yaml"

requestDescribeStackSetOperation :: DescribeStackSetOperation -> TestTree
requestDescribeStackSetOperation =
  req
    "DescribeStackSetOperation"
    "fixture/DescribeStackSetOperation.yaml"

requestDescribeTypeRegistration :: DescribeTypeRegistration -> TestTree
requestDescribeTypeRegistration =
  req
    "DescribeTypeRegistration"
    "fixture/DescribeTypeRegistration.yaml"

requestSetStackPolicy :: SetStackPolicy -> TestTree
requestSetStackPolicy =
  req
    "SetStackPolicy"
    "fixture/SetStackPolicy.yaml"

requestSignalResource :: SignalResource -> TestTree
requestSignalResource =
  req
    "SignalResource"
    "fixture/SignalResource.yaml"

requestDescribeStackSet :: DescribeStackSet -> TestTree
requestDescribeStackSet =
  req
    "DescribeStackSet"
    "fixture/DescribeStackSet.yaml"

requestListStackSetOperationResults :: ListStackSetOperationResults -> TestTree
requestListStackSetOperationResults =
  req
    "ListStackSetOperationResults"
    "fixture/ListStackSetOperationResults.yaml"

requestCancelUpdateStack :: CancelUpdateStack -> TestTree
requestCancelUpdateStack =
  req
    "CancelUpdateStack"
    "fixture/CancelUpdateStack.yaml"

requestListTypes :: ListTypes -> TestTree
requestListTypes =
  req
    "ListTypes"
    "fixture/ListTypes.yaml"

requestRegisterType :: RegisterType -> TestTree
requestRegisterType =
  req
    "RegisterType"
    "fixture/RegisterType.yaml"

requestListStackInstances :: ListStackInstances -> TestTree
requestListStackInstances =
  req
    "ListStackInstances"
    "fixture/ListStackInstances.yaml"

requestDetectStackSetDrift :: DetectStackSetDrift -> TestTree
requestDetectStackSetDrift =
  req
    "DetectStackSetDrift"
    "fixture/DetectStackSetDrift.yaml"

requestContinueUpdateRollback :: ContinueUpdateRollback -> TestTree
requestContinueUpdateRollback =
  req
    "ContinueUpdateRollback"
    "fixture/ContinueUpdateRollback.yaml"

requestValidateTemplate :: ValidateTemplate -> TestTree
requestValidateTemplate =
  req
    "ValidateTemplate"
    "fixture/ValidateTemplate.yaml"

requestGetTemplate :: GetTemplate -> TestTree
requestGetTemplate =
  req
    "GetTemplate"
    "fixture/GetTemplate.yaml"

requestUpdateTerminationProtection :: UpdateTerminationProtection -> TestTree
requestUpdateTerminationProtection =
  req
    "UpdateTerminationProtection"
    "fixture/UpdateTerminationProtection.yaml"

requestListTypeVersions :: ListTypeVersions -> TestTree
requestListTypeVersions =
  req
    "ListTypeVersions"
    "fixture/ListTypeVersions.yaml"

requestListTypeRegistrations :: ListTypeRegistrations -> TestTree
requestListTypeRegistrations =
  req
    "ListTypeRegistrations"
    "fixture/ListTypeRegistrations.yaml"

requestDeregisterType :: DeregisterType -> TestTree
requestDeregisterType =
  req
    "DeregisterType"
    "fixture/DeregisterType.yaml"

requestCreateStackSet :: CreateStackSet -> TestTree
requestCreateStackSet =
  req
    "CreateStackSet"
    "fixture/CreateStackSet.yaml"

requestCreateChangeSet :: CreateChangeSet -> TestTree
requestCreateChangeSet =
  req
    "CreateChangeSet"
    "fixture/CreateChangeSet.yaml"

requestListExports :: ListExports -> TestTree
requestListExports =
  req
    "ListExports"
    "fixture/ListExports.yaml"

requestDescribeType :: DescribeType -> TestTree
requestDescribeType =
  req
    "DescribeType"
    "fixture/DescribeType.yaml"

requestListStackResources :: ListStackResources -> TestTree
requestListStackResources =
  req
    "ListStackResources"
    "fixture/ListStackResources.yaml"

requestDeleteStackInstances :: DeleteStackInstances -> TestTree
requestDeleteStackInstances =
  req
    "DeleteStackInstances"
    "fixture/DeleteStackInstances.yaml"

requestListStackSets :: ListStackSets -> TestTree
requestListStackSets =
  req
    "ListStackSets"
    "fixture/ListStackSets.yaml"

requestDescribeStackDriftDetectionStatus :: DescribeStackDriftDetectionStatus -> TestTree
requestDescribeStackDriftDetectionStatus =
  req
    "DescribeStackDriftDetectionStatus"
    "fixture/DescribeStackDriftDetectionStatus.yaml"

requestUpdateStackInstances :: UpdateStackInstances -> TestTree
requestUpdateStackInstances =
  req
    "UpdateStackInstances"
    "fixture/UpdateStackInstances.yaml"

requestListChangeSets :: ListChangeSets -> TestTree
requestListChangeSets =
  req
    "ListChangeSets"
    "fixture/ListChangeSets.yaml"

requestDeleteChangeSet :: DeleteChangeSet -> TestTree
requestDeleteChangeSet =
  req
    "DeleteChangeSet"
    "fixture/DeleteChangeSet.yaml"

requestDescribeStackResources :: DescribeStackResources -> TestTree
requestDescribeStackResources =
  req
    "DescribeStackResources"
    "fixture/DescribeStackResources.yaml"

-- Responses

responseDescribeStackResourceDrifts :: DescribeStackResourceDriftsResponse -> TestTree
responseDescribeStackResourceDrifts =
  res
    "DescribeStackResourceDriftsResponse"
    "fixture/DescribeStackResourceDriftsResponse.proto"
    cloudFormation
    (Proxy :: Proxy DescribeStackResourceDrifts)

responseListImports :: ListImportsResponse -> TestTree
responseListImports =
  res
    "ListImportsResponse"
    "fixture/ListImportsResponse.proto"
    cloudFormation
    (Proxy :: Proxy ListImports)

responseDescribeStackEvents :: DescribeStackEventsResponse -> TestTree
responseDescribeStackEvents =
  res
    "DescribeStackEventsResponse"
    "fixture/DescribeStackEventsResponse.proto"
    cloudFormation
    (Proxy :: Proxy DescribeStackEvents)

responseStopStackSetOperation :: StopStackSetOperationResponse -> TestTree
responseStopStackSetOperation =
  res
    "StopStackSetOperationResponse"
    "fixture/StopStackSetOperationResponse.proto"
    cloudFormation
    (Proxy :: Proxy StopStackSetOperation)

responseDescribeChangeSet :: DescribeChangeSetResponse -> TestTree
responseDescribeChangeSet =
  res
    "DescribeChangeSetResponse"
    "fixture/DescribeChangeSetResponse.proto"
    cloudFormation
    (Proxy :: Proxy DescribeChangeSet)

responseDescribeStackResource :: DescribeStackResourceResponse -> TestTree
responseDescribeStackResource =
  res
    "DescribeStackResourceResponse"
    "fixture/DescribeStackResourceResponse.proto"
    cloudFormation
    (Proxy :: Proxy DescribeStackResource)

responseDetectStackResourceDrift :: DetectStackResourceDriftResponse -> TestTree
responseDetectStackResourceDrift =
  res
    "DetectStackResourceDriftResponse"
    "fixture/DetectStackResourceDriftResponse.proto"
    cloudFormation
    (Proxy :: Proxy DetectStackResourceDrift)

responseExecuteChangeSet :: ExecuteChangeSetResponse -> TestTree
responseExecuteChangeSet =
  res
    "ExecuteChangeSetResponse"
    "fixture/ExecuteChangeSetResponse.proto"
    cloudFormation
    (Proxy :: Proxy ExecuteChangeSet)

responseSetTypeDefaultVersion :: SetTypeDefaultVersionResponse -> TestTree
responseSetTypeDefaultVersion =
  res
    "SetTypeDefaultVersionResponse"
    "fixture/SetTypeDefaultVersionResponse.proto"
    cloudFormation
    (Proxy :: Proxy SetTypeDefaultVersion)

responseRecordHandlerProgress :: RecordHandlerProgressResponse -> TestTree
responseRecordHandlerProgress =
  res
    "RecordHandlerProgressResponse"
    "fixture/RecordHandlerProgressResponse.proto"
    cloudFormation
    (Proxy :: Proxy RecordHandlerProgress)

responseListStackSetOperations :: ListStackSetOperationsResponse -> TestTree
responseListStackSetOperations =
  res
    "ListStackSetOperationsResponse"
    "fixture/ListStackSetOperationsResponse.proto"
    cloudFormation
    (Proxy :: Proxy ListStackSetOperations)

responseCreateStackInstances :: CreateStackInstancesResponse -> TestTree
responseCreateStackInstances =
  res
    "CreateStackInstancesResponse"
    "fixture/CreateStackInstancesResponse.proto"
    cloudFormation
    (Proxy :: Proxy CreateStackInstances)

responseGetStackPolicy :: GetStackPolicyResponse -> TestTree
responseGetStackPolicy =
  res
    "GetStackPolicyResponse"
    "fixture/GetStackPolicyResponse.proto"
    cloudFormation
    (Proxy :: Proxy GetStackPolicy)

responseDescribeStacks :: DescribeStacksResponse -> TestTree
responseDescribeStacks =
  res
    "DescribeStacksResponse"
    "fixture/DescribeStacksResponse.proto"
    cloudFormation
    (Proxy :: Proxy DescribeStacks)

responseDeleteStackSet :: DeleteStackSetResponse -> TestTree
responseDeleteStackSet =
  res
    "DeleteStackSetResponse"
    "fixture/DeleteStackSetResponse.proto"
    cloudFormation
    (Proxy :: Proxy DeleteStackSet)

responseEstimateTemplateCost :: EstimateTemplateCostResponse -> TestTree
responseEstimateTemplateCost =
  res
    "EstimateTemplateCostResponse"
    "fixture/EstimateTemplateCostResponse.proto"
    cloudFormation
    (Proxy :: Proxy EstimateTemplateCost)

responseUpdateStackSet :: UpdateStackSetResponse -> TestTree
responseUpdateStackSet =
  res
    "UpdateStackSetResponse"
    "fixture/UpdateStackSetResponse.proto"
    cloudFormation
    (Proxy :: Proxy UpdateStackSet)

responseDescribeAccountLimits :: DescribeAccountLimitsResponse -> TestTree
responseDescribeAccountLimits =
  res
    "DescribeAccountLimitsResponse"
    "fixture/DescribeAccountLimitsResponse.proto"
    cloudFormation
    (Proxy :: Proxy DescribeAccountLimits)

responseCreateStack :: CreateStackResponse -> TestTree
responseCreateStack =
  res
    "CreateStackResponse"
    "fixture/CreateStackResponse.proto"
    cloudFormation
    (Proxy :: Proxy CreateStack)

responseDescribeStackInstance :: DescribeStackInstanceResponse -> TestTree
responseDescribeStackInstance =
  res
    "DescribeStackInstanceResponse"
    "fixture/DescribeStackInstanceResponse.proto"
    cloudFormation
    (Proxy :: Proxy DescribeStackInstance)

responseGetTemplateSummary :: GetTemplateSummaryResponse -> TestTree
responseGetTemplateSummary =
  res
    "GetTemplateSummaryResponse"
    "fixture/GetTemplateSummaryResponse.proto"
    cloudFormation
    (Proxy :: Proxy GetTemplateSummary)

responseListStacks :: ListStacksResponse -> TestTree
responseListStacks =
  res
    "ListStacksResponse"
    "fixture/ListStacksResponse.proto"
    cloudFormation
    (Proxy :: Proxy ListStacks)

responseDeleteStack :: DeleteStackResponse -> TestTree
responseDeleteStack =
  res
    "DeleteStackResponse"
    "fixture/DeleteStackResponse.proto"
    cloudFormation
    (Proxy :: Proxy DeleteStack)

responseUpdateStack :: UpdateStackResponse -> TestTree
responseUpdateStack =
  res
    "UpdateStackResponse"
    "fixture/UpdateStackResponse.proto"
    cloudFormation
    (Proxy :: Proxy UpdateStack)

responseDetectStackDrift :: DetectStackDriftResponse -> TestTree
responseDetectStackDrift =
  res
    "DetectStackDriftResponse"
    "fixture/DetectStackDriftResponse.proto"
    cloudFormation
    (Proxy :: Proxy DetectStackDrift)

responseDescribeStackSetOperation :: DescribeStackSetOperationResponse -> TestTree
responseDescribeStackSetOperation =
  res
    "DescribeStackSetOperationResponse"
    "fixture/DescribeStackSetOperationResponse.proto"
    cloudFormation
    (Proxy :: Proxy DescribeStackSetOperation)

responseDescribeTypeRegistration :: DescribeTypeRegistrationResponse -> TestTree
responseDescribeTypeRegistration =
  res
    "DescribeTypeRegistrationResponse"
    "fixture/DescribeTypeRegistrationResponse.proto"
    cloudFormation
    (Proxy :: Proxy DescribeTypeRegistration)

responseSetStackPolicy :: SetStackPolicyResponse -> TestTree
responseSetStackPolicy =
  res
    "SetStackPolicyResponse"
    "fixture/SetStackPolicyResponse.proto"
    cloudFormation
    (Proxy :: Proxy SetStackPolicy)

responseSignalResource :: SignalResourceResponse -> TestTree
responseSignalResource =
  res
    "SignalResourceResponse"
    "fixture/SignalResourceResponse.proto"
    cloudFormation
    (Proxy :: Proxy SignalResource)

responseDescribeStackSet :: DescribeStackSetResponse -> TestTree
responseDescribeStackSet =
  res
    "DescribeStackSetResponse"
    "fixture/DescribeStackSetResponse.proto"
    cloudFormation
    (Proxy :: Proxy DescribeStackSet)

responseListStackSetOperationResults :: ListStackSetOperationResultsResponse -> TestTree
responseListStackSetOperationResults =
  res
    "ListStackSetOperationResultsResponse"
    "fixture/ListStackSetOperationResultsResponse.proto"
    cloudFormation
    (Proxy :: Proxy ListStackSetOperationResults)

responseCancelUpdateStack :: CancelUpdateStackResponse -> TestTree
responseCancelUpdateStack =
  res
    "CancelUpdateStackResponse"
    "fixture/CancelUpdateStackResponse.proto"
    cloudFormation
    (Proxy :: Proxy CancelUpdateStack)

responseListTypes :: ListTypesResponse -> TestTree
responseListTypes =
  res
    "ListTypesResponse"
    "fixture/ListTypesResponse.proto"
    cloudFormation
    (Proxy :: Proxy ListTypes)

responseRegisterType :: RegisterTypeResponse -> TestTree
responseRegisterType =
  res
    "RegisterTypeResponse"
    "fixture/RegisterTypeResponse.proto"
    cloudFormation
    (Proxy :: Proxy RegisterType)

responseListStackInstances :: ListStackInstancesResponse -> TestTree
responseListStackInstances =
  res
    "ListStackInstancesResponse"
    "fixture/ListStackInstancesResponse.proto"
    cloudFormation
    (Proxy :: Proxy ListStackInstances)

responseDetectStackSetDrift :: DetectStackSetDriftResponse -> TestTree
responseDetectStackSetDrift =
  res
    "DetectStackSetDriftResponse"
    "fixture/DetectStackSetDriftResponse.proto"
    cloudFormation
    (Proxy :: Proxy DetectStackSetDrift)

responseContinueUpdateRollback :: ContinueUpdateRollbackResponse -> TestTree
responseContinueUpdateRollback =
  res
    "ContinueUpdateRollbackResponse"
    "fixture/ContinueUpdateRollbackResponse.proto"
    cloudFormation
    (Proxy :: Proxy ContinueUpdateRollback)

responseValidateTemplate :: ValidateTemplateResponse -> TestTree
responseValidateTemplate =
  res
    "ValidateTemplateResponse"
    "fixture/ValidateTemplateResponse.proto"
    cloudFormation
    (Proxy :: Proxy ValidateTemplate)

responseGetTemplate :: GetTemplateResponse -> TestTree
responseGetTemplate =
  res
    "GetTemplateResponse"
    "fixture/GetTemplateResponse.proto"
    cloudFormation
    (Proxy :: Proxy GetTemplate)

responseUpdateTerminationProtection :: UpdateTerminationProtectionResponse -> TestTree
responseUpdateTerminationProtection =
  res
    "UpdateTerminationProtectionResponse"
    "fixture/UpdateTerminationProtectionResponse.proto"
    cloudFormation
    (Proxy :: Proxy UpdateTerminationProtection)

responseListTypeVersions :: ListTypeVersionsResponse -> TestTree
responseListTypeVersions =
  res
    "ListTypeVersionsResponse"
    "fixture/ListTypeVersionsResponse.proto"
    cloudFormation
    (Proxy :: Proxy ListTypeVersions)

responseListTypeRegistrations :: ListTypeRegistrationsResponse -> TestTree
responseListTypeRegistrations =
  res
    "ListTypeRegistrationsResponse"
    "fixture/ListTypeRegistrationsResponse.proto"
    cloudFormation
    (Proxy :: Proxy ListTypeRegistrations)

responseDeregisterType :: DeregisterTypeResponse -> TestTree
responseDeregisterType =
  res
    "DeregisterTypeResponse"
    "fixture/DeregisterTypeResponse.proto"
    cloudFormation
    (Proxy :: Proxy DeregisterType)

responseCreateStackSet :: CreateStackSetResponse -> TestTree
responseCreateStackSet =
  res
    "CreateStackSetResponse"
    "fixture/CreateStackSetResponse.proto"
    cloudFormation
    (Proxy :: Proxy CreateStackSet)

responseCreateChangeSet :: CreateChangeSetResponse -> TestTree
responseCreateChangeSet =
  res
    "CreateChangeSetResponse"
    "fixture/CreateChangeSetResponse.proto"
    cloudFormation
    (Proxy :: Proxy CreateChangeSet)

responseListExports :: ListExportsResponse -> TestTree
responseListExports =
  res
    "ListExportsResponse"
    "fixture/ListExportsResponse.proto"
    cloudFormation
    (Proxy :: Proxy ListExports)

responseDescribeType :: DescribeTypeResponse -> TestTree
responseDescribeType =
  res
    "DescribeTypeResponse"
    "fixture/DescribeTypeResponse.proto"
    cloudFormation
    (Proxy :: Proxy DescribeType)

responseListStackResources :: ListStackResourcesResponse -> TestTree
responseListStackResources =
  res
    "ListStackResourcesResponse"
    "fixture/ListStackResourcesResponse.proto"
    cloudFormation
    (Proxy :: Proxy ListStackResources)

responseDeleteStackInstances :: DeleteStackInstancesResponse -> TestTree
responseDeleteStackInstances =
  res
    "DeleteStackInstancesResponse"
    "fixture/DeleteStackInstancesResponse.proto"
    cloudFormation
    (Proxy :: Proxy DeleteStackInstances)

responseListStackSets :: ListStackSetsResponse -> TestTree
responseListStackSets =
  res
    "ListStackSetsResponse"
    "fixture/ListStackSetsResponse.proto"
    cloudFormation
    (Proxy :: Proxy ListStackSets)

responseDescribeStackDriftDetectionStatus :: DescribeStackDriftDetectionStatusResponse -> TestTree
responseDescribeStackDriftDetectionStatus =
  res
    "DescribeStackDriftDetectionStatusResponse"
    "fixture/DescribeStackDriftDetectionStatusResponse.proto"
    cloudFormation
    (Proxy :: Proxy DescribeStackDriftDetectionStatus)

responseUpdateStackInstances :: UpdateStackInstancesResponse -> TestTree
responseUpdateStackInstances =
  res
    "UpdateStackInstancesResponse"
    "fixture/UpdateStackInstancesResponse.proto"
    cloudFormation
    (Proxy :: Proxy UpdateStackInstances)

responseListChangeSets :: ListChangeSetsResponse -> TestTree
responseListChangeSets =
  res
    "ListChangeSetsResponse"
    "fixture/ListChangeSetsResponse.proto"
    cloudFormation
    (Proxy :: Proxy ListChangeSets)

responseDeleteChangeSet :: DeleteChangeSetResponse -> TestTree
responseDeleteChangeSet =
  res
    "DeleteChangeSetResponse"
    "fixture/DeleteChangeSetResponse.proto"
    cloudFormation
    (Proxy :: Proxy DeleteChangeSet)

responseDescribeStackResources :: DescribeStackResourcesResponse -> TestTree
responseDescribeStackResources =
  res
    "DescribeStackResourcesResponse"
    "fixture/DescribeStackResourcesResponse.proto"
    cloudFormation
    (Proxy :: Proxy DescribeStackResources)
