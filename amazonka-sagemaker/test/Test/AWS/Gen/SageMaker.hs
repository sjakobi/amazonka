{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.SageMaker
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.SageMaker where

import Data.Proxy
import Network.AWS.SageMaker
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.AWS.SageMaker.Internal
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestDisassociateTrialComponent $
--             disassociateTrialComponent
--
--         , requestDeleteArtifact $
--             deleteArtifact
--
--         , requestCreateTransformJob $
--             createTransformJob
--
--         , requestListHumanTaskUis $
--             listHumanTaskUis
--
--         , requestDeleteHumanTaskUi $
--             deleteHumanTaskUi
--
--         , requestUpdateAction $
--             updateAction
--
--         , requestDescribePipeline $
--             describePipeline
--
--         , requestUpdateArtifact $
--             updateArtifact
--
--         , requestDescribeUserProfile $
--             describeUserProfile
--
--         , requestStopTrainingJob $
--             stopTrainingJob
--
--         , requestCreateEndpoint $
--             createEndpoint
--
--         , requestGetSearchSuggestions $
--             getSearchSuggestions
--
--         , requestDeleteAction $
--             deleteAction
--
--         , requestCreateEdgePackagingJob $
--             createEdgePackagingJob
--
--         , requestDescribeEndpointConfig $
--             describeEndpointConfig
--
--         , requestListModelPackages $
--             listModelPackages
--
--         , requestGetModelPackageGroupPolicy $
--             getModelPackageGroupPolicy
--
--         , requestDescribeMonitoringSchedule $
--             describeMonitoringSchedule
--
--         , requestCreateModelExplainabilityJobDefinition $
--             createModelExplainabilityJobDefinition
--
--         , requestDescribeLabelingJob $
--             describeLabelingJob
--
--         , requestCreateNotebookInstance $
--             createNotebookInstance
--
--         , requestUpdateModelPackage $
--             updateModelPackage
--
--         , requestCreateModelQualityJobDefinition $
--             createModelQualityJobDefinition
--
--         , requestDeleteModelPackage $
--             deleteModelPackage
--
--         , requestListProjects $
--             listProjects
--
--         , requestListSubscribedWorkteams $
--             listSubscribedWorkteams
--
--         , requestDeleteNotebookInstance $
--             deleteNotebookInstance
--
--         , requestCreateProject $
--             createProject
--
--         , requestDescribeProcessingJob $
--             describeProcessingJob
--
--         , requestListDomains $
--             listDomains
--
--         , requestDeleteModelExplainabilityJobDefinition $
--             deleteModelExplainabilityJobDefinition
--
--         , requestStopMonitoringSchedule $
--             stopMonitoringSchedule
--
--         , requestListDevices $
--             listDevices
--
--         , requestCreateModelPackage $
--             createModelPackage
--
--         , requestUpdateNotebookInstance $
--             updateNotebookInstance
--
--         , requestStopAutoMLJob $
--             stopAutoMLJob
--
--         , requestDescribeAppImageConfig $
--             describeAppImageConfig
--
--         , requestStartMonitoringSchedule $
--             startMonitoringSchedule
--
--         , requestStopCompilationJob $
--             stopCompilationJob
--
--         , requestCreateTrial $
--             createTrial
--
--         , requestGetSagemakerServicecatalogPortfolioStatus $
--             getSagemakerServicecatalogPortfolioStatus
--
--         , requestUpdateCodeRepository $
--             updateCodeRepository
--
--         , requestSearch $
--             search
--
--         , requestDeleteModel $
--             deleteModel
--
--         , requestDeleteDataQualityJobDefinition $
--             deleteDataQualityJobDefinition
--
--         , requestListImages $
--             listImages
--
--         , requestListTrainingJobs $
--             listTrainingJobs
--
--         , requestDescribeTransformJob $
--             describeTransformJob
--
--         , requestCreatePipeline $
--             createPipeline
--
--         , requestCreateModelPackageGroup $
--             createModelPackageGroup
--
--         , requestListCandidatesForAutoMLJob $
--             listCandidatesForAutoMLJob
--
--         , requestDeleteAlgorithm $
--             deleteAlgorithm
--
--         , requestGetDeviceFleetReport $
--             getDeviceFleetReport
--
--         , requestListDataQualityJobDefinitions $
--             listDataQualityJobDefinitions
--
--         , requestDescribeEdgePackagingJob $
--             describeEdgePackagingJob
--
--         , requestListContexts $
--             listContexts
--
--         , requestDescribeEndpoint $
--             describeEndpoint
--
--         , requestDeleteCodeRepository $
--             deleteCodeRepository
--
--         , requestDeleteModelPackageGroupPolicy $
--             deleteModelPackageGroupPolicy
--
--         , requestListUserProfiles $
--             listUserProfiles
--
--         , requestDescribeCompilationJob $
--             describeCompilationJob
--
--         , requestUpdatePipeline $
--             updatePipeline
--
--         , requestCreateCodeRepository $
--             createCodeRepository
--
--         , requestDescribeArtifact $
--             describeArtifact
--
--         , requestDescribeHumanTaskUi $
--             describeHumanTaskUi
--
--         , requestListPipelineExecutionSteps $
--             listPipelineExecutionSteps
--
--         , requestListCodeRepositories $
--             listCodeRepositories
--
--         , requestUpdateUserProfile $
--             updateUserProfile
--
--         , requestDescribeAction $
--             describeAction
--
--         , requestStopTransformJob $
--             stopTransformJob
--
--         , requestCreateTrainingJob $
--             createTrainingJob
--
--         , requestDeleteUserProfile $
--             deleteUserProfile
--
--         , requestCreateContext $
--             createContext
--
--         , requestStopEdgePackagingJob $
--             stopEdgePackagingJob
--
--         , requestCreateImage $
--             createImage
--
--         , requestDeregisterDevices $
--             deregisterDevices
--
--         , requestCreateDataQualityJobDefinition $
--             createDataQualityJobDefinition
--
--         , requestDeletePipeline $
--             deletePipeline
--
--         , requestCreateAppImageConfig $
--             createAppImageConfig
--
--         , requestAddTags $
--             addTags
--
--         , requestDisableSagemakerServicecatalogPortfolio $
--             disableSagemakerServicecatalogPortfolio
--
--         , requestDeleteAssociation $
--             deleteAssociation
--
--         , requestUpdateMonitoringSchedule $
--             updateMonitoringSchedule
--
--         , requestListMonitoringSchedules $
--             listMonitoringSchedules
--
--         , requestStopNotebookInstance $
--             stopNotebookInstance
--
--         , requestDeleteMonitoringSchedule $
--             deleteMonitoringSchedule
--
--         , requestDeleteEndpointConfig $
--             deleteEndpointConfig
--
--         , requestStartPipelineExecution $
--             startPipelineExecution
--
--         , requestDescribeModelPackage $
--             describeModelPackage
--
--         , requestDeleteTags $
--             deleteTags
--
--         , requestAddAssociation $
--             addAssociation
--
--         , requestCreateNotebookInstanceLifecycleConfig $
--             createNotebookInstanceLifecycleConfig
--
--         , requestListApps $
--             listApps
--
--         , requestCreateWorkforce $
--             createWorkforce
--
--         , requestListAutoMLJobs $
--             listAutoMLJobs
--
--         , requestUpdateEndpointWeightsAndCapacities $
--             updateEndpointWeightsAndCapacities
--
--         , requestStartNotebookInstance $
--             startNotebookInstance
--
--         , requestStopPipelineExecution $
--             stopPipelineExecution
--
--         , requestListEndpointConfigs $
--             listEndpointConfigs
--
--         , requestDeleteWorkteam $
--             deleteWorkteam
--
--         , requestDeleteWorkforce $
--             deleteWorkforce
--
--         , requestDeleteModelBiasJobDefinition $
--             deleteModelBiasJobDefinition
--
--         , requestUpdateWorkforce $
--             updateWorkforce
--
--         , requestDescribeDevice $
--             describeDevice
--
--         , requestDescribeDomain $
--             describeDomain
--
--         , requestDeleteNotebookInstanceLifecycleConfig $
--             deleteNotebookInstanceLifecycleConfig
--
--         , requestDescribePipelineExecution $
--             describePipelineExecution
--
--         , requestUpdateWorkteam $
--             updateWorkteam
--
--         , requestCreateLabelingJob $
--             createLabelingJob
--
--         , requestDescribeModelQualityJobDefinition $
--             describeModelQualityJobDefinition
--
--         , requestCreateExperiment $
--             createExperiment
--
--         , requestListWorkforces $
--             listWorkforces
--
--         , requestListAppImageConfigs $
--             listAppImageConfigs
--
--         , requestUpdateNotebookInstanceLifecycleConfig $
--             updateNotebookInstanceLifecycleConfig
--
--         , requestDescribeSubscribedWorkteam $
--             describeSubscribedWorkteam
--
--         , requestListNotebookInstanceLifecycleConfigs $
--             listNotebookInstanceLifecycleConfigs
--
--         , requestListEdgePackagingJobs $
--             listEdgePackagingJobs
--
--         , requestDescribeCodeRepository $
--             describeCodeRepository
--
--         , requestListEndpoints $
--             listEndpoints
--
--         , requestDescribeDataQualityJobDefinition $
--             describeDataQualityJobDefinition
--
--         , requestDescribeAlgorithm $
--             describeAlgorithm
--
--         , requestCreateAction $
--             createAction
--
--         , requestDeleteEndpoint $
--             deleteEndpoint
--
--         , requestCreatePresignedDomainURL $
--             createPresignedDomainURL
--
--         , requestListTransformJobs $
--             listTransformJobs
--
--         , requestDescribeHyperParameterTuningJob $
--             describeHyperParameterTuningJob
--
--         , requestCreateCompilationJob $
--             createCompilationJob
--
--         , requestUpdateEndpoint $
--             updateEndpoint
--
--         , requestDescribeModel $
--             describeModel
--
--         , requestCreateDeviceFleet $
--             createDeviceFleet
--
--         , requestCreateArtifact $
--             createArtifact
--
--         , requestUpdateDevices $
--             updateDevices
--
--         , requestListArtifacts $
--             listArtifacts
--
--         , requestDeleteDeviceFleet $
--             deleteDeviceFleet
--
--         , requestListMonitoringExecutions $
--             listMonitoringExecutions
--
--         , requestListCompilationJobs $
--             listCompilationJobs
--
--         , requestListActions $
--             listActions
--
--         , requestListDeviceFleets $
--             listDeviceFleets
--
--         , requestDescribeModelPackageGroup $
--             describeModelPackageGroup
--
--         , requestStopHyperParameterTuningJob $
--             stopHyperParameterTuningJob
--
--         , requestDescribeTrial $
--             describeTrial
--
--         , requestUpdateDeviceFleet $
--             updateDeviceFleet
--
--         , requestListLabelingJobsForWorkteam $
--             listLabelingJobsForWorkteam
--
--         , requestCreateFeatureGroup $
--             createFeatureGroup
--
--         , requestCreateDomain $
--             createDomain
--
--         , requestListImageVersions $
--             listImageVersions
--
--         , requestStopProcessingJob $
--             stopProcessingJob
--
--         , requestDeleteImageVersion $
--             deleteImageVersion
--
--         , requestDeleteProject $
--             deleteProject
--
--         , requestDescribeExperiment $
--             describeExperiment
--
--         , requestDescribeAutoMLJob $
--             describeAutoMLJob
--
--         , requestDescribeApp $
--             describeApp
--
--         , requestListTrialComponents $
--             listTrialComponents
--
--         , requestUpdateTrialComponent $
--             updateTrialComponent
--
--         , requestDeleteTrialComponent $
--             deleteTrialComponent
--
--         , requestCreateTrialComponent $
--             createTrialComponent
--
--         , requestDescribeWorkforce $
--             describeWorkforce
--
--         , requestListNotebookInstances $
--             listNotebookInstances
--
--         , requestListModelExplainabilityJobDefinitions $
--             listModelExplainabilityJobDefinitions
--
--         , requestDeleteModelQualityJobDefinition $
--             deleteModelQualityJobDefinition
--
--         , requestStopLabelingJob $
--             stopLabelingJob
--
--         , requestListModelQualityJobDefinitions $
--             listModelQualityJobDefinitions
--
--         , requestDescribeModelBiasJobDefinition $
--             describeModelBiasJobDefinition
--
--         , requestDescribeWorkteam $
--             describeWorkteam
--
--         , requestDescribeNotebookInstanceLifecycleConfig $
--             describeNotebookInstanceLifecycleConfig
--
--         , requestListPipelineExecutions $
--             listPipelineExecutions
--
--         , requestUpdateDomain $
--             updateDomain
--
--         , requestAssociateTrialComponent $
--             associateTrialComponent
--
--         , requestUpdatePipelineExecution $
--             updatePipelineExecution
--
--         , requestCreateImageVersion $
--             createImageVersion
--
--         , requestDeleteDomain $
--             deleteDomain
--
--         , requestUpdateTrainingJob $
--             updateTrainingJob
--
--         , requestUpdateImage $
--             updateImage
--
--         , requestUpdateContext $
--             updateContext
--
--         , requestDeleteImage $
--             deleteImage
--
--         , requestListFlowDefinitions $
--             listFlowDefinitions
--
--         , requestListModels $
--             listModels
--
--         , requestCreateUserProfile $
--             createUserProfile
--
--         , requestRenderUiTemplate $
--             renderUiTemplate
--
--         , requestDescribeFeatureGroup $
--             describeFeatureGroup
--
--         , requestDeleteContext $
--             deleteContext
--
--         , requestListHyperParameterTuningJobs $
--             listHyperParameterTuningJobs
--
--         , requestDeleteFlowDefinition $
--             deleteFlowDefinition
--
--         , requestListAlgorithms $
--             listAlgorithms
--
--         , requestCreateAlgorithm $
--             createAlgorithm
--
--         , requestCreateFlowDefinition $
--             createFlowDefinition
--
--         , requestListPipelineParametersForExecution $
--             listPipelineParametersForExecution
--
--         , requestListTrials $
--             listTrials
--
--         , requestCreateHyperParameterTuningJob $
--             createHyperParameterTuningJob
--
--         , requestCreateModel $
--             createModel
--
--         , requestUpdateTrial $
--             updateTrial
--
--         , requestDeleteModelPackageGroup $
--             deleteModelPackageGroup
--
--         , requestDescribeDeviceFleet $
--             describeDeviceFleet
--
--         , requestListModelPackageGroups $
--             listModelPackageGroups
--
--         , requestListPipelines $
--             listPipelines
--
--         , requestListTags $
--             listTags
--
--         , requestDescribePipelineDefinitionForExecution $
--             describePipelineDefinitionForExecution
--
--         , requestDeleteTrial $
--             deleteTrial
--
--         , requestPutModelPackageGroupPolicy $
--             putModelPackageGroupPolicy
--
--         , requestListExperiments $
--             listExperiments
--
--         , requestUpdateExperiment $
--             updateExperiment
--
--         , requestDeleteExperiment $
--             deleteExperiment
--
--         , requestListLabelingJobs $
--             listLabelingJobs
--
--         , requestDescribeImageVersion $
--             describeImageVersion
--
--         , requestDeleteApp $
--             deleteApp
--
--         , requestCreateModelBiasJobDefinition $
--             createModelBiasJobDefinition
--
--         , requestDescribeTrialComponent $
--             describeTrialComponent
--
--         , requestCreateWorkteam $
--             createWorkteam
--
--         , requestDescribeProject $
--             describeProject
--
--         , requestCreateProcessingJob $
--             createProcessingJob
--
--         , requestListAssociations $
--             listAssociations
--
--         , requestEnableSagemakerServicecatalogPortfolio $
--             enableSagemakerServicecatalogPortfolio
--
--         , requestUpdateAppImageConfig $
--             updateAppImageConfig
--
--         , requestListModelBiasJobDefinitions $
--             listModelBiasJobDefinitions
--
--         , requestCreateAutoMLJob $
--             createAutoMLJob
--
--         , requestCreateApp $
--             createApp
--
--         , requestDescribeNotebookInstance $
--             describeNotebookInstance
--
--         , requestDeleteAppImageConfig $
--             deleteAppImageConfig
--
--         , requestCreateEndpointConfig $
--             createEndpointConfig
--
--         , requestListProcessingJobs $
--             listProcessingJobs
--
--         , requestCreateMonitoringSchedule $
--             createMonitoringSchedule
--
--         , requestDescribeModelExplainabilityJobDefinition $
--             describeModelExplainabilityJobDefinition
--
--         , requestListWorkteams $
--             listWorkteams
--
--         , requestDescribeFlowDefinition $
--             describeFlowDefinition
--
--         , requestDescribeContext $
--             describeContext
--
--         , requestRegisterDevices $
--             registerDevices
--
--         , requestListFeatureGroups $
--             listFeatureGroups
--
--         , requestCreatePresignedNotebookInstanceURL $
--             createPresignedNotebookInstanceURL
--
--         , requestDescribeTrainingJob $
--             describeTrainingJob
--
--         , requestCreateHumanTaskUi $
--             createHumanTaskUi
--
--         , requestListTrainingJobsForHyperParameterTuningJob $
--             listTrainingJobsForHyperParameterTuningJob
--
--         , requestDescribeImage $
--             describeImage
--
--         , requestDeleteFeatureGroup $
--             deleteFeatureGroup
--
--           ]

