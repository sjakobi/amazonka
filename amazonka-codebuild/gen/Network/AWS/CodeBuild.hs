{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __AWS CodeBuild__
--
-- AWS CodeBuild is a fully managed build service in the cloud. AWS CodeBuild compiles your source code, runs unit tests, and produces artifacts that are ready to deploy. AWS CodeBuild eliminates the need to provision, manage, and scale your own build servers. It provides prepackaged build environments for the most popular programming languages and build tools, such as Apache Maven, Gradle, and more. You can also fully customize build environments in AWS CodeBuild to use your own build tools. AWS CodeBuild scales automatically to meet peak build requests. You pay only for the build time you consume. For more information about AWS CodeBuild, see the /<https:\/\/docs.aws.amazon.com\/codebuild\/latest\/userguide\/welcome.html AWS CodeBuild User Guide> ./
module Network.AWS.CodeBuild
  ( -- * Service Configuration
    codeBuild,

    -- * Errors
    -- $errors

    -- ** OAuthProviderException
    _OAuthProviderException,

    -- ** ResourceAlreadyExistsException
    _ResourceAlreadyExistsException,

    -- ** InvalidInputException
    _InvalidInputException,

    -- ** AccountLimitExceededException
    _AccountLimitExceededException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** DeleteReport
    module Network.AWS.CodeBuild.DeleteReport,

    -- ** BatchGetReports
    module Network.AWS.CodeBuild.BatchGetReports,

    -- ** ListBuilds (Paginated)
    module Network.AWS.CodeBuild.ListBuilds,

    -- ** GetResourcePolicy
    module Network.AWS.CodeBuild.GetResourcePolicy,

    -- ** ListProjects (Paginated)
    module Network.AWS.CodeBuild.ListProjects,

    -- ** DescribeTestCases (Paginated)
    module Network.AWS.CodeBuild.DescribeTestCases,

    -- ** ListBuildsForProject (Paginated)
    module Network.AWS.CodeBuild.ListBuildsForProject,

    -- ** CreateProject
    module Network.AWS.CodeBuild.CreateProject,

    -- ** ListBuildBatches (Paginated)
    module Network.AWS.CodeBuild.ListBuildBatches,

    -- ** DeleteBuildBatch
    module Network.AWS.CodeBuild.DeleteBuildBatch,

    -- ** PutResourcePolicy
    module Network.AWS.CodeBuild.PutResourcePolicy,

    -- ** DeleteReportGroup
    module Network.AWS.CodeBuild.DeleteReportGroup,

    -- ** BatchDeleteBuilds
    module Network.AWS.CodeBuild.BatchDeleteBuilds,

    -- ** BatchGetReportGroups
    module Network.AWS.CodeBuild.BatchGetReportGroups,

    -- ** UpdateReportGroup
    module Network.AWS.CodeBuild.UpdateReportGroup,

    -- ** ListBuildBatchesForProject (Paginated)
    module Network.AWS.CodeBuild.ListBuildBatchesForProject,

    -- ** CreateReportGroup
    module Network.AWS.CodeBuild.CreateReportGroup,

    -- ** DescribeCodeCoverages (Paginated)
    module Network.AWS.CodeBuild.DescribeCodeCoverages,

    -- ** StartBuildBatch
    module Network.AWS.CodeBuild.StartBuildBatch,

    -- ** UpdateWebhook
    module Network.AWS.CodeBuild.UpdateWebhook,

    -- ** RetryBuildBatch
    module Network.AWS.CodeBuild.RetryBuildBatch,

    -- ** DeleteWebhook
    module Network.AWS.CodeBuild.DeleteWebhook,

    -- ** StopBuildBatch
    module Network.AWS.CodeBuild.StopBuildBatch,

    -- ** ListSourceCredentials
    module Network.AWS.CodeBuild.ListSourceCredentials,

    -- ** CreateWebhook
    module Network.AWS.CodeBuild.CreateWebhook,

    -- ** BatchGetBuilds
    module Network.AWS.CodeBuild.BatchGetBuilds,

    -- ** ListReports (Paginated)
    module Network.AWS.CodeBuild.ListReports,

    -- ** BatchGetProjects
    module Network.AWS.CodeBuild.BatchGetProjects,

    -- ** DeleteProject
    module Network.AWS.CodeBuild.DeleteProject,

    -- ** UpdateProject
    module Network.AWS.CodeBuild.UpdateProject,

    -- ** DeleteSourceCredentials
    module Network.AWS.CodeBuild.DeleteSourceCredentials,

    -- ** ListSharedReportGroups (Paginated)
    module Network.AWS.CodeBuild.ListSharedReportGroups,

    -- ** StopBuild
    module Network.AWS.CodeBuild.StopBuild,

    -- ** RetryBuild
    module Network.AWS.CodeBuild.RetryBuild,

    -- ** BatchGetBuildBatches
    module Network.AWS.CodeBuild.BatchGetBuildBatches,

    -- ** GetReportGroupTrend
    module Network.AWS.CodeBuild.GetReportGroupTrend,

    -- ** StartBuild
    module Network.AWS.CodeBuild.StartBuild,

    -- ** DeleteResourcePolicy
    module Network.AWS.CodeBuild.DeleteResourcePolicy,

    -- ** ListCuratedEnvironmentImages
    module Network.AWS.CodeBuild.ListCuratedEnvironmentImages,

    -- ** ListReportGroups (Paginated)
    module Network.AWS.CodeBuild.ListReportGroups,

    -- ** ImportSourceCredentials
    module Network.AWS.CodeBuild.ImportSourceCredentials,

    -- ** InvalidateProjectCache
    module Network.AWS.CodeBuild.InvalidateProjectCache,

    -- ** ListReportsForReportGroup (Paginated)
    module Network.AWS.CodeBuild.ListReportsForReportGroup,

    -- ** ListSharedProjects (Paginated)
    module Network.AWS.CodeBuild.ListSharedProjects,

    -- * Types

    -- ** ArtifactNamespace
    ArtifactNamespace (..),

    -- ** ArtifactPackaging
    ArtifactPackaging (..),

    -- ** ArtifactsType
    ArtifactsType (..),

    -- ** AuthType
    AuthType (..),

    -- ** BuildBatchPhaseType
    BuildBatchPhaseType (..),

    -- ** BuildPhaseType
    BuildPhaseType (..),

    -- ** CacheMode
    CacheMode (..),

    -- ** CacheType
    CacheType (..),

    -- ** ComputeType
    ComputeType (..),

    -- ** CredentialProviderType
    CredentialProviderType (..),

    -- ** EnvironmentType
    EnvironmentType (..),

    -- ** EnvironmentVariableType
    EnvironmentVariableType (..),

    -- ** FileSystemType
    FileSystemType (..),

    -- ** ImagePullCredentialsType
    ImagePullCredentialsType (..),

    -- ** LanguageType
    LanguageType (..),

    -- ** LogsConfigStatusType
    LogsConfigStatusType (..),

    -- ** PlatformType
    PlatformType (..),

    -- ** ProjectSortByType
    ProjectSortByType (..),

    -- ** ReportCodeCoverageSortByType
    ReportCodeCoverageSortByType (..),

    -- ** ReportExportConfigType
    ReportExportConfigType (..),

    -- ** ReportGroupSortByType
    ReportGroupSortByType (..),

    -- ** ReportGroupStatusType
    ReportGroupStatusType (..),

    -- ** ReportGroupTrendFieldType
    ReportGroupTrendFieldType (..),

    -- ** ReportPackagingType
    ReportPackagingType (..),

    -- ** ReportStatusType
    ReportStatusType (..),

    -- ** ReportType
    ReportType (..),

    -- ** RetryBuildBatchType
    RetryBuildBatchType (..),

    -- ** ServerType
    ServerType (..),

    -- ** SharedResourceSortByType
    SharedResourceSortByType (..),

    -- ** SortOrderType
    SortOrderType (..),

    -- ** SourceAuthType
    SourceAuthType (..),

    -- ** SourceType
    SourceType (..),

    -- ** StatusType
    StatusType (..),

    -- ** WebhookBuildType
    WebhookBuildType (..),

    -- ** WebhookFilterType
    WebhookFilterType (..),

    -- ** BatchRestrictions
    BatchRestrictions,
    batchRestrictions,
    brComputeTypesAllowed,
    brMaximumBuildsAllowed,

    -- ** Build
    Build,
    build,
    bVpcConfig,
    bBuildBatchARN,
    bResolvedSourceVersion,
    bSecondaryArtifacts,
    bSourceVersion,
    bPhases,
    bCache,
    bServiceRole,
    bSecondarySourceVersions,
    bNetworkInterface,
    bEncryptionKey,
    bArtifacts,
    bBuildNumber,
    bStartTime,
    bId,
    bEnvironment,
    bSource,
    bArn,
    bProjectName,
    bEndTime,
    bBuildStatus,
    bLogs,
    bBuildComplete,
    bDebugSession,
    bQueuedTimeoutInMinutes,
    bSecondarySources,
    bTimeoutInMinutes,
    bCurrentPhase,
    bInitiator,
    bReportARNs,
    bFileSystemLocations,
    bExportedEnvironmentVariables,

    -- ** BuildArtifacts
    BuildArtifacts,
    buildArtifacts,
    baSha256sum,
    baOverrideArtifactName,
    baArtifactIdentifier,
    baMd5sum,
    baEncryptionDisabled,
    baLocation,

    -- ** BuildBatch
    BuildBatch,
    buildBatch,
    bbVpcConfig,
    bbResolvedSourceVersion,
    bbSecondaryArtifacts,
    bbSourceVersion,
    bbPhases,
    bbCache,
    bbServiceRole,
    bbBuildBatchNumber,
    bbSecondarySourceVersions,
    bbEncryptionKey,
    bbArtifacts,
    bbStartTime,
    bbId,
    bbEnvironment,
    bbSource,
    bbArn,
    bbProjectName,
    bbEndTime,
    bbBuildGroups,
    bbBuildTimeoutInMinutes,
    bbQueuedTimeoutInMinutes,
    bbSecondarySources,
    bbComplete,
    bbLogConfig,
    bbCurrentPhase,
    bbBuildBatchStatus,
    bbInitiator,
    bbBuildBatchConfig,
    bbFileSystemLocations,
    bbDebugSessionEnabled,

    -- ** BuildBatchFilter
    BuildBatchFilter,
    buildBatchFilter,
    bbfStatus,

    -- ** BuildBatchPhase
    BuildBatchPhase,
    buildBatchPhase,
    bbpPhaseType,
    bbpContexts,
    bbpStartTime,
    bbpEndTime,
    bbpDurationInSeconds,
    bbpPhaseStatus,

    -- ** BuildGroup
    BuildGroup,
    buildGroup,
    bgDependsOn,
    bgCurrentBuildSummary,
    bgIdentifier,
    bgIgnoreFailure,
    bgPriorBuildSummaryList,

    -- ** BuildNotDeleted
    BuildNotDeleted,
    buildNotDeleted,
    bndId,
    bndStatusCode,

    -- ** BuildPhase
    BuildPhase,
    buildPhase,
    bpPhaseType,
    bpContexts,
    bpStartTime,
    bpEndTime,
    bpDurationInSeconds,
    bpPhaseStatus,

    -- ** BuildStatusConfig
    BuildStatusConfig,
    buildStatusConfig,
    bscContext,
    bscTargetURL,

    -- ** BuildSummary
    BuildSummary,
    buildSummary,
    bsSecondaryArtifacts,
    bsRequestedOn,
    bsArn,
    bsBuildStatus,
    bsPrimaryArtifact,

    -- ** CloudWatchLogsConfig
    CloudWatchLogsConfig,
    cloudWatchLogsConfig,
    cwlcGroupName,
    cwlcStreamName,
    cwlcStatus,

    -- ** CodeCoverage
    CodeCoverage,
    codeCoverage,
    ccBranchesMissed,
    ccLinesCovered,
    ccBranchesCovered,
    ccFilePath,
    ccReportARN,
    ccId,
    ccExpired,
    ccLineCoveragePercentage,
    ccLinesMissed,
    ccBranchCoveragePercentage,

    -- ** CodeCoverageReportSummary
    CodeCoverageReportSummary,
    codeCoverageReportSummary,
    ccrsBranchesMissed,
    ccrsLinesCovered,
    ccrsBranchesCovered,
    ccrsLineCoveragePercentage,
    ccrsLinesMissed,
    ccrsBranchCoveragePercentage,

    -- ** DebugSession
    DebugSession,
    debugSession,
    dsSessionTarget,
    dsSessionEnabled,

    -- ** EnvironmentImage
    EnvironmentImage,
    environmentImage,
    eiVersions,
    eiName,
    eiDescription,

    -- ** EnvironmentLanguage
    EnvironmentLanguage,
    environmentLanguage,
    elImages,
    elLanguage,

    -- ** EnvironmentPlatform
    EnvironmentPlatform,
    environmentPlatform,
    epPlatform,
    epLanguages,

    -- ** EnvironmentVariable
    EnvironmentVariable,
    environmentVariable,
    evType,
    evName,
    evValue,

    -- ** ExportedEnvironmentVariable
    ExportedEnvironmentVariable,
    exportedEnvironmentVariable,
    eevName,
    eevValue,

    -- ** GitSubmodulesConfig
    GitSubmodulesConfig,
    gitSubmodulesConfig,
    gscFetchSubmodules,

    -- ** LogsConfig
    LogsConfig,
    logsConfig,
    lcS3Logs,
    lcCloudWatchLogs,

    -- ** LogsLocation
    LogsLocation,
    logsLocation,
    llS3Logs,
    llCloudWatchLogs,
    llDeepLink,
    llGroupName,
    llCloudWatchLogsARN,
    llS3LogsARN,
    llS3DeepLink,
    llStreamName,

    -- ** NetworkInterface
    NetworkInterface,
    networkInterface,
    niSubnetId,
    niNetworkInterfaceId,

    -- ** PhaseContext
    PhaseContext,
    phaseContext,
    pcMessage,
    pcStatusCode,

    -- ** Project
    Project,
    project,
    pVpcConfig,
    pSecondaryArtifacts,
    pSourceVersion,
    pCache,
    pServiceRole,
    pSecondarySourceVersions,
    pWebhook,
    pEncryptionKey,
    pConcurrentBuildLimit,
    pArtifacts,
    pEnvironment,
    pSource,
    pArn,
    pLogsConfig,
    pName,
    pQueuedTimeoutInMinutes,
    pSecondarySources,
    pTags,
    pTimeoutInMinutes,
    pDescription,
    pLastModified,
    pCreated,
    pBuildBatchConfig,
    pBadge,
    pFileSystemLocations,

    -- ** ProjectArtifacts
    ProjectArtifacts,
    projectArtifacts,
    paNamespaceType,
    paOverrideArtifactName,
    paArtifactIdentifier,
    paName,
    paPackaging,
    paEncryptionDisabled,
    paLocation,
    paPath,
    paType,

    -- ** ProjectBadge
    ProjectBadge,
    projectBadge,
    pbBadgeRequestURL,
    pbBadgeEnabled,

    -- ** ProjectBuildBatchConfig
    ProjectBuildBatchConfig,
    projectBuildBatchConfig,
    pbbcCombineArtifacts,
    pbbcServiceRole,
    pbbcTimeoutInMins,
    pbbcRestrictions,

    -- ** ProjectCache
    ProjectCache,
    projectCache,
    pcModes,
    pcLocation,
    pcType,

    -- ** ProjectEnvironment
    ProjectEnvironment,
    projectEnvironment,
    pePrivilegedMode,
    peImagePullCredentialsType,
    peRegistryCredential,
    peEnvironmentVariables,
    peCertificate,
    peType,
    peImage,
    peComputeType,

    -- ** ProjectFileSystemLocation
    ProjectFileSystemLocation,
    projectFileSystemLocation,
    pfslIdentifier,
    pfslMountOptions,
    pfslMountPoint,
    pfslType,
    pfslLocation,

    -- ** ProjectSource
    ProjectSource,
    projectSource,
    psGitCloneDepth,
    psBuildStatusConfig,
    psAuth,
    psReportBuildStatus,
    psInsecureSSL,
    psSourceIdentifier,
    psBuildspec,
    psLocation,
    psGitSubmodulesConfig,
    psType,

    -- ** ProjectSourceVersion
    ProjectSourceVersion,
    projectSourceVersion,
    psvSourceIdentifier,
    psvSourceVersion,

    -- ** RegistryCredential
    RegistryCredential,
    registryCredential,
    rcCredential,
    rcCredentialProvider,

    -- ** Report
    Report,
    report,
    rCodeCoverageSummary,
    rReportGroupARN,
    rStatus,
    rExportConfig,
    rArn,
    rTestSummary,
    rName,
    rExpired,
    rExecutionId,
    rCreated,
    rType,
    rTruncated,

    -- ** ReportExportConfig
    ReportExportConfig,
    reportExportConfig,
    recS3Destination,
    recExportConfigType,

    -- ** ReportFilter
    ReportFilter,
    reportFilter,
    rfStatus,

    -- ** ReportGroup
    ReportGroup,
    reportGroup,
    rgStatus,
    rgExportConfig,
    rgArn,
    rgName,
    rgTags,
    rgLastModified,
    rgCreated,
    rgType,

    -- ** ReportGroupTrendStats
    ReportGroupTrendStats,
    reportGroupTrendStats,
    rgtsMin,
    rgtsMax,
    rgtsAverage,

    -- ** ReportWithRawData
    ReportWithRawData,
    reportWithRawData,
    rwrdReportARN,
    rwrdData,

    -- ** ResolvedArtifact
    ResolvedArtifact,
    resolvedArtifact,
    raIdentifier,
    raType,
    raLocation,

    -- ** S3LogsConfig
    S3LogsConfig,
    s3LogsConfig,
    slcEncryptionDisabled,
    slcLocation,
    slcStatus,

    -- ** S3ReportExportConfig
    S3ReportExportConfig,
    s3ReportExportConfig,
    srecBucketOwner,
    srecEncryptionKey,
    srecPackaging,
    srecEncryptionDisabled,
    srecBucket,
    srecPath,

    -- ** SourceAuth
    SourceAuth,
    sourceAuth,
    saResource,
    saType,

    -- ** SourceCredentialsInfo
    SourceCredentialsInfo,
    sourceCredentialsInfo,
    sciArn,
    sciAuthType,
    sciServerType,

    -- ** Tag
    Tag,
    tag,
    tagKey,
    tagValue,

    -- ** TestCase
    TestCase,
    testCase,
    tcTestRawDataPath,
    tcStatus,
    tcMessage,
    tcReportARN,
    tcPrefix,
    tcName,
    tcExpired,
    tcDurationInNanoSeconds,

    -- ** TestCaseFilter
    TestCaseFilter,
    testCaseFilter,
    tcfStatus,
    tcfKeyword,

    -- ** TestReportSummary
    TestReportSummary,
    testReportSummary,
    trsTotal,
    trsStatusCounts,
    trsDurationInNanoSeconds,

    -- ** VPCConfig
    VPCConfig,
    vpcConfig,
    vcSecurityGroupIds,
    vcVpcId,
    vcSubnets,

    -- ** Webhook
    Webhook,
    webhook,
    wBranchFilter,
    wPayloadURL,
    wFilterGroups,
    wSecret,
    wBuildType,
    wUrl,
    wLastModifiedSecret,

    -- ** WebhookFilter
    WebhookFilter,
    webhookFilter,
    wfExcludeMatchedPattern,
    wfType,
    wfPattern,
  )
where

import Network.AWS.CodeBuild.BatchDeleteBuilds
import Network.AWS.CodeBuild.BatchGetBuildBatches
import Network.AWS.CodeBuild.BatchGetBuilds
import Network.AWS.CodeBuild.BatchGetProjects
import Network.AWS.CodeBuild.BatchGetReportGroups
import Network.AWS.CodeBuild.BatchGetReports
import Network.AWS.CodeBuild.CreateProject
import Network.AWS.CodeBuild.CreateReportGroup
import Network.AWS.CodeBuild.CreateWebhook
import Network.AWS.CodeBuild.DeleteBuildBatch
import Network.AWS.CodeBuild.DeleteProject
import Network.AWS.CodeBuild.DeleteReport
import Network.AWS.CodeBuild.DeleteReportGroup
import Network.AWS.CodeBuild.DeleteResourcePolicy
import Network.AWS.CodeBuild.DeleteSourceCredentials
import Network.AWS.CodeBuild.DeleteWebhook
import Network.AWS.CodeBuild.DescribeCodeCoverages
import Network.AWS.CodeBuild.DescribeTestCases
import Network.AWS.CodeBuild.GetReportGroupTrend
import Network.AWS.CodeBuild.GetResourcePolicy
import Network.AWS.CodeBuild.ImportSourceCredentials
import Network.AWS.CodeBuild.InvalidateProjectCache
import Network.AWS.CodeBuild.ListBuildBatches
import Network.AWS.CodeBuild.ListBuildBatchesForProject
import Network.AWS.CodeBuild.ListBuilds
import Network.AWS.CodeBuild.ListBuildsForProject
import Network.AWS.CodeBuild.ListCuratedEnvironmentImages
import Network.AWS.CodeBuild.ListProjects
import Network.AWS.CodeBuild.ListReportGroups
import Network.AWS.CodeBuild.ListReports
import Network.AWS.CodeBuild.ListReportsForReportGroup
import Network.AWS.CodeBuild.ListSharedProjects
import Network.AWS.CodeBuild.ListSharedReportGroups
import Network.AWS.CodeBuild.ListSourceCredentials
import Network.AWS.CodeBuild.PutResourcePolicy
import Network.AWS.CodeBuild.RetryBuild
import Network.AWS.CodeBuild.RetryBuildBatch
import Network.AWS.CodeBuild.StartBuild
import Network.AWS.CodeBuild.StartBuildBatch
import Network.AWS.CodeBuild.StopBuild
import Network.AWS.CodeBuild.StopBuildBatch
import Network.AWS.CodeBuild.Types
import Network.AWS.CodeBuild.UpdateProject
import Network.AWS.CodeBuild.UpdateReportGroup
import Network.AWS.CodeBuild.UpdateWebhook
import Network.AWS.CodeBuild.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'CodeBuild'.

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
