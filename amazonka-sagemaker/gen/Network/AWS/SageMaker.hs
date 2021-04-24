{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides APIs for creating and managing Amazon SageMaker resources.
--
--
-- Other Resources:
--
--     * <https://docs.aws.amazon.com/sagemaker/latest/dg/whatis.html#first-time-user Amazon SageMaker Developer Guide>
--
--     * <https://docs.aws.amazon.com/augmented-ai/2019-11-07/APIReference/Welcome.html Amazon Augmented AI Runtime API Reference>
module Network.AWS.SageMaker
  ( -- * Service Configuration
    sageMaker,

    -- * Errors
    -- $errors

    -- ** ResourceInUse
    _ResourceInUse,

    -- ** ResourceLimitExceeded
    _ResourceLimitExceeded,

    -- ** ConflictException
    _ConflictException,

    -- ** ResourceNotFound
    _ResourceNotFound,

    -- * Waiters
    -- $waiters

    -- ** NotebookInstanceStopped
    notebookInstanceStopped,

    -- ** EndpointDeleted
    endpointDeleted,

    -- ** NotebookInstanceDeleted
    notebookInstanceDeleted,

    -- ** NotebookInstanceInService
    notebookInstanceInService,

    -- ** EndpointInService
    endpointInService,

    -- ** TrainingJobCompletedOrStopped
    trainingJobCompletedOrStopped,

    -- ** ProcessingJobCompletedOrStopped
    processingJobCompletedOrStopped,

    -- ** TransformJobCompletedOrStopped
    transformJobCompletedOrStopped,

    -- * Operations
    -- $operations

    -- ** DisassociateTrialComponent
    module Network.AWS.SageMaker.DisassociateTrialComponent,

    -- ** DeleteArtifact
    module Network.AWS.SageMaker.DeleteArtifact,

    -- ** CreateTransformJob
    module Network.AWS.SageMaker.CreateTransformJob,

    -- ** ListHumanTaskUis (Paginated)
    module Network.AWS.SageMaker.ListHumanTaskUis,

    -- ** DeleteHumanTaskUi
    module Network.AWS.SageMaker.DeleteHumanTaskUi,

    -- ** UpdateAction
    module Network.AWS.SageMaker.UpdateAction,

    -- ** DescribePipeline
    module Network.AWS.SageMaker.DescribePipeline,

    -- ** UpdateArtifact
    module Network.AWS.SageMaker.UpdateArtifact,

    -- ** DescribeUserProfile
    module Network.AWS.SageMaker.DescribeUserProfile,

    -- ** StopTrainingJob
    module Network.AWS.SageMaker.StopTrainingJob,

    -- ** CreateEndpoint
    module Network.AWS.SageMaker.CreateEndpoint,

    -- ** GetSearchSuggestions
    module Network.AWS.SageMaker.GetSearchSuggestions,

    -- ** DeleteAction
    module Network.AWS.SageMaker.DeleteAction,

    -- ** CreateEdgePackagingJob
    module Network.AWS.SageMaker.CreateEdgePackagingJob,

    -- ** DescribeEndpointConfig
    module Network.AWS.SageMaker.DescribeEndpointConfig,

    -- ** ListModelPackages (Paginated)
    module Network.AWS.SageMaker.ListModelPackages,

    -- ** GetModelPackageGroupPolicy
    module Network.AWS.SageMaker.GetModelPackageGroupPolicy,

    -- ** DescribeMonitoringSchedule
    module Network.AWS.SageMaker.DescribeMonitoringSchedule,

    -- ** CreateModelExplainabilityJobDefinition
    module Network.AWS.SageMaker.CreateModelExplainabilityJobDefinition,

    -- ** DescribeLabelingJob
    module Network.AWS.SageMaker.DescribeLabelingJob,

    -- ** CreateNotebookInstance
    module Network.AWS.SageMaker.CreateNotebookInstance,

    -- ** UpdateModelPackage
    module Network.AWS.SageMaker.UpdateModelPackage,

    -- ** CreateModelQualityJobDefinition
    module Network.AWS.SageMaker.CreateModelQualityJobDefinition,

    -- ** DeleteModelPackage
    module Network.AWS.SageMaker.DeleteModelPackage,

    -- ** ListProjects
    module Network.AWS.SageMaker.ListProjects,

    -- ** ListSubscribedWorkteams (Paginated)
    module Network.AWS.SageMaker.ListSubscribedWorkteams,

    -- ** DeleteNotebookInstance
    module Network.AWS.SageMaker.DeleteNotebookInstance,

    -- ** CreateProject
    module Network.AWS.SageMaker.CreateProject,

    -- ** DescribeProcessingJob
    module Network.AWS.SageMaker.DescribeProcessingJob,

    -- ** ListDomains (Paginated)
    module Network.AWS.SageMaker.ListDomains,

    -- ** DeleteModelExplainabilityJobDefinition
    module Network.AWS.SageMaker.DeleteModelExplainabilityJobDefinition,

    -- ** StopMonitoringSchedule
    module Network.AWS.SageMaker.StopMonitoringSchedule,

    -- ** ListDevices (Paginated)
    module Network.AWS.SageMaker.ListDevices,

    -- ** CreateModelPackage
    module Network.AWS.SageMaker.CreateModelPackage,

    -- ** UpdateNotebookInstance
    module Network.AWS.SageMaker.UpdateNotebookInstance,

    -- ** StopAutoMLJob
    module Network.AWS.SageMaker.StopAutoMLJob,

    -- ** DescribeAppImageConfig
    module Network.AWS.SageMaker.DescribeAppImageConfig,

    -- ** StartMonitoringSchedule
    module Network.AWS.SageMaker.StartMonitoringSchedule,

    -- ** StopCompilationJob
    module Network.AWS.SageMaker.StopCompilationJob,

    -- ** CreateTrial
    module Network.AWS.SageMaker.CreateTrial,

    -- ** GetSagemakerServicecatalogPortfolioStatus
    module Network.AWS.SageMaker.GetSagemakerServicecatalogPortfolioStatus,

    -- ** UpdateCodeRepository
    module Network.AWS.SageMaker.UpdateCodeRepository,

    -- ** Search (Paginated)
    module Network.AWS.SageMaker.Search,

    -- ** DeleteModel
    module Network.AWS.SageMaker.DeleteModel,

    -- ** DeleteDataQualityJobDefinition
    module Network.AWS.SageMaker.DeleteDataQualityJobDefinition,

    -- ** ListImages (Paginated)
    module Network.AWS.SageMaker.ListImages,

    -- ** ListTrainingJobs (Paginated)
    module Network.AWS.SageMaker.ListTrainingJobs,

    -- ** DescribeTransformJob
    module Network.AWS.SageMaker.DescribeTransformJob,

    -- ** CreatePipeline
    module Network.AWS.SageMaker.CreatePipeline,

    -- ** CreateModelPackageGroup
    module Network.AWS.SageMaker.CreateModelPackageGroup,

    -- ** ListCandidatesForAutoMLJob (Paginated)
    module Network.AWS.SageMaker.ListCandidatesForAutoMLJob,

    -- ** DeleteAlgorithm
    module Network.AWS.SageMaker.DeleteAlgorithm,

    -- ** GetDeviceFleetReport
    module Network.AWS.SageMaker.GetDeviceFleetReport,

    -- ** ListDataQualityJobDefinitions (Paginated)
    module Network.AWS.SageMaker.ListDataQualityJobDefinitions,

    -- ** DescribeEdgePackagingJob
    module Network.AWS.SageMaker.DescribeEdgePackagingJob,

    -- ** ListContexts (Paginated)
    module Network.AWS.SageMaker.ListContexts,

    -- ** DescribeEndpoint
    module Network.AWS.SageMaker.DescribeEndpoint,

    -- ** DeleteCodeRepository
    module Network.AWS.SageMaker.DeleteCodeRepository,

    -- ** DeleteModelPackageGroupPolicy
    module Network.AWS.SageMaker.DeleteModelPackageGroupPolicy,

    -- ** ListUserProfiles (Paginated)
    module Network.AWS.SageMaker.ListUserProfiles,

    -- ** DescribeCompilationJob
    module Network.AWS.SageMaker.DescribeCompilationJob,

    -- ** UpdatePipeline
    module Network.AWS.SageMaker.UpdatePipeline,

    -- ** CreateCodeRepository
    module Network.AWS.SageMaker.CreateCodeRepository,

    -- ** DescribeArtifact
    module Network.AWS.SageMaker.DescribeArtifact,

    -- ** DescribeHumanTaskUi
    module Network.AWS.SageMaker.DescribeHumanTaskUi,

    -- ** ListPipelineExecutionSteps (Paginated)
    module Network.AWS.SageMaker.ListPipelineExecutionSteps,

    -- ** ListCodeRepositories (Paginated)
    module Network.AWS.SageMaker.ListCodeRepositories,

    -- ** UpdateUserProfile
    module Network.AWS.SageMaker.UpdateUserProfile,

    -- ** DescribeAction
    module Network.AWS.SageMaker.DescribeAction,

    -- ** StopTransformJob
    module Network.AWS.SageMaker.StopTransformJob,

    -- ** CreateTrainingJob
    module Network.AWS.SageMaker.CreateTrainingJob,

    -- ** DeleteUserProfile
    module Network.AWS.SageMaker.DeleteUserProfile,

    -- ** CreateContext
    module Network.AWS.SageMaker.CreateContext,

    -- ** StopEdgePackagingJob
    module Network.AWS.SageMaker.StopEdgePackagingJob,

    -- ** CreateImage
    module Network.AWS.SageMaker.CreateImage,

    -- ** DeregisterDevices
    module Network.AWS.SageMaker.DeregisterDevices,

    -- ** CreateDataQualityJobDefinition
    module Network.AWS.SageMaker.CreateDataQualityJobDefinition,

    -- ** DeletePipeline
    module Network.AWS.SageMaker.DeletePipeline,

    -- ** CreateAppImageConfig
    module Network.AWS.SageMaker.CreateAppImageConfig,

    -- ** AddTags
    module Network.AWS.SageMaker.AddTags,

    -- ** DisableSagemakerServicecatalogPortfolio
    module Network.AWS.SageMaker.DisableSagemakerServicecatalogPortfolio,

    -- ** DeleteAssociation
    module Network.AWS.SageMaker.DeleteAssociation,

    -- ** UpdateMonitoringSchedule
    module Network.AWS.SageMaker.UpdateMonitoringSchedule,

    -- ** ListMonitoringSchedules (Paginated)
    module Network.AWS.SageMaker.ListMonitoringSchedules,

    -- ** StopNotebookInstance
    module Network.AWS.SageMaker.StopNotebookInstance,

    -- ** DeleteMonitoringSchedule
    module Network.AWS.SageMaker.DeleteMonitoringSchedule,

    -- ** DeleteEndpointConfig
    module Network.AWS.SageMaker.DeleteEndpointConfig,

    -- ** StartPipelineExecution
    module Network.AWS.SageMaker.StartPipelineExecution,

    -- ** DescribeModelPackage
    module Network.AWS.SageMaker.DescribeModelPackage,

    -- ** DeleteTags
    module Network.AWS.SageMaker.DeleteTags,

    -- ** AddAssociation
    module Network.AWS.SageMaker.AddAssociation,

    -- ** CreateNotebookInstanceLifecycleConfig
    module Network.AWS.SageMaker.CreateNotebookInstanceLifecycleConfig,

    -- ** ListApps (Paginated)
    module Network.AWS.SageMaker.ListApps,

    -- ** CreateWorkforce
    module Network.AWS.SageMaker.CreateWorkforce,

    -- ** ListAutoMLJobs (Paginated)
    module Network.AWS.SageMaker.ListAutoMLJobs,

    -- ** UpdateEndpointWeightsAndCapacities
    module Network.AWS.SageMaker.UpdateEndpointWeightsAndCapacities,

    -- ** StartNotebookInstance
    module Network.AWS.SageMaker.StartNotebookInstance,

    -- ** StopPipelineExecution
    module Network.AWS.SageMaker.StopPipelineExecution,

    -- ** ListEndpointConfigs (Paginated)
    module Network.AWS.SageMaker.ListEndpointConfigs,

    -- ** DeleteWorkteam
    module Network.AWS.SageMaker.DeleteWorkteam,

    -- ** DeleteWorkforce
    module Network.AWS.SageMaker.DeleteWorkforce,

    -- ** DeleteModelBiasJobDefinition
    module Network.AWS.SageMaker.DeleteModelBiasJobDefinition,

    -- ** UpdateWorkforce
    module Network.AWS.SageMaker.UpdateWorkforce,

    -- ** DescribeDevice
    module Network.AWS.SageMaker.DescribeDevice,

    -- ** DescribeDomain
    module Network.AWS.SageMaker.DescribeDomain,

    -- ** DeleteNotebookInstanceLifecycleConfig
    module Network.AWS.SageMaker.DeleteNotebookInstanceLifecycleConfig,

    -- ** DescribePipelineExecution
    module Network.AWS.SageMaker.DescribePipelineExecution,

    -- ** UpdateWorkteam
    module Network.AWS.SageMaker.UpdateWorkteam,

    -- ** CreateLabelingJob
    module Network.AWS.SageMaker.CreateLabelingJob,

    -- ** DescribeModelQualityJobDefinition
    module Network.AWS.SageMaker.DescribeModelQualityJobDefinition,

    -- ** CreateExperiment
    module Network.AWS.SageMaker.CreateExperiment,

    -- ** ListWorkforces (Paginated)
    module Network.AWS.SageMaker.ListWorkforces,

    -- ** ListAppImageConfigs (Paginated)
    module Network.AWS.SageMaker.ListAppImageConfigs,

    -- ** UpdateNotebookInstanceLifecycleConfig
    module Network.AWS.SageMaker.UpdateNotebookInstanceLifecycleConfig,

    -- ** DescribeSubscribedWorkteam
    module Network.AWS.SageMaker.DescribeSubscribedWorkteam,

    -- ** ListNotebookInstanceLifecycleConfigs (Paginated)
    module Network.AWS.SageMaker.ListNotebookInstanceLifecycleConfigs,

    -- ** ListEdgePackagingJobs (Paginated)
    module Network.AWS.SageMaker.ListEdgePackagingJobs,

    -- ** DescribeCodeRepository
    module Network.AWS.SageMaker.DescribeCodeRepository,

    -- ** ListEndpoints (Paginated)
    module Network.AWS.SageMaker.ListEndpoints,

    -- ** DescribeDataQualityJobDefinition
    module Network.AWS.SageMaker.DescribeDataQualityJobDefinition,

    -- ** DescribeAlgorithm
    module Network.AWS.SageMaker.DescribeAlgorithm,

    -- ** CreateAction
    module Network.AWS.SageMaker.CreateAction,

    -- ** DeleteEndpoint
    module Network.AWS.SageMaker.DeleteEndpoint,

    -- ** CreatePresignedDomainURL
    module Network.AWS.SageMaker.CreatePresignedDomainURL,

    -- ** ListTransformJobs (Paginated)
    module Network.AWS.SageMaker.ListTransformJobs,

    -- ** DescribeHyperParameterTuningJob
    module Network.AWS.SageMaker.DescribeHyperParameterTuningJob,

    -- ** CreateCompilationJob
    module Network.AWS.SageMaker.CreateCompilationJob,

    -- ** UpdateEndpoint
    module Network.AWS.SageMaker.UpdateEndpoint,

    -- ** DescribeModel
    module Network.AWS.SageMaker.DescribeModel,

    -- ** CreateDeviceFleet
    module Network.AWS.SageMaker.CreateDeviceFleet,

    -- ** CreateArtifact
    module Network.AWS.SageMaker.CreateArtifact,

    -- ** UpdateDevices
    module Network.AWS.SageMaker.UpdateDevices,

    -- ** ListArtifacts (Paginated)
    module Network.AWS.SageMaker.ListArtifacts,

    -- ** DeleteDeviceFleet
    module Network.AWS.SageMaker.DeleteDeviceFleet,

    -- ** ListMonitoringExecutions (Paginated)
    module Network.AWS.SageMaker.ListMonitoringExecutions,

    -- ** ListCompilationJobs (Paginated)
    module Network.AWS.SageMaker.ListCompilationJobs,

    -- ** ListActions (Paginated)
    module Network.AWS.SageMaker.ListActions,

    -- ** ListDeviceFleets (Paginated)
    module Network.AWS.SageMaker.ListDeviceFleets,

    -- ** DescribeModelPackageGroup
    module Network.AWS.SageMaker.DescribeModelPackageGroup,

    -- ** StopHyperParameterTuningJob
    module Network.AWS.SageMaker.StopHyperParameterTuningJob,

    -- ** DescribeTrial
    module Network.AWS.SageMaker.DescribeTrial,

    -- ** UpdateDeviceFleet
    module Network.AWS.SageMaker.UpdateDeviceFleet,

    -- ** ListLabelingJobsForWorkteam (Paginated)
    module Network.AWS.SageMaker.ListLabelingJobsForWorkteam,

    -- ** CreateFeatureGroup
    module Network.AWS.SageMaker.CreateFeatureGroup,

    -- ** CreateDomain
    module Network.AWS.SageMaker.CreateDomain,

    -- ** ListImageVersions (Paginated)
    module Network.AWS.SageMaker.ListImageVersions,

    -- ** StopProcessingJob
    module Network.AWS.SageMaker.StopProcessingJob,

    -- ** DeleteImageVersion
    module Network.AWS.SageMaker.DeleteImageVersion,

    -- ** DeleteProject
    module Network.AWS.SageMaker.DeleteProject,

    -- ** DescribeExperiment
    module Network.AWS.SageMaker.DescribeExperiment,

    -- ** DescribeAutoMLJob
    module Network.AWS.SageMaker.DescribeAutoMLJob,

    -- ** DescribeApp
    module Network.AWS.SageMaker.DescribeApp,

    -- ** ListTrialComponents (Paginated)
    module Network.AWS.SageMaker.ListTrialComponents,

    -- ** UpdateTrialComponent
    module Network.AWS.SageMaker.UpdateTrialComponent,

    -- ** DeleteTrialComponent
    module Network.AWS.SageMaker.DeleteTrialComponent,

    -- ** CreateTrialComponent
    module Network.AWS.SageMaker.CreateTrialComponent,

    -- ** DescribeWorkforce
    module Network.AWS.SageMaker.DescribeWorkforce,

    -- ** ListNotebookInstances (Paginated)
    module Network.AWS.SageMaker.ListNotebookInstances,

    -- ** ListModelExplainabilityJobDefinitions (Paginated)
    module Network.AWS.SageMaker.ListModelExplainabilityJobDefinitions,

    -- ** DeleteModelQualityJobDefinition
    module Network.AWS.SageMaker.DeleteModelQualityJobDefinition,

    -- ** StopLabelingJob
    module Network.AWS.SageMaker.StopLabelingJob,

    -- ** ListModelQualityJobDefinitions (Paginated)
    module Network.AWS.SageMaker.ListModelQualityJobDefinitions,

    -- ** DescribeModelBiasJobDefinition
    module Network.AWS.SageMaker.DescribeModelBiasJobDefinition,

    -- ** DescribeWorkteam
    module Network.AWS.SageMaker.DescribeWorkteam,

    -- ** DescribeNotebookInstanceLifecycleConfig
    module Network.AWS.SageMaker.DescribeNotebookInstanceLifecycleConfig,

    -- ** ListPipelineExecutions (Paginated)
    module Network.AWS.SageMaker.ListPipelineExecutions,

    -- ** UpdateDomain
    module Network.AWS.SageMaker.UpdateDomain,

    -- ** AssociateTrialComponent
    module Network.AWS.SageMaker.AssociateTrialComponent,

    -- ** UpdatePipelineExecution
    module Network.AWS.SageMaker.UpdatePipelineExecution,

    -- ** CreateImageVersion
    module Network.AWS.SageMaker.CreateImageVersion,

    -- ** DeleteDomain
    module Network.AWS.SageMaker.DeleteDomain,

    -- ** UpdateTrainingJob
    module Network.AWS.SageMaker.UpdateTrainingJob,

    -- ** UpdateImage
    module Network.AWS.SageMaker.UpdateImage,

    -- ** UpdateContext
    module Network.AWS.SageMaker.UpdateContext,

    -- ** DeleteImage
    module Network.AWS.SageMaker.DeleteImage,

    -- ** ListFlowDefinitions (Paginated)
    module Network.AWS.SageMaker.ListFlowDefinitions,

    -- ** ListModels (Paginated)
    module Network.AWS.SageMaker.ListModels,

    -- ** CreateUserProfile
    module Network.AWS.SageMaker.CreateUserProfile,

    -- ** RenderUiTemplate
    module Network.AWS.SageMaker.RenderUiTemplate,

    -- ** DescribeFeatureGroup
    module Network.AWS.SageMaker.DescribeFeatureGroup,

    -- ** DeleteContext
    module Network.AWS.SageMaker.DeleteContext,

    -- ** ListHyperParameterTuningJobs (Paginated)
    module Network.AWS.SageMaker.ListHyperParameterTuningJobs,

    -- ** DeleteFlowDefinition
    module Network.AWS.SageMaker.DeleteFlowDefinition,

    -- ** ListAlgorithms (Paginated)
    module Network.AWS.SageMaker.ListAlgorithms,

    -- ** CreateAlgorithm
    module Network.AWS.SageMaker.CreateAlgorithm,

    -- ** CreateFlowDefinition
    module Network.AWS.SageMaker.CreateFlowDefinition,

    -- ** ListPipelineParametersForExecution (Paginated)
    module Network.AWS.SageMaker.ListPipelineParametersForExecution,

    -- ** ListTrials (Paginated)
    module Network.AWS.SageMaker.ListTrials,

    -- ** CreateHyperParameterTuningJob
    module Network.AWS.SageMaker.CreateHyperParameterTuningJob,

    -- ** CreateModel
    module Network.AWS.SageMaker.CreateModel,

    -- ** UpdateTrial
    module Network.AWS.SageMaker.UpdateTrial,

    -- ** DeleteModelPackageGroup
    module Network.AWS.SageMaker.DeleteModelPackageGroup,

    -- ** DescribeDeviceFleet
    module Network.AWS.SageMaker.DescribeDeviceFleet,

    -- ** ListModelPackageGroups (Paginated)
    module Network.AWS.SageMaker.ListModelPackageGroups,

    -- ** ListPipelines (Paginated)
    module Network.AWS.SageMaker.ListPipelines,

    -- ** ListTags (Paginated)
    module Network.AWS.SageMaker.ListTags,

    -- ** DescribePipelineDefinitionForExecution
    module Network.AWS.SageMaker.DescribePipelineDefinitionForExecution,

    -- ** DeleteTrial
    module Network.AWS.SageMaker.DeleteTrial,

    -- ** PutModelPackageGroupPolicy
    module Network.AWS.SageMaker.PutModelPackageGroupPolicy,

    -- ** ListExperiments (Paginated)
    module Network.AWS.SageMaker.ListExperiments,

    -- ** UpdateExperiment
    module Network.AWS.SageMaker.UpdateExperiment,

    -- ** DeleteExperiment
    module Network.AWS.SageMaker.DeleteExperiment,

    -- ** ListLabelingJobs (Paginated)
    module Network.AWS.SageMaker.ListLabelingJobs,

    -- ** DescribeImageVersion
    module Network.AWS.SageMaker.DescribeImageVersion,

    -- ** DeleteApp
    module Network.AWS.SageMaker.DeleteApp,

    -- ** CreateModelBiasJobDefinition
    module Network.AWS.SageMaker.CreateModelBiasJobDefinition,

    -- ** DescribeTrialComponent
    module Network.AWS.SageMaker.DescribeTrialComponent,

    -- ** CreateWorkteam
    module Network.AWS.SageMaker.CreateWorkteam,

    -- ** DescribeProject
    module Network.AWS.SageMaker.DescribeProject,

    -- ** CreateProcessingJob
    module Network.AWS.SageMaker.CreateProcessingJob,

    -- ** ListAssociations (Paginated)
    module Network.AWS.SageMaker.ListAssociations,

    -- ** EnableSagemakerServicecatalogPortfolio
    module Network.AWS.SageMaker.EnableSagemakerServicecatalogPortfolio,

    -- ** UpdateAppImageConfig
    module Network.AWS.SageMaker.UpdateAppImageConfig,

    -- ** ListModelBiasJobDefinitions (Paginated)
    module Network.AWS.SageMaker.ListModelBiasJobDefinitions,

    -- ** CreateAutoMLJob
    module Network.AWS.SageMaker.CreateAutoMLJob,

    -- ** CreateApp
    module Network.AWS.SageMaker.CreateApp,

    -- ** DescribeNotebookInstance
    module Network.AWS.SageMaker.DescribeNotebookInstance,

    -- ** DeleteAppImageConfig
    module Network.AWS.SageMaker.DeleteAppImageConfig,

    -- ** CreateEndpointConfig
    module Network.AWS.SageMaker.CreateEndpointConfig,

    -- ** ListProcessingJobs (Paginated)
    module Network.AWS.SageMaker.ListProcessingJobs,

    -- ** CreateMonitoringSchedule
    module Network.AWS.SageMaker.CreateMonitoringSchedule,

    -- ** DescribeModelExplainabilityJobDefinition
    module Network.AWS.SageMaker.DescribeModelExplainabilityJobDefinition,

    -- ** ListWorkteams (Paginated)
    module Network.AWS.SageMaker.ListWorkteams,

    -- ** DescribeFlowDefinition
    module Network.AWS.SageMaker.DescribeFlowDefinition,

    -- ** DescribeContext
    module Network.AWS.SageMaker.DescribeContext,

    -- ** RegisterDevices
    module Network.AWS.SageMaker.RegisterDevices,

    -- ** ListFeatureGroups (Paginated)
    module Network.AWS.SageMaker.ListFeatureGroups,

    -- ** CreatePresignedNotebookInstanceURL
    module Network.AWS.SageMaker.CreatePresignedNotebookInstanceURL,

    -- ** DescribeTrainingJob
    module Network.AWS.SageMaker.DescribeTrainingJob,

    -- ** CreateHumanTaskUi
    module Network.AWS.SageMaker.CreateHumanTaskUi,

    -- ** ListTrainingJobsForHyperParameterTuningJob (Paginated)
    module Network.AWS.SageMaker.ListTrainingJobsForHyperParameterTuningJob,

    -- ** DescribeImage
    module Network.AWS.SageMaker.DescribeImage,

    -- ** DeleteFeatureGroup
    module Network.AWS.SageMaker.DeleteFeatureGroup,

    -- * Types

    -- ** AWSManagedHumanLoopRequestSource
    AWSManagedHumanLoopRequestSource (..),

    -- ** ActionStatus
    ActionStatus (..),

    -- ** AlgorithmSortBy
    AlgorithmSortBy (..),

    -- ** AlgorithmStatus
    AlgorithmStatus (..),

    -- ** AppImageConfigSortKey
    AppImageConfigSortKey (..),

    -- ** AppInstanceType
    AppInstanceType (..),

    -- ** AppNetworkAccessType
    AppNetworkAccessType (..),

    -- ** AppSortKey
    AppSortKey (..),

    -- ** AppStatus
    AppStatus (..),

    -- ** AppType
    AppType (..),

    -- ** ArtifactSourceIdType
    ArtifactSourceIdType (..),

    -- ** AssemblyType
    AssemblyType (..),

    -- ** AssociationEdgeType
    AssociationEdgeType (..),

    -- ** AthenaResultCompressionType
    AthenaResultCompressionType (..),

    -- ** AthenaResultFormat
    AthenaResultFormat (..),

    -- ** AuthMode
    AuthMode (..),

    -- ** AutoMLJobObjectiveType
    AutoMLJobObjectiveType (..),

    -- ** AutoMLJobSecondaryStatus
    AutoMLJobSecondaryStatus (..),

    -- ** AutoMLJobStatus
    AutoMLJobStatus (..),

    -- ** AutoMLMetricEnum
    AutoMLMetricEnum (..),

    -- ** AutoMLS3DataType
    AutoMLS3DataType (..),

    -- ** AutoMLSortBy
    AutoMLSortBy (..),

    -- ** AutoMLSortOrder
    AutoMLSortOrder (..),

    -- ** BatchStrategy
    BatchStrategy (..),

    -- ** BooleanOperator
    BooleanOperator (..),

    -- ** CandidateSortBy
    CandidateSortBy (..),

    -- ** CandidateStatus
    CandidateStatus (..),

    -- ** CandidateStepType
    CandidateStepType (..),

    -- ** CapacitySizeType
    CapacitySizeType (..),

    -- ** CaptureMode
    CaptureMode (..),

    -- ** CaptureStatus
    CaptureStatus (..),

    -- ** CodeRepositorySortBy
    CodeRepositorySortBy (..),

    -- ** CodeRepositorySortOrder
    CodeRepositorySortOrder (..),

    -- ** CompilationJobStatus
    CompilationJobStatus (..),

    -- ** CompressionType
    CompressionType (..),

    -- ** ConditionOutcome
    ConditionOutcome (..),

    -- ** ContainerMode
    ContainerMode (..),

    -- ** ContentClassifier
    ContentClassifier (..),

    -- ** DataDistributionType
    DataDistributionType (..),

    -- ** DetailedAlgorithmStatus
    DetailedAlgorithmStatus (..),

    -- ** DetailedModelPackageStatus
    DetailedModelPackageStatus (..),

    -- ** DirectInternetAccess
    DirectInternetAccess (..),

    -- ** DomainStatus
    DomainStatus (..),

    -- ** EdgePackagingJobStatus
    EdgePackagingJobStatus (..),

    -- ** EndpointConfigSortKey
    EndpointConfigSortKey (..),

    -- ** EndpointSortKey
    EndpointSortKey (..),

    -- ** EndpointStatus
    EndpointStatus (..),

    -- ** ExecutionStatus
    ExecutionStatus (..),

    -- ** FeatureGroupSortBy
    FeatureGroupSortBy (..),

    -- ** FeatureGroupSortOrder
    FeatureGroupSortOrder (..),

    -- ** FeatureGroupStatus
    FeatureGroupStatus (..),

    -- ** FeatureType
    FeatureType (..),

    -- ** FileSystemAccessMode
    FileSystemAccessMode (..),

    -- ** FileSystemType
    FileSystemType (..),

    -- ** FlowDefinitionStatus
    FlowDefinitionStatus (..),

    -- ** Framework
    Framework (..),

    -- ** HumanTaskUiStatus
    HumanTaskUiStatus (..),

    -- ** HyperParameterScalingType
    HyperParameterScalingType (..),

    -- ** HyperParameterTuningJobObjectiveType
    HyperParameterTuningJobObjectiveType (..),

    -- ** HyperParameterTuningJobSortByOptions
    HyperParameterTuningJobSortByOptions (..),

    -- ** HyperParameterTuningJobStatus
    HyperParameterTuningJobStatus (..),

    -- ** HyperParameterTuningJobStrategyType
    HyperParameterTuningJobStrategyType (..),

    -- ** HyperParameterTuningJobWarmStartType
    HyperParameterTuningJobWarmStartType (..),

    -- ** ImageSortBy
    ImageSortBy (..),

    -- ** ImageSortOrder
    ImageSortOrder (..),

    -- ** ImageStatus
    ImageStatus (..),

    -- ** ImageVersionSortBy
    ImageVersionSortBy (..),

    -- ** ImageVersionSortOrder
    ImageVersionSortOrder (..),

    -- ** ImageVersionStatus
    ImageVersionStatus (..),

    -- ** InferenceExecutionMode
    InferenceExecutionMode (..),

    -- ** InputMode
    InputMode (..),

    -- ** InstanceType
    InstanceType (..),

    -- ** JoinSource
    JoinSource (..),

    -- ** LabelingJobStatus
    LabelingJobStatus (..),

    -- ** ListCompilationJobsSortBy
    ListCompilationJobsSortBy (..),

    -- ** ListDeviceFleetsSortBy
    ListDeviceFleetsSortBy (..),

    -- ** ListEdgePackagingJobsSortBy
    ListEdgePackagingJobsSortBy (..),

    -- ** ListLabelingJobsForWorkteamSortByOptions
    ListLabelingJobsForWorkteamSortByOptions (..),

    -- ** ListWorkforcesSortByOptions
    ListWorkforcesSortByOptions (..),

    -- ** ListWorkteamsSortByOptions
    ListWorkteamsSortByOptions (..),

    -- ** ModelApprovalStatus
    ModelApprovalStatus (..),

    -- ** ModelCacheSetting
    ModelCacheSetting (..),

    -- ** ModelPackageGroupSortBy
    ModelPackageGroupSortBy (..),

    -- ** ModelPackageGroupStatus
    ModelPackageGroupStatus (..),

    -- ** ModelPackageSortBy
    ModelPackageSortBy (..),

    -- ** ModelPackageStatus
    ModelPackageStatus (..),

    -- ** ModelPackageType
    ModelPackageType (..),

    -- ** ModelSortKey
    ModelSortKey (..),

    -- ** MonitoringExecutionSortKey
    MonitoringExecutionSortKey (..),

    -- ** MonitoringJobDefinitionSortKey
    MonitoringJobDefinitionSortKey (..),

    -- ** MonitoringProblemType
    MonitoringProblemType (..),

    -- ** MonitoringScheduleSortKey
    MonitoringScheduleSortKey (..),

    -- ** MonitoringType
    MonitoringType (..),

    -- ** NotebookInstanceAcceleratorType
    NotebookInstanceAcceleratorType (..),

    -- ** NotebookInstanceLifecycleConfigSortKey
    NotebookInstanceLifecycleConfigSortKey (..),

    -- ** NotebookInstanceLifecycleConfigSortOrder
    NotebookInstanceLifecycleConfigSortOrder (..),

    -- ** NotebookInstanceSortKey
    NotebookInstanceSortKey (..),

    -- ** NotebookInstanceSortOrder
    NotebookInstanceSortOrder (..),

    -- ** NotebookInstanceStatus
    NotebookInstanceStatus (..),

    -- ** NotebookOutputOption
    NotebookOutputOption (..),

    -- ** ObjectiveStatus
    ObjectiveStatus (..),

    -- ** OfflineStoreStatusValue
    OfflineStoreStatusValue (..),

    -- ** Operator
    Operator (..),

    -- ** OrderKey
    OrderKey (..),

    -- ** ParameterType
    ParameterType (..),

    -- ** PipelineExecutionStatus
    PipelineExecutionStatus (..),

    -- ** PipelineStatus
    PipelineStatus (..),

    -- ** ProblemType
    ProblemType (..),

    -- ** ProcessingInstanceType
    ProcessingInstanceType (..),

    -- ** ProcessingJobStatus
    ProcessingJobStatus (..),

    -- ** ProcessingS3CompressionType
    ProcessingS3CompressionType (..),

    -- ** ProcessingS3DataDistributionType
    ProcessingS3DataDistributionType (..),

    -- ** ProcessingS3DataType
    ProcessingS3DataType (..),

    -- ** ProcessingS3InputMode
    ProcessingS3InputMode (..),

    -- ** ProcessingS3UploadMode
    ProcessingS3UploadMode (..),

    -- ** ProductionVariantAcceleratorType
    ProductionVariantAcceleratorType (..),

    -- ** ProductionVariantInstanceType
    ProductionVariantInstanceType (..),

    -- ** ProfilingStatus
    ProfilingStatus (..),

    -- ** ProjectSortBy
    ProjectSortBy (..),

    -- ** ProjectSortOrder
    ProjectSortOrder (..),

    -- ** ProjectStatus
    ProjectStatus (..),

    -- ** RecordWrapper
    RecordWrapper (..),

    -- ** RedshiftResultCompressionType
    RedshiftResultCompressionType (..),

    -- ** RedshiftResultFormat
    RedshiftResultFormat (..),

    -- ** RepositoryAccessMode
    RepositoryAccessMode (..),

    -- ** ResourceType
    ResourceType (..),

    -- ** RetentionType
    RetentionType (..),

    -- ** RootAccess
    RootAccess (..),

    -- ** RuleEvaluationStatus
    RuleEvaluationStatus (..),

    -- ** S3DataDistribution
    S3DataDistribution (..),

    -- ** S3DataType
    S3DataType (..),

    -- ** SagemakerServicecatalogStatus
    SagemakerServicecatalogStatus (..),

    -- ** ScheduleStatus
    ScheduleStatus (..),

    -- ** SearchSortOrder
    SearchSortOrder (..),

    -- ** SecondaryStatus
    SecondaryStatus (..),

    -- ** SortActionsBy
    SortActionsBy (..),

    -- ** SortArtifactsBy
    SortArtifactsBy (..),

    -- ** SortAssociationsBy
    SortAssociationsBy (..),

    -- ** SortBy
    SortBy (..),

    -- ** SortContextsBy
    SortContextsBy (..),

    -- ** SortExperimentsBy
    SortExperimentsBy (..),

    -- ** SortOrder
    SortOrder (..),

    -- ** SortPipelineExecutionsBy
    SortPipelineExecutionsBy (..),

    -- ** SortPipelinesBy
    SortPipelinesBy (..),

    -- ** SortTrialComponentsBy
    SortTrialComponentsBy (..),

    -- ** SortTrialsBy
    SortTrialsBy (..),

    -- ** SplitType
    SplitType (..),

    -- ** StepStatus
    StepStatus (..),

    -- ** TargetDevice
    TargetDevice (..),

    -- ** TargetPlatformAccelerator
    TargetPlatformAccelerator (..),

    -- ** TargetPlatformArch
    TargetPlatformArch (..),

    -- ** TargetPlatformOS
    TargetPlatformOS (..),

    -- ** TrafficRoutingConfigType
    TrafficRoutingConfigType (..),

    -- ** TrainingInputMode
    TrainingInputMode (..),

    -- ** TrainingInstanceType
    TrainingInstanceType (..),

    -- ** TrainingJobEarlyStoppingType
    TrainingJobEarlyStoppingType (..),

    -- ** TrainingJobSortByOptions
    TrainingJobSortByOptions (..),

    -- ** TrainingJobStatus
    TrainingJobStatus (..),

    -- ** TransformInstanceType
    TransformInstanceType (..),

    -- ** TransformJobStatus
    TransformJobStatus (..),

    -- ** TrialComponentPrimaryStatus
    TrialComponentPrimaryStatus (..),

    -- ** UserProfileSortKey
    UserProfileSortKey (..),

    -- ** UserProfileStatus
    UserProfileStatus (..),

    -- ** VariantPropertyType
    VariantPropertyType (..),

    -- ** ActionSource
    ActionSource,
    actionSource,
    aSourceId,
    aSourceType,
    aSourceURI,

    -- ** ActionSummary
    ActionSummary,
    actionSummary,
    actStatus,
    actCreationTime,
    actActionName,
    actActionType,
    actActionARN,
    actSource,
    actLastModifiedTime,

    -- ** AgentVersion
    AgentVersion,
    agentVersion,
    avVersion,
    avAgentCount,

    -- ** Alarm
    Alarm,
    alarm,
    aAlarmName,

    -- ** AlgorithmSpecification
    AlgorithmSpecification,
    algorithmSpecification,
    asTrainingImage,
    asEnableSageMakerMetricsTimeSeries,
    asMetricDefinitions,
    asAlgorithmName,
    asTrainingInputMode,

    -- ** AlgorithmStatusDetails
    AlgorithmStatusDetails,
    algorithmStatusDetails,
    asdValidationStatuses,
    asdImageScanStatuses,

    -- ** AlgorithmStatusItem
    AlgorithmStatusItem,
    algorithmStatusItem,
    asiFailureReason,
    asiName,
    asiStatus,

    -- ** AlgorithmSummary
    AlgorithmSummary,
    algorithmSummary,
    aAlgorithmDescription,
    aAlgorithmName,
    aAlgorithmARN,
    aCreationTime,
    aAlgorithmStatus,

    -- ** AlgorithmValidationProfile
    AlgorithmValidationProfile,
    algorithmValidationProfile,
    avpTransformJobDefinition,
    avpProfileName,
    avpTrainingJobDefinition,

    -- ** AlgorithmValidationSpecification
    AlgorithmValidationSpecification,
    algorithmValidationSpecification,
    avsValidationRole,
    avsValidationProfiles,

    -- ** AnnotationConsolidationConfig
    AnnotationConsolidationConfig,
    annotationConsolidationConfig,
    accAnnotationConsolidationLambdaARN,

    -- ** AppDetails
    AppDetails,
    appDetails,
    adStatus,
    adCreationTime,
    adAppType,
    adAppName,
    adUserProfileName,
    adDomainId,

    -- ** AppImageConfigDetails
    AppImageConfigDetails,
    appImageConfigDetails,
    aicdCreationTime,
    aicdAppImageConfigARN,
    aicdKernelGatewayImageConfig,
    aicdAppImageConfigName,
    aicdLastModifiedTime,

    -- ** AppSpecification
    AppSpecification,
    appSpecification,
    asContainerArguments,
    asContainerEntrypoint,
    asImageURI,

    -- ** ArtifactSource
    ArtifactSource,
    artifactSource,
    asSourceTypes,
    asSourceURI,

    -- ** ArtifactSourceType
    ArtifactSourceType,
    artifactSourceType,
    astSourceIdType,
    astValue,

    -- ** ArtifactSummary
    ArtifactSummary,
    artifactSummary,
    asCreationTime,
    asArtifactName,
    asArtifactType,
    asArtifactARN,
    asSource,
    asLastModifiedTime,

    -- ** AssociationSummary
    AssociationSummary,
    associationSummary,
    assDestinationType,
    assCreationTime,
    assDestinationARN,
    assDestinationName,
    assSourceName,
    assAssociationType,
    assCreatedBy,
    assSourceARN,
    assSourceType,

    -- ** AthenaDatasetDefinition
    AthenaDatasetDefinition,
    athenaDatasetDefinition,
    addOutputCompression,
    addKMSKeyId,
    addWorkGroup,
    addCatalog,
    addDatabase,
    addQueryString,
    addOutputS3URI,
    addOutputFormat,

    -- ** AutoMLCandidate
    AutoMLCandidate,
    autoMLCandidate,
    amlcEndTime,
    amlcInferenceContainers,
    amlcFailureReason,
    amlcFinalAutoMLJobObjectiveMetric,
    amlcCandidateName,
    amlcObjectiveStatus,
    amlcCandidateSteps,
    amlcCandidateStatus,
    amlcCreationTime,
    amlcLastModifiedTime,

    -- ** AutoMLCandidateStep
    AutoMLCandidateStep,
    autoMLCandidateStep,
    amlcsCandidateStepType,
    amlcsCandidateStepARN,
    amlcsCandidateStepName,

    -- ** AutoMLChannel
    AutoMLChannel,
    autoMLChannel,
    amlcCompressionType,
    amlcDataSource,
    amlcTargetAttributeName,

    -- ** AutoMLContainerDefinition
    AutoMLContainerDefinition,
    autoMLContainerDefinition,
    amlcdEnvironment,
    amlcdImage,
    amlcdModelDataURL,

    -- ** AutoMLDataSource
    AutoMLDataSource,
    autoMLDataSource,
    amldsS3DataSource,

    -- ** AutoMLJobArtifacts
    AutoMLJobArtifacts,
    autoMLJobArtifacts,
    amljaCandidateDefinitionNotebookLocation,
    amljaDataExplorationNotebookLocation,

    -- ** AutoMLJobCompletionCriteria
    AutoMLJobCompletionCriteria,
    autoMLJobCompletionCriteria,
    amljccMaxRuntimePerTrainingJobInSeconds,
    amljccMaxAutoMLJobRuntimeInSeconds,
    amljccMaxCandidates,

    -- ** AutoMLJobConfig
    AutoMLJobConfig,
    autoMLJobConfig,
    amljcSecurityConfig,
    amljcCompletionCriteria,

    -- ** AutoMLJobObjective
    AutoMLJobObjective,
    autoMLJobObjective,
    amljoMetricName,

    -- ** AutoMLJobSummary
    AutoMLJobSummary,
    autoMLJobSummary,
    amljsEndTime,
    amljsFailureReason,
    amljsAutoMLJobName,
    amljsAutoMLJobARN,
    amljsAutoMLJobStatus,
    amljsAutoMLJobSecondaryStatus,
    amljsCreationTime,
    amljsLastModifiedTime,

    -- ** AutoMLOutputDataConfig
    AutoMLOutputDataConfig,
    autoMLOutputDataConfig,
    amlodcKMSKeyId,
    amlodcS3OutputPath,

    -- ** AutoMLS3DataSource
    AutoMLS3DataSource,
    autoMLS3DataSource,
    amlsdsS3DataType,
    amlsdsS3URI,

    -- ** AutoMLSecurityConfig
    AutoMLSecurityConfig,
    autoMLSecurityConfig,
    amlscVPCConfig,
    amlscEnableInterContainerTrafficEncryption,
    amlscVolumeKMSKeyId,

    -- ** AutoRollbackConfig
    AutoRollbackConfig,
    autoRollbackConfig,
    arcAlarms,

    -- ** Bias
    Bias,
    bias,
    bReport,

    -- ** BlueGreenUpdatePolicy
    BlueGreenUpdatePolicy,
    blueGreenUpdatePolicy,
    bgupTerminationWaitInSeconds,
    bgupMaximumExecutionTimeoutInSeconds,
    bgupTrafficRoutingConfiguration,

    -- ** CacheHitResult
    CacheHitResult,
    cacheHitResult,
    chrSourcePipelineExecutionARN,

    -- ** CapacitySize
    CapacitySize,
    capacitySize,
    csType,
    csValue,

    -- ** CaptureContentTypeHeader
    CaptureContentTypeHeader,
    captureContentTypeHeader,
    ccthCSVContentTypes,
    ccthJSONContentTypes,

    -- ** CaptureOption
    CaptureOption,
    captureOption,
    coCaptureMode,

    -- ** CategoricalParameterRange
    CategoricalParameterRange,
    categoricalParameterRange,
    cprName,
    cprValues,

    -- ** CategoricalParameterRangeSpecification
    CategoricalParameterRangeSpecification,
    categoricalParameterRangeSpecification,
    cprsValues,

    -- ** Channel
    Channel,
    channel,
    cContentType,
    cRecordWrapperType,
    cShuffleConfig,
    cCompressionType,
    cInputMode,
    cChannelName,
    cDataSource,

    -- ** ChannelSpecification
    ChannelSpecification,
    channelSpecification,
    csDescription,
    csIsRequired,
    csSupportedCompressionTypes,
    csName,
    csSupportedContentTypes,
    csSupportedInputModes,

    -- ** CheckpointConfig
    CheckpointConfig,
    checkpointConfig,
    ccLocalPath,
    ccS3URI,

    -- ** CodeRepositorySummary
    CodeRepositorySummary,
    codeRepositorySummary,
    crsGitConfig,
    crsCodeRepositoryName,
    crsCodeRepositoryARN,
    crsCreationTime,
    crsLastModifiedTime,

    -- ** CognitoConfig
    CognitoConfig,
    cognitoConfig,
    ccUserPool,
    ccClientId,

    -- ** CognitoMemberDefinition
    CognitoMemberDefinition,
    cognitoMemberDefinition,
    cmdUserPool,
    cmdUserGroup,
    cmdClientId,

    -- ** CollectionConfiguration
    CollectionConfiguration,
    collectionConfiguration,
    ccCollectionParameters,
    ccCollectionName,

    -- ** CompilationJobSummary
    CompilationJobSummary,
    compilationJobSummary,
    cjsCompilationTargetPlatformArch,
    cjsCompilationStartTime,
    cjsCompilationTargetPlatformOS,
    cjsCompilationTargetPlatformAccelerator,
    cjsLastModifiedTime,
    cjsCompilationEndTime,
    cjsCompilationTargetDevice,
    cjsCompilationJobName,
    cjsCompilationJobARN,
    cjsCreationTime,
    cjsCompilationJobStatus,

    -- ** ConditionStepMetadata
    ConditionStepMetadata,
    conditionStepMetadata,
    csmOutcome,

    -- ** ContainerDefinition
    ContainerDefinition,
    containerDefinition,
    cdMultiModelConfig,
    cdModelDataURL,
    cdMode,
    cdContainerHostname,
    cdImageConfig,
    cdEnvironment,
    cdModelPackageName,
    cdImage,

    -- ** ContextSource
    ContextSource,
    contextSource,
    csSourceId,
    csSourceType,
    csSourceURI,

    -- ** ContextSummary
    ContextSummary,
    contextSummary,
    csContextType,
    csCreationTime,
    csContextName,
    csSource,
    csLastModifiedTime,
    csContextARN,

    -- ** ContinuousParameterRange
    ContinuousParameterRange,
    continuousParameterRange,
    cScalingType,
    cName,
    cMinValue,
    cMaxValue,

    -- ** ContinuousParameterRangeSpecification
    ContinuousParameterRangeSpecification,
    continuousParameterRangeSpecification,
    cprsMinValue,
    cprsMaxValue,

    -- ** CustomImage
    CustomImage,
    customImage,
    ciImageVersionNumber,
    ciImageName,
    ciAppImageConfigName,

    -- ** DataCaptureConfig
    DataCaptureConfig,
    dataCaptureConfig,
    dccCaptureContentTypeHeader,
    dccKMSKeyId,
    dccEnableCapture,
    dccInitialSamplingPercentage,
    dccDestinationS3URI,
    dccCaptureOptions,

    -- ** DataCaptureConfigSummary
    DataCaptureConfigSummary,
    dataCaptureConfigSummary,
    dccsEnableCapture,
    dccsCaptureStatus,
    dccsCurrentSamplingPercentage,
    dccsDestinationS3URI,
    dccsKMSKeyId,

    -- ** DataCatalogConfig
    DataCatalogConfig,
    dataCatalogConfig,
    dccTableName,
    dccCatalog,
    dccDatabase,

    -- ** DataProcessing
    DataProcessing,
    dataProcessing,
    dpOutputFilter,
    dpJoinSource,
    dpInputFilter,

    -- ** DataQualityAppSpecification
    DataQualityAppSpecification,
    dataQualityAppSpecification,
    dqasContainerArguments,
    dqasContainerEntrypoint,
    dqasPostAnalyticsProcessorSourceURI,
    dqasEnvironment,
    dqasRecordPreprocessorSourceURI,
    dqasImageURI,

    -- ** DataQualityBaselineConfig
    DataQualityBaselineConfig,
    dataQualityBaselineConfig,
    dqbcStatisticsResource,
    dqbcConstraintsResource,
    dqbcBaseliningJobName,

    -- ** DataQualityJobInput
    DataQualityJobInput,
    dataQualityJobInput,
    dqjiEndpointInput,

    -- ** DataSource
    DataSource,
    dataSource,
    dsFileSystemDataSource,
    dsS3DataSource,

    -- ** DatasetDefinition
    DatasetDefinition,
    datasetDefinition,
    ddRedshiftDatasetDefinition,
    ddAthenaDatasetDefinition,
    ddLocalPath,
    ddInputMode,
    ddDataDistributionType,

    -- ** DebugHookConfig
    DebugHookConfig,
    debugHookConfig,
    dhcCollectionConfigurations,
    dhcHookParameters,
    dhcLocalPath,
    dhcS3OutputPath,

    -- ** DebugRuleConfiguration
    DebugRuleConfiguration,
    debugRuleConfiguration,
    drcRuleParameters,
    drcInstanceType,
    drcS3OutputPath,
    drcVolumeSizeInGB,
    drcLocalPath,
    drcRuleConfigurationName,
    drcRuleEvaluatorImage,

    -- ** DebugRuleEvaluationStatus
    DebugRuleEvaluationStatus,
    debugRuleEvaluationStatus,
    dresRuleConfigurationName,
    dresStatusDetails,
    dresRuleEvaluationStatus,
    dresLastModifiedTime,
    dresRuleEvaluationJobARN,

    -- ** DeployedImage
    DeployedImage,
    deployedImage,
    diSpecifiedImage,
    diResolvedImage,
    diResolutionTime,

    -- ** DeploymentConfig
    DeploymentConfig,
    deploymentConfig,
    dcAutoRollbackConfiguration,
    dcBlueGreenUpdatePolicy,

    -- ** DesiredWeightAndCapacity
    DesiredWeightAndCapacity,
    desiredWeightAndCapacity,
    dwacDesiredInstanceCount,
    dwacDesiredWeight,
    dwacVariantName,

    -- ** Device
    Device,
    device,
    dIotThingName,
    dDescription,
    dDeviceName,

    -- ** DeviceFleetSummary
    DeviceFleetSummary,
    deviceFleetSummary,
    dfsCreationTime,
    dfsLastModifiedTime,
    dfsDeviceFleetARN,
    dfsDeviceFleetName,

    -- ** DeviceStats
    DeviceStats,
    deviceStats,
    dsConnectedDeviceCount,
    dsRegisteredDeviceCount,

    -- ** DeviceSummary
    DeviceSummary,
    deviceSummary,
    dsDeviceFleetName,
    dsLatestHeartbeat,
    dsRegistrationTime,
    dsModels,
    dsIotThingName,
    dsDescription,
    dsDeviceName,
    dsDeviceARN,

    -- ** DomainDetails
    DomainDetails,
    domainDetails,
    ddsStatus,
    ddsCreationTime,
    ddsDomainId,
    ddsDomainARN,
    ddsDomainName,
    ddsLastModifiedTime,
    ddsURL,

    -- ** EdgeModel
    EdgeModel,
    edgeModel,
    emLatestInference,
    emLatestSampleTime,
    emModelName,
    emModelVersion,

    -- ** EdgeModelStat
    EdgeModelStat,
    edgeModelStat,
    eModelName,
    eModelVersion,
    eOfflineDeviceCount,
    eConnectedDeviceCount,
    eActiveDeviceCount,
    eSamplingDeviceCount,

    -- ** EdgeModelSummary
    EdgeModelSummary,
    edgeModelSummary,
    emsModelName,
    emsModelVersion,

    -- ** EdgeOutputConfig
    EdgeOutputConfig,
    edgeOutputConfig,
    eocKMSKeyId,
    eocS3OutputLocation,

    -- ** EdgePackagingJobSummary
    EdgePackagingJobSummary,
    edgePackagingJobSummary,
    epjsCreationTime,
    epjsCompilationJobName,
    epjsModelVersion,
    epjsLastModifiedTime,
    epjsModelName,
    epjsEdgePackagingJobARN,
    epjsEdgePackagingJobName,
    epjsEdgePackagingJobStatus,

    -- ** Endpoint
    Endpoint,
    endpoint,
    endProductionVariants,
    endMonitoringSchedules,
    endFailureReason,
    endTags,
    endDataCaptureConfig,
    endEndpointName,
    endEndpointARN,
    endEndpointConfigName,
    endEndpointStatus,
    endCreationTime,
    endLastModifiedTime,

    -- ** EndpointConfigSummary
    EndpointConfigSummary,
    endpointConfigSummary,
    ecsEndpointConfigName,
    ecsEndpointConfigARN,
    ecsCreationTime,

    -- ** EndpointInput
    EndpointInput,
    endpointInput,
    eiEndTimeOffset,
    eiInferenceAttribute,
    eiS3InputMode,
    eiS3DataDistributionType,
    eiProbabilityAttribute,
    eiProbabilityThresholdAttribute,
    eiFeaturesAttribute,
    eiStartTimeOffset,
    eiEndpointName,
    eiLocalPath,

    -- ** EndpointSummary
    EndpointSummary,
    endpointSummary,
    esEndpointName,
    esEndpointARN,
    esCreationTime,
    esLastModifiedTime,
    esEndpointStatus,

    -- ** Experiment
    Experiment,
    experiment,
    eExperimentARN,
    eCreationTime,
    eSource,
    eTags,
    eLastModifiedTime,
    eExperimentName,
    eDescription,
    eCreatedBy,
    eLastModifiedBy,
    eDisplayName,

    -- ** ExperimentConfig
    ExperimentConfig,
    experimentConfig,
    ecExperimentName,
    ecTrialComponentDisplayName,
    ecTrialName,

    -- ** ExperimentSource
    ExperimentSource,
    experimentSource,
    esSourceType,
    esSourceARN,

    -- ** ExperimentSummary
    ExperimentSummary,
    experimentSummary,
    expExperimentARN,
    expCreationTime,
    expExperimentSource,
    expLastModifiedTime,
    expExperimentName,
    expDisplayName,

    -- ** Explainability
    Explainability,
    explainability,
    eReport,

    -- ** FeatureDefinition
    FeatureDefinition,
    featureDefinition,
    fdFeatureType,
    fdFeatureName,

    -- ** FeatureGroup
    FeatureGroup,
    featureGroup,
    fgFeatureGroupStatus,
    fgOfflineStoreConfig,
    fgCreationTime,
    fgRoleARN,
    fgFeatureGroupARN,
    fgRecordIdentifierFeatureName,
    fgFeatureDefinitions,
    fgOfflineStoreStatus,
    fgEventTimeFeatureName,
    fgFeatureGroupName,
    fgFailureReason,
    fgTags,
    fgDescription,
    fgOnlineStoreConfig,

    -- ** FeatureGroupSummary
    FeatureGroupSummary,
    featureGroupSummary,
    fgsFeatureGroupStatus,
    fgsOfflineStoreStatus,
    fgsFeatureGroupName,
    fgsFeatureGroupARN,
    fgsCreationTime,

    -- ** FileSystemConfig
    FileSystemConfig,
    fileSystemConfig,
    fscDefaultGid,
    fscMountPath,
    fscDefaultUid,

    -- ** FileSystemDataSource
    FileSystemDataSource,
    fileSystemDataSource,
    fsdsFileSystemId,
    fsdsFileSystemAccessMode,
    fsdsFileSystemType,
    fsdsDirectoryPath,

    -- ** Filter
    Filter,
    filter',
    fOperator,
    fValue,
    fName,

    -- ** FinalAutoMLJobObjectiveMetric
    FinalAutoMLJobObjectiveMetric,
    finalAutoMLJobObjectiveMetric,
    famljomType,
    famljomMetricName,
    famljomValue,

    -- ** FinalHyperParameterTuningJobObjectiveMetric
    FinalHyperParameterTuningJobObjectiveMetric,
    finalHyperParameterTuningJobObjectiveMetric,
    fhptjomType,
    fhptjomMetricName,
    fhptjomValue,

    -- ** FlowDefinitionOutputConfig
    FlowDefinitionOutputConfig,
    flowDefinitionOutputConfig,
    fdocKMSKeyId,
    fdocS3OutputPath,

    -- ** FlowDefinitionSummary
    FlowDefinitionSummary,
    flowDefinitionSummary,
    fdsFailureReason,
    fdsFlowDefinitionName,
    fdsFlowDefinitionARN,
    fdsFlowDefinitionStatus,
    fdsCreationTime,

    -- ** GitConfig
    GitConfig,
    gitConfig,
    gcSecretARN,
    gcBranch,
    gcRepositoryURL,

    -- ** GitConfigForUpdate
    GitConfigForUpdate,
    gitConfigForUpdate,
    gcfuSecretARN,

    -- ** HumanLoopActivationConditionsConfig
    HumanLoopActivationConditionsConfig,
    humanLoopActivationConditionsConfig,
    hlaccHumanLoopActivationConditions,

    -- ** HumanLoopActivationConfig
    HumanLoopActivationConfig,
    humanLoopActivationConfig,
    hlacHumanLoopActivationConditionsConfig,

    -- ** HumanLoopConfig
    HumanLoopConfig,
    humanLoopConfig,
    hlcTaskKeywords,
    hlcTaskTimeLimitInSeconds,
    hlcTaskAvailabilityLifetimeInSeconds,
    hlcPublicWorkforceTaskPrice,
    hlcWorkteamARN,
    hlcHumanTaskUiARN,
    hlcTaskTitle,
    hlcTaskDescription,
    hlcTaskCount,

    -- ** HumanLoopRequestSource
    HumanLoopRequestSource,
    humanLoopRequestSource,
    hlrsAWSManagedHumanLoopRequestSource,

    -- ** HumanTaskConfig
    HumanTaskConfig,
    humanTaskConfig,
    htcTaskKeywords,
    htcTaskAvailabilityLifetimeInSeconds,
    htcMaxConcurrentTaskCount,
    htcPublicWorkforceTaskPrice,
    htcWorkteamARN,
    htcUiConfig,
    htcPreHumanTaskLambdaARN,
    htcTaskTitle,
    htcTaskDescription,
    htcNumberOfHumanWorkersPerDataObject,
    htcTaskTimeLimitInSeconds,
    htcAnnotationConsolidationConfig,

    -- ** HumanTaskUiSummary
    HumanTaskUiSummary,
    humanTaskUiSummary,
    htusHumanTaskUiName,
    htusHumanTaskUiARN,
    htusCreationTime,

    -- ** HyperParameterAlgorithmSpecification
    HyperParameterAlgorithmSpecification,
    hyperParameterAlgorithmSpecification,
    hpasTrainingImage,
    hpasMetricDefinitions,
    hpasAlgorithmName,
    hpasTrainingInputMode,

    -- ** HyperParameterSpecification
    HyperParameterSpecification,
    hyperParameterSpecification,
    hpsRange,
    hpsIsTunable,
    hpsDescription,
    hpsIsRequired,
    hpsDefaultValue,
    hpsName,
    hpsType,

    -- ** HyperParameterTrainingJobDefinition
    HyperParameterTrainingJobDefinition,
    hyperParameterTrainingJobDefinition,
    hptjdVPCConfig,
    hptjdInputDataConfig,
    hptjdEnableManagedSpotTraining,
    hptjdStaticHyperParameters,
    hptjdHyperParameterRanges,
    hptjdEnableNetworkIsolation,
    hptjdEnableInterContainerTrafficEncryption,
    hptjdCheckpointConfig,
    hptjdTuningObjective,
    hptjdDefinitionName,
    hptjdAlgorithmSpecification,
    hptjdRoleARN,
    hptjdOutputDataConfig,
    hptjdResourceConfig,
    hptjdStoppingCondition,

    -- ** HyperParameterTrainingJobSummary
    HyperParameterTrainingJobSummary,
    hyperParameterTrainingJobSummary,
    hptjsFinalHyperParameterTuningJobObjectiveMetric,
    hptjsTuningJobName,
    hptjsFailureReason,
    hptjsObjectiveStatus,
    hptjsTrainingJobDefinitionName,
    hptjsTrainingStartTime,
    hptjsTrainingEndTime,
    hptjsTrainingJobName,
    hptjsTrainingJobARN,
    hptjsCreationTime,
    hptjsTrainingJobStatus,
    hptjsTunedHyperParameters,

    -- ** HyperParameterTuningJobConfig
    HyperParameterTuningJobConfig,
    hyperParameterTuningJobConfig,
    hptjcHyperParameterTuningJobObjective,
    hptjcParameterRanges,
    hptjcTuningJobCompletionCriteria,
    hptjcTrainingJobEarlyStoppingType,
    hptjcStrategy,
    hptjcResourceLimits,

    -- ** HyperParameterTuningJobObjective
    HyperParameterTuningJobObjective,
    hyperParameterTuningJobObjective,
    hptjoType,
    hptjoMetricName,

    -- ** HyperParameterTuningJobSummary
    HyperParameterTuningJobSummary,
    hyperParameterTuningJobSummary,
    hResourceLimits,
    hHyperParameterTuningEndTime,
    hLastModifiedTime,
    hHyperParameterTuningJobName,
    hHyperParameterTuningJobARN,
    hHyperParameterTuningJobStatus,
    hStrategy,
    hCreationTime,
    hTrainingJobStatusCounters,
    hObjectiveStatusCounters,

    -- ** HyperParameterTuningJobWarmStartConfig
    HyperParameterTuningJobWarmStartConfig,
    hyperParameterTuningJobWarmStartConfig,
    hptjwscParentHyperParameterTuningJobs,
    hptjwscWarmStartType,

    -- ** Image
    Image,
    image,
    iFailureReason,
    iDescription,
    iDisplayName,
    iCreationTime,
    iImageARN,
    iImageName,
    iImageStatus,
    iLastModifiedTime,

    -- ** ImageConfig
    ImageConfig,
    imageConfig,
    icRepositoryAccessMode,

    -- ** ImageVersion
    ImageVersion,
    imageVersion,
    ivFailureReason,
    ivCreationTime,
    ivImageARN,
    ivImageVersionARN,
    ivImageVersionStatus,
    ivLastModifiedTime,
    ivVersion,

    -- ** InferenceExecutionConfig
    InferenceExecutionConfig,
    inferenceExecutionConfig,
    iecMode,

    -- ** InferenceSpecification
    InferenceSpecification,
    inferenceSpecification,
    isSupportedTransformInstanceTypes,
    isSupportedRealtimeInferenceInstanceTypes,
    isContainers,
    isSupportedContentTypes,
    isSupportedResponseMIMETypes,

    -- ** InputConfig
    InputConfig,
    inputConfig,
    icFrameworkVersion,
    icS3URI,
    icDataInputConfig,
    icFramework,

    -- ** IntegerParameterRange
    IntegerParameterRange,
    integerParameterRange,
    iprScalingType,
    iprName,
    iprMinValue,
    iprMaxValue,

    -- ** IntegerParameterRangeSpecification
    IntegerParameterRangeSpecification,
    integerParameterRangeSpecification,
    iprsMinValue,
    iprsMaxValue,

    -- ** JupyterServerAppSettings
    JupyterServerAppSettings,
    jupyterServerAppSettings,
    jsasDefaultResourceSpec,

    -- ** KernelGatewayAppSettings
    KernelGatewayAppSettings,
    kernelGatewayAppSettings,
    kgasCustomImages,
    kgasDefaultResourceSpec,

    -- ** KernelGatewayImageConfig
    KernelGatewayImageConfig,
    kernelGatewayImageConfig,
    kgicFileSystemConfig,
    kgicKernelSpecs,

    -- ** KernelSpec
    KernelSpec,
    kernelSpec,
    ksDisplayName,
    ksName,

    -- ** LabelCounters
    LabelCounters,
    labelCounters,
    lcUnlabeled,
    lcFailedNonRetryableError,
    lcMachineLabeled,
    lcHumanLabeled,
    lcTotalLabeled,

    -- ** LabelCountersForWorkteam
    LabelCountersForWorkteam,
    labelCountersForWorkteam,
    lcfwPendingHuman,
    lcfwTotal,
    lcfwHumanLabeled,

    -- ** LabelingJobAlgorithmsConfig
    LabelingJobAlgorithmsConfig,
    labelingJobAlgorithmsConfig,
    ljacInitialActiveLearningModelARN,
    ljacLabelingJobResourceConfig,
    ljacLabelingJobAlgorithmSpecificationARN,

    -- ** LabelingJobDataAttributes
    LabelingJobDataAttributes,
    labelingJobDataAttributes,
    ljdaContentClassifiers,

    -- ** LabelingJobDataSource
    LabelingJobDataSource,
    labelingJobDataSource,
    ljdsSNSDataSource,
    ljdsS3DataSource,

    -- ** LabelingJobForWorkteamSummary
    LabelingJobForWorkteamSummary,
    labelingJobForWorkteamSummary,
    ljfwsLabelCounters,
    ljfwsLabelingJobName,
    ljfwsNumberOfHumanWorkersPerDataObject,
    ljfwsJobReferenceCode,
    ljfwsWorkRequesterAccountId,
    ljfwsCreationTime,

    -- ** LabelingJobInputConfig
    LabelingJobInputConfig,
    labelingJobInputConfig,
    ljicDataAttributes,
    ljicDataSource,

    -- ** LabelingJobOutput
    LabelingJobOutput,
    labelingJobOutput,
    ljoFinalActiveLearningModelARN,
    ljoOutputDatasetS3URI,

    -- ** LabelingJobOutputConfig
    LabelingJobOutputConfig,
    labelingJobOutputConfig,
    ljocKMSKeyId,
    ljocSNSTopicARN,
    ljocS3OutputPath,

    -- ** LabelingJobResourceConfig
    LabelingJobResourceConfig,
    labelingJobResourceConfig,
    ljrcVolumeKMSKeyId,

    -- ** LabelingJobS3DataSource
    LabelingJobS3DataSource,
    labelingJobS3DataSource,
    ljsdsManifestS3URI,

    -- ** LabelingJobSNSDataSource
    LabelingJobSNSDataSource,
    labelingJobSNSDataSource,
    ljsdsSNSTopicARN,

    -- ** LabelingJobStoppingConditions
    LabelingJobStoppingConditions,
    labelingJobStoppingConditions,
    ljscMaxPercentageOfInputDatasetLabeled,
    ljscMaxHumanLabeledObjectCount,

    -- ** LabelingJobSummary
    LabelingJobSummary,
    labelingJobSummary,
    ljsAnnotationConsolidationLambdaARN,
    ljsInputConfig,
    ljsFailureReason,
    ljsLabelingJobOutput,
    ljsLabelingJobName,
    ljsLabelingJobARN,
    ljsCreationTime,
    ljsLastModifiedTime,
    ljsLabelingJobStatus,
    ljsLabelCounters,
    ljsWorkteamARN,
    ljsPreHumanTaskLambdaARN,

    -- ** MemberDefinition
    MemberDefinition,
    memberDefinition,
    mdOidcMemberDefinition,
    mdCognitoMemberDefinition,

    -- ** MetadataProperties
    MetadataProperties,
    metadataProperties,
    mpGeneratedBy,
    mpCommitId,
    mpProjectId,
    mpRepository,

    -- ** MetricData
    MetricData,
    metricData,
    mdMetricName,
    mdTimestamp,
    mdValue,

    -- ** MetricDefinition
    MetricDefinition,
    metricDefinition,
    mdName,
    mdRegex,

    -- ** MetricsSource
    MetricsSource,
    metricsSource,
    msContentDigest,
    msContentType,
    msS3URI,

    -- ** ModelArtifacts
    ModelArtifacts,
    modelArtifacts,
    maS3ModelArtifacts,

    -- ** ModelBiasAppSpecification
    ModelBiasAppSpecification,
    modelBiasAppSpecification,
    mbasEnvironment,
    mbasImageURI,
    mbasConfigURI,

    -- ** ModelBiasBaselineConfig
    ModelBiasBaselineConfig,
    modelBiasBaselineConfig,
    mbbcConstraintsResource,
    mbbcBaseliningJobName,

    -- ** ModelBiasJobInput
    ModelBiasJobInput,
    modelBiasJobInput,
    mbjiEndpointInput,
    mbjiGroundTruthS3Input,

    -- ** ModelClientConfig
    ModelClientConfig,
    modelClientConfig,
    mccInvocationsTimeoutInSeconds,
    mccInvocationsMaxRetries,

    -- ** ModelDataQuality
    ModelDataQuality,
    modelDataQuality,
    mdqConstraints,
    mdqStatistics,

    -- ** ModelDigests
    ModelDigests,
    modelDigests,
    mdArtifactDigest,

    -- ** ModelExplainabilityAppSpecification
    ModelExplainabilityAppSpecification,
    modelExplainabilityAppSpecification,
    measEnvironment,
    measImageURI,
    measConfigURI,

    -- ** ModelExplainabilityBaselineConfig
    ModelExplainabilityBaselineConfig,
    modelExplainabilityBaselineConfig,
    mebcConstraintsResource,
    mebcBaseliningJobName,

    -- ** ModelExplainabilityJobInput
    ModelExplainabilityJobInput,
    modelExplainabilityJobInput,
    mejiEndpointInput,

    -- ** ModelMetrics
    ModelMetrics,
    modelMetrics,
    mmBias,
    mmExplainability,
    mmModelDataQuality,
    mmModelQuality,

    -- ** ModelPackage
    ModelPackage,
    modelPackage,
    mpSourceAlgorithmSpecification,
    mpModelPackageVersion,
    mpMetadataProperties,
    mpCreationTime,
    mpValidationSpecification,
    mpModelPackageStatusDetails,
    mpModelMetrics,
    mpCertifyForMarketplace,
    mpModelPackageName,
    mpModelApprovalStatus,
    mpApprovalDescription,
    mpTags,
    mpModelPackageStatus,
    mpLastModifiedTime,
    mpInferenceSpecification,
    mpModelPackageDescription,
    mpCreatedBy,
    mpModelPackageARN,
    mpLastModifiedBy,
    mpModelPackageGroupName,

    -- ** ModelPackageContainerDefinition
    ModelPackageContainerDefinition,
    modelPackageContainerDefinition,
    mpcdImageDigest,
    mpcdModelDataURL,
    mpcdContainerHostname,
    mpcdProductId,
    mpcdImage,

    -- ** ModelPackageGroup
    ModelPackageGroup,
    modelPackageGroup,
    mpgModelPackageGroupARN,
    mpgCreationTime,
    mpgModelPackageGroupDescription,
    mpgTags,
    mpgModelPackageGroupStatus,
    mpgCreatedBy,
    mpgModelPackageGroupName,

    -- ** ModelPackageGroupSummary
    ModelPackageGroupSummary,
    modelPackageGroupSummary,
    mpgsModelPackageGroupDescription,
    mpgsModelPackageGroupName,
    mpgsModelPackageGroupARN,
    mpgsCreationTime,
    mpgsModelPackageGroupStatus,

    -- ** ModelPackageStatusDetails
    ModelPackageStatusDetails,
    modelPackageStatusDetails,
    mpsdImageScanStatuses,
    mpsdValidationStatuses,

    -- ** ModelPackageStatusItem
    ModelPackageStatusItem,
    modelPackageStatusItem,
    mpsiFailureReason,
    mpsiName,
    mpsiStatus,

    -- ** ModelPackageSummary
    ModelPackageSummary,
    modelPackageSummary,
    mpsModelPackageVersion,
    mpsModelApprovalStatus,
    mpsModelPackageDescription,
    mpsModelPackageGroupName,
    mpsModelPackageName,
    mpsModelPackageARN,
    mpsCreationTime,
    mpsModelPackageStatus,

    -- ** ModelPackageValidationProfile
    ModelPackageValidationProfile,
    modelPackageValidationProfile,
    mpvpProfileName,
    mpvpTransformJobDefinition,

    -- ** ModelPackageValidationSpecification
    ModelPackageValidationSpecification,
    modelPackageValidationSpecification,
    mpvsValidationRole,
    mpvsValidationProfiles,

    -- ** ModelQuality
    ModelQuality,
    modelQuality,
    mqConstraints,
    mqStatistics,

    -- ** ModelQualityAppSpecification
    ModelQualityAppSpecification,
    modelQualityAppSpecification,
    mqasContainerArguments,
    mqasContainerEntrypoint,
    mqasPostAnalyticsProcessorSourceURI,
    mqasEnvironment,
    mqasRecordPreprocessorSourceURI,
    mqasProblemType,
    mqasImageURI,

    -- ** ModelQualityBaselineConfig
    ModelQualityBaselineConfig,
    modelQualityBaselineConfig,
    mqbcConstraintsResource,
    mqbcBaseliningJobName,

    -- ** ModelQualityJobInput
    ModelQualityJobInput,
    modelQualityJobInput,
    mqjiEndpointInput,
    mqjiGroundTruthS3Input,

    -- ** ModelStepMetadata
    ModelStepMetadata,
    modelStepMetadata,
    msmARN,

    -- ** ModelSummary
    ModelSummary,
    modelSummary,
    msModelName,
    msModelARN,
    msCreationTime,

    -- ** MonitoringAppSpecification
    MonitoringAppSpecification,
    monitoringAppSpecification,
    masContainerArguments,
    masContainerEntrypoint,
    masPostAnalyticsProcessorSourceURI,
    masRecordPreprocessorSourceURI,
    masImageURI,

    -- ** MonitoringBaselineConfig
    MonitoringBaselineConfig,
    monitoringBaselineConfig,
    mbcStatisticsResource,
    mbcConstraintsResource,
    mbcBaseliningJobName,

    -- ** MonitoringClusterConfig
    MonitoringClusterConfig,
    monitoringClusterConfig,
    mccVolumeKMSKeyId,
    mccInstanceCount,
    mccInstanceType,
    mccVolumeSizeInGB,

    -- ** MonitoringConstraintsResource
    MonitoringConstraintsResource,
    monitoringConstraintsResource,
    mcrS3URI,

    -- ** MonitoringExecutionSummary
    MonitoringExecutionSummary,
    monitoringExecutionSummary,
    mesEndpointName,
    mesMonitoringType,
    mesMonitoringJobDefinitionName,
    mesFailureReason,
    mesProcessingJobARN,
    mesMonitoringScheduleName,
    mesScheduledTime,
    mesCreationTime,
    mesLastModifiedTime,
    mesMonitoringExecutionStatus,

    -- ** MonitoringGroundTruthS3Input
    MonitoringGroundTruthS3Input,
    monitoringGroundTruthS3Input,
    mgtsiS3URI,

    -- ** MonitoringInput
    MonitoringInput,
    monitoringInput,
    miEndpointInput,

    -- ** MonitoringJobDefinition
    MonitoringJobDefinition,
    monitoringJobDefinition,
    mjdNetworkConfig,
    mjdEnvironment,
    mjdBaselineConfig,
    mjdStoppingCondition,
    mjdMonitoringInputs,
    mjdMonitoringOutputConfig,
    mjdMonitoringResources,
    mjdMonitoringAppSpecification,
    mjdRoleARN,

    -- ** MonitoringJobDefinitionSummary
    MonitoringJobDefinitionSummary,
    monitoringJobDefinitionSummary,
    mjdsMonitoringJobDefinitionName,
    mjdsMonitoringJobDefinitionARN,
    mjdsCreationTime,
    mjdsEndpointName,

    -- ** MonitoringNetworkConfig
    MonitoringNetworkConfig,
    monitoringNetworkConfig,
    mncVPCConfig,
    mncEnableNetworkIsolation,
    mncEnableInterContainerTrafficEncryption,

    -- ** MonitoringOutput
    MonitoringOutput,
    monitoringOutput,
    moS3Output,

    -- ** MonitoringOutputConfig
    MonitoringOutputConfig,
    monitoringOutputConfig,
    mocKMSKeyId,
    mocMonitoringOutputs,

    -- ** MonitoringResources
    MonitoringResources,
    monitoringResources,
    mrClusterConfig,

    -- ** MonitoringS3Output
    MonitoringS3Output,
    monitoringS3Output,
    msoS3UploadMode,
    msoS3URI,
    msoLocalPath,

    -- ** MonitoringSchedule
    MonitoringSchedule,
    monitoringSchedule,
    mEndpointName,
    mCreationTime,
    mMonitoringType,
    mMonitoringScheduleName,
    mMonitoringScheduleStatus,
    mFailureReason,
    mMonitoringScheduleARN,
    mTags,
    mLastModifiedTime,
    mMonitoringScheduleConfig,
    mLastMonitoringExecutionSummary,

    -- ** MonitoringScheduleConfig
    MonitoringScheduleConfig,
    monitoringScheduleConfig,
    mscScheduleConfig,
    mscMonitoringType,
    mscMonitoringJobDefinitionName,
    mscMonitoringJobDefinition,

    -- ** MonitoringScheduleSummary
    MonitoringScheduleSummary,
    monitoringScheduleSummary,
    mssEndpointName,
    mssMonitoringType,
    mssMonitoringJobDefinitionName,
    mssMonitoringScheduleName,
    mssMonitoringScheduleARN,
    mssCreationTime,
    mssLastModifiedTime,
    mssMonitoringScheduleStatus,

    -- ** MonitoringStatisticsResource
    MonitoringStatisticsResource,
    monitoringStatisticsResource,
    msrS3URI,

    -- ** MonitoringStoppingCondition
    MonitoringStoppingCondition,
    monitoringStoppingCondition,
    mscMaxRuntimeInSeconds,

    -- ** MultiModelConfig
    MultiModelConfig,
    multiModelConfig,
    mmcModelCacheSetting,

    -- ** NestedFilters
    NestedFilters,
    nestedFilters,
    nfNestedPropertyName,
    nfFilters,

    -- ** NetworkConfig
    NetworkConfig,
    networkConfig,
    ncVPCConfig,
    ncEnableNetworkIsolation,
    ncEnableInterContainerTrafficEncryption,

    -- ** NotebookInstanceLifecycleConfigSummary
    NotebookInstanceLifecycleConfigSummary,
    notebookInstanceLifecycleConfigSummary,
    nilcsCreationTime,
    nilcsLastModifiedTime,
    nilcsNotebookInstanceLifecycleConfigName,
    nilcsNotebookInstanceLifecycleConfigARN,

    -- ** NotebookInstanceLifecycleHook
    NotebookInstanceLifecycleHook,
    notebookInstanceLifecycleHook,
    nilhContent,

    -- ** NotebookInstanceSummary
    NotebookInstanceSummary,
    notebookInstanceSummary,
    nisCreationTime,
    nisDefaultCodeRepository,
    nisInstanceType,
    nisNotebookInstanceLifecycleConfigName,
    nisAdditionalCodeRepositories,
    nisNotebookInstanceStatus,
    nisLastModifiedTime,
    nisURL,
    nisNotebookInstanceName,
    nisNotebookInstanceARN,

    -- ** NotificationConfiguration
    NotificationConfiguration,
    notificationConfiguration,
    ncNotificationTopicARN,

    -- ** ObjectiveStatusCounters
    ObjectiveStatusCounters,
    objectiveStatusCounters,
    oscSucceeded,
    oscPending,
    oscFailed,

    -- ** OfflineStoreConfig
    OfflineStoreConfig,
    offlineStoreConfig,
    oscDisableGlueTableCreation,
    oscDataCatalogConfig,
    oscS3StorageConfig,

    -- ** OfflineStoreStatus
    OfflineStoreStatus,
    offlineStoreStatus,
    ossBlockedReason,
    ossStatus,

    -- ** OidcConfig
    OidcConfig,
    oidcConfig,
    ocClientId,
    ocClientSecret,
    ocIssuer,
    ocAuthorizationEndpoint,
    ocTokenEndpoint,
    ocUserInfoEndpoint,
    ocLogoutEndpoint,
    ocJwksURI,

    -- ** OidcConfigForResponse
    OidcConfigForResponse,
    oidcConfigForResponse,
    ocfrClientId,
    ocfrTokenEndpoint,
    ocfrAuthorizationEndpoint,
    ocfrUserInfoEndpoint,
    ocfrLogoutEndpoint,
    ocfrIssuer,
    ocfrJwksURI,

    -- ** OidcMemberDefinition
    OidcMemberDefinition,
    oidcMemberDefinition,
    omdGroups,

    -- ** OnlineStoreConfig
    OnlineStoreConfig,
    onlineStoreConfig,
    oscSecurityConfig,
    oscEnableOnlineStore,

    -- ** OnlineStoreSecurityConfig
    OnlineStoreSecurityConfig,
    onlineStoreSecurityConfig,
    osscKMSKeyId,

    -- ** OutputConfig
    OutputConfig,
    outputConfig,
    ocCompilerOptions,
    ocKMSKeyId,
    ocTargetDevice,
    ocTargetPlatform,
    ocS3OutputLocation,

    -- ** OutputDataConfig
    OutputDataConfig,
    outputDataConfig,
    odcKMSKeyId,
    odcS3OutputPath,

    -- ** Parameter
    Parameter,
    parameter,
    pName,
    pValue,

    -- ** ParameterRange
    ParameterRange,
    parameterRange,
    prContinuousParameterRangeSpecification,
    prIntegerParameterRangeSpecification,
    prCategoricalParameterRangeSpecification,

    -- ** ParameterRanges
    ParameterRanges,
    parameterRanges,
    prIntegerParameterRanges,
    prCategoricalParameterRanges,
    prContinuousParameterRanges,

    -- ** Parent
    Parent,
    parent,
    pExperimentName,
    pTrialName,

    -- ** ParentHyperParameterTuningJob
    ParentHyperParameterTuningJob,
    parentHyperParameterTuningJob,
    phptjHyperParameterTuningJobName,

    -- ** Pipeline
    Pipeline,
    pipeline,
    pipPipelineARN,
    pipPipelineDescription,
    pipCreationTime,
    pipRoleARN,
    pipLastRunTime,
    pipPipelineDisplayName,
    pipTags,
    pipLastModifiedTime,
    pipPipelineStatus,
    pipCreatedBy,
    pipLastModifiedBy,
    pipPipelineName,

    -- ** PipelineExecution
    PipelineExecution,
    pipelineExecution,
    pePipelineARN,
    peCreationTime,
    pePipelineExecutionDescription,
    pePipelineParameters,
    pePipelineExecutionDisplayName,
    pePipelineExecutionStatus,
    peLastModifiedTime,
    peCreatedBy,
    peLastModifiedBy,
    pePipelineExecutionARN,

    -- ** PipelineExecutionStep
    PipelineExecutionStep,
    pipelineExecutionStep,
    pStartTime,
    pMetadata,
    pEndTime,
    pFailureReason,
    pStepStatus,
    pCacheHitResult,
    pStepName,

    -- ** PipelineExecutionStepMetadata
    PipelineExecutionStepMetadata,
    pipelineExecutionStepMetadata,
    pesmModel,
    pesmProcessingJob,
    pesmCondition,
    pesmTrainingJob,
    pesmRegisterModel,
    pesmTransformJob,

    -- ** PipelineExecutionSummary
    PipelineExecutionSummary,
    pipelineExecutionSummary,
    pesPipelineExecutionDescription,
    pesStartTime,
    pesPipelineExecutionDisplayName,
    pesPipelineExecutionStatus,
    pesPipelineExecutionARN,

    -- ** PipelineSummary
    PipelineSummary,
    pipelineSummary,
    pPipelineARN,
    pPipelineDescription,
    pCreationTime,
    pRoleARN,
    pLastExecutionTime,
    pPipelineDisplayName,
    pLastModifiedTime,
    pPipelineName,

    -- ** ProcessingClusterConfig
    ProcessingClusterConfig,
    processingClusterConfig,
    pccVolumeKMSKeyId,
    pccInstanceCount,
    pccInstanceType,
    pccVolumeSizeInGB,

    -- ** ProcessingFeatureStoreOutput
    ProcessingFeatureStoreOutput,
    processingFeatureStoreOutput,
    pfsoFeatureGroupName,

    -- ** ProcessingInput
    ProcessingInput,
    processingInput,
    piDatasetDefinition,
    piAppManaged,
    piS3Input,
    piInputName,

    -- ** ProcessingJob
    ProcessingJob,
    processingJob,
    pjNetworkConfig,
    pjCreationTime,
    pjAppSpecification,
    pjProcessingEndTime,
    pjRoleARN,
    pjProcessingOutputConfig,
    pjExitMessage,
    pjExperimentConfig,
    pjProcessingJobStatus,
    pjEnvironment,
    pjAutoMLJobARN,
    pjFailureReason,
    pjMonitoringScheduleARN,
    pjProcessingJobARN,
    pjTags,
    pjLastModifiedTime,
    pjProcessingInputs,
    pjProcessingStartTime,
    pjStoppingCondition,
    pjProcessingJobName,
    pjProcessingResources,
    pjTrainingJobARN,

    -- ** ProcessingJobStepMetadata
    ProcessingJobStepMetadata,
    processingJobStepMetadata,
    pjsmARN,

    -- ** ProcessingJobSummary
    ProcessingJobSummary,
    processingJobSummary,
    pjsProcessingEndTime,
    pjsExitMessage,
    pjsFailureReason,
    pjsLastModifiedTime,
    pjsProcessingJobName,
    pjsProcessingJobARN,
    pjsCreationTime,
    pjsProcessingJobStatus,

    -- ** ProcessingOutput
    ProcessingOutput,
    processingOutput,
    poS3Output,
    poFeatureStoreOutput,
    poAppManaged,
    poOutputName,

    -- ** ProcessingOutputConfig
    ProcessingOutputConfig,
    processingOutputConfig,
    pocKMSKeyId,
    pocOutputs,

    -- ** ProcessingResources
    ProcessingResources,
    processingResources,
    prClusterConfig,

    -- ** ProcessingS3Input
    ProcessingS3Input,
    processingS3Input,
    psiS3CompressionType,
    psiS3InputMode,
    psiS3DataDistributionType,
    psiLocalPath,
    psiS3URI,
    psiS3DataType,

    -- ** ProcessingS3Output
    ProcessingS3Output,
    processingS3Output,
    psoS3URI,
    psoLocalPath,
    psoS3UploadMode,

    -- ** ProcessingStoppingCondition
    ProcessingStoppingCondition,
    processingStoppingCondition,
    pscMaxRuntimeInSeconds,

    -- ** ProductionVariant
    ProductionVariant,
    productionVariant,
    pvInitialVariantWeight,
    pvAcceleratorType,
    pvCoreDumpConfig,
    pvVariantName,
    pvModelName,
    pvInitialInstanceCount,
    pvInstanceType,

    -- ** ProductionVariantCoreDumpConfig
    ProductionVariantCoreDumpConfig,
    productionVariantCoreDumpConfig,
    pvcdcKMSKeyId,
    pvcdcDestinationS3URI,

    -- ** ProductionVariantSummary
    ProductionVariantSummary,
    productionVariantSummary,
    pvsDeployedImages,
    pvsDesiredInstanceCount,
    pvsCurrentWeight,
    pvsCurrentInstanceCount,
    pvsDesiredWeight,
    pvsVariantName,

    -- ** ProfilerConfig
    ProfilerConfig,
    profilerConfig,
    pcProfilingParameters,
    pcProfilingIntervalInMilliseconds,
    pcS3OutputPath,

    -- ** ProfilerConfigForUpdate
    ProfilerConfigForUpdate,
    profilerConfigForUpdate,
    pcfuS3OutputPath,
    pcfuProfilingParameters,
    pcfuProfilingIntervalInMilliseconds,
    pcfuDisableProfiler,

    -- ** ProfilerRuleConfiguration
    ProfilerRuleConfiguration,
    profilerRuleConfiguration,
    prcRuleParameters,
    prcInstanceType,
    prcS3OutputPath,
    prcVolumeSizeInGB,
    prcLocalPath,
    prcRuleConfigurationName,
    prcRuleEvaluatorImage,

    -- ** ProfilerRuleEvaluationStatus
    ProfilerRuleEvaluationStatus,
    profilerRuleEvaluationStatus,
    presRuleConfigurationName,
    presStatusDetails,
    presRuleEvaluationStatus,
    presLastModifiedTime,
    presRuleEvaluationJobARN,

    -- ** ProjectSummary
    ProjectSummary,
    projectSummary,
    psProjectDescription,
    psProjectName,
    psProjectARN,
    psProjectId,
    psCreationTime,
    psProjectStatus,

    -- ** PropertyNameQuery
    PropertyNameQuery,
    propertyNameQuery,
    pnqPropertyNameHint,

    -- ** PropertyNameSuggestion
    PropertyNameSuggestion,
    propertyNameSuggestion,
    pnsPropertyName,

    -- ** ProvisioningParameter
    ProvisioningParameter,
    provisioningParameter,
    ppKey,
    ppValue,

    -- ** PublicWorkforceTaskPrice
    PublicWorkforceTaskPrice,
    publicWorkforceTaskPrice,
    pwtpAmountInUsd,

    -- ** RedshiftDatasetDefinition
    RedshiftDatasetDefinition,
    redshiftDatasetDefinition,
    rddOutputCompression,
    rddKMSKeyId,
    rddClusterId,
    rddDatabase,
    rddDBUser,
    rddQueryString,
    rddClusterRoleARN,
    rddOutputS3URI,
    rddOutputFormat,

    -- ** RegisterModelStepMetadata
    RegisterModelStepMetadata,
    registerModelStepMetadata,
    rmsmARN,

    -- ** RenderableTask
    RenderableTask,
    renderableTask,
    rtInput,

    -- ** RenderingError
    RenderingError,
    renderingError,
    reCode,
    reMessage,

    -- ** ResolvedAttributes
    ResolvedAttributes,
    resolvedAttributes,
    raCompletionCriteria,
    raAutoMLJobObjective,
    raProblemType,

    -- ** ResourceConfig
    ResourceConfig,
    resourceConfig,
    rcVolumeKMSKeyId,
    rcInstanceType,
    rcInstanceCount,
    rcVolumeSizeInGB,

    -- ** ResourceLimits
    ResourceLimits,
    resourceLimits,
    rlMaxNumberOfTrainingJobs,
    rlMaxParallelTrainingJobs,

    -- ** ResourceSpec
    ResourceSpec,
    resourceSpec,
    rsInstanceType,
    rsSageMakerImageARN,
    rsSageMakerImageVersionARN,

    -- ** RetentionPolicy
    RetentionPolicy,
    retentionPolicy,
    rpHomeEfsFileSystem,

    -- ** S3DataSource
    S3DataSource,
    s3DataSource,
    sdsS3DataDistributionType,
    sdsAttributeNames,
    sdsS3DataType,
    sdsS3URI,

    -- ** S3StorageConfig
    S3StorageConfig,
    s3StorageConfig,
    sscKMSKeyId,
    sscResolvedOutputS3URI,
    sscS3URI,

    -- ** ScheduleConfig
    ScheduleConfig,
    scheduleConfig,
    scScheduleExpression,

    -- ** SearchExpression
    SearchExpression,
    searchExpression,
    seNestedFilters,
    seOperator,
    seFilters,
    seSubExpressions,

    -- ** SearchRecord
    SearchRecord,
    searchRecord,
    srExperiment,
    srFeatureGroup,
    srModelPackage,
    srTrainingJob,
    srEndpoint,
    srPipelineExecution,
    srTrialComponent,
    srModelPackageGroup,
    srPipeline,
    srTrial,

    -- ** SecondaryStatusTransition
    SecondaryStatusTransition,
    secondaryStatusTransition,
    sstStatusMessage,
    sstEndTime,
    sstStatus,
    sstStartTime,

    -- ** ServiceCatalogProvisionedProductDetails
    ServiceCatalogProvisionedProductDetails,
    serviceCatalogProvisionedProductDetails,
    scppdProvisionedProductStatusMessage,
    scppdProvisionedProductId,

    -- ** ServiceCatalogProvisioningDetails
    ServiceCatalogProvisioningDetails,
    serviceCatalogProvisioningDetails,
    scpdProvisioningParameters,
    scpdPathId,
    scpdProductId,
    scpdProvisioningArtifactId,

    -- ** SharingSettings
    SharingSettings,
    sharingSettings,
    ssS3KMSKeyId,
    ssS3OutputPath,
    ssNotebookOutputOption,

    -- ** ShuffleConfig
    ShuffleConfig,
    shuffleConfig,
    scSeed,

    -- ** SourceAlgorithm
    SourceAlgorithm,
    sourceAlgorithm,
    saModelDataURL,
    saAlgorithmName,

    -- ** SourceAlgorithmSpecification
    SourceAlgorithmSpecification,
    sourceAlgorithmSpecification,
    sasSourceAlgorithms,

    -- ** SourceIPConfig
    SourceIPConfig,
    sourceIPConfig,
    sicCidrs,

    -- ** StoppingCondition
    StoppingCondition,
    stoppingCondition,
    scMaxRuntimeInSeconds,
    scMaxWaitTimeInSeconds,

    -- ** SubscribedWorkteam
    SubscribedWorkteam,
    subscribedWorkteam,
    swMarketplaceTitle,
    swListingId,
    swMarketplaceDescription,
    swSellerName,
    swWorkteamARN,

    -- ** SuggestionQuery
    SuggestionQuery,
    suggestionQuery,
    sqPropertyNameQuery,

    -- ** Tag
    Tag,
    tag,
    tagKey,
    tagValue,

    -- ** TargetPlatform
    TargetPlatform,
    targetPlatform,
    tpAccelerator,
    tpOS,
    tpArch,

    -- ** TensorBoardAppSettings
    TensorBoardAppSettings,
    tensorBoardAppSettings,
    tbasDefaultResourceSpec,

    -- ** TensorBoardOutputConfig
    TensorBoardOutputConfig,
    tensorBoardOutputConfig,
    tbocLocalPath,
    tbocS3OutputPath,

    -- ** TrafficRoutingConfig
    TrafficRoutingConfig,
    trafficRoutingConfig,
    trcCanarySize,
    trcType,
    trcWaitIntervalInSeconds,

    -- ** TrainingJob
    TrainingJob,
    trainingJob,
    tjVPCConfig,
    tjDebugRuleConfigurations,
    tjInputDataConfig,
    tjHyperParameters,
    tjEnableManagedSpotTraining,
    tjCreationTime,
    tjLabelingJobARN,
    tjRoleARN,
    tjTrainingTimeInSeconds,
    tjExperimentConfig,
    tjEnableNetworkIsolation,
    tjEnableInterContainerTrafficEncryption,
    tjTrainingJobName,
    tjCheckpointConfig,
    tjOutputDataConfig,
    tjTuningJobARN,
    tjModelArtifacts,
    tjSecondaryStatusTransitions,
    tjFinalMetricDataList,
    tjAutoMLJobARN,
    tjFailureReason,
    tjTags,
    tjSecondaryStatus,
    tjLastModifiedTime,
    tjTensorBoardOutputConfig,
    tjStoppingCondition,
    tjDebugRuleEvaluationStatuses,
    tjTrainingJobStatus,
    tjDebugHookConfig,
    tjBillableTimeInSeconds,
    tjResourceConfig,
    tjTrainingStartTime,
    tjTrainingEndTime,
    tjAlgorithmSpecification,
    tjTrainingJobARN,

    -- ** TrainingJobDefinition
    TrainingJobDefinition,
    trainingJobDefinition,
    tjdHyperParameters,
    tjdTrainingInputMode,
    tjdInputDataConfig,
    tjdOutputDataConfig,
    tjdResourceConfig,
    tjdStoppingCondition,

    -- ** TrainingJobStatusCounters
    TrainingJobStatusCounters,
    trainingJobStatusCounters,
    tjscStopped,
    tjscCompleted,
    tjscNonRetryableError,
    tjscInProgress,
    tjscRetryableError,

    -- ** TrainingJobStepMetadata
    TrainingJobStepMetadata,
    trainingJobStepMetadata,
    tjsmARN,

    -- ** TrainingJobSummary
    TrainingJobSummary,
    trainingJobSummary,
    traLastModifiedTime,
    traTrainingEndTime,
    traTrainingJobName,
    traTrainingJobARN,
    traCreationTime,
    traTrainingJobStatus,

    -- ** TrainingSpecification
    TrainingSpecification,
    trainingSpecification,
    tsSupportedHyperParameters,
    tsMetricDefinitions,
    tsTrainingImageDigest,
    tsSupportsDistributedTraining,
    tsSupportedTuningJobObjectiveMetrics,
    tsTrainingImage,
    tsSupportedTrainingInstanceTypes,
    tsTrainingChannels,

    -- ** TransformDataSource
    TransformDataSource,
    transformDataSource,
    tdsS3DataSource,

    -- ** TransformInput
    TransformInput,
    transformInput,
    tiContentType,
    tiSplitType,
    tiCompressionType,
    tiDataSource,

    -- ** TransformJob
    TransformJob,
    transformJob,
    tCreationTime,
    tLabelingJobARN,
    tTransformJobName,
    tTransformStartTime,
    tTransformOutput,
    tExperimentConfig,
    tMaxConcurrentTransforms,
    tEnvironment,
    tMaxPayloadInMB,
    tBatchStrategy,
    tTransformJobStatus,
    tAutoMLJobARN,
    tFailureReason,
    tModelClientConfig,
    tTags,
    tTransformEndTime,
    tTransformJobARN,
    tDataProcessing,
    tModelName,
    tTransformResources,
    tTransformInput,

    -- ** TransformJobDefinition
    TransformJobDefinition,
    transformJobDefinition,
    tjdMaxConcurrentTransforms,
    tjdEnvironment,
    tjdMaxPayloadInMB,
    tjdBatchStrategy,
    tjdTransformInput,
    tjdTransformOutput,
    tjdTransformResources,

    -- ** TransformJobStepMetadata
    TransformJobStepMetadata,
    transformJobStepMetadata,
    tARN,

    -- ** TransformJobSummary
    TransformJobSummary,
    transformJobSummary,
    tjsFailureReason,
    tjsLastModifiedTime,
    tjsTransformEndTime,
    tjsTransformJobName,
    tjsTransformJobARN,
    tjsCreationTime,
    tjsTransformJobStatus,

    -- ** TransformOutput
    TransformOutput,
    transformOutput,
    toAccept,
    toAssembleWith,
    toKMSKeyId,
    toS3OutputPath,

    -- ** TransformResources
    TransformResources,
    transformResources,
    trVolumeKMSKeyId,
    trInstanceType,
    trInstanceCount,

    -- ** TransformS3DataSource
    TransformS3DataSource,
    transformS3DataSource,
    tsdsS3DataType,
    tsdsS3URI,

    -- ** Trial
    Trial,
    trial,
    triTrialARN,
    triMetadataProperties,
    triCreationTime,
    triSource,
    triTrialComponentSummaries,
    triTags,
    triLastModifiedTime,
    triExperimentName,
    triCreatedBy,
    triLastModifiedBy,
    triDisplayName,
    triTrialName,

    -- ** TrialComponent
    TrialComponent,
    trialComponent,
    tcParents,
    tcStatus,
    tcMetadataProperties,
    tcCreationTime,
    tcSourceDetail,
    tcTrialComponentARN,
    tcStartTime,
    tcSource,
    tcEndTime,
    tcMetrics,
    tcTags,
    tcLastModifiedTime,
    tcInputArtifacts,
    tcCreatedBy,
    tcLastModifiedBy,
    tcDisplayName,
    tcParameters,
    tcOutputArtifacts,
    tcTrialComponentName,

    -- ** TrialComponentArtifact
    TrialComponentArtifact,
    trialComponentArtifact,
    tcaMediaType,
    tcaValue,

    -- ** TrialComponentMetricSummary
    TrialComponentMetricSummary,
    trialComponentMetricSummary,
    tcmsMetricName,
    tcmsMin,
    tcmsStdDev,
    tcmsMax,
    tcmsTimeStamp,
    tcmsCount,
    tcmsSourceARN,
    tcmsAvg,
    tcmsLast,

    -- ** TrialComponentParameterValue
    TrialComponentParameterValue,
    trialComponentParameterValue,
    tcpvStringValue,
    tcpvNumberValue,

    -- ** TrialComponentSimpleSummary
    TrialComponentSimpleSummary,
    trialComponentSimpleSummary,
    tcssCreationTime,
    tcssTrialComponentARN,
    tcssCreatedBy,
    tcssTrialComponentSource,
    tcssTrialComponentName,

    -- ** TrialComponentSource
    TrialComponentSource,
    trialComponentSource,
    tcsSourceType,
    tcsSourceARN,

    -- ** TrialComponentSourceDetail
    TrialComponentSourceDetail,
    trialComponentSourceDetail,
    tcsdProcessingJob,
    tcsdTrainingJob,
    tcsdTransformJob,
    tcsdSourceARN,

    -- ** TrialComponentStatus
    TrialComponentStatus,
    trialComponentStatus,
    tcsMessage,
    tcsPrimaryStatus,

    -- ** TrialComponentSummary
    TrialComponentSummary,
    trialComponentSummary,
    tcsStatus,
    tcsCreationTime,
    tcsTrialComponentARN,
    tcsStartTime,
    tcsEndTime,
    tcsLastModifiedTime,
    tcsCreatedBy,
    tcsLastModifiedBy,
    tcsTrialComponentSource,
    tcsDisplayName,
    tcsTrialComponentName,

    -- ** TrialSource
    TrialSource,
    trialSource,
    tsSourceType,
    tsSourceARN,

    -- ** TrialSummary
    TrialSummary,
    trialSummary,
    tsTrialSource,
    tsTrialARN,
    tsCreationTime,
    tsLastModifiedTime,
    tsDisplayName,
    tsTrialName,

    -- ** TuningJobCompletionCriteria
    TuningJobCompletionCriteria,
    tuningJobCompletionCriteria,
    tjccTargetObjectiveMetricValue,

    -- ** USD
    USD,
    uSD,
    usdDollars,
    usdCents,
    usdTenthFractionsOfACent,

    -- ** UiConfig
    UiConfig,
    uiConfig,
    ucHumanTaskUiARN,
    ucUiTemplateS3URI,

    -- ** UiTemplate
    UiTemplate,
    uiTemplate,
    utContent,

    -- ** UiTemplateInfo
    UiTemplateInfo,
    uiTemplateInfo,
    utiContentSha256,
    utiURL,

    -- ** UserContext
    UserContext,
    userContext,
    ucUserProfileName,
    ucDomainId,
    ucUserProfileARN,

    -- ** UserProfileDetails
    UserProfileDetails,
    userProfileDetails,
    updStatus,
    updCreationTime,
    updUserProfileName,
    updDomainId,
    updLastModifiedTime,

    -- ** UserSettings
    UserSettings,
    userSettings,
    usKernelGatewayAppSettings,
    usTensorBoardAppSettings,
    usSecurityGroups,
    usJupyterServerAppSettings,
    usExecutionRole,
    usSharingSettings,

    -- ** VPCConfig
    VPCConfig,
    vpcConfig,
    vcSecurityGroupIds,
    vcSubnets,

    -- ** VariantProperty
    VariantProperty,
    variantProperty,
    vpVariantPropertyType,

    -- ** Workforce
    Workforce,
    workforce,
    worLastUpdatedDate,
    worCreateDate,
    worSubDomain,
    worSourceIPConfig,
    worOidcConfig,
    worCognitoConfig,
    worWorkforceName,
    worWorkforceARN,

    -- ** Workteam
    Workteam,
    workteam,
    wWorkforceARN,
    wLastUpdatedDate,
    wCreateDate,
    wNotificationConfiguration,
    wProductListingIds,
    wSubDomain,
    wWorkteamName,
    wMemberDefinitions,
    wWorkteamARN,
    wDescription,
  )
where

import Network.AWS.SageMaker.AddAssociation
import Network.AWS.SageMaker.AddTags
import Network.AWS.SageMaker.AssociateTrialComponent
import Network.AWS.SageMaker.CreateAction
import Network.AWS.SageMaker.CreateAlgorithm
import Network.AWS.SageMaker.CreateApp
import Network.AWS.SageMaker.CreateAppImageConfig
import Network.AWS.SageMaker.CreateArtifact
import Network.AWS.SageMaker.CreateAutoMLJob
import Network.AWS.SageMaker.CreateCodeRepository
import Network.AWS.SageMaker.CreateCompilationJob
import Network.AWS.SageMaker.CreateContext
import Network.AWS.SageMaker.CreateDataQualityJobDefinition
import Network.AWS.SageMaker.CreateDeviceFleet
import Network.AWS.SageMaker.CreateDomain
import Network.AWS.SageMaker.CreateEdgePackagingJob
import Network.AWS.SageMaker.CreateEndpoint
import Network.AWS.SageMaker.CreateEndpointConfig
import Network.AWS.SageMaker.CreateExperiment
import Network.AWS.SageMaker.CreateFeatureGroup
import Network.AWS.SageMaker.CreateFlowDefinition
import Network.AWS.SageMaker.CreateHumanTaskUi
import Network.AWS.SageMaker.CreateHyperParameterTuningJob
import Network.AWS.SageMaker.CreateImage
import Network.AWS.SageMaker.CreateImageVersion
import Network.AWS.SageMaker.CreateLabelingJob
import Network.AWS.SageMaker.CreateModel
import Network.AWS.SageMaker.CreateModelBiasJobDefinition
import Network.AWS.SageMaker.CreateModelExplainabilityJobDefinition
import Network.AWS.SageMaker.CreateModelPackage
import Network.AWS.SageMaker.CreateModelPackageGroup
import Network.AWS.SageMaker.CreateModelQualityJobDefinition
import Network.AWS.SageMaker.CreateMonitoringSchedule
import Network.AWS.SageMaker.CreateNotebookInstance
import Network.AWS.SageMaker.CreateNotebookInstanceLifecycleConfig
import Network.AWS.SageMaker.CreatePipeline
import Network.AWS.SageMaker.CreatePresignedDomainURL
import Network.AWS.SageMaker.CreatePresignedNotebookInstanceURL
import Network.AWS.SageMaker.CreateProcessingJob
import Network.AWS.SageMaker.CreateProject
import Network.AWS.SageMaker.CreateTrainingJob
import Network.AWS.SageMaker.CreateTransformJob
import Network.AWS.SageMaker.CreateTrial
import Network.AWS.SageMaker.CreateTrialComponent
import Network.AWS.SageMaker.CreateUserProfile
import Network.AWS.SageMaker.CreateWorkforce
import Network.AWS.SageMaker.CreateWorkteam
import Network.AWS.SageMaker.DeleteAction
import Network.AWS.SageMaker.DeleteAlgorithm
import Network.AWS.SageMaker.DeleteApp
import Network.AWS.SageMaker.DeleteAppImageConfig
import Network.AWS.SageMaker.DeleteArtifact
import Network.AWS.SageMaker.DeleteAssociation
import Network.AWS.SageMaker.DeleteCodeRepository
import Network.AWS.SageMaker.DeleteContext
import Network.AWS.SageMaker.DeleteDataQualityJobDefinition
import Network.AWS.SageMaker.DeleteDeviceFleet
import Network.AWS.SageMaker.DeleteDomain
import Network.AWS.SageMaker.DeleteEndpoint
import Network.AWS.SageMaker.DeleteEndpointConfig
import Network.AWS.SageMaker.DeleteExperiment
import Network.AWS.SageMaker.DeleteFeatureGroup
import Network.AWS.SageMaker.DeleteFlowDefinition
import Network.AWS.SageMaker.DeleteHumanTaskUi
import Network.AWS.SageMaker.DeleteImage
import Network.AWS.SageMaker.DeleteImageVersion
import Network.AWS.SageMaker.DeleteModel
import Network.AWS.SageMaker.DeleteModelBiasJobDefinition
import Network.AWS.SageMaker.DeleteModelExplainabilityJobDefinition
import Network.AWS.SageMaker.DeleteModelPackage
import Network.AWS.SageMaker.DeleteModelPackageGroup
import Network.AWS.SageMaker.DeleteModelPackageGroupPolicy
import Network.AWS.SageMaker.DeleteModelQualityJobDefinition
import Network.AWS.SageMaker.DeleteMonitoringSchedule
import Network.AWS.SageMaker.DeleteNotebookInstance
import Network.AWS.SageMaker.DeleteNotebookInstanceLifecycleConfig
import Network.AWS.SageMaker.DeletePipeline
import Network.AWS.SageMaker.DeleteProject
import Network.AWS.SageMaker.DeleteTags
import Network.AWS.SageMaker.DeleteTrial
import Network.AWS.SageMaker.DeleteTrialComponent
import Network.AWS.SageMaker.DeleteUserProfile
import Network.AWS.SageMaker.DeleteWorkforce
import Network.AWS.SageMaker.DeleteWorkteam
import Network.AWS.SageMaker.DeregisterDevices
import Network.AWS.SageMaker.DescribeAction
import Network.AWS.SageMaker.DescribeAlgorithm
import Network.AWS.SageMaker.DescribeApp
import Network.AWS.SageMaker.DescribeAppImageConfig
import Network.AWS.SageMaker.DescribeArtifact
import Network.AWS.SageMaker.DescribeAutoMLJob
import Network.AWS.SageMaker.DescribeCodeRepository
import Network.AWS.SageMaker.DescribeCompilationJob
import Network.AWS.SageMaker.DescribeContext
import Network.AWS.SageMaker.DescribeDataQualityJobDefinition
import Network.AWS.SageMaker.DescribeDevice
import Network.AWS.SageMaker.DescribeDeviceFleet
import Network.AWS.SageMaker.DescribeDomain
import Network.AWS.SageMaker.DescribeEdgePackagingJob
import Network.AWS.SageMaker.DescribeEndpoint
import Network.AWS.SageMaker.DescribeEndpointConfig
import Network.AWS.SageMaker.DescribeExperiment
import Network.AWS.SageMaker.DescribeFeatureGroup
import Network.AWS.SageMaker.DescribeFlowDefinition
import Network.AWS.SageMaker.DescribeHumanTaskUi
import Network.AWS.SageMaker.DescribeHyperParameterTuningJob
import Network.AWS.SageMaker.DescribeImage
import Network.AWS.SageMaker.DescribeImageVersion
import Network.AWS.SageMaker.DescribeLabelingJob
import Network.AWS.SageMaker.DescribeModel
import Network.AWS.SageMaker.DescribeModelBiasJobDefinition
import Network.AWS.SageMaker.DescribeModelExplainabilityJobDefinition
import Network.AWS.SageMaker.DescribeModelPackage
import Network.AWS.SageMaker.DescribeModelPackageGroup
import Network.AWS.SageMaker.DescribeModelQualityJobDefinition
import Network.AWS.SageMaker.DescribeMonitoringSchedule
import Network.AWS.SageMaker.DescribeNotebookInstance
import Network.AWS.SageMaker.DescribeNotebookInstanceLifecycleConfig
import Network.AWS.SageMaker.DescribePipeline
import Network.AWS.SageMaker.DescribePipelineDefinitionForExecution
import Network.AWS.SageMaker.DescribePipelineExecution
import Network.AWS.SageMaker.DescribeProcessingJob
import Network.AWS.SageMaker.DescribeProject
import Network.AWS.SageMaker.DescribeSubscribedWorkteam
import Network.AWS.SageMaker.DescribeTrainingJob
import Network.AWS.SageMaker.DescribeTransformJob
import Network.AWS.SageMaker.DescribeTrial
import Network.AWS.SageMaker.DescribeTrialComponent
import Network.AWS.SageMaker.DescribeUserProfile
import Network.AWS.SageMaker.DescribeWorkforce
import Network.AWS.SageMaker.DescribeWorkteam
import Network.AWS.SageMaker.DisableSagemakerServicecatalogPortfolio
import Network.AWS.SageMaker.DisassociateTrialComponent
import Network.AWS.SageMaker.EnableSagemakerServicecatalogPortfolio
import Network.AWS.SageMaker.GetDeviceFleetReport
import Network.AWS.SageMaker.GetModelPackageGroupPolicy
import Network.AWS.SageMaker.GetSagemakerServicecatalogPortfolioStatus
import Network.AWS.SageMaker.GetSearchSuggestions
import Network.AWS.SageMaker.ListActions
import Network.AWS.SageMaker.ListAlgorithms
import Network.AWS.SageMaker.ListAppImageConfigs
import Network.AWS.SageMaker.ListApps
import Network.AWS.SageMaker.ListArtifacts
import Network.AWS.SageMaker.ListAssociations
import Network.AWS.SageMaker.ListAutoMLJobs
import Network.AWS.SageMaker.ListCandidatesForAutoMLJob
import Network.AWS.SageMaker.ListCodeRepositories
import Network.AWS.SageMaker.ListCompilationJobs
import Network.AWS.SageMaker.ListContexts
import Network.AWS.SageMaker.ListDataQualityJobDefinitions
import Network.AWS.SageMaker.ListDeviceFleets
import Network.AWS.SageMaker.ListDevices
import Network.AWS.SageMaker.ListDomains
import Network.AWS.SageMaker.ListEdgePackagingJobs
import Network.AWS.SageMaker.ListEndpointConfigs
import Network.AWS.SageMaker.ListEndpoints
import Network.AWS.SageMaker.ListExperiments
import Network.AWS.SageMaker.ListFeatureGroups
import Network.AWS.SageMaker.ListFlowDefinitions
import Network.AWS.SageMaker.ListHumanTaskUis
import Network.AWS.SageMaker.ListHyperParameterTuningJobs
import Network.AWS.SageMaker.ListImageVersions
import Network.AWS.SageMaker.ListImages
import Network.AWS.SageMaker.ListLabelingJobs
import Network.AWS.SageMaker.ListLabelingJobsForWorkteam
import Network.AWS.SageMaker.ListModelBiasJobDefinitions
import Network.AWS.SageMaker.ListModelExplainabilityJobDefinitions
import Network.AWS.SageMaker.ListModelPackageGroups
import Network.AWS.SageMaker.ListModelPackages
import Network.AWS.SageMaker.ListModelQualityJobDefinitions
import Network.AWS.SageMaker.ListModels
import Network.AWS.SageMaker.ListMonitoringExecutions
import Network.AWS.SageMaker.ListMonitoringSchedules
import Network.AWS.SageMaker.ListNotebookInstanceLifecycleConfigs
import Network.AWS.SageMaker.ListNotebookInstances
import Network.AWS.SageMaker.ListPipelineExecutionSteps
import Network.AWS.SageMaker.ListPipelineExecutions
import Network.AWS.SageMaker.ListPipelineParametersForExecution
import Network.AWS.SageMaker.ListPipelines
import Network.AWS.SageMaker.ListProcessingJobs
import Network.AWS.SageMaker.ListProjects
import Network.AWS.SageMaker.ListSubscribedWorkteams
import Network.AWS.SageMaker.ListTags
import Network.AWS.SageMaker.ListTrainingJobs
import Network.AWS.SageMaker.ListTrainingJobsForHyperParameterTuningJob
import Network.AWS.SageMaker.ListTransformJobs
import Network.AWS.SageMaker.ListTrialComponents
import Network.AWS.SageMaker.ListTrials
import Network.AWS.SageMaker.ListUserProfiles
import Network.AWS.SageMaker.ListWorkforces
import Network.AWS.SageMaker.ListWorkteams
import Network.AWS.SageMaker.PutModelPackageGroupPolicy
import Network.AWS.SageMaker.RegisterDevices
import Network.AWS.SageMaker.RenderUiTemplate
import Network.AWS.SageMaker.Search
import Network.AWS.SageMaker.StartMonitoringSchedule
import Network.AWS.SageMaker.StartNotebookInstance
import Network.AWS.SageMaker.StartPipelineExecution
import Network.AWS.SageMaker.StopAutoMLJob
import Network.AWS.SageMaker.StopCompilationJob
import Network.AWS.SageMaker.StopEdgePackagingJob
import Network.AWS.SageMaker.StopHyperParameterTuningJob
import Network.AWS.SageMaker.StopLabelingJob
import Network.AWS.SageMaker.StopMonitoringSchedule
import Network.AWS.SageMaker.StopNotebookInstance
import Network.AWS.SageMaker.StopPipelineExecution
import Network.AWS.SageMaker.StopProcessingJob
import Network.AWS.SageMaker.StopTrainingJob
import Network.AWS.SageMaker.StopTransformJob
import Network.AWS.SageMaker.Types
import Network.AWS.SageMaker.UpdateAction
import Network.AWS.SageMaker.UpdateAppImageConfig
import Network.AWS.SageMaker.UpdateArtifact
import Network.AWS.SageMaker.UpdateCodeRepository
import Network.AWS.SageMaker.UpdateContext
import Network.AWS.SageMaker.UpdateDeviceFleet
import Network.AWS.SageMaker.UpdateDevices
import Network.AWS.SageMaker.UpdateDomain
import Network.AWS.SageMaker.UpdateEndpoint
import Network.AWS.SageMaker.UpdateEndpointWeightsAndCapacities
import Network.AWS.SageMaker.UpdateExperiment
import Network.AWS.SageMaker.UpdateImage
import Network.AWS.SageMaker.UpdateModelPackage
import Network.AWS.SageMaker.UpdateMonitoringSchedule
import Network.AWS.SageMaker.UpdateNotebookInstance
import Network.AWS.SageMaker.UpdateNotebookInstanceLifecycleConfig
import Network.AWS.SageMaker.UpdatePipeline
import Network.AWS.SageMaker.UpdatePipelineExecution
import Network.AWS.SageMaker.UpdateTrainingJob
import Network.AWS.SageMaker.UpdateTrial
import Network.AWS.SageMaker.UpdateTrialComponent
import Network.AWS.SageMaker.UpdateUserProfile
import Network.AWS.SageMaker.UpdateWorkforce
import Network.AWS.SageMaker.UpdateWorkteam
import Network.AWS.SageMaker.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'SageMaker'.

-- $operations
-- Some AWS operations return results that are incomplete and require subsequent
-- requests in order to obtain the entire result set. The process of sending
-- subsequent requests to continue where a previous request left off is called
-- pagination. For example, the 'ListObjects' operation of Amazon S3 returns up to
-- 1000 objects at a time, and you must send subsequent requests with the
-- appropriate Marker in order to retrieve the next page of results.
--
-- Operations that have an 'AWSPager' instance can transparently perform subsequent
-- requests, correctly setting Markers and other request facets to iterate through
-- the entire result set of a truncated API operation. Operations which support
-- this have an additional note in the documentation.
--
-- Many operations have the ability to filter results on the server side. See the
-- individual operation parameters for details.

-- $waiters
-- Waiters poll by repeatedly sending a request until some remote success condition
-- configured by the 'Wait' specification is fulfilled. The 'Wait' specification
-- determines how many attempts should be made, in addition to delay and retry strategies.