--     , testGroup "response"
--         [ responseDisassociateTrialComponent $
--             disassociateTrialComponentResponse
--
--         , responseDeleteArtifact $
--             deleteArtifactResponse
--
--         , responseCreateTransformJob $
--             createTransformJobResponse
--
--         , responseListHumanTaskUis $
--             listHumanTaskUisResponse
--
--         , responseDeleteHumanTaskUi $
--             deleteHumanTaskUiResponse
--
--         , responseUpdateAction $
--             updateActionResponse
--
--         , responseDescribePipeline $
--             describePipelineResponse
--
--         , responseUpdateArtifact $
--             updateArtifactResponse
--
--         , responseDescribeUserProfile $
--             describeUserProfileResponse
--
--         , responseStopTrainingJob $
--             stopTrainingJobResponse
--
--         , responseCreateEndpoint $
--             createEndpointResponse
--
--         , responseGetSearchSuggestions $
--             getSearchSuggestionsResponse
--
--         , responseDeleteAction $
--             deleteActionResponse
--
--         , responseCreateEdgePackagingJob $
--             createEdgePackagingJobResponse
--
--         , responseDescribeEndpointConfig $
--             describeEndpointConfigResponse
--
--         , responseListModelPackages $
--             listModelPackagesResponse
--
--         , responseGetModelPackageGroupPolicy $
--             getModelPackageGroupPolicyResponse
--
--         , responseDescribeMonitoringSchedule $
--             describeMonitoringScheduleResponse
--
--         , responseCreateModelExplainabilityJobDefinition $
--             createModelExplainabilityJobDefinitionResponse
--
--         , responseDescribeLabelingJob $
--             describeLabelingJobResponse
--
--         , responseCreateNotebookInstance $
--             createNotebookInstanceResponse
--
--         , responseUpdateModelPackage $
--             updateModelPackageResponse
--
--         , responseCreateModelQualityJobDefinition $
--             createModelQualityJobDefinitionResponse
--
--         , responseDeleteModelPackage $
--             deleteModelPackageResponse
--
--         , responseListProjects $
--             listProjectsResponse
--
--         , responseListSubscribedWorkteams $
--             listSubscribedWorkteamsResponse
--
--         , responseDeleteNotebookInstance $
--             deleteNotebookInstanceResponse
--
--         , responseCreateProject $
--             createProjectResponse
--
--         , responseDescribeProcessingJob $
--             describeProcessingJobResponse
--
--         , responseListDomains $
--             listDomainsResponse
--
--         , responseDeleteModelExplainabilityJobDefinition $
--             deleteModelExplainabilityJobDefinitionResponse
--
--         , responseStopMonitoringSchedule $
--             stopMonitoringScheduleResponse
--
--         , responseListDevices $
--             listDevicesResponse
--
--         , responseCreateModelPackage $
--             createModelPackageResponse
--
--         , responseUpdateNotebookInstance $
--             updateNotebookInstanceResponse
--
--         , responseStopAutoMLJob $
--             stopAutoMLJobResponse
--
--         , responseDescribeAppImageConfig $
--             describeAppImageConfigResponse
--
--         , responseStartMonitoringSchedule $
--             startMonitoringScheduleResponse
--
--         , responseStopCompilationJob $
--             stopCompilationJobResponse
--
--         , responseCreateTrial $
--             createTrialResponse
--
--         , responseGetSagemakerServicecatalogPortfolioStatus $
--             getSagemakerServicecatalogPortfolioStatusResponse
--
--         , responseUpdateCodeRepository $
--             updateCodeRepositoryResponse
--
--         , responseSearch $
--             searchResponse
--
--         , responseDeleteModel $
--             deleteModelResponse
--
--         , responseDeleteDataQualityJobDefinition $
--             deleteDataQualityJobDefinitionResponse
--
--         , responseListImages $
--             listImagesResponse
--
--         , responseListTrainingJobs $
--             listTrainingJobsResponse
--
--         , responseDescribeTransformJob $
--             describeTransformJobResponse
--
--         , responseCreatePipeline $
--             createPipelineResponse
--
--         , responseCreateModelPackageGroup $
--             createModelPackageGroupResponse
--
--         , responseListCandidatesForAutoMLJob $
--             listCandidatesForAutoMLJobResponse
--
--         , responseDeleteAlgorithm $
--             deleteAlgorithmResponse
--
--         , responseGetDeviceFleetReport $
--             getDeviceFleetReportResponse
--
--         , responseListDataQualityJobDefinitions $
--             listDataQualityJobDefinitionsResponse
--
--         , responseDescribeEdgePackagingJob $
--             describeEdgePackagingJobResponse
--
--         , responseListContexts $
--             listContextsResponse
--
--         , responseDescribeEndpoint $
--             describeEndpointResponse
--
--         , responseDeleteCodeRepository $
--             deleteCodeRepositoryResponse
--
--         , responseDeleteModelPackageGroupPolicy $
--             deleteModelPackageGroupPolicyResponse
--
--         , responseListUserProfiles $
--             listUserProfilesResponse
--
--         , responseDescribeCompilationJob $
--             describeCompilationJobResponse
--
--         , responseUpdatePipeline $
--             updatePipelineResponse
--
--         , responseCreateCodeRepository $
--             createCodeRepositoryResponse
--
--         , responseDescribeArtifact $
--             describeArtifactResponse
--
--         , responseDescribeHumanTaskUi $
--             describeHumanTaskUiResponse
--
--         , responseListPipelineExecutionSteps $
--             listPipelineExecutionStepsResponse
--
--         , responseListCodeRepositories $
--             listCodeRepositoriesResponse
--
--         , responseUpdateUserProfile $
--             updateUserProfileResponse
--
--         , responseDescribeAction $
--             describeActionResponse
--
--         , responseStopTransformJob $
--             stopTransformJobResponse
--
--         , responseCreateTrainingJob $
--             createTrainingJobResponse
--
--         , responseDeleteUserProfile $
--             deleteUserProfileResponse
--
--         , responseCreateContext $
--             createContextResponse
--
--         , responseStopEdgePackagingJob $
--             stopEdgePackagingJobResponse
--
--         , responseCreateImage $
--             createImageResponse
--
--         , responseDeregisterDevices $
--             deregisterDevicesResponse
--
--         , responseCreateDataQualityJobDefinition $
--             createDataQualityJobDefinitionResponse
--
--         , responseDeletePipeline $
--             deletePipelineResponse
--
--         , responseCreateAppImageConfig $
--             createAppImageConfigResponse
--
--         , responseAddTags $
--             addTagsResponse
--
--         , responseDisableSagemakerServicecatalogPortfolio $
--             disableSagemakerServicecatalogPortfolioResponse
--
--         , responseDeleteAssociation $
--             deleteAssociationResponse
--
--         , responseUpdateMonitoringSchedule $
--             updateMonitoringScheduleResponse
--
--         , responseListMonitoringSchedules $
--             listMonitoringSchedulesResponse
--
--         , responseStopNotebookInstance $
--             stopNotebookInstanceResponse
--
--         , responseDeleteMonitoringSchedule $
--             deleteMonitoringScheduleResponse
--
--         , responseDeleteEndpointConfig $
--             deleteEndpointConfigResponse
--
--         , responseStartPipelineExecution $
--             startPipelineExecutionResponse
--
--         , responseDescribeModelPackage $
--             describeModelPackageResponse
--
--         , responseDeleteTags $
--             deleteTagsResponse
--
--         , responseAddAssociation $
--             addAssociationResponse
--
--         , responseCreateNotebookInstanceLifecycleConfig $
--             createNotebookInstanceLifecycleConfigResponse
--
--         , responseListApps $
--             listAppsResponse
--
--         , responseCreateWorkforce $
--             createWorkforceResponse
--
--         , responseListAutoMLJobs $
--             listAutoMLJobsResponse
--
--         , responseUpdateEndpointWeightsAndCapacities $
--             updateEndpointWeightsAndCapacitiesResponse
--
--         , responseStartNotebookInstance $
--             startNotebookInstanceResponse
--
--         , responseStopPipelineExecution $
--             stopPipelineExecutionResponse
--
--         , responseListEndpointConfigs $
--             listEndpointConfigsResponse
--
--         , responseDeleteWorkteam $
--             deleteWorkteamResponse
--
--         , responseDeleteWorkforce $
--             deleteWorkforceResponse
--
--         , responseDeleteModelBiasJobDefinition $
--             deleteModelBiasJobDefinitionResponse
--
--         , responseUpdateWorkforce $
--             updateWorkforceResponse
--
--         , responseDescribeDevice $
--             describeDeviceResponse
--
--         , responseDescribeDomain $
--             describeDomainResponse
--
--         , responseDeleteNotebookInstanceLifecycleConfig $
--             deleteNotebookInstanceLifecycleConfigResponse
--
--         , responseDescribePipelineExecution $
--             describePipelineExecutionResponse
--
--         , responseUpdateWorkteam $
--             updateWorkteamResponse
--
--         , responseCreateLabelingJob $
--             createLabelingJobResponse
--
--         , responseDescribeModelQualityJobDefinition $
--             describeModelQualityJobDefinitionResponse
--
--         , responseCreateExperiment $
--             createExperimentResponse
--
--         , responseListWorkforces $
--             listWorkforcesResponse
--
--         , responseListAppImageConfigs $
--             listAppImageConfigsResponse
--
--         , responseUpdateNotebookInstanceLifecycleConfig $
--             updateNotebookInstanceLifecycleConfigResponse
--
--         , responseDescribeSubscribedWorkteam $
--             describeSubscribedWorkteamResponse
--
--         , responseListNotebookInstanceLifecycleConfigs $
--             listNotebookInstanceLifecycleConfigsResponse
--
--         , responseListEdgePackagingJobs $
--             listEdgePackagingJobsResponse
--
--         , responseDescribeCodeRepository $
--             describeCodeRepositoryResponse
--
--         , responseListEndpoints $
--             listEndpointsResponse
--
--         , responseDescribeDataQualityJobDefinition $
--             describeDataQualityJobDefinitionResponse
--
--         , responseDescribeAlgorithm $
--             describeAlgorithmResponse
--
--         , responseCreateAction $
--             createActionResponse
--
--         , responseDeleteEndpoint $
--             deleteEndpointResponse
--
--         , responseCreatePresignedDomainURL $
--             createPresignedDomainURLResponse
--
--         , responseListTransformJobs $
--             listTransformJobsResponse
--
--         , responseDescribeHyperParameterTuningJob $
--             describeHyperParameterTuningJobResponse
--
--         , responseCreateCompilationJob $
--             createCompilationJobResponse
--
--         , responseUpdateEndpoint $
--             updateEndpointResponse
--
--         , responseDescribeModel $
--             describeModelResponse
--
--         , responseCreateDeviceFleet $
--             createDeviceFleetResponse
--
--         , responseCreateArtifact $
--             createArtifactResponse
--
--         , responseUpdateDevices $
--             updateDevicesResponse
--
--         , responseListArtifacts $
--             listArtifactsResponse
--
--         , responseDeleteDeviceFleet $
--             deleteDeviceFleetResponse
--
--         , responseListMonitoringExecutions $
--             listMonitoringExecutionsResponse
--
--         , responseListCompilationJobs $
--             listCompilationJobsResponse
--
--         , responseListActions $
--             listActionsResponse
--
--         , responseListDeviceFleets $
--             listDeviceFleetsResponse
--
--         , responseDescribeModelPackageGroup $
--             describeModelPackageGroupResponse
--
--         , responseStopHyperParameterTuningJob $
--             stopHyperParameterTuningJobResponse
--
--         , responseDescribeTrial $
--             describeTrialResponse
--
--         , responseUpdateDeviceFleet $
--             updateDeviceFleetResponse
--
--         , responseListLabelingJobsForWorkteam $
--             listLabelingJobsForWorkteamResponse
--
--         , responseCreateFeatureGroup $
--             createFeatureGroupResponse
--
--         , responseCreateDomain $
--             createDomainResponse
--
--         , responseListImageVersions $
--             listImageVersionsResponse
--
--         , responseStopProcessingJob $
--             stopProcessingJobResponse
--
--         , responseDeleteImageVersion $
--             deleteImageVersionResponse
--
--         , responseDeleteProject $
--             deleteProjectResponse
--
--         , responseDescribeExperiment $
--             describeExperimentResponse
--
--         , responseDescribeAutoMLJob $
--             describeAutoMLJobResponse
--
--         , responseDescribeApp $
--             describeAppResponse
--
--         , responseListTrialComponents $
--             listTrialComponentsResponse
--
--         , responseUpdateTrialComponent $
--             updateTrialComponentResponse
--
--         , responseDeleteTrialComponent $
--             deleteTrialComponentResponse
--
--         , responseCreateTrialComponent $
--             createTrialComponentResponse
--
--         , responseDescribeWorkforce $
--             describeWorkforceResponse
--
--         , responseListNotebookInstances $
--             listNotebookInstancesResponse
--
--         , responseListModelExplainabilityJobDefinitions $
--             listModelExplainabilityJobDefinitionsResponse
--
--         , responseDeleteModelQualityJobDefinition $
--             deleteModelQualityJobDefinitionResponse
--
--         , responseStopLabelingJob $
--             stopLabelingJobResponse
--
--         , responseListModelQualityJobDefinitions $
--             listModelQualityJobDefinitionsResponse
--
--         , responseDescribeModelBiasJobDefinition $
--             describeModelBiasJobDefinitionResponse
--
--         , responseDescribeWorkteam $
--             describeWorkteamResponse
--
--         , responseDescribeNotebookInstanceLifecycleConfig $
--             describeNotebookInstanceLifecycleConfigResponse
--
--         , responseListPipelineExecutions $
--             listPipelineExecutionsResponse
--
--         , responseUpdateDomain $
--             updateDomainResponse
--
--         , responseAssociateTrialComponent $
--             associateTrialComponentResponse
--
--         , responseUpdatePipelineExecution $
--             updatePipelineExecutionResponse
--
--         , responseCreateImageVersion $
--             createImageVersionResponse
--
--         , responseDeleteDomain $
--             deleteDomainResponse
--
--         , responseUpdateTrainingJob $
--             updateTrainingJobResponse
--
--         , responseUpdateImage $
--             updateImageResponse
--
--         , responseUpdateContext $
--             updateContextResponse
--
--         , responseDeleteImage $
--             deleteImageResponse
--
--         , responseListFlowDefinitions $
--             listFlowDefinitionsResponse
--
--         , responseListModels $
--             listModelsResponse
--
--         , responseCreateUserProfile $
--             createUserProfileResponse
--
--         , responseRenderUiTemplate $
--             renderUiTemplateResponse
--
--         , responseDescribeFeatureGroup $
--             describeFeatureGroupResponse
--
--         , responseDeleteContext $
--             deleteContextResponse
--
--         , responseListHyperParameterTuningJobs $
--             listHyperParameterTuningJobsResponse
--
--         , responseDeleteFlowDefinition $
--             deleteFlowDefinitionResponse
--
--         , responseListAlgorithms $
--             listAlgorithmsResponse
--
--         , responseCreateAlgorithm $
--             createAlgorithmResponse
--
--         , responseCreateFlowDefinition $
--             createFlowDefinitionResponse
--
--         , responseListPipelineParametersForExecution $
--             listPipelineParametersForExecutionResponse
--
--         , responseListTrials $
--             listTrialsResponse
--
--         , responseCreateHyperParameterTuningJob $
--             createHyperParameterTuningJobResponse
--
--         , responseCreateModel $
--             createModelResponse
--
--         , responseUpdateTrial $
--             updateTrialResponse
--
--         , responseDeleteModelPackageGroup $
--             deleteModelPackageGroupResponse
--
--         , responseDescribeDeviceFleet $
--             describeDeviceFleetResponse
--
--         , responseListModelPackageGroups $
--             listModelPackageGroupsResponse
--
--         , responseListPipelines $
--             listPipelinesResponse
--
--         , responseListTags $
--             listTagsResponse
--
--         , responseDescribePipelineDefinitionForExecution $
--             describePipelineDefinitionForExecutionResponse
--
--         , responseDeleteTrial $
--             deleteTrialResponse
--
--         , responsePutModelPackageGroupPolicy $
--             putModelPackageGroupPolicyResponse
--
--         , responseListExperiments $
--             listExperimentsResponse
--
--         , responseUpdateExperiment $
--             updateExperimentResponse
--
--         , responseDeleteExperiment $
--             deleteExperimentResponse
--
--         , responseListLabelingJobs $
--             listLabelingJobsResponse
--
--         , responseDescribeImageVersion $
--             describeImageVersionResponse
--
--         , responseDeleteApp $
--             deleteAppResponse
--
--         , responseCreateModelBiasJobDefinition $
--             createModelBiasJobDefinitionResponse
--
--         , responseDescribeTrialComponent $
--             describeTrialComponentResponse
--
--         , responseCreateWorkteam $
--             createWorkteamResponse
--
--         , responseDescribeProject $
--             describeProjectResponse
--
--         , responseCreateProcessingJob $
--             createProcessingJobResponse
--
--         , responseListAssociations $
--             listAssociationsResponse
--
--         , responseEnableSagemakerServicecatalogPortfolio $
--             enableSagemakerServicecatalogPortfolioResponse
--
--         , responseUpdateAppImageConfig $
--             updateAppImageConfigResponse
--
--         , responseListModelBiasJobDefinitions $
--             listModelBiasJobDefinitionsResponse
--
--         , responseCreateAutoMLJob $
--             createAutoMLJobResponse
--
--         , responseCreateApp $
--             createAppResponse
--
--         , responseDescribeNotebookInstance $
--             describeNotebookInstanceResponse
--
--         , responseDeleteAppImageConfig $
--             deleteAppImageConfigResponse
--
--         , responseCreateEndpointConfig $
--             createEndpointConfigResponse
--
--         , responseListProcessingJobs $
--             listProcessingJobsResponse
--
--         , responseCreateMonitoringSchedule $
--             createMonitoringScheduleResponse
--
--         , responseDescribeModelExplainabilityJobDefinition $
--             describeModelExplainabilityJobDefinitionResponse
--
--         , responseListWorkteams $
--             listWorkteamsResponse
--
--         , responseDescribeFlowDefinition $
--             describeFlowDefinitionResponse
--
--         , responseDescribeContext $
--             describeContextResponse
--
--         , responseRegisterDevices $
--             registerDevicesResponse
--
--         , responseListFeatureGroups $
--             listFeatureGroupsResponse
--
--         , responseCreatePresignedNotebookInstanceURL $
--             createPresignedNotebookInstanceURLResponse
--
--         , responseDescribeTrainingJob $
--             describeTrainingJobResponse
--
--         , responseCreateHumanTaskUi $
--             createHumanTaskUiResponse
--
--         , responseListTrainingJobsForHyperParameterTuningJob $
--             listTrainingJobsForHyperParameterTuningJobResponse
--
--         , responseDescribeImage $
--             describeImageResponse
--
--         , responseDeleteFeatureGroup $
--             deleteFeatureGroupResponse
--
--           ]
--     ]

-- Requests

requestDisassociateTrialComponent :: DisassociateTrialComponent -> TestTree
requestDisassociateTrialComponent =
  req
    "DisassociateTrialComponent"
    "fixture/DisassociateTrialComponent.yaml"

requestDeleteArtifact :: DeleteArtifact -> TestTree
requestDeleteArtifact =
  req
    "DeleteArtifact"
    "fixture/DeleteArtifact.yaml"

requestCreateTransformJob :: CreateTransformJob -> TestTree
requestCreateTransformJob =
  req
    "CreateTransformJob"
    "fixture/CreateTransformJob.yaml"

requestListHumanTaskUis :: ListHumanTaskUis -> TestTree
requestListHumanTaskUis =
  req
    "ListHumanTaskUis"
    "fixture/ListHumanTaskUis.yaml"

requestDeleteHumanTaskUi :: DeleteHumanTaskUi -> TestTree
requestDeleteHumanTaskUi =
  req
    "DeleteHumanTaskUi"
    "fixture/DeleteHumanTaskUi.yaml"

requestUpdateAction :: UpdateAction -> TestTree
requestUpdateAction =
  req
    "UpdateAction"
    "fixture/UpdateAction.yaml"

requestDescribePipeline :: DescribePipeline -> TestTree
requestDescribePipeline =
  req
    "DescribePipeline"
    "fixture/DescribePipeline.yaml"

requestUpdateArtifact :: UpdateArtifact -> TestTree
requestUpdateArtifact =
  req
    "UpdateArtifact"
    "fixture/UpdateArtifact.yaml"

requestDescribeUserProfile :: DescribeUserProfile -> TestTree
requestDescribeUserProfile =
  req
    "DescribeUserProfile"
    "fixture/DescribeUserProfile.yaml"

requestStopTrainingJob :: StopTrainingJob -> TestTree
requestStopTrainingJob =
  req
    "StopTrainingJob"
    "fixture/StopTrainingJob.yaml"

