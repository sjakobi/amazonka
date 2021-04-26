{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

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
    defaultService,

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
    newBatchRestrictions,

    -- * Build
    Build (..),
    newBuild,

    -- * BuildArtifacts
    BuildArtifacts (..),
    newBuildArtifacts,

    -- * BuildBatch
    BuildBatch (..),
    newBuildBatch,

    -- * BuildBatchFilter
    BuildBatchFilter (..),
    newBuildBatchFilter,

    -- * BuildBatchPhase
    BuildBatchPhase (..),
    newBuildBatchPhase,

    -- * BuildGroup
    BuildGroup (..),
    newBuildGroup,

    -- * BuildNotDeleted
    BuildNotDeleted (..),
    newBuildNotDeleted,

    -- * BuildPhase
    BuildPhase (..),
    newBuildPhase,

    -- * BuildStatusConfig
    BuildStatusConfig (..),
    newBuildStatusConfig,

    -- * BuildSummary
    BuildSummary (..),
    newBuildSummary,

    -- * CloudWatchLogsConfig
    CloudWatchLogsConfig (..),
    newCloudWatchLogsConfig,

    -- * CodeCoverage
    CodeCoverage (..),
    newCodeCoverage,

    -- * CodeCoverageReportSummary
    CodeCoverageReportSummary (..),
    newCodeCoverageReportSummary,

    -- * DebugSession
    DebugSession (..),
    newDebugSession,

    -- * EnvironmentImage
    EnvironmentImage (..),
    newEnvironmentImage,

    -- * EnvironmentLanguage
    EnvironmentLanguage (..),
    newEnvironmentLanguage,

    -- * EnvironmentPlatform
    EnvironmentPlatform (..),
    newEnvironmentPlatform,

    -- * EnvironmentVariable
    EnvironmentVariable (..),
    newEnvironmentVariable,

    -- * ExportedEnvironmentVariable
    ExportedEnvironmentVariable (..),
    newExportedEnvironmentVariable,

    -- * GitSubmodulesConfig
    GitSubmodulesConfig (..),
    newGitSubmodulesConfig,

    -- * LogsConfig
    LogsConfig (..),
    newLogsConfig,

    -- * LogsLocation
    LogsLocation (..),
    newLogsLocation,

    -- * NetworkInterface
    NetworkInterface (..),
    newNetworkInterface,

    -- * PhaseContext
    PhaseContext (..),
    newPhaseContext,

    -- * Project
    Project (..),
    newProject,

    -- * ProjectArtifacts
    ProjectArtifacts (..),
    newProjectArtifacts,

    -- * ProjectBadge
    ProjectBadge (..),
    newProjectBadge,

    -- * ProjectBuildBatchConfig
    ProjectBuildBatchConfig (..),
    newProjectBuildBatchConfig,

    -- * ProjectCache
    ProjectCache (..),
    newProjectCache,

    -- * ProjectEnvironment
    ProjectEnvironment (..),
    newProjectEnvironment,

    -- * ProjectFileSystemLocation
    ProjectFileSystemLocation (..),
    newProjectFileSystemLocation,

    -- * ProjectSource
    ProjectSource (..),
    newProjectSource,

    -- * ProjectSourceVersion
    ProjectSourceVersion (..),
    newProjectSourceVersion,

    -- * RegistryCredential
    RegistryCredential (..),
    newRegistryCredential,

    -- * Report
    Report (..),
    newReport,

    -- * ReportExportConfig
    ReportExportConfig (..),
    newReportExportConfig,

    -- * ReportFilter
    ReportFilter (..),
    newReportFilter,

    -- * ReportGroup
    ReportGroup (..),
    newReportGroup,

    -- * ReportGroupTrendStats
    ReportGroupTrendStats (..),
    newReportGroupTrendStats,

    -- * ReportWithRawData
    ReportWithRawData (..),
    newReportWithRawData,

    -- * ResolvedArtifact
    ResolvedArtifact (..),
    newResolvedArtifact,

    -- * S3LogsConfig
    S3LogsConfig (..),
    newS3LogsConfig,

    -- * S3ReportExportConfig
    S3ReportExportConfig (..),
    newS3ReportExportConfig,

    -- * SourceAuth
    SourceAuth (..),
    newSourceAuth,

    -- * SourceCredentialsInfo
    SourceCredentialsInfo (..),
    newSourceCredentialsInfo,

    -- * Tag
    Tag (..),
    newTag,

    -- * TestCase
    TestCase (..),
    newTestCase,

    -- * TestCaseFilter
    TestCaseFilter (..),
    newTestCaseFilter,

    -- * TestReportSummary
    TestReportSummary (..),
    newTestReportSummary,

    -- * VpcConfig
    VpcConfig (..),
    newVpcConfig,

    -- * Webhook
    Webhook (..),
    newWebhook,

    -- * WebhookFilter
    WebhookFilter (..),
    newWebhookFilter,
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
import Network.AWS.CodeBuild.Types.VpcConfig
import Network.AWS.CodeBuild.Types.Webhook
import Network.AWS.CodeBuild.Types.WebhookBuildType
import Network.AWS.CodeBuild.Types.WebhookFilter
import Network.AWS.CodeBuild.Types.WebhookFilterType
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2016-10-06@ of the Amazon CodeBuild SDK configuration.
defaultService :: Prelude.Service
defaultService =
  Prelude.Service
    { Prelude._svcAbbrev = "CodeBuild",
      Prelude._svcSigner = Sign.v4,
      Prelude._svcPrefix = "codebuild",
      Prelude._svcVersion = "2016-10-06",
      Prelude._svcEndpoint =
        Prelude.defaultEndpoint defaultService,
      Prelude._svcTimeout = Prelude.Just 70,
      Prelude._svcCheck = Prelude.statusSuccess,
      Prelude._svcError =
        Prelude.parseJSONError "CodeBuild",
      Prelude._svcRetry = retry
    }
  where
    retry =
      Prelude.Exponential
        { Prelude._retryBase = 5.0e-2,
          Prelude._retryGrowth = 2,
          Prelude._retryAttempts = 5,
          Prelude._retryCheck = check
        }
    check e
      | Lens.has (Prelude.hasStatus 504) e =
        Prelude.Just "gateway_timeout"
      | Lens.has
          ( Prelude.hasCode
              "ProvisionedThroughputExceededException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throughput_exceeded"
      | Lens.has (Prelude.hasStatus 503) e =
        Prelude.Just "service_unavailable"
      | Lens.has (Prelude.hasStatus 502) e =
        Prelude.Just "bad_gateway"
      | Lens.has (Prelude.hasStatus 429) e =
        Prelude.Just "too_many_requests"
      | Lens.has
          ( Prelude.hasCode "RequestThrottledException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "request_throttled_exception"
      | Lens.has
          ( Prelude.hasCode "ThrottledException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throttled_exception"
      | Lens.has (Prelude.hasStatus 509) e =
        Prelude.Just "limit_exceeded"
      | Lens.has (Prelude.hasStatus 500) e =
        Prelude.Just "general_server_error"
      | Lens.has
          ( Prelude.hasCode "ThrottlingException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throttling_exception"
      | Lens.has
          ( Prelude.hasCode "Throttling"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throttling"
      | Prelude.otherwise = Prelude.Nothing

-- | There was a problem with the underlying OAuth provider.
_OAuthProviderException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_OAuthProviderException =
  Prelude._MatchServiceError
    defaultService
    "OAuthProviderException"

-- | The specified AWS resource cannot be created, because an AWS resource
-- with the same settings already exists.
_ResourceAlreadyExistsException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceAlreadyExistsException =
  Prelude._MatchServiceError
    defaultService
    "ResourceAlreadyExistsException"

-- | The input value that was provided is not valid.
_InvalidInputException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidInputException =
  Prelude._MatchServiceError
    defaultService
    "InvalidInputException"

-- | An AWS service limit was exceeded for the calling AWS account.
_AccountLimitExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_AccountLimitExceededException =
  Prelude._MatchServiceError
    defaultService
    "AccountLimitExceededException"

-- | The specified AWS resource cannot be found.
_ResourceNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "ResourceNotFoundException"
