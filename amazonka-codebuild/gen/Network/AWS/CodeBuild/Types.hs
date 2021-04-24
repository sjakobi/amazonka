{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types
  ( -- * Service Configuration
    codeBuild,

    -- * Errors
    _OAuthProviderException,
    _ResourceAlreadyExistsException,
    _InvalidInputException,
    _AccountLimitExceededException,
    _ResourceNotFoundException,

    -- * ArtifactNamespace
    ArtifactNamespace (..),

    -- * ArtifactPackaging
    ArtifactPackaging (..),

    -- * ArtifactsType
    ArtifactsType (..),

    -- * AuthType
    AuthType (..),

    -- * BuildBatchPhaseType
    BuildBatchPhaseType (..),

    -- * BuildPhaseType
    BuildPhaseType (..),

    -- * CacheMode
    CacheMode (..),

    -- * CacheType
    CacheType (..),

    -- * ComputeType
    ComputeType (..),

    -- * CredentialProviderType
    CredentialProviderType (..),

    -- * EnvironmentType
    EnvironmentType (..),

    -- * EnvironmentVariableType
    EnvironmentVariableType (..),

    -- * FileSystemType
    FileSystemType (..),

    -- * ImagePullCredentialsType
    ImagePullCredentialsType (..),

    -- * LanguageType
    LanguageType (..),

    -- * LogsConfigStatusType
    LogsConfigStatusType (..),

    -- * PlatformType
    PlatformType (..),

    -- * ProjectSortByType
    ProjectSortByType (..),

    -- * ReportCodeCoverageSortByType
    ReportCodeCoverageSortByType (..),

    -- * ReportExportConfigType
    ReportExportConfigType (..),

    -- * ReportGroupSortByType
    ReportGroupSortByType (..),

    -- * ReportGroupStatusType
    ReportGroupStatusType (..),

    -- * ReportGroupTrendFieldType
    ReportGroupTrendFieldType (..),

    -- * ReportPackagingType
    ReportPackagingType (..),

    -- * ReportStatusType
    ReportStatusType (..),

    -- * ReportType
    ReportType (..),

    -- * RetryBuildBatchType
    RetryBuildBatchType (..),

    -- * ServerType
    ServerType (..),

    -- * SharedResourceSortByType
    SharedResourceSortByType (..),

    -- * SortOrderType
    SortOrderType (..),

    -- * SourceAuthType
    SourceAuthType (..),

    -- * SourceType
    SourceType (..),

    -- * StatusType
    StatusType (..),

    -- * WebhookBuildType
    WebhookBuildType (..),

    -- * WebhookFilterType
    WebhookFilterType (..),

    -- * BatchRestrictions
    BatchRestrictions (..),
    batchRestrictions,
    brComputeTypesAllowed,
    brMaximumBuildsAllowed,

    -- * Build
    Build (..),
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

    -- * BuildArtifacts
    BuildArtifacts (..),
    buildArtifacts,
    baSha256sum,
    baOverrideArtifactName,
    baArtifactIdentifier,
    baMd5sum,
    baEncryptionDisabled,
    baLocation,

    -- * BuildBatch
    BuildBatch (..),
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

    -- * BuildBatchFilter
    BuildBatchFilter (..),
    buildBatchFilter,
    bbfStatus,

    -- * BuildBatchPhase
    BuildBatchPhase (..),
    buildBatchPhase,
    bbpPhaseType,
    bbpContexts,
    bbpStartTime,
    bbpEndTime,
    bbpDurationInSeconds,
    bbpPhaseStatus,

    -- * BuildGroup
    BuildGroup (..),
    buildGroup,
    bgDependsOn,
    bgCurrentBuildSummary,
    bgIdentifier,
    bgIgnoreFailure,
    bgPriorBuildSummaryList,

    -- * BuildNotDeleted
    BuildNotDeleted (..),
    buildNotDeleted,
    bndId,
    bndStatusCode,

    -- * BuildPhase
    BuildPhase (..),
    buildPhase,
    bpPhaseType,
    bpContexts,
    bpStartTime,
    bpEndTime,
    bpDurationInSeconds,
    bpPhaseStatus,

    -- * BuildStatusConfig
    BuildStatusConfig (..),
    buildStatusConfig,
    bscContext,
    bscTargetURL,

    -- * BuildSummary
    BuildSummary (..),
    buildSummary,
    bsSecondaryArtifacts,
    bsRequestedOn,
    bsArn,
    bsBuildStatus,
    bsPrimaryArtifact,

    -- * CloudWatchLogsConfig
    CloudWatchLogsConfig (..),
    cloudWatchLogsConfig,
    cwlcGroupName,
    cwlcStreamName,
    cwlcStatus,

    -- * CodeCoverage
    CodeCoverage (..),
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

    -- * CodeCoverageReportSummary
    CodeCoverageReportSummary (..),
    codeCoverageReportSummary,
    ccrsBranchesMissed,
    ccrsLinesCovered,
    ccrsBranchesCovered,
    ccrsLineCoveragePercentage,
    ccrsLinesMissed,
    ccrsBranchCoveragePercentage,

    -- * DebugSession
    DebugSession (..),
    debugSession,
    dsSessionTarget,
    dsSessionEnabled,

    -- * EnvironmentImage
    EnvironmentImage (..),
    environmentImage,
    eiVersions,
    eiName,
    eiDescription,

    -- * EnvironmentLanguage
    EnvironmentLanguage (..),
    environmentLanguage,
    elImages,
    elLanguage,

    -- * EnvironmentPlatform
    EnvironmentPlatform (..),
    environmentPlatform,
    epPlatform,
    epLanguages,

    -- * EnvironmentVariable
    EnvironmentVariable (..),
    environmentVariable,
    evType,
    evName,
    evValue,

    -- * ExportedEnvironmentVariable
    ExportedEnvironmentVariable (..),
    exportedEnvironmentVariable,
    eevName,
    eevValue,

    -- * GitSubmodulesConfig
    GitSubmodulesConfig (..),
    gitSubmodulesConfig,
    gscFetchSubmodules,

    -- * LogsConfig
    LogsConfig (..),
    logsConfig,
    lcS3Logs,
    lcCloudWatchLogs,

    -- * LogsLocation
    LogsLocation (..),
    logsLocation,
    llS3Logs,
    llCloudWatchLogs,
    llDeepLink,
    llGroupName,
    llCloudWatchLogsARN,
    llS3LogsARN,
    llS3DeepLink,
    llStreamName,

    -- * NetworkInterface
    NetworkInterface (..),
    networkInterface,
    niSubnetId,
    niNetworkInterfaceId,

    -- * PhaseContext
    PhaseContext (..),
    phaseContext,
    pcMessage,
    pcStatusCode,

    -- * Project
    Project (..),
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

    -- * ProjectArtifacts
    ProjectArtifacts (..),
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

    -- * ProjectBadge
    ProjectBadge (..),
    projectBadge,
    pbBadgeRequestURL,
    pbBadgeEnabled,

    -- * ProjectBuildBatchConfig
    ProjectBuildBatchConfig (..),
    projectBuildBatchConfig,
    pbbcCombineArtifacts,
    pbbcServiceRole,
    pbbcTimeoutInMins,
    pbbcRestrictions,

    -- * ProjectCache
    ProjectCache (..),
    projectCache,
    pcModes,
    pcLocation,
    pcType,

    -- * ProjectEnvironment
    ProjectEnvironment (..),
    projectEnvironment,
    pePrivilegedMode,
    peImagePullCredentialsType,
    peRegistryCredential,
    peEnvironmentVariables,
    peCertificate,
    peType,
    peImage,
    peComputeType,

    -- * ProjectFileSystemLocation
    ProjectFileSystemLocation (..),
    projectFileSystemLocation,
    pfslIdentifier,
    pfslMountOptions,
    pfslMountPoint,
    pfslType,
    pfslLocation,

    -- * ProjectSource
    ProjectSource (..),
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

    -- * ProjectSourceVersion
    ProjectSourceVersion (..),
    projectSourceVersion,
    psvSourceIdentifier,
    psvSourceVersion,

    -- * RegistryCredential
    RegistryCredential (..),
    registryCredential,
    rcCredential,
    rcCredentialProvider,

    -- * Report
    Report (..),
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

    -- * ReportExportConfig
    ReportExportConfig (..),
    reportExportConfig,
    recS3Destination,
    recExportConfigType,

    -- * ReportFilter
    ReportFilter (..),
    reportFilter,
    rfStatus,

    -- * ReportGroup
    ReportGroup (..),
    reportGroup,
    rgStatus,
    rgExportConfig,
    rgArn,
    rgName,
    rgTags,
    rgLastModified,
    rgCreated,
    rgType,

    -- * ReportGroupTrendStats
    ReportGroupTrendStats (..),
    reportGroupTrendStats,
    rgtsMin,
    rgtsMax,
    rgtsAverage,

    -- * ReportWithRawData
    ReportWithRawData (..),
    reportWithRawData,
    rwrdReportARN,
    rwrdData,

    -- * ResolvedArtifact
    ResolvedArtifact (..),
    resolvedArtifact,
    raIdentifier,
    raType,
    raLocation,

    -- * S3LogsConfig
    S3LogsConfig (..),
    s3LogsConfig,
    slcEncryptionDisabled,
    slcLocation,
    slcStatus,

    -- * S3ReportExportConfig
    S3ReportExportConfig (..),
    s3ReportExportConfig,
    srecBucketOwner,
    srecEncryptionKey,
    srecPackaging,
    srecEncryptionDisabled,
    srecBucket,
    srecPath,

    -- * SourceAuth
    SourceAuth (..),
    sourceAuth,
    saResource,
    saType,

    -- * SourceCredentialsInfo
    SourceCredentialsInfo (..),
    sourceCredentialsInfo,
    sciArn,
    sciAuthType,
    sciServerType,

    -- * Tag
    Tag (..),
    tag,
    tagKey,
    tagValue,

    -- * TestCase
    TestCase (..),
    testCase,
    tcTestRawDataPath,
    tcStatus,
    tcMessage,
    tcReportARN,
    tcPrefix,
    tcName,
    tcExpired,
    tcDurationInNanoSeconds,

    -- * TestCaseFilter
    TestCaseFilter (..),
    testCaseFilter,
    tcfStatus,
    tcfKeyword,

    -- * TestReportSummary
    TestReportSummary (..),
    testReportSummary,
    trsTotal,
    trsStatusCounts,
    trsDurationInNanoSeconds,

    -- * VPCConfig
    VPCConfig (..),
    vpcConfig,
    vcSecurityGroupIds,
    vcVpcId,
    vcSubnets,

    -- * Webhook
    Webhook (..),
    webhook,
    wBranchFilter,
    wPayloadURL,
    wFilterGroups,
    wSecret,
    wBuildType,
    wUrl,
    wLastModifiedSecret,

    -- * WebhookFilter
    WebhookFilter (..),
    webhookFilter,
    wfExcludeMatchedPattern,
    wfType,
    wfPattern,
  )
where

import Network.AWS.CodeBuild.Types.ArtifactNamespace
import Network.AWS.CodeBuild.Types.ArtifactPackaging
import Network.AWS.CodeBuild.Types.ArtifactsType
import Network.AWS.CodeBuild.Types.AuthType
import Network.AWS.CodeBuild.Types.BatchRestrictions
import Network.AWS.CodeBuild.Types.Build
import Network.AWS.CodeBuild.Types.BuildArtifacts
import Network.AWS.CodeBuild.Types.BuildBatch
import Network.AWS.CodeBuild.Types.BuildBatchFilter
import Network.AWS.CodeBuild.Types.BuildBatchPhase
import Network.AWS.CodeBuild.Types.BuildBatchPhaseType
import Network.AWS.CodeBuild.Types.BuildGroup
import Network.AWS.CodeBuild.Types.BuildNotDeleted
import Network.AWS.CodeBuild.Types.BuildPhase
import Network.AWS.CodeBuild.Types.BuildPhaseType
import Network.AWS.CodeBuild.Types.BuildStatusConfig
import Network.AWS.CodeBuild.Types.BuildSummary
import Network.AWS.CodeBuild.Types.CacheMode
import Network.AWS.CodeBuild.Types.CacheType
import Network.AWS.CodeBuild.Types.CloudWatchLogsConfig
import Network.AWS.CodeBuild.Types.CodeCoverage
import Network.AWS.CodeBuild.Types.CodeCoverageReportSummary
import Network.AWS.CodeBuild.Types.ComputeType
import Network.AWS.CodeBuild.Types.CredentialProviderType
import Network.AWS.CodeBuild.Types.DebugSession
import Network.AWS.CodeBuild.Types.EnvironmentImage
import Network.AWS.CodeBuild.Types.EnvironmentLanguage
import Network.AWS.CodeBuild.Types.EnvironmentPlatform
import Network.AWS.CodeBuild.Types.EnvironmentType
import Network.AWS.CodeBuild.Types.EnvironmentVariable
import Network.AWS.CodeBuild.Types.EnvironmentVariableType
import Network.AWS.CodeBuild.Types.ExportedEnvironmentVariable
import Network.AWS.CodeBuild.Types.FileSystemType
import Network.AWS.CodeBuild.Types.GitSubmodulesConfig
import Network.AWS.CodeBuild.Types.ImagePullCredentialsType
import Network.AWS.CodeBuild.Types.LanguageType
import Network.AWS.CodeBuild.Types.LogsConfig
import Network.AWS.CodeBuild.Types.LogsConfigStatusType
import Network.AWS.CodeBuild.Types.LogsLocation
import Network.AWS.CodeBuild.Types.NetworkInterface
import Network.AWS.CodeBuild.Types.PhaseContext
import Network.AWS.CodeBuild.Types.PlatformType
import Network.AWS.CodeBuild.Types.Project
import Network.AWS.CodeBuild.Types.ProjectArtifacts
import Network.AWS.CodeBuild.Types.ProjectBadge
import Network.AWS.CodeBuild.Types.ProjectBuildBatchConfig
import Network.AWS.CodeBuild.Types.ProjectCache
import Network.AWS.CodeBuild.Types.ProjectEnvironment
import Network.AWS.CodeBuild.Types.ProjectFileSystemLocation
import Network.AWS.CodeBuild.Types.ProjectSortByType
import Network.AWS.CodeBuild.Types.ProjectSource
import Network.AWS.CodeBuild.Types.ProjectSourceVersion
import Network.AWS.CodeBuild.Types.RegistryCredential
import Network.AWS.CodeBuild.Types.Report
import Network.AWS.CodeBuild.Types.ReportCodeCoverageSortByType
import Network.AWS.CodeBuild.Types.ReportExportConfig
import Network.AWS.CodeBuild.Types.ReportExportConfigType
import Network.AWS.CodeBuild.Types.ReportFilter
import Network.AWS.CodeBuild.Types.ReportGroup
import Network.AWS.CodeBuild.Types.ReportGroupSortByType
import Network.AWS.CodeBuild.Types.ReportGroupStatusType
import Network.AWS.CodeBuild.Types.ReportGroupTrendFieldType
import Network.AWS.CodeBuild.Types.ReportGroupTrendStats
import Network.AWS.CodeBuild.Types.ReportPackagingType
import Network.AWS.CodeBuild.Types.ReportStatusType
import Network.AWS.CodeBuild.Types.ReportType
import Network.AWS.CodeBuild.Types.ReportWithRawData
import Network.AWS.CodeBuild.Types.ResolvedArtifact
import Network.AWS.CodeBuild.Types.RetryBuildBatchType
import Network.AWS.CodeBuild.Types.S3LogsConfig
import Network.AWS.CodeBuild.Types.S3ReportExportConfig
import Network.AWS.CodeBuild.Types.ServerType
import Network.AWS.CodeBuild.Types.SharedResourceSortByType
import Network.AWS.CodeBuild.Types.SortOrderType
import Network.AWS.CodeBuild.Types.SourceAuth
import Network.AWS.CodeBuild.Types.SourceAuthType
import Network.AWS.CodeBuild.Types.SourceCredentialsInfo
import Network.AWS.CodeBuild.Types.SourceType
import Network.AWS.CodeBuild.Types.StatusType
import Network.AWS.CodeBuild.Types.Tag
import Network.AWS.CodeBuild.Types.TestCase
import Network.AWS.CodeBuild.Types.TestCaseFilter
import Network.AWS.CodeBuild.Types.TestReportSummary
import Network.AWS.CodeBuild.Types.VPCConfig
import Network.AWS.CodeBuild.Types.Webhook
import Network.AWS.CodeBuild.Types.WebhookBuildType
import Network.AWS.CodeBuild.Types.WebhookFilter
import Network.AWS.CodeBuild.Types.WebhookFilterType
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2016-10-06@ of the Amazon CodeBuild SDK configuration.
codeBuild :: Service
codeBuild =
  Service
    { _svcAbbrev = "CodeBuild",
      _svcSigner = v4,
      _svcPrefix = "codebuild",
      _svcVersion = "2016-10-06",
      _svcEndpoint = defaultEndpoint codeBuild,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "CodeBuild",
      _svcRetry = retry
    }
  where
    retry =
      Exponential
        { _retryBase = 5.0e-2,
          _retryGrowth = 2,
          _retryAttempts = 5,
          _retryCheck = check
        }
    check e
      | has (hasStatus 504) e = Just "gateway_timeout"
      | has
          ( hasCode "ProvisionedThroughputExceededException"
              . hasStatus 400
          )
          e =
        Just "throughput_exceeded"
      | has (hasStatus 503) e = Just "service_unavailable"
      | has (hasStatus 502) e = Just "bad_gateway"
      | has (hasStatus 429) e = Just "too_many_requests"
      | has
          (hasCode "RequestThrottledException" . hasStatus 400)
          e =
        Just "request_throttled_exception"
      | has
          (hasCode "ThrottledException" . hasStatus 400)
          e =
        Just "throttled_exception"
      | has (hasStatus 509) e = Just "limit_exceeded"
      | has (hasStatus 500) e = Just "general_server_error"
      | has
          (hasCode "ThrottlingException" . hasStatus 400)
          e =
        Just "throttling_exception"
      | has (hasCode "Throttling" . hasStatus 400) e =
        Just "throttling"
      | otherwise = Nothing

-- | There was a problem with the underlying OAuth provider.
_OAuthProviderException :: AsError a => Getting (First ServiceError) a ServiceError
_OAuthProviderException =
  _MatchServiceError
    codeBuild
    "OAuthProviderException"

-- | The specified AWS resource cannot be created, because an AWS resource with the same settings already exists.
_ResourceAlreadyExistsException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceAlreadyExistsException =
  _MatchServiceError
    codeBuild
    "ResourceAlreadyExistsException"

-- | The input value that was provided is not valid.
_InvalidInputException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidInputException =
  _MatchServiceError
    codeBuild
    "InvalidInputException"

-- | An AWS service limit was exceeded for the calling AWS account.
_AccountLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_AccountLimitExceededException =
  _MatchServiceError
    codeBuild
    "AccountLimitExceededException"

-- | The specified AWS resource cannot be found.
_ResourceNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotFoundException =
  _MatchServiceError
    codeBuild
    "ResourceNotFoundException"