requestCreateEndpoint :: CreateEndpoint -> TestTree
requestCreateEndpoint =
  req
    "CreateEndpoint"
    "fixture/CreateEndpoint.yaml"

requestGetSearchSuggestions :: GetSearchSuggestions -> TestTree
requestGetSearchSuggestions =
  req
    "GetSearchSuggestions"
    "fixture/GetSearchSuggestions.yaml"

requestDeleteAction :: DeleteAction -> TestTree
requestDeleteAction =
  req
    "DeleteAction"
    "fixture/DeleteAction.yaml"

requestCreateEdgePackagingJob :: CreateEdgePackagingJob -> TestTree
requestCreateEdgePackagingJob =
  req
    "CreateEdgePackagingJob"
    "fixture/CreateEdgePackagingJob.yaml"

requestDescribeEndpointConfig :: DescribeEndpointConfig -> TestTree
requestDescribeEndpointConfig =
  req
    "DescribeEndpointConfig"
    "fixture/DescribeEndpointConfig.yaml"

requestListModelPackages :: ListModelPackages -> TestTree
requestListModelPackages =
  req
    "ListModelPackages"
    "fixture/ListModelPackages.yaml"

requestGetModelPackageGroupPolicy :: GetModelPackageGroupPolicy -> TestTree
requestGetModelPackageGroupPolicy =
  req
    "GetModelPackageGroupPolicy"
    "fixture/GetModelPackageGroupPolicy.yaml"

requestDescribeMonitoringSchedule :: DescribeMonitoringSchedule -> TestTree
requestDescribeMonitoringSchedule =
  req
    "DescribeMonitoringSchedule"
    "fixture/DescribeMonitoringSchedule.yaml"

requestCreateModelExplainabilityJobDefinition :: CreateModelExplainabilityJobDefinition -> TestTree
requestCreateModelExplainabilityJobDefinition =
  req
    "CreateModelExplainabilityJobDefinition"
    "fixture/CreateModelExplainabilityJobDefinition.yaml"

requestDescribeLabelingJob :: DescribeLabelingJob -> TestTree
requestDescribeLabelingJob =
  req
    "DescribeLabelingJob"
    "fixture/DescribeLabelingJob.yaml"

requestCreateNotebookInstance :: CreateNotebookInstance -> TestTree
requestCreateNotebookInstance =
  req
    "CreateNotebookInstance"
    "fixture/CreateNotebookInstance.yaml"

requestUpdateModelPackage :: UpdateModelPackage -> TestTree
requestUpdateModelPackage =
  req
    "UpdateModelPackage"
    "fixture/UpdateModelPackage.yaml"

requestCreateModelQualityJobDefinition :: CreateModelQualityJobDefinition -> TestTree
requestCreateModelQualityJobDefinition =
  req
    "CreateModelQualityJobDefinition"
    "fixture/CreateModelQualityJobDefinition.yaml"

requestDeleteModelPackage :: DeleteModelPackage -> TestTree
requestDeleteModelPackage =
  req
    "DeleteModelPackage"
    "fixture/DeleteModelPackage.yaml"

requestListProjects :: ListProjects -> TestTree
requestListProjects =
  req
    "ListProjects"
    "fixture/ListProjects.yaml"

requestListSubscribedWorkteams :: ListSubscribedWorkteams -> TestTree
requestListSubscribedWorkteams =
  req
    "ListSubscribedWorkteams"
    "fixture/ListSubscribedWorkteams.yaml"

requestDeleteNotebookInstance :: DeleteNotebookInstance -> TestTree
requestDeleteNotebookInstance =
  req
    "DeleteNotebookInstance"
    "fixture/DeleteNotebookInstance.yaml"

requestCreateProject :: CreateProject -> TestTree
requestCreateProject =
  req
    "CreateProject"
    "fixture/CreateProject.yaml"

requestDescribeProcessingJob :: DescribeProcessingJob -> TestTree
requestDescribeProcessingJob =
  req
    "DescribeProcessingJob"
    "fixture/DescribeProcessingJob.yaml"

requestListDomains :: ListDomains -> TestTree
requestListDomains =
  req
    "ListDomains"
    "fixture/ListDomains.yaml"

requestDeleteModelExplainabilityJobDefinition :: DeleteModelExplainabilityJobDefinition -> TestTree
requestDeleteModelExplainabilityJobDefinition =
  req
    "DeleteModelExplainabilityJobDefinition"
    "fixture/DeleteModelExplainabilityJobDefinition.yaml"

requestStopMonitoringSchedule :: StopMonitoringSchedule -> TestTree
requestStopMonitoringSchedule =
  req
    "StopMonitoringSchedule"
    "fixture/StopMonitoringSchedule.yaml"

requestListDevices :: ListDevices -> TestTree
requestListDevices =
  req
    "ListDevices"
    "fixture/ListDevices.yaml"

requestCreateModelPackage :: CreateModelPackage -> TestTree
requestCreateModelPackage =
  req
    "CreateModelPackage"
    "fixture/CreateModelPackage.yaml"

requestUpdateNotebookInstance :: UpdateNotebookInstance -> TestTree
requestUpdateNotebookInstance =
  req
    "UpdateNotebookInstance"
    "fixture/UpdateNotebookInstance.yaml"

requestStopAutoMLJob :: StopAutoMLJob -> TestTree
requestStopAutoMLJob =
  req
    "StopAutoMLJob"
    "fixture/StopAutoMLJob.yaml"

requestDescribeAppImageConfig :: DescribeAppImageConfig -> TestTree
requestDescribeAppImageConfig =
  req
    "DescribeAppImageConfig"
    "fixture/DescribeAppImageConfig.yaml"

requestStartMonitoringSchedule :: StartMonitoringSchedule -> TestTree
requestStartMonitoringSchedule =
  req
    "StartMonitoringSchedule"
    "fixture/StartMonitoringSchedule.yaml"

requestStopCompilationJob :: StopCompilationJob -> TestTree
requestStopCompilationJob =
  req
    "StopCompilationJob"
    "fixture/StopCompilationJob.yaml"

requestCreateTrial :: CreateTrial -> TestTree
requestCreateTrial =
  req
    "CreateTrial"
    "fixture/CreateTrial.yaml"

requestGetSagemakerServicecatalogPortfolioStatus :: GetSagemakerServicecatalogPortfolioStatus -> TestTree
requestGetSagemakerServicecatalogPortfolioStatus =
  req
    "GetSagemakerServicecatalogPortfolioStatus"
    "fixture/GetSagemakerServicecatalogPortfolioStatus.yaml"

requestUpdateCodeRepository :: UpdateCodeRepository -> TestTree
requestUpdateCodeRepository =
  req
    "UpdateCodeRepository"
    "fixture/UpdateCodeRepository.yaml"

requestSearch :: Search -> TestTree
requestSearch =
  req
    "Search"
    "fixture/Search.yaml"

requestDeleteModel :: DeleteModel -> TestTree
requestDeleteModel =
  req
    "DeleteModel"
    "fixture/DeleteModel.yaml"

requestDeleteDataQualityJobDefinition :: DeleteDataQualityJobDefinition -> TestTree
requestDeleteDataQualityJobDefinition =
  req
    "DeleteDataQualityJobDefinition"
    "fixture/DeleteDataQualityJobDefinition.yaml"

requestListImages :: ListImages -> TestTree
requestListImages =
  req
    "ListImages"
    "fixture/ListImages.yaml"

requestListTrainingJobs :: ListTrainingJobs -> TestTree
requestListTrainingJobs =
  req
    "ListTrainingJobs"
    "fixture/ListTrainingJobs.yaml"

requestDescribeTransformJob :: DescribeTransformJob -> TestTree
requestDescribeTransformJob =
  req
    "DescribeTransformJob"
    "fixture/DescribeTransformJob.yaml"

requestCreatePipeline :: CreatePipeline -> TestTree
requestCreatePipeline =
  req
    "CreatePipeline"
    "fixture/CreatePipeline.yaml"

requestCreateModelPackageGroup :: CreateModelPackageGroup -> TestTree
requestCreateModelPackageGroup =
  req
    "CreateModelPackageGroup"
    "fixture/CreateModelPackageGroup.yaml"

requestListCandidatesForAutoMLJob :: ListCandidatesForAutoMLJob -> TestTree
requestListCandidatesForAutoMLJob =
  req
    "ListCandidatesForAutoMLJob"
    "fixture/ListCandidatesForAutoMLJob.yaml"

requestDeleteAlgorithm :: DeleteAlgorithm -> TestTree
requestDeleteAlgorithm =
  req
    "DeleteAlgorithm"
    "fixture/DeleteAlgorithm.yaml"

requestGetDeviceFleetReport :: GetDeviceFleetReport -> TestTree
requestGetDeviceFleetReport =
  req
    "GetDeviceFleetReport"
    "fixture/GetDeviceFleetReport.yaml"

requestListDataQualityJobDefinitions :: ListDataQualityJobDefinitions -> TestTree
requestListDataQualityJobDefinitions =
  req
    "ListDataQualityJobDefinitions"
    "fixture/ListDataQualityJobDefinitions.yaml"

requestDescribeEdgePackagingJob :: DescribeEdgePackagingJob -> TestTree
requestDescribeEdgePackagingJob =
  req
    "DescribeEdgePackagingJob"
    "fixture/DescribeEdgePackagingJob.yaml"

requestListContexts :: ListContexts -> TestTree
requestListContexts =
  req
    "ListContexts"
    "fixture/ListContexts.yaml"

requestDescribeEndpoint :: DescribeEndpoint -> TestTree
requestDescribeEndpoint =
  req
    "DescribeEndpoint"
    "fixture/DescribeEndpoint.yaml"

requestDeleteCodeRepository :: DeleteCodeRepository -> TestTree
requestDeleteCodeRepository =
  req
    "DeleteCodeRepository"
    "fixture/DeleteCodeRepository.yaml"

requestDeleteModelPackageGroupPolicy :: DeleteModelPackageGroupPolicy -> TestTree
requestDeleteModelPackageGroupPolicy =
  req
    "DeleteModelPackageGroupPolicy"
    "fixture/DeleteModelPackageGroupPolicy.yaml"

requestListUserProfiles :: ListUserProfiles -> TestTree
requestListUserProfiles =
  req
    "ListUserProfiles"
    "fixture/ListUserProfiles.yaml"

requestDescribeCompilationJob :: DescribeCompilationJob -> TestTree
requestDescribeCompilationJob =
  req
    "DescribeCompilationJob"
    "fixture/DescribeCompilationJob.yaml"

requestUpdatePipeline :: UpdatePipeline -> TestTree
requestUpdatePipeline =
  req
    "UpdatePipeline"
    "fixture/UpdatePipeline.yaml"

requestCreateCodeRepository :: CreateCodeRepository -> TestTree
requestCreateCodeRepository =
  req
    "CreateCodeRepository"
    "fixture/CreateCodeRepository.yaml"

requestDescribeArtifact :: DescribeArtifact -> TestTree
requestDescribeArtifact =
  req
    "DescribeArtifact"
    "fixture/DescribeArtifact.yaml"

requestDescribeHumanTaskUi :: DescribeHumanTaskUi -> TestTree
requestDescribeHumanTaskUi =
  req
    "DescribeHumanTaskUi"
    "fixture/DescribeHumanTaskUi.yaml"

requestListPipelineExecutionSteps :: ListPipelineExecutionSteps -> TestTree
requestListPipelineExecutionSteps =
  req
    "ListPipelineExecutionSteps"
    "fixture/ListPipelineExecutionSteps.yaml"

requestListCodeRepositories :: ListCodeRepositories -> TestTree
requestListCodeRepositories =
  req
    "ListCodeRepositories"
    "fixture/ListCodeRepositories.yaml"

requestUpdateUserProfile :: UpdateUserProfile -> TestTree
requestUpdateUserProfile =
  req
    "UpdateUserProfile"
    "fixture/UpdateUserProfile.yaml"

requestDescribeAction :: DescribeAction -> TestTree
requestDescribeAction =
  req
    "DescribeAction"
    "fixture/DescribeAction.yaml"

requestStopTransformJob :: StopTransformJob -> TestTree
requestStopTransformJob =
  req
    "StopTransformJob"
    "fixture/StopTransformJob.yaml"

requestCreateTrainingJob :: CreateTrainingJob -> TestTree
requestCreateTrainingJob =
  req
    "CreateTrainingJob"
    "fixture/CreateTrainingJob.yaml"

requestDeleteUserProfile :: DeleteUserProfile -> TestTree
requestDeleteUserProfile =
  req
    "DeleteUserProfile"
    "fixture/DeleteUserProfile.yaml"

requestCreateContext :: CreateContext -> TestTree
requestCreateContext =
  req
    "CreateContext"
    "fixture/CreateContext.yaml"

requestStopEdgePackagingJob :: StopEdgePackagingJob -> TestTree
requestStopEdgePackagingJob =
  req
    "StopEdgePackagingJob"
    "fixture/StopEdgePackagingJob.yaml"

requestCreateImage :: CreateImage -> TestTree
requestCreateImage =
  req
    "CreateImage"
    "fixture/CreateImage.yaml"

requestDeregisterDevices :: DeregisterDevices -> TestTree
requestDeregisterDevices =
  req
    "DeregisterDevices"
    "fixture/DeregisterDevices.yaml"

requestCreateDataQualityJobDefinition :: CreateDataQualityJobDefinition -> TestTree
requestCreateDataQualityJobDefinition =
  req
    "CreateDataQualityJobDefinition"
    "fixture/CreateDataQualityJobDefinition.yaml"

requestDeletePipeline :: DeletePipeline -> TestTree
requestDeletePipeline =
  req
    "DeletePipeline"
    "fixture/DeletePipeline.yaml"

requestCreateAppImageConfig :: CreateAppImageConfig -> TestTree
requestCreateAppImageConfig =
  req
    "CreateAppImageConfig"
    "fixture/CreateAppImageConfig.yaml"

requestAddTags :: AddTags -> TestTree
requestAddTags =
  req
    "AddTags"
    "fixture/AddTags.yaml"

requestDisableSagemakerServicecatalogPortfolio :: DisableSagemakerServicecatalogPortfolio -> TestTree
requestDisableSagemakerServicecatalogPortfolio =
  req
    "DisableSagemakerServicecatalogPortfolio"
    "fixture/DisableSagemakerServicecatalogPortfolio.yaml"

requestDeleteAssociation :: DeleteAssociation -> TestTree
requestDeleteAssociation =
  req
    "DeleteAssociation"
    "fixture/DeleteAssociation.yaml"

requestUpdateMonitoringSchedule :: UpdateMonitoringSchedule -> TestTree
requestUpdateMonitoringSchedule =
  req
    "UpdateMonitoringSchedule"
    "fixture/UpdateMonitoringSchedule.yaml"

requestListMonitoringSchedules :: ListMonitoringSchedules -> TestTree
requestListMonitoringSchedules =
  req
    "ListMonitoringSchedules"
    "fixture/ListMonitoringSchedules.yaml"

requestStopNotebookInstance :: StopNotebookInstance -> TestTree
requestStopNotebookInstance =
  req
    "StopNotebookInstance"
    "fixture/StopNotebookInstance.yaml"

requestDeleteMonitoringSchedule :: DeleteMonitoringSchedule -> TestTree
requestDeleteMonitoringSchedule =
  req
    "DeleteMonitoringSchedule"
    "fixture/DeleteMonitoringSchedule.yaml"

requestDeleteEndpointConfig :: DeleteEndpointConfig -> TestTree
requestDeleteEndpointConfig =
  req
    "DeleteEndpointConfig"
    "fixture/DeleteEndpointConfig.yaml"

requestStartPipelineExecution :: StartPipelineExecution -> TestTree
requestStartPipelineExecution =
  req
    "StartPipelineExecution"
    "fixture/StartPipelineExecution.yaml"

requestDescribeModelPackage :: DescribeModelPackage -> TestTree
requestDescribeModelPackage =
  req
    "DescribeModelPackage"
    "fixture/DescribeModelPackage.yaml"

requestDeleteTags :: DeleteTags -> TestTree
requestDeleteTags =
  req
    "DeleteTags"
    "fixture/DeleteTags.yaml"

requestAddAssociation :: AddAssociation -> TestTree
requestAddAssociation =
  req
    "AddAssociation"
    "fixture/AddAssociation.yaml"

requestCreateNotebookInstanceLifecycleConfig :: CreateNotebookInstanceLifecycleConfig -> TestTree
requestCreateNotebookInstanceLifecycleConfig =
  req
    "CreateNotebookInstanceLifecycleConfig"
    "fixture/CreateNotebookInstanceLifecycleConfig.yaml"

requestListApps :: ListApps -> TestTree
requestListApps =
  req
    "ListApps"
    "fixture/ListApps.yaml"

requestCreateWorkforce :: CreateWorkforce -> TestTree
requestCreateWorkforce =
  req
    "CreateWorkforce"
    "fixture/CreateWorkforce.yaml"

requestListAutoMLJobs :: ListAutoMLJobs -> TestTree
requestListAutoMLJobs =
  req
    "ListAutoMLJobs"
    "fixture/ListAutoMLJobs.yaml"

requestUpdateEndpointWeightsAndCapacities :: UpdateEndpointWeightsAndCapacities -> TestTree
requestUpdateEndpointWeightsAndCapacities =
  req
    "UpdateEndpointWeightsAndCapacities"
    "fixture/UpdateEndpointWeightsAndCapacities.yaml"

requestStartNotebookInstance :: StartNotebookInstance -> TestTree
requestStartNotebookInstance =
  req
    "StartNotebookInstance"
    "fixture/StartNotebookInstance.yaml"

requestStopPipelineExecution :: StopPipelineExecution -> TestTree
requestStopPipelineExecution =
  req
    "StopPipelineExecution"
    "fixture/StopPipelineExecution.yaml"

requestListEndpointConfigs :: ListEndpointConfigs -> TestTree
requestListEndpointConfigs =
  req
    "ListEndpointConfigs"
    "fixture/ListEndpointConfigs.yaml"

requestDeleteWorkteam :: DeleteWorkteam -> TestTree
requestDeleteWorkteam =
  req
    "DeleteWorkteam"
    "fixture/DeleteWorkteam.yaml"

requestDeleteWorkforce :: DeleteWorkforce -> TestTree
requestDeleteWorkforce =
  req
    "DeleteWorkforce"
    "fixture/DeleteWorkforce.yaml"

requestDeleteModelBiasJobDefinition :: DeleteModelBiasJobDefinition -> TestTree
requestDeleteModelBiasJobDefinition =
  req
    "DeleteModelBiasJobDefinition"
    "fixture/DeleteModelBiasJobDefinition.yaml"

requestUpdateWorkforce :: UpdateWorkforce -> TestTree
requestUpdateWorkforce =
  req
    "UpdateWorkforce"
    "fixture/UpdateWorkforce.yaml"

requestDescribeDevice :: DescribeDevice -> TestTree
requestDescribeDevice =
  req
    "DescribeDevice"
    "fixture/DescribeDevice.yaml"

requestDescribeDomain :: DescribeDomain -> TestTree
requestDescribeDomain =
  req
    "DescribeDomain"
    "fixture/DescribeDomain.yaml"

requestDeleteNotebookInstanceLifecycleConfig :: DeleteNotebookInstanceLifecycleConfig -> TestTree
requestDeleteNotebookInstanceLifecycleConfig =
  req
    "DeleteNotebookInstanceLifecycleConfig"
    "fixture/DeleteNotebookInstanceLifecycleConfig.yaml"

requestDescribePipelineExecution :: DescribePipelineExecution -> TestTree
requestDescribePipelineExecution =
  req
    "DescribePipelineExecution"
    "fixture/DescribePipelineExecution.yaml"

requestUpdateWorkteam :: UpdateWorkteam -> TestTree
requestUpdateWorkteam =
  req
    "UpdateWorkteam"
    "fixture/UpdateWorkteam.yaml"

requestCreateLabelingJob :: CreateLabelingJob -> TestTree
requestCreateLabelingJob =
  req
    "CreateLabelingJob"
    "fixture/CreateLabelingJob.yaml"

requestDescribeModelQualityJobDefinition :: DescribeModelQualityJobDefinition -> TestTree
requestDescribeModelQualityJobDefinition =
  req
    "DescribeModelQualityJobDefinition"
    "fixture/DescribeModelQualityJobDefinition.yaml"

requestCreateExperiment :: CreateExperiment -> TestTree
requestCreateExperiment =
  req
    "CreateExperiment"
    "fixture/CreateExperiment.yaml"

requestListWorkforces :: ListWorkforces -> TestTree
requestListWorkforces =
  req
    "ListWorkforces"
    "fixture/ListWorkforces.yaml"

requestListAppImageConfigs :: ListAppImageConfigs -> TestTree
requestListAppImageConfigs =
  req
    "ListAppImageConfigs"
    "fixture/ListAppImageConfigs.yaml"

requestUpdateNotebookInstanceLifecycleConfig :: UpdateNotebookInstanceLifecycleConfig -> TestTree
requestUpdateNotebookInstanceLifecycleConfig =
  req
    "UpdateNotebookInstanceLifecycleConfig"
    "fixture/UpdateNotebookInstanceLifecycleConfig.yaml"

requestDescribeSubscribedWorkteam :: DescribeSubscribedWorkteam -> TestTree
requestDescribeSubscribedWorkteam =
  req
    "DescribeSubscribedWorkteam"
    "fixture/DescribeSubscribedWorkteam.yaml"

requestListNotebookInstanceLifecycleConfigs :: ListNotebookInstanceLifecycleConfigs -> TestTree
requestListNotebookInstanceLifecycleConfigs =
  req
    "ListNotebookInstanceLifecycleConfigs"
    "fixture/ListNotebookInstanceLifecycleConfigs.yaml"

requestListEdgePackagingJobs :: ListEdgePackagingJobs -> TestTree
requestListEdgePackagingJobs =
  req
    "ListEdgePackagingJobs"
    "fixture/ListEdgePackagingJobs.yaml"

requestDescribeCodeRepository :: DescribeCodeRepository -> TestTree
requestDescribeCodeRepository =
  req
    "DescribeCodeRepository"
    "fixture/DescribeCodeRepository.yaml"

requestListEndpoints :: ListEndpoints -> TestTree
requestListEndpoints =
  req
    "ListEndpoints"
    "fixture/ListEndpoints.yaml"

requestDescribeDataQualityJobDefinition :: DescribeDataQualityJobDefinition -> TestTree
requestDescribeDataQualityJobDefinition =
  req
    "DescribeDataQualityJobDefinition"
    "fixture/DescribeDataQualityJobDefinition.yaml"

requestDescribeAlgorithm :: DescribeAlgorithm -> TestTree
requestDescribeAlgorithm =
  req
    "DescribeAlgorithm"
    "fixture/DescribeAlgorithm.yaml"

requestCreateAction :: CreateAction -> TestTree
requestCreateAction =
  req
    "CreateAction"
    "fixture/CreateAction.yaml"

requestDeleteEndpoint :: DeleteEndpoint -> TestTree
requestDeleteEndpoint =
  req
    "DeleteEndpoint"
    "fixture/DeleteEndpoint.yaml"

requestCreatePresignedDomainURL :: CreatePresignedDomainURL -> TestTree
requestCreatePresignedDomainURL =
  req
    "CreatePresignedDomainURL"
    "fixture/CreatePresignedDomainURL.yaml"

requestListTransformJobs :: ListTransformJobs -> TestTree
requestListTransformJobs =
  req
    "ListTransformJobs"
    "fixture/ListTransformJobs.yaml"

requestDescribeHyperParameterTuningJob :: DescribeHyperParameterTuningJob -> TestTree
requestDescribeHyperParameterTuningJob =
  req
    "DescribeHyperParameterTuningJob"
    "fixture/DescribeHyperParameterTuningJob.yaml"

requestCreateCompilationJob :: CreateCompilationJob -> TestTree
requestCreateCompilationJob =
  req
    "CreateCompilationJob"
    "fixture/CreateCompilationJob.yaml"

requestUpdateEndpoint :: UpdateEndpoint -> TestTree
requestUpdateEndpoint =
  req
    "UpdateEndpoint"
    "fixture/UpdateEndpoint.yaml"

requestDescribeModel :: DescribeModel -> TestTree
requestDescribeModel =
  req
    "DescribeModel"
    "fixture/DescribeModel.yaml"

requestCreateDeviceFleet :: CreateDeviceFleet -> TestTree
requestCreateDeviceFleet =
  req
    "CreateDeviceFleet"
    "fixture/CreateDeviceFleet.yaml"

requestCreateArtifact :: CreateArtifact -> TestTree
requestCreateArtifact =
  req
    "CreateArtifact"
    "fixture/CreateArtifact.yaml"

requestUpdateDevices :: UpdateDevices -> TestTree
requestUpdateDevices =
  req
    "UpdateDevices"
    "fixture/UpdateDevices.yaml"

requestListArtifacts :: ListArtifacts -> TestTree
requestListArtifacts =
  req
    "ListArtifacts"
    "fixture/ListArtifacts.yaml"

requestDeleteDeviceFleet :: DeleteDeviceFleet -> TestTree
requestDeleteDeviceFleet =
  req
    "DeleteDeviceFleet"
    "fixture/DeleteDeviceFleet.yaml"

requestListMonitoringExecutions :: ListMonitoringExecutions -> TestTree
requestListMonitoringExecutions =
  req
    "ListMonitoringExecutions"
    "fixture/ListMonitoringExecutions.yaml"

requestListCompilationJobs :: ListCompilationJobs -> TestTree
requestListCompilationJobs =
  req
    "ListCompilationJobs"
    "fixture/ListCompilationJobs.yaml"

requestListActions :: ListActions -> TestTree
requestListActions =
  req
    "ListActions"
    "fixture/ListActions.yaml"

requestListDeviceFleets :: ListDeviceFleets -> TestTree
requestListDeviceFleets =
  req
    "ListDeviceFleets"
    "fixture/ListDeviceFleets.yaml"

requestDescribeModelPackageGroup :: DescribeModelPackageGroup -> TestTree
requestDescribeModelPackageGroup =
  req
    "DescribeModelPackageGroup"
    "fixture/DescribeModelPackageGroup.yaml"

requestStopHyperParameterTuningJob :: StopHyperParameterTuningJob -> TestTree
requestStopHyperParameterTuningJob =
  req
    "StopHyperParameterTuningJob"
    "fixture/StopHyperParameterTuningJob.yaml"

requestDescribeTrial :: DescribeTrial -> TestTree
requestDescribeTrial =
  req
    "DescribeTrial"
    "fixture/DescribeTrial.yaml"

requestUpdateDeviceFleet :: UpdateDeviceFleet -> TestTree
requestUpdateDeviceFleet =
  req
    "UpdateDeviceFleet"
    "fixture/UpdateDeviceFleet.yaml"

requestListLabelingJobsForWorkteam :: ListLabelingJobsForWorkteam -> TestTree
requestListLabelingJobsForWorkteam =
  req
    "ListLabelingJobsForWorkteam"
    "fixture/ListLabelingJobsForWorkteam.yaml"

requestCreateFeatureGroup :: CreateFeatureGroup -> TestTree
requestCreateFeatureGroup =
  req
    "CreateFeatureGroup"
    "fixture/CreateFeatureGroup.yaml"

requestCreateDomain :: CreateDomain -> TestTree
requestCreateDomain =
  req
    "CreateDomain"
    "fixture/CreateDomain.yaml"

requestListImageVersions :: ListImageVersions -> TestTree
requestListImageVersions =
  req
    "ListImageVersions"
    "fixture/ListImageVersions.yaml"

requestStopProcessingJob :: StopProcessingJob -> TestTree
requestStopProcessingJob =
  req
    "StopProcessingJob"
    "fixture/StopProcessingJob.yaml"

requestDeleteImageVersion :: DeleteImageVersion -> TestTree
requestDeleteImageVersion =
  req
    "DeleteImageVersion"
    "fixture/DeleteImageVersion.yaml"

requestDeleteProject :: DeleteProject -> TestTree
requestDeleteProject =
  req
    "DeleteProject"
    "fixture/DeleteProject.yaml"

requestDescribeExperiment :: DescribeExperiment -> TestTree
requestDescribeExperiment =
  req
    "DescribeExperiment"
    "fixture/DescribeExperiment.yaml"

requestDescribeAutoMLJob :: DescribeAutoMLJob -> TestTree
requestDescribeAutoMLJob =
  req
    "DescribeAutoMLJob"
    "fixture/DescribeAutoMLJob.yaml"

requestDescribeApp :: DescribeApp -> TestTree
requestDescribeApp =
  req
    "DescribeApp"
    "fixture/DescribeApp.yaml"

requestListTrialComponents :: ListTrialComponents -> TestTree
requestListTrialComponents =
  req
    "ListTrialComponents"
    "fixture/ListTrialComponents.yaml"

requestUpdateTrialComponent :: UpdateTrialComponent -> TestTree
requestUpdateTrialComponent =
  req
    "UpdateTrialComponent"
    "fixture/UpdateTrialComponent.yaml"

requestDeleteTrialComponent :: DeleteTrialComponent -> TestTree
requestDeleteTrialComponent =
  req
    "DeleteTrialComponent"
    "fixture/DeleteTrialComponent.yaml"

requestCreateTrialComponent :: CreateTrialComponent -> TestTree
requestCreateTrialComponent =
  req
    "CreateTrialComponent"
    "fixture/CreateTrialComponent.yaml"

requestDescribeWorkforce :: DescribeWorkforce -> TestTree
requestDescribeWorkforce =
  req
    "DescribeWorkforce"
    "fixture/DescribeWorkforce.yaml"

requestListNotebookInstances :: ListNotebookInstances -> TestTree
requestListNotebookInstances =
  req
    "ListNotebookInstances"
    "fixture/ListNotebookInstances.yaml"

requestListModelExplainabilityJobDefinitions :: ListModelExplainabilityJobDefinitions -> TestTree
requestListModelExplainabilityJobDefinitions =
  req
    "ListModelExplainabilityJobDefinitions"
    "fixture/ListModelExplainabilityJobDefinitions.yaml"

requestDeleteModelQualityJobDefinition :: DeleteModelQualityJobDefinition -> TestTree
requestDeleteModelQualityJobDefinition =
  req
    "DeleteModelQualityJobDefinition"
    "fixture/DeleteModelQualityJobDefinition.yaml"

requestStopLabelingJob :: StopLabelingJob -> TestTree
requestStopLabelingJob =
  req
    "StopLabelingJob"
    "fixture/StopLabelingJob.yaml"

requestListModelQualityJobDefinitions :: ListModelQualityJobDefinitions -> TestTree
requestListModelQualityJobDefinitions =
  req
    "ListModelQualityJobDefinitions"
    "fixture/ListModelQualityJobDefinitions.yaml"

requestDescribeModelBiasJobDefinition :: DescribeModelBiasJobDefinition -> TestTree
requestDescribeModelBiasJobDefinition =
  req
    "DescribeModelBiasJobDefinition"
    "fixture/DescribeModelBiasJobDefinition.yaml"

requestDescribeWorkteam :: DescribeWorkteam -> TestTree
requestDescribeWorkteam =
  req
    "DescribeWorkteam"
    "fixture/DescribeWorkteam.yaml"

requestDescribeNotebookInstanceLifecycleConfig :: DescribeNotebookInstanceLifecycleConfig -> TestTree
requestDescribeNotebookInstanceLifecycleConfig =
  req
    "DescribeNotebookInstanceLifecycleConfig"
    "fixture/DescribeNotebookInstanceLifecycleConfig.yaml"

requestListPipelineExecutions :: ListPipelineExecutions -> TestTree
requestListPipelineExecutions =
  req
    "ListPipelineExecutions"
    "fixture/ListPipelineExecutions.yaml"

requestUpdateDomain :: UpdateDomain -> TestTree
requestUpdateDomain =
  req
    "UpdateDomain"
    "fixture/UpdateDomain.yaml"

requestAssociateTrialComponent :: AssociateTrialComponent -> TestTree
requestAssociateTrialComponent =
  req
    "AssociateTrialComponent"
    "fixture/AssociateTrialComponent.yaml"

requestUpdatePipelineExecution :: UpdatePipelineExecution -> TestTree
requestUpdatePipelineExecution =
  req
    "UpdatePipelineExecution"
    "fixture/UpdatePipelineExecution.yaml"

requestCreateImageVersion :: CreateImageVersion -> TestTree
requestCreateImageVersion =
  req
    "CreateImageVersion"
    "fixture/CreateImageVersion.yaml"

requestDeleteDomain :: DeleteDomain -> TestTree
requestDeleteDomain =
  req
    "DeleteDomain"
    "fixture/DeleteDomain.yaml"

requestUpdateTrainingJob :: UpdateTrainingJob -> TestTree
requestUpdateTrainingJob =
  req
    "UpdateTrainingJob"
    "fixture/UpdateTrainingJob.yaml"

requestUpdateImage :: UpdateImage -> TestTree
requestUpdateImage =
  req
    "UpdateImage"
    "fixture/UpdateImage.yaml"

requestUpdateContext :: UpdateContext -> TestTree
requestUpdateContext =
  req
    "UpdateContext"
    "fixture/UpdateContext.yaml"

requestDeleteImage :: DeleteImage -> TestTree
requestDeleteImage =
  req
    "DeleteImage"
    "fixture/DeleteImage.yaml"

requestListFlowDefinitions :: ListFlowDefinitions -> TestTree
requestListFlowDefinitions =
  req
    "ListFlowDefinitions"
    "fixture/ListFlowDefinitions.yaml"

requestListModels :: ListModels -> TestTree
requestListModels =
  req
    "ListModels"
    "fixture/ListModels.yaml"

requestCreateUserProfile :: CreateUserProfile -> TestTree
requestCreateUserProfile =
  req
    "CreateUserProfile"
    "fixture/CreateUserProfile.yaml"

requestRenderUiTemplate :: RenderUiTemplate -> TestTree
requestRenderUiTemplate =
  req
    "RenderUiTemplate"
    "fixture/RenderUiTemplate.yaml"

requestDescribeFeatureGroup :: DescribeFeatureGroup -> TestTree
requestDescribeFeatureGroup =
  req
    "DescribeFeatureGroup"
    "fixture/DescribeFeatureGroup.yaml"

requestDeleteContext :: DeleteContext -> TestTree
requestDeleteContext =
  req
    "DeleteContext"
    "fixture/DeleteContext.yaml"

requestListHyperParameterTuningJobs :: ListHyperParameterTuningJobs -> TestTree
requestListHyperParameterTuningJobs =
  req
    "ListHyperParameterTuningJobs"
    "fixture/ListHyperParameterTuningJobs.yaml"

requestDeleteFlowDefinition :: DeleteFlowDefinition -> TestTree
requestDeleteFlowDefinition =
  req
    "DeleteFlowDefinition"
    "fixture/DeleteFlowDefinition.yaml"

requestListAlgorithms :: ListAlgorithms -> TestTree
requestListAlgorithms =
  req
    "ListAlgorithms"
    "fixture/ListAlgorithms.yaml"

requestCreateAlgorithm :: CreateAlgorithm -> TestTree
requestCreateAlgorithm =
  req
    "CreateAlgorithm"
    "fixture/CreateAlgorithm.yaml"

requestCreateFlowDefinition :: CreateFlowDefinition -> TestTree
requestCreateFlowDefinition =
  req
    "CreateFlowDefinition"
    "fixture/CreateFlowDefinition.yaml"

requestListPipelineParametersForExecution :: ListPipelineParametersForExecution -> TestTree
requestListPipelineParametersForExecution =
  req
    "ListPipelineParametersForExecution"
    "fixture/ListPipelineParametersForExecution.yaml"

requestListTrials :: ListTrials -> TestTree
requestListTrials =
  req
    "ListTrials"
    "fixture/ListTrials.yaml"

requestCreateHyperParameterTuningJob :: CreateHyperParameterTuningJob -> TestTree
requestCreateHyperParameterTuningJob =
  req
    "CreateHyperParameterTuningJob"
    "fixture/CreateHyperParameterTuningJob.yaml"

requestCreateModel :: CreateModel -> TestTree
requestCreateModel =
  req
    "CreateModel"
    "fixture/CreateModel.yaml"

requestUpdateTrial :: UpdateTrial -> TestTree
requestUpdateTrial =
  req
    "UpdateTrial"
    "fixture/UpdateTrial.yaml"

requestDeleteModelPackageGroup :: DeleteModelPackageGroup -> TestTree
requestDeleteModelPackageGroup =
  req
    "DeleteModelPackageGroup"
    "fixture/DeleteModelPackageGroup.yaml"

requestDescribeDeviceFleet :: DescribeDeviceFleet -> TestTree
requestDescribeDeviceFleet =
  req
    "DescribeDeviceFleet"
    "fixture/DescribeDeviceFleet.yaml"

requestListModelPackageGroups :: ListModelPackageGroups -> TestTree
requestListModelPackageGroups =
  req
    "ListModelPackageGroups"
    "fixture/ListModelPackageGroups.yaml"

requestListPipelines :: ListPipelines -> TestTree
requestListPipelines =
  req
    "ListPipelines"
    "fixture/ListPipelines.yaml"

requestListTags :: ListTags -> TestTree
requestListTags =
  req
    "ListTags"
    "fixture/ListTags.yaml"

requestDescribePipelineDefinitionForExecution :: DescribePipelineDefinitionForExecution -> TestTree
requestDescribePipelineDefinitionForExecution =
  req
    "DescribePipelineDefinitionForExecution"
    "fixture/DescribePipelineDefinitionForExecution.yaml"

requestDeleteTrial :: DeleteTrial -> TestTree
requestDeleteTrial =
  req
    "DeleteTrial"
    "fixture/DeleteTrial.yaml"

requestPutModelPackageGroupPolicy :: PutModelPackageGroupPolicy -> TestTree
requestPutModelPackageGroupPolicy =
  req
    "PutModelPackageGroupPolicy"
    "fixture/PutModelPackageGroupPolicy.yaml"

requestListExperiments :: ListExperiments -> TestTree
requestListExperiments =
  req
    "ListExperiments"
    "fixture/ListExperiments.yaml"

requestUpdateExperiment :: UpdateExperiment -> TestTree
requestUpdateExperiment =
  req
    "UpdateExperiment"
    "fixture/UpdateExperiment.yaml"

requestDeleteExperiment :: DeleteExperiment -> TestTree
requestDeleteExperiment =
  req
    "DeleteExperiment"
    "fixture/DeleteExperiment.yaml"

requestListLabelingJobs :: ListLabelingJobs -> TestTree
requestListLabelingJobs =
  req
    "ListLabelingJobs"
    "fixture/ListLabelingJobs.yaml"

requestDescribeImageVersion :: DescribeImageVersion -> TestTree
requestDescribeImageVersion =
  req
    "DescribeImageVersion"
    "fixture/DescribeImageVersion.yaml"

requestDeleteApp :: DeleteApp -> TestTree
requestDeleteApp =
  req
    "DeleteApp"
    "fixture/DeleteApp.yaml"

requestCreateModelBiasJobDefinition :: CreateModelBiasJobDefinition -> TestTree
requestCreateModelBiasJobDefinition =
  req
    "CreateModelBiasJobDefinition"
    "fixture/CreateModelBiasJobDefinition.yaml"

requestDescribeTrialComponent :: DescribeTrialComponent -> TestTree
requestDescribeTrialComponent =
  req
    "DescribeTrialComponent"
    "fixture/DescribeTrialComponent.yaml"

requestCreateWorkteam :: CreateWorkteam -> TestTree
requestCreateWorkteam =
  req
    "CreateWorkteam"
    "fixture/CreateWorkteam.yaml"

requestDescribeProject :: DescribeProject -> TestTree
requestDescribeProject =
  req
    "DescribeProject"
    "fixture/DescribeProject.yaml"

requestCreateProcessingJob :: CreateProcessingJob -> TestTree
requestCreateProcessingJob =
  req
    "CreateProcessingJob"
    "fixture/CreateProcessingJob.yaml"

requestListAssociations :: ListAssociations -> TestTree
requestListAssociations =
  req
    "ListAssociations"
    "fixture/ListAssociations.yaml"

requestEnableSagemakerServicecatalogPortfolio :: EnableSagemakerServicecatalogPortfolio -> TestTree
requestEnableSagemakerServicecatalogPortfolio =
  req
    "EnableSagemakerServicecatalogPortfolio"
    "fixture/EnableSagemakerServicecatalogPortfolio.yaml"

requestUpdateAppImageConfig :: UpdateAppImageConfig -> TestTree
requestUpdateAppImageConfig =
  req
    "UpdateAppImageConfig"
    "fixture/UpdateAppImageConfig.yaml"

requestListModelBiasJobDefinitions :: ListModelBiasJobDefinitions -> TestTree
requestListModelBiasJobDefinitions =
  req
    "ListModelBiasJobDefinitions"
    "fixture/ListModelBiasJobDefinitions.yaml"

requestCreateAutoMLJob :: CreateAutoMLJob -> TestTree
requestCreateAutoMLJob =
  req
    "CreateAutoMLJob"
    "fixture/CreateAutoMLJob.yaml"

requestCreateApp :: CreateApp -> TestTree
requestCreateApp =
  req
    "CreateApp"
    "fixture/CreateApp.yaml"

requestDescribeNotebookInstance :: DescribeNotebookInstance -> TestTree
requestDescribeNotebookInstance =
  req
    "DescribeNotebookInstance"
    "fixture/DescribeNotebookInstance.yaml"

requestDeleteAppImageConfig :: DeleteAppImageConfig -> TestTree
requestDeleteAppImageConfig =
  req
    "DeleteAppImageConfig"
    "fixture/DeleteAppImageConfig.yaml"

requestCreateEndpointConfig :: CreateEndpointConfig -> TestTree
requestCreateEndpointConfig =
  req
    "CreateEndpointConfig"
    "fixture/CreateEndpointConfig.yaml"

requestListProcessingJobs :: ListProcessingJobs -> TestTree
requestListProcessingJobs =
  req
    "ListProcessingJobs"
    "fixture/ListProcessingJobs.yaml"

requestCreateMonitoringSchedule :: CreateMonitoringSchedule -> TestTree
requestCreateMonitoringSchedule =
  req
    "CreateMonitoringSchedule"
    "fixture/CreateMonitoringSchedule.yaml"

requestDescribeModelExplainabilityJobDefinition :: DescribeModelExplainabilityJobDefinition -> TestTree
requestDescribeModelExplainabilityJobDefinition =
  req
    "DescribeModelExplainabilityJobDefinition"
    "fixture/DescribeModelExplainabilityJobDefinition.yaml"

requestListWorkteams :: ListWorkteams -> TestTree
requestListWorkteams =
  req
    "ListWorkteams"
    "fixture/ListWorkteams.yaml"

requestDescribeFlowDefinition :: DescribeFlowDefinition -> TestTree
requestDescribeFlowDefinition =
  req
    "DescribeFlowDefinition"
    "fixture/DescribeFlowDefinition.yaml"

requestDescribeContext :: DescribeContext -> TestTree
requestDescribeContext =
  req
    "DescribeContext"
    "fixture/DescribeContext.yaml"

requestRegisterDevices :: RegisterDevices -> TestTree
requestRegisterDevices =
  req
    "RegisterDevices"
    "fixture/RegisterDevices.yaml"

requestListFeatureGroups :: ListFeatureGroups -> TestTree
requestListFeatureGroups =
  req
    "ListFeatureGroups"
    "fixture/ListFeatureGroups.yaml"

requestCreatePresignedNotebookInstanceURL :: CreatePresignedNotebookInstanceURL -> TestTree
requestCreatePresignedNotebookInstanceURL =
  req
    "CreatePresignedNotebookInstanceURL"
    "fixture/CreatePresignedNotebookInstanceURL.yaml"

requestDescribeTrainingJob :: DescribeTrainingJob -> TestTree
requestDescribeTrainingJob =
  req
    "DescribeTrainingJob"
    "fixture/DescribeTrainingJob.yaml"

requestCreateHumanTaskUi :: CreateHumanTaskUi -> TestTree
requestCreateHumanTaskUi =
  req
    "CreateHumanTaskUi"
    "fixture/CreateHumanTaskUi.yaml"

requestListTrainingJobsForHyperParameterTuningJob :: ListTrainingJobsForHyperParameterTuningJob -> TestTree
requestListTrainingJobsForHyperParameterTuningJob =
  req
    "ListTrainingJobsForHyperParameterTuningJob"
    "fixture/ListTrainingJobsForHyperParameterTuningJob.yaml"

requestDescribeImage :: DescribeImage -> TestTree
requestDescribeImage =
  req
    "DescribeImage"
    "fixture/DescribeImage.yaml"

requestDeleteFeatureGroup :: DeleteFeatureGroup -> TestTree
requestDeleteFeatureGroup =
  req
    "DeleteFeatureGroup"
    "fixture/DeleteFeatureGroup.yaml"

-- Responses

responseDisassociateTrialComponent :: DisassociateTrialComponentResponse -> TestTree
responseDisassociateTrialComponent =
  res
    "DisassociateTrialComponentResponse"
    "fixture/DisassociateTrialComponentResponse.proto"
    sageMaker
    (Proxy :: Proxy DisassociateTrialComponent)

responseDeleteArtifact :: DeleteArtifactResponse -> TestTree
responseDeleteArtifact =
  res
    "DeleteArtifactResponse"
    "fixture/DeleteArtifactResponse.proto"
    sageMaker
    (Proxy :: Proxy DeleteArtifact)

responseCreateTransformJob :: CreateTransformJobResponse -> TestTree
responseCreateTransformJob =
  res
    "CreateTransformJobResponse"
    "fixture/CreateTransformJobResponse.proto"
    sageMaker
    (Proxy :: Proxy CreateTransformJob)

responseListHumanTaskUis :: ListHumanTaskUisResponse -> TestTree
responseListHumanTaskUis =
  res
    "ListHumanTaskUisResponse"
    "fixture/ListHumanTaskUisResponse.proto"
    sageMaker
    (Proxy :: Proxy ListHumanTaskUis)

responseDeleteHumanTaskUi :: DeleteHumanTaskUiResponse -> TestTree
responseDeleteHumanTaskUi =
  res
    "DeleteHumanTaskUiResponse"
    "fixture/DeleteHumanTaskUiResponse.proto"
    sageMaker
    (Proxy :: Proxy DeleteHumanTaskUi)

responseUpdateAction :: UpdateActionResponse -> TestTree
responseUpdateAction =
  res
    "UpdateActionResponse"
    "fixture/UpdateActionResponse.proto"
    sageMaker
    (Proxy :: Proxy UpdateAction)

responseDescribePipeline :: DescribePipelineResponse -> TestTree
responseDescribePipeline =
  res
    "DescribePipelineResponse"
    "fixture/DescribePipelineResponse.proto"
    sageMaker
    (Proxy :: Proxy DescribePipeline)

responseUpdateArtifact :: UpdateArtifactResponse -> TestTree
responseUpdateArtifact =
  res
    "UpdateArtifactResponse"
    "fixture/UpdateArtifactResponse.proto"
    sageMaker
    (Proxy :: Proxy UpdateArtifact)

responseDescribeUserProfile :: DescribeUserProfileResponse -> TestTree
responseDescribeUserProfile =
  res
    "DescribeUserProfileResponse"
    "fixture/DescribeUserProfileResponse.proto"
    sageMaker
    (Proxy :: Proxy DescribeUserProfile)

responseStopTrainingJob :: StopTrainingJobResponse -> TestTree
responseStopTrainingJob =
  res
    "StopTrainingJobResponse"
    "fixture/StopTrainingJobResponse.proto"
    sageMaker
    (Proxy :: Proxy StopTrainingJob)

responseCreateEndpoint :: CreateEndpointResponse -> TestTree
responseCreateEndpoint =
  res
    "CreateEndpointResponse"
    "fixture/CreateEndpointResponse.proto"
    sageMaker
    (Proxy :: Proxy CreateEndpoint)

responseGetSearchSuggestions :: GetSearchSuggestionsResponse -> TestTree
responseGetSearchSuggestions =
  res
    "GetSearchSuggestionsResponse"
    "fixture/GetSearchSuggestionsResponse.proto"
    sageMaker
    (Proxy :: Proxy GetSearchSuggestions)

responseDeleteAction :: DeleteActionResponse -> TestTree
responseDeleteAction =
  res
    "DeleteActionResponse"
    "fixture/DeleteActionResponse.proto"
    sageMaker
    (Proxy :: Proxy DeleteAction)

responseCreateEdgePackagingJob :: CreateEdgePackagingJobResponse -> TestTree
responseCreateEdgePackagingJob =
  res
    "CreateEdgePackagingJobResponse"
    "fixture/CreateEdgePackagingJobResponse.proto"
    sageMaker
    (Proxy :: Proxy CreateEdgePackagingJob)

responseDescribeEndpointConfig :: DescribeEndpointConfigResponse -> TestTree
responseDescribeEndpointConfig =
  res
    "DescribeEndpointConfigResponse"
    "fixture/DescribeEndpointConfigResponse.proto"
    sageMaker
    (Proxy :: Proxy DescribeEndpointConfig)

responseListModelPackages :: ListModelPackagesResponse -> TestTree
responseListModelPackages =
  res
    "ListModelPackagesResponse"
    "fixture/ListModelPackagesResponse.proto"
    sageMaker
    (Proxy :: Proxy ListModelPackages)

responseGetModelPackageGroupPolicy :: GetModelPackageGroupPolicyResponse -> TestTree
responseGetModelPackageGroupPolicy =
  res
    "GetModelPackageGroupPolicyResponse"
    "fixture/GetModelPackageGroupPolicyResponse.proto"
    sageMaker
    (Proxy :: Proxy GetModelPackageGroupPolicy)

responseDescribeMonitoringSchedule :: DescribeMonitoringScheduleResponse -> TestTree
responseDescribeMonitoringSchedule =
  res
    "DescribeMonitoringScheduleResponse"
    "fixture/DescribeMonitoringScheduleResponse.proto"
    sageMaker
    (Proxy :: Proxy DescribeMonitoringSchedule)

responseCreateModelExplainabilityJobDefinition :: CreateModelExplainabilityJobDefinitionResponse -> TestTree
responseCreateModelExplainabilityJobDefinition =
  res
    "CreateModelExplainabilityJobDefinitionResponse"
    "fixture/CreateModelExplainabilityJobDefinitionResponse.proto"
    sageMaker
    (Proxy :: Proxy CreateModelExplainabilityJobDefinition)

responseDescribeLabelingJob :: DescribeLabelingJobResponse -> TestTree
responseDescribeLabelingJob =
  res
    "DescribeLabelingJobResponse"
    "fixture/DescribeLabelingJobResponse.proto"
    sageMaker
    (Proxy :: Proxy DescribeLabelingJob)

responseCreateNotebookInstance :: CreateNotebookInstanceResponse -> TestTree
responseCreateNotebookInstance =
  res
    "CreateNotebookInstanceResponse"
    "fixture/CreateNotebookInstanceResponse.proto"
    sageMaker
    (Proxy :: Proxy CreateNotebookInstance)

responseUpdateModelPackage :: UpdateModelPackageResponse -> TestTree
responseUpdateModelPackage =
  res
    "UpdateModelPackageResponse"
    "fixture/UpdateModelPackageResponse.proto"
    sageMaker
    (Proxy :: Proxy UpdateModelPackage)

responseCreateModelQualityJobDefinition :: CreateModelQualityJobDefinitionResponse -> TestTree
responseCreateModelQualityJobDefinition =
  res
    "CreateModelQualityJobDefinitionResponse"
    "fixture/CreateModelQualityJobDefinitionResponse.proto"
    sageMaker
    (Proxy :: Proxy CreateModelQualityJobDefinition)

responseDeleteModelPackage :: DeleteModelPackageResponse -> TestTree
responseDeleteModelPackage =
  res
    "DeleteModelPackageResponse"
    "fixture/DeleteModelPackageResponse.proto"
    sageMaker
    (Proxy :: Proxy DeleteModelPackage)

responseListProjects :: ListProjectsResponse -> TestTree
responseListProjects =
  res
    "ListProjectsResponse"
    "fixture/ListProjectsResponse.proto"
    sageMaker
    (Proxy :: Proxy ListProjects)

responseListSubscribedWorkteams :: ListSubscribedWorkteamsResponse -> TestTree
responseListSubscribedWorkteams =
  res
    "ListSubscribedWorkteamsResponse"
    "fixture/ListSubscribedWorkteamsResponse.proto"
    sageMaker
    (Proxy :: Proxy ListSubscribedWorkteams)

responseDeleteNotebookInstance :: DeleteNotebookInstanceResponse -> TestTree
responseDeleteNotebookInstance =
  res
    "DeleteNotebookInstanceResponse"
    "fixture/DeleteNotebookInstanceResponse.proto"
    sageMaker
    (Proxy :: Proxy DeleteNotebookInstance)

responseCreateProject :: CreateProjectResponse -> TestTree
responseCreateProject =
  res
    "CreateProjectResponse"
    "fixture/CreateProjectResponse.proto"
    sageMaker
    (Proxy :: Proxy CreateProject)

responseDescribeProcessingJob :: DescribeProcessingJobResponse -> TestTree
responseDescribeProcessingJob =
  res
    "DescribeProcessingJobResponse"
    "fixture/DescribeProcessingJobResponse.proto"
    sageMaker
    (Proxy :: Proxy DescribeProcessingJob)

responseListDomains :: ListDomainsResponse -> TestTree
responseListDomains =
  res
    "ListDomainsResponse"
    "fixture/ListDomainsResponse.proto"
    sageMaker
    (Proxy :: Proxy ListDomains)

responseDeleteModelExplainabilityJobDefinition :: DeleteModelExplainabilityJobDefinitionResponse -> TestTree
responseDeleteModelExplainabilityJobDefinition =
  res
    "DeleteModelExplainabilityJobDefinitionResponse"
    "fixture/DeleteModelExplainabilityJobDefinitionResponse.proto"
    sageMaker
    (Proxy :: Proxy DeleteModelExplainabilityJobDefinition)

responseStopMonitoringSchedule :: StopMonitoringScheduleResponse -> TestTree
responseStopMonitoringSchedule =
  res
    "StopMonitoringScheduleResponse"
    "fixture/StopMonitoringScheduleResponse.proto"
    sageMaker
    (Proxy :: Proxy StopMonitoringSchedule)

responseListDevices :: ListDevicesResponse -> TestTree
responseListDevices =
  res
    "ListDevicesResponse"
    "fixture/ListDevicesResponse.proto"
    sageMaker
    (Proxy :: Proxy ListDevices)

responseCreateModelPackage :: CreateModelPackageResponse -> TestTree
responseCreateModelPackage =
  res
    "CreateModelPackageResponse"
    "fixture/CreateModelPackageResponse.proto"
    sageMaker
    (Proxy :: Proxy CreateModelPackage)

responseUpdateNotebookInstance :: UpdateNotebookInstanceResponse -> TestTree
responseUpdateNotebookInstance =
  res
    "UpdateNotebookInstanceResponse"
    "fixture/UpdateNotebookInstanceResponse.proto"
    sageMaker
    (Proxy :: Proxy UpdateNotebookInstance)

responseStopAutoMLJob :: StopAutoMLJobResponse -> TestTree
responseStopAutoMLJob =
  res
    "StopAutoMLJobResponse"
    "fixture/StopAutoMLJobResponse.proto"
    sageMaker
    (Proxy :: Proxy StopAutoMLJob)

responseDescribeAppImageConfig :: DescribeAppImageConfigResponse -> TestTree
responseDescribeAppImageConfig =
  res
    "DescribeAppImageConfigResponse"
    "fixture/DescribeAppImageConfigResponse.proto"
    sageMaker
    (Proxy :: Proxy DescribeAppImageConfig)

responseStartMonitoringSchedule :: StartMonitoringScheduleResponse -> TestTree
responseStartMonitoringSchedule =
  res
    "StartMonitoringScheduleResponse"
    "fixture/StartMonitoringScheduleResponse.proto"
    sageMaker
    (Proxy :: Proxy StartMonitoringSchedule)

responseStopCompilationJob :: StopCompilationJobResponse -> TestTree
responseStopCompilationJob =
  res
    "StopCompilationJobResponse"
    "fixture/StopCompilationJobResponse.proto"
    sageMaker
    (Proxy :: Proxy StopCompilationJob)

responseCreateTrial :: CreateTrialResponse -> TestTree
responseCreateTrial =
  res
    "CreateTrialResponse"
    "fixture/CreateTrialResponse.proto"
    sageMaker
    (Proxy :: Proxy CreateTrial)

responseGetSagemakerServicecatalogPortfolioStatus :: GetSagemakerServicecatalogPortfolioStatusResponse -> TestTree
responseGetSagemakerServicecatalogPortfolioStatus =
  res
    "GetSagemakerServicecatalogPortfolioStatusResponse"
    "fixture/GetSagemakerServicecatalogPortfolioStatusResponse.proto"
    sageMaker
    (Proxy :: Proxy GetSagemakerServicecatalogPortfolioStatus)

responseUpdateCodeRepository :: UpdateCodeRepositoryResponse -> TestTree
responseUpdateCodeRepository =
  res
    "UpdateCodeRepositoryResponse"
    "fixture/UpdateCodeRepositoryResponse.proto"
    sageMaker
    (Proxy :: Proxy UpdateCodeRepository)

responseSearch :: SearchResponse -> TestTree
responseSearch =
  res
    "SearchResponse"
    "fixture/SearchResponse.proto"
    sageMaker
    (Proxy :: Proxy Search)

responseDeleteModel :: DeleteModelResponse -> TestTree
responseDeleteModel =
  res
    "DeleteModelResponse"
    "fixture/DeleteModelResponse.proto"
    sageMaker
    (Proxy :: Proxy DeleteModel)

responseDeleteDataQualityJobDefinition :: DeleteDataQualityJobDefinitionResponse -> TestTree
responseDeleteDataQualityJobDefinition =
  res
    "DeleteDataQualityJobDefinitionResponse"
    "fixture/DeleteDataQualityJobDefinitionResponse.proto"
    sageMaker
    (Proxy :: Proxy DeleteDataQualityJobDefinition)

responseListImages :: ListImagesResponse -> TestTree
responseListImages =
  res
    "ListImagesResponse"
    "fixture/ListImagesResponse.proto"
    sageMaker
    (Proxy :: Proxy ListImages)

responseListTrainingJobs :: ListTrainingJobsResponse -> TestTree
responseListTrainingJobs =
  res
    "ListTrainingJobsResponse"
    "fixture/ListTrainingJobsResponse.proto"
    sageMaker
    (Proxy :: Proxy ListTrainingJobs)

responseDescribeTransformJob :: DescribeTransformJobResponse -> TestTree
responseDescribeTransformJob =
  res
    "DescribeTransformJobResponse"
    "fixture/DescribeTransformJobResponse.proto"
    sageMaker
    (Proxy :: Proxy DescribeTransformJob)

responseCreatePipeline :: CreatePipelineResponse -> TestTree
responseCreatePipeline =
  res
    "CreatePipelineResponse"
    "fixture/CreatePipelineResponse.proto"
    sageMaker
    (Proxy :: Proxy CreatePipeline)

responseCreateModelPackageGroup :: CreateModelPackageGroupResponse -> TestTree
responseCreateModelPackageGroup =
  res
    "CreateModelPackageGroupResponse"
    "fixture/CreateModelPackageGroupResponse.proto"
    sageMaker
    (Proxy :: Proxy CreateModelPackageGroup)

responseListCandidatesForAutoMLJob :: ListCandidatesForAutoMLJobResponse -> TestTree
responseListCandidatesForAutoMLJob =
  res
    "ListCandidatesForAutoMLJobResponse"
    "fixture/ListCandidatesForAutoMLJobResponse.proto"
    sageMaker
    (Proxy :: Proxy ListCandidatesForAutoMLJob)

responseDeleteAlgorithm :: DeleteAlgorithmResponse -> TestTree
responseDeleteAlgorithm =
  res
    "DeleteAlgorithmResponse"
    "fixture/DeleteAlgorithmResponse.proto"
    sageMaker
    (Proxy :: Proxy DeleteAlgorithm)

responseGetDeviceFleetReport :: GetDeviceFleetReportResponse -> TestTree
responseGetDeviceFleetReport =
  res
    "GetDeviceFleetReportResponse"
    "fixture/GetDeviceFleetReportResponse.proto"
    sageMaker
    (Proxy :: Proxy GetDeviceFleetReport)

responseListDataQualityJobDefinitions :: ListDataQualityJobDefinitionsResponse -> TestTree
responseListDataQualityJobDefinitions =
  res
    "ListDataQualityJobDefinitionsResponse"
    "fixture/ListDataQualityJobDefinitionsResponse.proto"
    sageMaker
    (Proxy :: Proxy ListDataQualityJobDefinitions)

responseDescribeEdgePackagingJob :: DescribeEdgePackagingJobResponse -> TestTree
responseDescribeEdgePackagingJob =
  res
    "DescribeEdgePackagingJobResponse"
    "fixture/DescribeEdgePackagingJobResponse.proto"
    sageMaker
    (Proxy :: Proxy DescribeEdgePackagingJob)

responseListContexts :: ListContextsResponse -> TestTree
responseListContexts =
  res
    "ListContextsResponse"
    "fixture/ListContextsResponse.proto"
    sageMaker
    (Proxy :: Proxy ListContexts)

responseDescribeEndpoint :: DescribeEndpointResponse -> TestTree
responseDescribeEndpoint =
  res
    "DescribeEndpointResponse"
    "fixture/DescribeEndpointResponse.proto"
    sageMaker
    (Proxy :: Proxy DescribeEndpoint)

responseDeleteCodeRepository :: DeleteCodeRepositoryResponse -> TestTree
responseDeleteCodeRepository =
  res
    "DeleteCodeRepositoryResponse"
    "fixture/DeleteCodeRepositoryResponse.proto"
    sageMaker
    (Proxy :: Proxy DeleteCodeRepository)

responseDeleteModelPackageGroupPolicy :: DeleteModelPackageGroupPolicyResponse -> TestTree
responseDeleteModelPackageGroupPolicy =
  res
    "DeleteModelPackageGroupPolicyResponse"
    "fixture/DeleteModelPackageGroupPolicyResponse.proto"
    sageMaker
    (Proxy :: Proxy DeleteModelPackageGroupPolicy)

responseListUserProfiles :: ListUserProfilesResponse -> TestTree
responseListUserProfiles =
  res
    "ListUserProfilesResponse"
    "fixture/ListUserProfilesResponse.proto"
    sageMaker
    (Proxy :: Proxy ListUserProfiles)

responseDescribeCompilationJob :: DescribeCompilationJobResponse -> TestTree
responseDescribeCompilationJob =
  res
    "DescribeCompilationJobResponse"
    "fixture/DescribeCompilationJobResponse.proto"
    sageMaker
    (Proxy :: Proxy DescribeCompilationJob)

responseUpdatePipeline :: UpdatePipelineResponse -> TestTree
responseUpdatePipeline =
  res
    "UpdatePipelineResponse"
    "fixture/UpdatePipelineResponse.proto"
    sageMaker
    (Proxy :: Proxy UpdatePipeline)

responseCreateCodeRepository :: CreateCodeRepositoryResponse -> TestTree
responseCreateCodeRepository =
  res
    "CreateCodeRepositoryResponse"
    "fixture/CreateCodeRepositoryResponse.proto"
    sageMaker
    (Proxy :: Proxy CreateCodeRepository)

responseDescribeArtifact :: DescribeArtifactResponse -> TestTree
responseDescribeArtifact =
  res
    "DescribeArtifactResponse"
    "fixture/DescribeArtifactResponse.proto"
    sageMaker
    (Proxy :: Proxy DescribeArtifact)

responseDescribeHumanTaskUi :: DescribeHumanTaskUiResponse -> TestTree
responseDescribeHumanTaskUi =
  res
    "DescribeHumanTaskUiResponse"
    "fixture/DescribeHumanTaskUiResponse.proto"
    sageMaker
    (Proxy :: Proxy DescribeHumanTaskUi)

responseListPipelineExecutionSteps :: ListPipelineExecutionStepsResponse -> TestTree
responseListPipelineExecutionSteps =
  res
    "ListPipelineExecutionStepsResponse"
    "fixture/ListPipelineExecutionStepsResponse.proto"
    sageMaker
    (Proxy :: Proxy ListPipelineExecutionSteps)

responseListCodeRepositories :: ListCodeRepositoriesResponse -> TestTree
responseListCodeRepositories =
  res
    "ListCodeRepositoriesResponse"
    "fixture/ListCodeRepositoriesResponse.proto"
    sageMaker
    (Proxy :: Proxy ListCodeRepositories)

responseUpdateUserProfile :: UpdateUserProfileResponse -> TestTree
responseUpdateUserProfile =
  res
    "UpdateUserProfileResponse"
    "fixture/UpdateUserProfileResponse.proto"
    sageMaker
    (Proxy :: Proxy UpdateUserProfile)

responseDescribeAction :: DescribeActionResponse -> TestTree
responseDescribeAction =
  res
    "DescribeActionResponse"
    "fixture/DescribeActionResponse.proto"
    sageMaker
    (Proxy :: Proxy DescribeAction)

responseStopTransformJob :: StopTransformJobResponse -> TestTree
responseStopTransformJob =
  res
    "StopTransformJobResponse"
    "fixture/StopTransformJobResponse.proto"
    sageMaker
    (Proxy :: Proxy StopTransformJob)

responseCreateTrainingJob :: CreateTrainingJobResponse -> TestTree
responseCreateTrainingJob =
  res
    "CreateTrainingJobResponse"
    "fixture/CreateTrainingJobResponse.proto"
    sageMaker
    (Proxy :: Proxy CreateTrainingJob)

responseDeleteUserProfile :: DeleteUserProfileResponse -> TestTree
responseDeleteUserProfile =
  res
    "DeleteUserProfileResponse"
    "fixture/DeleteUserProfileResponse.proto"
    sageMaker
    (Proxy :: Proxy DeleteUserProfile)

responseCreateContext :: CreateContextResponse -> TestTree
responseCreateContext =
  res
    "CreateContextResponse"
    "fixture/CreateContextResponse.proto"
    sageMaker
    (Proxy :: Proxy CreateContext)

responseStopEdgePackagingJob :: StopEdgePackagingJobResponse -> TestTree
responseStopEdgePackagingJob =
  res
    "StopEdgePackagingJobResponse"
    "fixture/StopEdgePackagingJobResponse.proto"
    sageMaker
    (Proxy :: Proxy StopEdgePackagingJob)

responseCreateImage :: CreateImageResponse -> TestTree
responseCreateImage =
  res
    "CreateImageResponse"
    "fixture/CreateImageResponse.proto"
    sageMaker
    (Proxy :: Proxy CreateImage)

responseDeregisterDevices :: DeregisterDevicesResponse -> TestTree
responseDeregisterDevices =
  res
    "DeregisterDevicesResponse"
    "fixture/DeregisterDevicesResponse.proto"
    sageMaker
    (Proxy :: Proxy DeregisterDevices)

responseCreateDataQualityJobDefinition :: CreateDataQualityJobDefinitionResponse -> TestTree
responseCreateDataQualityJobDefinition =
  res
    "CreateDataQualityJobDefinitionResponse"
    "fixture/CreateDataQualityJobDefinitionResponse.proto"
    sageMaker
    (Proxy :: Proxy CreateDataQualityJobDefinition)

responseDeletePipeline :: DeletePipelineResponse -> TestTree
responseDeletePipeline =
  res
    "DeletePipelineResponse"
    "fixture/DeletePipelineResponse.proto"
    sageMaker
    (Proxy :: Proxy DeletePipeline)

responseCreateAppImageConfig :: CreateAppImageConfigResponse -> TestTree
responseCreateAppImageConfig =
  res
    "CreateAppImageConfigResponse"
    "fixture/CreateAppImageConfigResponse.proto"
    sageMaker
    (Proxy :: Proxy CreateAppImageConfig)

responseAddTags :: AddTagsResponse -> TestTree
responseAddTags =
  res
    "AddTagsResponse"
    "fixture/AddTagsResponse.proto"
    sageMaker
    (Proxy :: Proxy AddTags)

responseDisableSagemakerServicecatalogPortfolio :: DisableSagemakerServicecatalogPortfolioResponse -> TestTree
responseDisableSagemakerServicecatalogPortfolio =
  res
    "DisableSagemakerServicecatalogPortfolioResponse"
    "fixture/DisableSagemakerServicecatalogPortfolioResponse.proto"
    sageMaker
    (Proxy :: Proxy DisableSagemakerServicecatalogPortfolio)

responseDeleteAssociation :: DeleteAssociationResponse -> TestTree
responseDeleteAssociation =
  res
    "DeleteAssociationResponse"
    "fixture/DeleteAssociationResponse.proto"
    sageMaker
    (Proxy :: Proxy DeleteAssociation)

responseUpdateMonitoringSchedule :: UpdateMonitoringScheduleResponse -> TestTree
responseUpdateMonitoringSchedule =
  res
    "UpdateMonitoringScheduleResponse"
    "fixture/UpdateMonitoringScheduleResponse.proto"
    sageMaker
    (Proxy :: Proxy UpdateMonitoringSchedule)

responseListMonitoringSchedules :: ListMonitoringSchedulesResponse -> TestTree
responseListMonitoringSchedules =
  res
    "ListMonitoringSchedulesResponse"
    "fixture/ListMonitoringSchedulesResponse.proto"
    sageMaker
    (Proxy :: Proxy ListMonitoringSchedules)

responseStopNotebookInstance :: StopNotebookInstanceResponse -> TestTree
responseStopNotebookInstance =
  res
    "StopNotebookInstanceResponse"
    "fixture/StopNotebookInstanceResponse.proto"
    sageMaker
    (Proxy :: Proxy StopNotebookInstance)

responseDeleteMonitoringSchedule :: DeleteMonitoringScheduleResponse -> TestTree
responseDeleteMonitoringSchedule =
  res
    "DeleteMonitoringScheduleResponse"
    "fixture/DeleteMonitoringScheduleResponse.proto"
    sageMaker
    (Proxy :: Proxy DeleteMonitoringSchedule)

responseDeleteEndpointConfig :: DeleteEndpointConfigResponse -> TestTree
responseDeleteEndpointConfig =
  res
    "DeleteEndpointConfigResponse"
    "fixture/DeleteEndpointConfigResponse.proto"
    sageMaker
    (Proxy :: Proxy DeleteEndpointConfig)

responseStartPipelineExecution :: StartPipelineExecutionResponse -> TestTree
responseStartPipelineExecution =
  res
    "StartPipelineExecutionResponse"
    "fixture/StartPipelineExecutionResponse.proto"
    sageMaker
    (Proxy :: Proxy StartPipelineExecution)

responseDescribeModelPackage :: DescribeModelPackageResponse -> TestTree
responseDescribeModelPackage =
  res
    "DescribeModelPackageResponse"
    "fixture/DescribeModelPackageResponse.proto"
    sageMaker
    (Proxy :: Proxy DescribeModelPackage)

responseDeleteTags :: DeleteTagsResponse -> TestTree
responseDeleteTags =
  res
    "DeleteTagsResponse"
    "fixture/DeleteTagsResponse.proto"
    sageMaker
    (Proxy :: Proxy DeleteTags)

responseAddAssociation :: AddAssociationResponse -> TestTree
responseAddAssociation =
  res
    "AddAssociationResponse"
    "fixture/AddAssociationResponse.proto"
    sageMaker
    (Proxy :: Proxy AddAssociation)

responseCreateNotebookInstanceLifecycleConfig :: CreateNotebookInstanceLifecycleConfigResponse -> TestTree
responseCreateNotebookInstanceLifecycleConfig =
  res
    "CreateNotebookInstanceLifecycleConfigResponse"
    "fixture/CreateNotebookInstanceLifecycleConfigResponse.proto"
    sageMaker
    (Proxy :: Proxy CreateNotebookInstanceLifecycleConfig)

responseListApps :: ListAppsResponse -> TestTree
responseListApps =
  res
    "ListAppsResponse"
    "fixture/ListAppsResponse.proto"
    sageMaker
    (Proxy :: Proxy ListApps)

responseCreateWorkforce :: CreateWorkforceResponse -> TestTree
responseCreateWorkforce =
  res
    "CreateWorkforceResponse"
    "fixture/CreateWorkforceResponse.proto"
    sageMaker
    (Proxy :: Proxy CreateWorkforce)

responseListAutoMLJobs :: ListAutoMLJobsResponse -> TestTree
responseListAutoMLJobs =
  res
    "ListAutoMLJobsResponse"
    "fixture/ListAutoMLJobsResponse.proto"
    sageMaker
    (Proxy :: Proxy ListAutoMLJobs)

responseUpdateEndpointWeightsAndCapacities :: UpdateEndpointWeightsAndCapacitiesResponse -> TestTree
responseUpdateEndpointWeightsAndCapacities =
  res
    "UpdateEndpointWeightsAndCapacitiesResponse"
    "fixture/UpdateEndpointWeightsAndCapacitiesResponse.proto"
    sageMaker
    (Proxy :: Proxy UpdateEndpointWeightsAndCapacities)

responseStartNotebookInstance :: StartNotebookInstanceResponse -> TestTree
responseStartNotebookInstance =
  res
    "StartNotebookInstanceResponse"
    "fixture/StartNotebookInstanceResponse.proto"
    sageMaker
    (Proxy :: Proxy StartNotebookInstance)

responseStopPipelineExecution :: StopPipelineExecutionResponse -> TestTree
responseStopPipelineExecution =
  res
    "StopPipelineExecutionResponse"
    "fixture/StopPipelineExecutionResponse.proto"
    sageMaker
    (Proxy :: Proxy StopPipelineExecution)

responseListEndpointConfigs :: ListEndpointConfigsResponse -> TestTree
responseListEndpointConfigs =
  res
    "ListEndpointConfigsResponse"
    "fixture/ListEndpointConfigsResponse.proto"
    sageMaker
    (Proxy :: Proxy ListEndpointConfigs)

responseDeleteWorkteam :: DeleteWorkteamResponse -> TestTree
responseDeleteWorkteam =
  res
    "DeleteWorkteamResponse"
    "fixture/DeleteWorkteamResponse.proto"
    sageMaker
    (Proxy :: Proxy DeleteWorkteam)

responseDeleteWorkforce :: DeleteWorkforceResponse -> TestTree
responseDeleteWorkforce =
  res
    "DeleteWorkforceResponse"
    "fixture/DeleteWorkforceResponse.proto"
    sageMaker
    (Proxy :: Proxy DeleteWorkforce)

responseDeleteModelBiasJobDefinition :: DeleteModelBiasJobDefinitionResponse -> TestTree
responseDeleteModelBiasJobDefinition =
  res
    "DeleteModelBiasJobDefinitionResponse"
    "fixture/DeleteModelBiasJobDefinitionResponse.proto"
    sageMaker
    (Proxy :: Proxy DeleteModelBiasJobDefinition)

responseUpdateWorkforce :: UpdateWorkforceResponse -> TestTree
responseUpdateWorkforce =
  res
    "UpdateWorkforceResponse"
    "fixture/UpdateWorkforceResponse.proto"
    sageMaker
    (Proxy :: Proxy UpdateWorkforce)

responseDescribeDevice :: DescribeDeviceResponse -> TestTree
responseDescribeDevice =
  res
    "DescribeDeviceResponse"
    "fixture/DescribeDeviceResponse.proto"
    sageMaker
    (Proxy :: Proxy DescribeDevice)

responseDescribeDomain :: DescribeDomainResponse -> TestTree
responseDescribeDomain =
  res
    "DescribeDomainResponse"
    "fixture/DescribeDomainResponse.proto"
    sageMaker
    (Proxy :: Proxy DescribeDomain)

responseDeleteNotebookInstanceLifecycleConfig :: DeleteNotebookInstanceLifecycleConfigResponse -> TestTree
responseDeleteNotebookInstanceLifecycleConfig =
  res
    "DeleteNotebookInstanceLifecycleConfigResponse"
    "fixture/DeleteNotebookInstanceLifecycleConfigResponse.proto"
    sageMaker
    (Proxy :: Proxy DeleteNotebookInstanceLifecycleConfig)

responseDescribePipelineExecution :: DescribePipelineExecutionResponse -> TestTree
responseDescribePipelineExecution =
  res
    "DescribePipelineExecutionResponse"
    "fixture/DescribePipelineExecutionResponse.proto"
    sageMaker
    (Proxy :: Proxy DescribePipelineExecution)

responseUpdateWorkteam :: UpdateWorkteamResponse -> TestTree
responseUpdateWorkteam =
  res
    "UpdateWorkteamResponse"
    "fixture/UpdateWorkteamResponse.proto"
    sageMaker
    (Proxy :: Proxy UpdateWorkteam)

responseCreateLabelingJob :: CreateLabelingJobResponse -> TestTree
responseCreateLabelingJob =
  res
    "CreateLabelingJobResponse"
    "fixture/CreateLabelingJobResponse.proto"
    sageMaker
    (Proxy :: Proxy CreateLabelingJob)

responseDescribeModelQualityJobDefinition :: DescribeModelQualityJobDefinitionResponse -> TestTree
responseDescribeModelQualityJobDefinition =
  res
    "DescribeModelQualityJobDefinitionResponse"
    "fixture/DescribeModelQualityJobDefinitionResponse.proto"
    sageMaker
    (Proxy :: Proxy DescribeModelQualityJobDefinition)

responseCreateExperiment :: CreateExperimentResponse -> TestTree
responseCreateExperiment =
  res
    "CreateExperimentResponse"
    "fixture/CreateExperimentResponse.proto"
    sageMaker
    (Proxy :: Proxy CreateExperiment)

responseListWorkforces :: ListWorkforcesResponse -> TestTree
responseListWorkforces =
  res
    "ListWorkforcesResponse"
    "fixture/ListWorkforcesResponse.proto"
    sageMaker
    (Proxy :: Proxy ListWorkforces)

responseListAppImageConfigs :: ListAppImageConfigsResponse -> TestTree
responseListAppImageConfigs =
  res
    "ListAppImageConfigsResponse"
    "fixture/ListAppImageConfigsResponse.proto"
    sageMaker
    (Proxy :: Proxy ListAppImageConfigs)

responseUpdateNotebookInstanceLifecycleConfig :: UpdateNotebookInstanceLifecycleConfigResponse -> TestTree
responseUpdateNotebookInstanceLifecycleConfig =
  res
    "UpdateNotebookInstanceLifecycleConfigResponse"
    "fixture/UpdateNotebookInstanceLifecycleConfigResponse.proto"
    sageMaker
    (Proxy :: Proxy UpdateNotebookInstanceLifecycleConfig)

responseDescribeSubscribedWorkteam :: DescribeSubscribedWorkteamResponse -> TestTree
responseDescribeSubscribedWorkteam =
  res
    "DescribeSubscribedWorkteamResponse"
    "fixture/DescribeSubscribedWorkteamResponse.proto"
    sageMaker
    (Proxy :: Proxy DescribeSubscribedWorkteam)

responseListNotebookInstanceLifecycleConfigs :: ListNotebookInstanceLifecycleConfigsResponse -> TestTree
responseListNotebookInstanceLifecycleConfigs =
  res
    "ListNotebookInstanceLifecycleConfigsResponse"
    "fixture/ListNotebookInstanceLifecycleConfigsResponse.proto"
    sageMaker
    (Proxy :: Proxy ListNotebookInstanceLifecycleConfigs)

responseListEdgePackagingJobs :: ListEdgePackagingJobsResponse -> TestTree
responseListEdgePackagingJobs =
  res
    "ListEdgePackagingJobsResponse"
    "fixture/ListEdgePackagingJobsResponse.proto"
    sageMaker
    (Proxy :: Proxy ListEdgePackagingJobs)

responseDescribeCodeRepository :: DescribeCodeRepositoryResponse -> TestTree
responseDescribeCodeRepository =
  res
    "DescribeCodeRepositoryResponse"
    "fixture/DescribeCodeRepositoryResponse.proto"
    sageMaker
    (Proxy :: Proxy DescribeCodeRepository)

responseListEndpoints :: ListEndpointsResponse -> TestTree
responseListEndpoints =
  res
    "ListEndpointsResponse"
    "fixture/ListEndpointsResponse.proto"
    sageMaker
    (Proxy :: Proxy ListEndpoints)

responseDescribeDataQualityJobDefinition :: DescribeDataQualityJobDefinitionResponse -> TestTree
responseDescribeDataQualityJobDefinition =
  res
    "DescribeDataQualityJobDefinitionResponse"
    "fixture/DescribeDataQualityJobDefinitionResponse.proto"
    sageMaker
    (Proxy :: Proxy DescribeDataQualityJobDefinition)

responseDescribeAlgorithm :: DescribeAlgorithmResponse -> TestTree
responseDescribeAlgorithm =
  res
    "DescribeAlgorithmResponse"
    "fixture/DescribeAlgorithmResponse.proto"
    sageMaker
    (Proxy :: Proxy DescribeAlgorithm)

responseCreateAction :: CreateActionResponse -> TestTree
responseCreateAction =
  res
    "CreateActionResponse"
    "fixture/CreateActionResponse.proto"
    sageMaker
    (Proxy :: Proxy CreateAction)

responseDeleteEndpoint :: DeleteEndpointResponse -> TestTree
responseDeleteEndpoint =
  res
    "DeleteEndpointResponse"
    "fixture/DeleteEndpointResponse.proto"
    sageMaker
    (Proxy :: Proxy DeleteEndpoint)

responseCreatePresignedDomainURL :: CreatePresignedDomainURLResponse -> TestTree
responseCreatePresignedDomainURL =
  res
    "CreatePresignedDomainURLResponse"
    "fixture/CreatePresignedDomainURLResponse.proto"
    sageMaker
    (Proxy :: Proxy CreatePresignedDomainURL)

responseListTransformJobs :: ListTransformJobsResponse -> TestTree
responseListTransformJobs =
  res
    "ListTransformJobsResponse"
    "fixture/ListTransformJobsResponse.proto"
    sageMaker
    (Proxy :: Proxy ListTransformJobs)

responseDescribeHyperParameterTuningJob :: DescribeHyperParameterTuningJobResponse -> TestTree
responseDescribeHyperParameterTuningJob =
  res
    "DescribeHyperParameterTuningJobResponse"
    "fixture/DescribeHyperParameterTuningJobResponse.proto"
    sageMaker
    (Proxy :: Proxy DescribeHyperParameterTuningJob)

responseCreateCompilationJob :: CreateCompilationJobResponse -> TestTree
responseCreateCompilationJob =
  res
    "CreateCompilationJobResponse"
    "fixture/CreateCompilationJobResponse.proto"
    sageMaker
    (Proxy :: Proxy CreateCompilationJob)

responseUpdateEndpoint :: UpdateEndpointResponse -> TestTree
responseUpdateEndpoint =
  res
    "UpdateEndpointResponse"
    "fixture/UpdateEndpointResponse.proto"
    sageMaker
    (Proxy :: Proxy UpdateEndpoint)

responseDescribeModel :: DescribeModelResponse -> TestTree
responseDescribeModel =
  res
    "DescribeModelResponse"
    "fixture/DescribeModelResponse.proto"
    sageMaker
    (Proxy :: Proxy DescribeModel)

responseCreateDeviceFleet :: CreateDeviceFleetResponse -> TestTree
responseCreateDeviceFleet =
  res
    "CreateDeviceFleetResponse"
    "fixture/CreateDeviceFleetResponse.proto"
    sageMaker
    (Proxy :: Proxy CreateDeviceFleet)

responseCreateArtifact :: CreateArtifactResponse -> TestTree
responseCreateArtifact =
  res
    "CreateArtifactResponse"
    "fixture/CreateArtifactResponse.proto"
    sageMaker
    (Proxy :: Proxy CreateArtifact)

responseUpdateDevices :: UpdateDevicesResponse -> TestTree
responseUpdateDevices =
  res
    "UpdateDevicesResponse"
    "fixture/UpdateDevicesResponse.proto"
    sageMaker
    (Proxy :: Proxy UpdateDevices)

responseListArtifacts :: ListArtifactsResponse -> TestTree
responseListArtifacts =
  res
    "ListArtifactsResponse"
    "fixture/ListArtifactsResponse.proto"
    sageMaker
    (Proxy :: Proxy ListArtifacts)

responseDeleteDeviceFleet :: DeleteDeviceFleetResponse -> TestTree
responseDeleteDeviceFleet =
  res
    "DeleteDeviceFleetResponse"
    "fixture/DeleteDeviceFleetResponse.proto"
    sageMaker
    (Proxy :: Proxy DeleteDeviceFleet)

responseListMonitoringExecutions :: ListMonitoringExecutionsResponse -> TestTree
responseListMonitoringExecutions =
  res
    "ListMonitoringExecutionsResponse"
    "fixture/ListMonitoringExecutionsResponse.proto"
    sageMaker
    (Proxy :: Proxy ListMonitoringExecutions)

responseListCompilationJobs :: ListCompilationJobsResponse -> TestTree
responseListCompilationJobs =
  res
    "ListCompilationJobsResponse"
    "fixture/ListCompilationJobsResponse.proto"
    sageMaker
    (Proxy :: Proxy ListCompilationJobs)

responseListActions :: ListActionsResponse -> TestTree
responseListActions =
  res
    "ListActionsResponse"
    "fixture/ListActionsResponse.proto"
    sageMaker
    (Proxy :: Proxy ListActions)

responseListDeviceFleets :: ListDeviceFleetsResponse -> TestTree
responseListDeviceFleets =
  res
    "ListDeviceFleetsResponse"
    "fixture/ListDeviceFleetsResponse.proto"
    sageMaker
    (Proxy :: Proxy ListDeviceFleets)

responseDescribeModelPackageGroup :: DescribeModelPackageGroupResponse -> TestTree
responseDescribeModelPackageGroup =
  res
    "DescribeModelPackageGroupResponse"
    "fixture/DescribeModelPackageGroupResponse.proto"
    sageMaker
    (Proxy :: Proxy DescribeModelPackageGroup)

responseStopHyperParameterTuningJob :: StopHyperParameterTuningJobResponse -> TestTree
responseStopHyperParameterTuningJob =
  res
    "StopHyperParameterTuningJobResponse"
    "fixture/StopHyperParameterTuningJobResponse.proto"
    sageMaker
    (Proxy :: Proxy StopHyperParameterTuningJob)

responseDescribeTrial :: DescribeTrialResponse -> TestTree
responseDescribeTrial =
  res
    "DescribeTrialResponse"
    "fixture/DescribeTrialResponse.proto"
    sageMaker
    (Proxy :: Proxy DescribeTrial)

responseUpdateDeviceFleet :: UpdateDeviceFleetResponse -> TestTree
responseUpdateDeviceFleet =
  res
    "UpdateDeviceFleetResponse"
    "fixture/UpdateDeviceFleetResponse.proto"
    sageMaker
    (Proxy :: Proxy UpdateDeviceFleet)

responseListLabelingJobsForWorkteam :: ListLabelingJobsForWorkteamResponse -> TestTree
responseListLabelingJobsForWorkteam =
  res
    "ListLabelingJobsForWorkteamResponse"
    "fixture/ListLabelingJobsForWorkteamResponse.proto"
    sageMaker
    (Proxy :: Proxy ListLabelingJobsForWorkteam)

responseCreateFeatureGroup :: CreateFeatureGroupResponse -> TestTree
responseCreateFeatureGroup =
  res
    "CreateFeatureGroupResponse"
    "fixture/CreateFeatureGroupResponse.proto"
    sageMaker
    (Proxy :: Proxy CreateFeatureGroup)

responseCreateDomain :: CreateDomainResponse -> TestTree
responseCreateDomain =
  res
    "CreateDomainResponse"
    "fixture/CreateDomainResponse.proto"
    sageMaker
    (Proxy :: Proxy CreateDomain)

responseListImageVersions :: ListImageVersionsResponse -> TestTree
responseListImageVersions =
  res
    "ListImageVersionsResponse"
    "fixture/ListImageVersionsResponse.proto"
    sageMaker
    (Proxy :: Proxy ListImageVersions)

responseStopProcessingJob :: StopProcessingJobResponse -> TestTree
responseStopProcessingJob =
  res
    "StopProcessingJobResponse"
    "fixture/StopProcessingJobResponse.proto"
    sageMaker
    (Proxy :: Proxy StopProcessingJob)

responseDeleteImageVersion :: DeleteImageVersionResponse -> TestTree
responseDeleteImageVersion =
  res
    "DeleteImageVersionResponse"
    "fixture/DeleteImageVersionResponse.proto"
    sageMaker
    (Proxy :: Proxy DeleteImageVersion)

responseDeleteProject :: DeleteProjectResponse -> TestTree
responseDeleteProject =
  res
    "DeleteProjectResponse"
    "fixture/DeleteProjectResponse.proto"
    sageMaker
    (Proxy :: Proxy DeleteProject)

responseDescribeExperiment :: DescribeExperimentResponse -> TestTree
responseDescribeExperiment =
  res
    "DescribeExperimentResponse"
    "fixture/DescribeExperimentResponse.proto"
    sageMaker
    (Proxy :: Proxy DescribeExperiment)

responseDescribeAutoMLJob :: DescribeAutoMLJobResponse -> TestTree
responseDescribeAutoMLJob =
  res
    "DescribeAutoMLJobResponse"
    "fixture/DescribeAutoMLJobResponse.proto"
    sageMaker
    (Proxy :: Proxy DescribeAutoMLJob)

responseDescribeApp :: DescribeAppResponse -> TestTree
responseDescribeApp =
  res
    "DescribeAppResponse"
    "fixture/DescribeAppResponse.proto"
    sageMaker
    (Proxy :: Proxy DescribeApp)

responseListTrialComponents :: ListTrialComponentsResponse -> TestTree
responseListTrialComponents =
  res
    "ListTrialComponentsResponse"
    "fixture/ListTrialComponentsResponse.proto"
    sageMaker
    (Proxy :: Proxy ListTrialComponents)

responseUpdateTrialComponent :: UpdateTrialComponentResponse -> TestTree
responseUpdateTrialComponent =
  res
    "UpdateTrialComponentResponse"
    "fixture/UpdateTrialComponentResponse.proto"
    sageMaker
    (Proxy :: Proxy UpdateTrialComponent)

responseDeleteTrialComponent :: DeleteTrialComponentResponse -> TestTree
responseDeleteTrialComponent =
  res
    "DeleteTrialComponentResponse"
    "fixture/DeleteTrialComponentResponse.proto"
    sageMaker
    (Proxy :: Proxy DeleteTrialComponent)

responseCreateTrialComponent :: CreateTrialComponentResponse -> TestTree
responseCreateTrialComponent =
  res
    "CreateTrialComponentResponse"
    "fixture/CreateTrialComponentResponse.proto"
    sageMaker
    (Proxy :: Proxy CreateTrialComponent)

responseDescribeWorkforce :: DescribeWorkforceResponse -> TestTree
responseDescribeWorkforce =
  res
    "DescribeWorkforceResponse"
    "fixture/DescribeWorkforceResponse.proto"
    sageMaker
    (Proxy :: Proxy DescribeWorkforce)

responseListNotebookInstances :: ListNotebookInstancesResponse -> TestTree
responseListNotebookInstances =
  res
    "ListNotebookInstancesResponse"
    "fixture/ListNotebookInstancesResponse.proto"
    sageMaker
    (Proxy :: Proxy ListNotebookInstances)

responseListModelExplainabilityJobDefinitions :: ListModelExplainabilityJobDefinitionsResponse -> TestTree
responseListModelExplainabilityJobDefinitions =
  res
    "ListModelExplainabilityJobDefinitionsResponse"
    "fixture/ListModelExplainabilityJobDefinitionsResponse.proto"
    sageMaker
    (Proxy :: Proxy ListModelExplainabilityJobDefinitions)

responseDeleteModelQualityJobDefinition :: DeleteModelQualityJobDefinitionResponse -> TestTree
responseDeleteModelQualityJobDefinition =
  res
    "DeleteModelQualityJobDefinitionResponse"
    "fixture/DeleteModelQualityJobDefinitionResponse.proto"
    sageMaker
    (Proxy :: Proxy DeleteModelQualityJobDefinition)

responseStopLabelingJob :: StopLabelingJobResponse -> TestTree
responseStopLabelingJob =
  res
    "StopLabelingJobResponse"
    "fixture/StopLabelingJobResponse.proto"
    sageMaker
    (Proxy :: Proxy StopLabelingJob)

responseListModelQualityJobDefinitions :: ListModelQualityJobDefinitionsResponse -> TestTree
responseListModelQualityJobDefinitions =
  res
    "ListModelQualityJobDefinitionsResponse"
    "fixture/ListModelQualityJobDefinitionsResponse.proto"
    sageMaker
    (Proxy :: Proxy ListModelQualityJobDefinitions)

responseDescribeModelBiasJobDefinition :: DescribeModelBiasJobDefinitionResponse -> TestTree
responseDescribeModelBiasJobDefinition =
  res
    "DescribeModelBiasJobDefinitionResponse"
    "fixture/DescribeModelBiasJobDefinitionResponse.proto"
    sageMaker
    (Proxy :: Proxy DescribeModelBiasJobDefinition)

responseDescribeWorkteam :: DescribeWorkteamResponse -> TestTree
responseDescribeWorkteam =
  res
    "DescribeWorkteamResponse"
    "fixture/DescribeWorkteamResponse.proto"
    sageMaker
    (Proxy :: Proxy DescribeWorkteam)

responseDescribeNotebookInstanceLifecycleConfig :: DescribeNotebookInstanceLifecycleConfigResponse -> TestTree
responseDescribeNotebookInstanceLifecycleConfig =
  res
    "DescribeNotebookInstanceLifecycleConfigResponse"
    "fixture/DescribeNotebookInstanceLifecycleConfigResponse.proto"
    sageMaker
    (Proxy :: Proxy DescribeNotebookInstanceLifecycleConfig)

responseListPipelineExecutions :: ListPipelineExecutionsResponse -> TestTree
responseListPipelineExecutions =
  res
    "ListPipelineExecutionsResponse"
    "fixture/ListPipelineExecutionsResponse.proto"
    sageMaker
    (Proxy :: Proxy ListPipelineExecutions)

responseUpdateDomain :: UpdateDomainResponse -> TestTree
responseUpdateDomain =
  res
    "UpdateDomainResponse"
    "fixture/UpdateDomainResponse.proto"
    sageMaker
    (Proxy :: Proxy UpdateDomain)

responseAssociateTrialComponent :: AssociateTrialComponentResponse -> TestTree
responseAssociateTrialComponent =
  res
    "AssociateTrialComponentResponse"
    "fixture/AssociateTrialComponentResponse.proto"
    sageMaker
    (Proxy :: Proxy AssociateTrialComponent)

responseUpdatePipelineExecution :: UpdatePipelineExecutionResponse -> TestTree
responseUpdatePipelineExecution =
  res
    "UpdatePipelineExecutionResponse"
    "fixture/UpdatePipelineExecutionResponse.proto"
    sageMaker
    (Proxy :: Proxy UpdatePipelineExecution)

responseCreateImageVersion :: CreateImageVersionResponse -> TestTree
responseCreateImageVersion =
  res
    "CreateImageVersionResponse"
    "fixture/CreateImageVersionResponse.proto"
    sageMaker
    (Proxy :: Proxy CreateImageVersion)

responseDeleteDomain :: DeleteDomainResponse -> TestTree
responseDeleteDomain =
  res
    "DeleteDomainResponse"
    "fixture/DeleteDomainResponse.proto"
    sageMaker
    (Proxy :: Proxy DeleteDomain)

responseUpdateTrainingJob :: UpdateTrainingJobResponse -> TestTree
responseUpdateTrainingJob =
  res
    "UpdateTrainingJobResponse"
    "fixture/UpdateTrainingJobResponse.proto"
    sageMaker
    (Proxy :: Proxy UpdateTrainingJob)

responseUpdateImage :: UpdateImageResponse -> TestTree
responseUpdateImage =
  res
    "UpdateImageResponse"
    "fixture/UpdateImageResponse.proto"
    sageMaker
    (Proxy :: Proxy UpdateImage)

responseUpdateContext :: UpdateContextResponse -> TestTree
responseUpdateContext =
  res
    "UpdateContextResponse"
    "fixture/UpdateContextResponse.proto"
    sageMaker
    (Proxy :: Proxy UpdateContext)

responseDeleteImage :: DeleteImageResponse -> TestTree
responseDeleteImage =
  res
    "DeleteImageResponse"
    "fixture/DeleteImageResponse.proto"
    sageMaker
    (Proxy :: Proxy DeleteImage)

responseListFlowDefinitions :: ListFlowDefinitionsResponse -> TestTree
responseListFlowDefinitions =
  res
    "ListFlowDefinitionsResponse"
    "fixture/ListFlowDefinitionsResponse.proto"
    sageMaker
    (Proxy :: Proxy ListFlowDefinitions)

responseListModels :: ListModelsResponse -> TestTree
responseListModels =
  res
    "ListModelsResponse"
    "fixture/ListModelsResponse.proto"
    sageMaker
    (Proxy :: Proxy ListModels)

responseCreateUserProfile :: CreateUserProfileResponse -> TestTree
responseCreateUserProfile =
  res
    "CreateUserProfileResponse"
    "fixture/CreateUserProfileResponse.proto"
    sageMaker
    (Proxy :: Proxy CreateUserProfile)

responseRenderUiTemplate :: RenderUiTemplateResponse -> TestTree
responseRenderUiTemplate =
  res
    "RenderUiTemplateResponse"
    "fixture/RenderUiTemplateResponse.proto"
    sageMaker
    (Proxy :: Proxy RenderUiTemplate)

responseDescribeFeatureGroup :: DescribeFeatureGroupResponse -> TestTree
responseDescribeFeatureGroup =
  res
    "DescribeFeatureGroupResponse"
    "fixture/DescribeFeatureGroupResponse.proto"
    sageMaker
    (Proxy :: Proxy DescribeFeatureGroup)

responseDeleteContext :: DeleteContextResponse -> TestTree
responseDeleteContext =
  res
    "DeleteContextResponse"
    "fixture/DeleteContextResponse.proto"
    sageMaker
    (Proxy :: Proxy DeleteContext)

responseListHyperParameterTuningJobs :: ListHyperParameterTuningJobsResponse -> TestTree
responseListHyperParameterTuningJobs =
  res
    "ListHyperParameterTuningJobsResponse"
    "fixture/ListHyperParameterTuningJobsResponse.proto"
    sageMaker
    (Proxy :: Proxy ListHyperParameterTuningJobs)

responseDeleteFlowDefinition :: DeleteFlowDefinitionResponse -> TestTree
responseDeleteFlowDefinition =
  res
    "DeleteFlowDefinitionResponse"
    "fixture/DeleteFlowDefinitionResponse.proto"
    sageMaker
    (Proxy :: Proxy DeleteFlowDefinition)

responseListAlgorithms :: ListAlgorithmsResponse -> TestTree
responseListAlgorithms =
  res
    "ListAlgorithmsResponse"
    "fixture/ListAlgorithmsResponse.proto"
    sageMaker
    (Proxy :: Proxy ListAlgorithms)

responseCreateAlgorithm :: CreateAlgorithmResponse -> TestTree
responseCreateAlgorithm =
  res
    "CreateAlgorithmResponse"
    "fixture/CreateAlgorithmResponse.proto"
    sageMaker
    (Proxy :: Proxy CreateAlgorithm)

responseCreateFlowDefinition :: CreateFlowDefinitionResponse -> TestTree
responseCreateFlowDefinition =
  res
    "CreateFlowDefinitionResponse"
    "fixture/CreateFlowDefinitionResponse.proto"
    sageMaker
    (Proxy :: Proxy CreateFlowDefinition)

responseListPipelineParametersForExecution :: ListPipelineParametersForExecutionResponse -> TestTree
responseListPipelineParametersForExecution =
  res
    "ListPipelineParametersForExecutionResponse"
    "fixture/ListPipelineParametersForExecutionResponse.proto"
    sageMaker
    (Proxy :: Proxy ListPipelineParametersForExecution)

responseListTrials :: ListTrialsResponse -> TestTree
responseListTrials =
  res
    "ListTrialsResponse"
    "fixture/ListTrialsResponse.proto"
    sageMaker
    (Proxy :: Proxy ListTrials)

responseCreateHyperParameterTuningJob :: CreateHyperParameterTuningJobResponse -> TestTree
responseCreateHyperParameterTuningJob =
  res
    "CreateHyperParameterTuningJobResponse"
    "fixture/CreateHyperParameterTuningJobResponse.proto"
    sageMaker
    (Proxy :: Proxy CreateHyperParameterTuningJob)

responseCreateModel :: CreateModelResponse -> TestTree
responseCreateModel =
  res
    "CreateModelResponse"
    "fixture/CreateModelResponse.proto"
    sageMaker
    (Proxy :: Proxy CreateModel)

responseUpdateTrial :: UpdateTrialResponse -> TestTree
responseUpdateTrial =
  res
    "UpdateTrialResponse"
    "fixture/UpdateTrialResponse.proto"
    sageMaker
    (Proxy :: Proxy UpdateTrial)

responseDeleteModelPackageGroup :: DeleteModelPackageGroupResponse -> TestTree
responseDeleteModelPackageGroup =
  res
    "DeleteModelPackageGroupResponse"
    "fixture/DeleteModelPackageGroupResponse.proto"
    sageMaker
    (Proxy :: Proxy DeleteModelPackageGroup)

responseDescribeDeviceFleet :: DescribeDeviceFleetResponse -> TestTree
responseDescribeDeviceFleet =
  res
    "DescribeDeviceFleetResponse"
    "fixture/DescribeDeviceFleetResponse.proto"
    sageMaker
    (Proxy :: Proxy DescribeDeviceFleet)

responseListModelPackageGroups :: ListModelPackageGroupsResponse -> TestTree
responseListModelPackageGroups =
  res
    "ListModelPackageGroupsResponse"
    "fixture/ListModelPackageGroupsResponse.proto"
    sageMaker
    (Proxy :: Proxy ListModelPackageGroups)

responseListPipelines :: ListPipelinesResponse -> TestTree
responseListPipelines =
  res
    "ListPipelinesResponse"
    "fixture/ListPipelinesResponse.proto"
    sageMaker
    (Proxy :: Proxy ListPipelines)

responseListTags :: ListTagsResponse -> TestTree
responseListTags =
  res
    "ListTagsResponse"
    "fixture/ListTagsResponse.proto"
    sageMaker
    (Proxy :: Proxy ListTags)

responseDescribePipelineDefinitionForExecution :: DescribePipelineDefinitionForExecutionResponse -> TestTree
responseDescribePipelineDefinitionForExecution =
  res
    "DescribePipelineDefinitionForExecutionResponse"
    "fixture/DescribePipelineDefinitionForExecutionResponse.proto"
    sageMaker
    (Proxy :: Proxy DescribePipelineDefinitionForExecution)

responseDeleteTrial :: DeleteTrialResponse -> TestTree
responseDeleteTrial =
  res
    "DeleteTrialResponse"
    "fixture/DeleteTrialResponse.proto"
    sageMaker
    (Proxy :: Proxy DeleteTrial)

responsePutModelPackageGroupPolicy :: PutModelPackageGroupPolicyResponse -> TestTree
responsePutModelPackageGroupPolicy =
  res
    "PutModelPackageGroupPolicyResponse"
    "fixture/PutModelPackageGroupPolicyResponse.proto"
    sageMaker
    (Proxy :: Proxy PutModelPackageGroupPolicy)

responseListExperiments :: ListExperimentsResponse -> TestTree
responseListExperiments =
  res
    "ListExperimentsResponse"
    "fixture/ListExperimentsResponse.proto"
    sageMaker
    (Proxy :: Proxy ListExperiments)

responseUpdateExperiment :: UpdateExperimentResponse -> TestTree
responseUpdateExperiment =
  res
    "UpdateExperimentResponse"
    "fixture/UpdateExperimentResponse.proto"
    sageMaker
    (Proxy :: Proxy UpdateExperiment)

responseDeleteExperiment :: DeleteExperimentResponse -> TestTree
responseDeleteExperiment =
  res
    "DeleteExperimentResponse"
    "fixture/DeleteExperimentResponse.proto"
    sageMaker
    (Proxy :: Proxy DeleteExperiment)

responseListLabelingJobs :: ListLabelingJobsResponse -> TestTree
responseListLabelingJobs =
  res
    "ListLabelingJobsResponse"
    "fixture/ListLabelingJobsResponse.proto"
    sageMaker
    (Proxy :: Proxy ListLabelingJobs)

responseDescribeImageVersion :: DescribeImageVersionResponse -> TestTree
responseDescribeImageVersion =
  res
    "DescribeImageVersionResponse"
    "fixture/DescribeImageVersionResponse.proto"
    sageMaker
    (Proxy :: Proxy DescribeImageVersion)

responseDeleteApp :: DeleteAppResponse -> TestTree
responseDeleteApp =
  res
    "DeleteAppResponse"
    "fixture/DeleteAppResponse.proto"
    sageMaker
    (Proxy :: Proxy DeleteApp)

responseCreateModelBiasJobDefinition :: CreateModelBiasJobDefinitionResponse -> TestTree
responseCreateModelBiasJobDefinition =
  res
    "CreateModelBiasJobDefinitionResponse"
    "fixture/CreateModelBiasJobDefinitionResponse.proto"
    sageMaker
    (Proxy :: Proxy CreateModelBiasJobDefinition)

responseDescribeTrialComponent :: DescribeTrialComponentResponse -> TestTree
responseDescribeTrialComponent =
  res
    "DescribeTrialComponentResponse"
    "fixture/DescribeTrialComponentResponse.proto"
    sageMaker
    (Proxy :: Proxy DescribeTrialComponent)

responseCreateWorkteam :: CreateWorkteamResponse -> TestTree
responseCreateWorkteam =
  res
    "CreateWorkteamResponse"
    "fixture/CreateWorkteamResponse.proto"
    sageMaker
    (Proxy :: Proxy CreateWorkteam)

responseDescribeProject :: DescribeProjectResponse -> TestTree
responseDescribeProject =
  res
    "DescribeProjectResponse"
    "fixture/DescribeProjectResponse.proto"
    sageMaker
    (Proxy :: Proxy DescribeProject)

responseCreateProcessingJob :: CreateProcessingJobResponse -> TestTree
responseCreateProcessingJob =
  res
    "CreateProcessingJobResponse"
    "fixture/CreateProcessingJobResponse.proto"
    sageMaker
    (Proxy :: Proxy CreateProcessingJob)

responseListAssociations :: ListAssociationsResponse -> TestTree
responseListAssociations =
  res
    "ListAssociationsResponse"
    "fixture/ListAssociationsResponse.proto"
    sageMaker
    (Proxy :: Proxy ListAssociations)

responseEnableSagemakerServicecatalogPortfolio :: EnableSagemakerServicecatalogPortfolioResponse -> TestTree
responseEnableSagemakerServicecatalogPortfolio =
  res
    "EnableSagemakerServicecatalogPortfolioResponse"
    "fixture/EnableSagemakerServicecatalogPortfolioResponse.proto"
    sageMaker
    (Proxy :: Proxy EnableSagemakerServicecatalogPortfolio)

responseUpdateAppImageConfig :: UpdateAppImageConfigResponse -> TestTree
responseUpdateAppImageConfig =
  res
    "UpdateAppImageConfigResponse"
    "fixture/UpdateAppImageConfigResponse.proto"
    sageMaker
    (Proxy :: Proxy UpdateAppImageConfig)

responseListModelBiasJobDefinitions :: ListModelBiasJobDefinitionsResponse -> TestTree
responseListModelBiasJobDefinitions =
  res
    "ListModelBiasJobDefinitionsResponse"
    "fixture/ListModelBiasJobDefinitionsResponse.proto"
    sageMaker
    (Proxy :: Proxy ListModelBiasJobDefinitions)

responseCreateAutoMLJob :: CreateAutoMLJobResponse -> TestTree
responseCreateAutoMLJob =
  res
    "CreateAutoMLJobResponse"
    "fixture/CreateAutoMLJobResponse.proto"
    sageMaker
    (Proxy :: Proxy CreateAutoMLJob)

responseCreateApp :: CreateAppResponse -> TestTree
responseCreateApp =
  res
    "CreateAppResponse"
    "fixture/CreateAppResponse.proto"
    sageMaker
    (Proxy :: Proxy CreateApp)

responseDescribeNotebookInstance :: DescribeNotebookInstanceResponse -> TestTree
responseDescribeNotebookInstance =
  res
    "DescribeNotebookInstanceResponse"
    "fixture/DescribeNotebookInstanceResponse.proto"
    sageMaker
    (Proxy :: Proxy DescribeNotebookInstance)

responseDeleteAppImageConfig :: DeleteAppImageConfigResponse -> TestTree
responseDeleteAppImageConfig =
  res
    "DeleteAppImageConfigResponse"
    "fixture/DeleteAppImageConfigResponse.proto"
    sageMaker
    (Proxy :: Proxy DeleteAppImageConfig)

responseCreateEndpointConfig :: CreateEndpointConfigResponse -> TestTree
responseCreateEndpointConfig =
  res
    "CreateEndpointConfigResponse"
    "fixture/CreateEndpointConfigResponse.proto"
    sageMaker
    (Proxy :: Proxy CreateEndpointConfig)

responseListProcessingJobs :: ListProcessingJobsResponse -> TestTree
responseListProcessingJobs =
  res
    "ListProcessingJobsResponse"
    "fixture/ListProcessingJobsResponse.proto"
    sageMaker
    (Proxy :: Proxy ListProcessingJobs)

responseCreateMonitoringSchedule :: CreateMonitoringScheduleResponse -> TestTree
responseCreateMonitoringSchedule =
  res
    "CreateMonitoringScheduleResponse"
    "fixture/CreateMonitoringScheduleResponse.proto"
    sageMaker
    (Proxy :: Proxy CreateMonitoringSchedule)

responseDescribeModelExplainabilityJobDefinition :: DescribeModelExplainabilityJobDefinitionResponse -> TestTree
responseDescribeModelExplainabilityJobDefinition =
  res
    "DescribeModelExplainabilityJobDefinitionResponse"
    "fixture/DescribeModelExplainabilityJobDefinitionResponse.proto"
    sageMaker
    (Proxy :: Proxy DescribeModelExplainabilityJobDefinition)

responseListWorkteams :: ListWorkteamsResponse -> TestTree
responseListWorkteams =
  res
    "ListWorkteamsResponse"
    "fixture/ListWorkteamsResponse.proto"
    sageMaker
    (Proxy :: Proxy ListWorkteams)

responseDescribeFlowDefinition :: DescribeFlowDefinitionResponse -> TestTree
responseDescribeFlowDefinition =
  res
    "DescribeFlowDefinitionResponse"
    "fixture/DescribeFlowDefinitionResponse.proto"
    sageMaker
    (Proxy :: Proxy DescribeFlowDefinition)

responseDescribeContext :: DescribeContextResponse -> TestTree
responseDescribeContext =
  res
    "DescribeContextResponse"
    "fixture/DescribeContextResponse.proto"
    sageMaker
    (Proxy :: Proxy DescribeContext)

responseRegisterDevices :: RegisterDevicesResponse -> TestTree
responseRegisterDevices =
  res
    "RegisterDevicesResponse"
    "fixture/RegisterDevicesResponse.proto"
    sageMaker
    (Proxy :: Proxy RegisterDevices)

responseListFeatureGroups :: ListFeatureGroupsResponse -> TestTree
responseListFeatureGroups =
  res
    "ListFeatureGroupsResponse"
    "fixture/ListFeatureGroupsResponse.proto"
    sageMaker
    (Proxy :: Proxy ListFeatureGroups)

responseCreatePresignedNotebookInstanceURL :: CreatePresignedNotebookInstanceURLResponse -> TestTree
responseCreatePresignedNotebookInstanceURL =
  res
    "CreatePresignedNotebookInstanceURLResponse"
    "fixture/CreatePresignedNotebookInstanceURLResponse.proto"
    sageMaker
    (Proxy :: Proxy CreatePresignedNotebookInstanceURL)

responseDescribeTrainingJob :: DescribeTrainingJobResponse -> TestTree
responseDescribeTrainingJob =
  res
    "DescribeTrainingJobResponse"
    "fixture/DescribeTrainingJobResponse.proto"
    sageMaker
    (Proxy :: Proxy DescribeTrainingJob)

responseCreateHumanTaskUi :: CreateHumanTaskUiResponse -> TestTree
responseCreateHumanTaskUi =
  res
    "CreateHumanTaskUiResponse"
    "fixture/CreateHumanTaskUiResponse.proto"
    sageMaker
    (Proxy :: Proxy CreateHumanTaskUi)

responseListTrainingJobsForHyperParameterTuningJob :: ListTrainingJobsForHyperParameterTuningJobResponse -> TestTree
responseListTrainingJobsForHyperParameterTuningJob =
  res
    "ListTrainingJobsForHyperParameterTuningJobResponse"
    "fixture/ListTrainingJobsForHyperParameterTuningJobResponse.proto"
    sageMaker
    (Proxy :: Proxy ListTrainingJobsForHyperParameterTuningJob)

responseDescribeImage :: DescribeImageResponse -> TestTree
responseDescribeImage =
  res
    "DescribeImageResponse"
    "fixture/DescribeImageResponse.proto"
    sageMaker
    (Proxy :: Proxy DescribeImage)

responseDeleteFeatureGroup :: DeleteFeatureGroupResponse -> TestTree
responseDeleteFeatureGroup =
  res
    "DeleteFeatureGroupResponse"
    "fixture/DeleteFeatureGroupResponse.proto"
    sageMaker
    (Proxy :: Proxy DeleteFeatureGroup)
