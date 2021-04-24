{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.StartBuildBatch
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts a batch build for a project.
module Network.AWS.CodeBuild.StartBuildBatch
  ( -- * Creating a Request
    startBuildBatch,
    StartBuildBatch,

    -- * Request Lenses
    sbbBuildspecOverride,
    sbbSourceVersion,
    sbbEnvironmentVariablesOverride,
    sbbIdempotencyToken,
    sbbBuildBatchConfigOverride,
    sbbSourceLocationOverride,
    sbbLogsConfigOverride,
    sbbArtifactsOverride,
    sbbSourceAuthOverride,
    sbbBuildTimeoutInMinutesOverride,
    sbbImageOverride,
    sbbQueuedTimeoutInMinutesOverride,
    sbbInsecureSSLOverride,
    sbbSecondarySourcesOverride,
    sbbServiceRoleOverride,
    sbbRegistryCredentialOverride,
    sbbSecondarySourcesVersionOverride,
    sbbEncryptionKeyOverride,
    sbbPrivilegedModeOverride,
    sbbReportBuildBatchStatusOverride,
    sbbGitSubmodulesConfigOverride,
    sbbComputeTypeOverride,
    sbbCertificateOverride,
    sbbSourceTypeOverride,
    sbbEnvironmentTypeOverride,
    sbbImagePullCredentialsTypeOverride,
    sbbSecondaryArtifactsOverride,
    sbbGitCloneDepthOverride,
    sbbCacheOverride,
    sbbDebugSessionEnabled,
    sbbProjectName,

    -- * Destructuring the Response
    startBuildBatchResponse,
    StartBuildBatchResponse,

    -- * Response Lenses
    srsBuildBatch,
    srsResponseStatus,
  )
where

import Network.AWS.CodeBuild.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'startBuildBatch' smart constructor.
data StartBuildBatch = StartBuildBatch'
  { _sbbBuildspecOverride ::
      !(Maybe Text),
    _sbbSourceVersion :: !(Maybe Text),
    _sbbEnvironmentVariablesOverride ::
      !(Maybe [EnvironmentVariable]),
    _sbbIdempotencyToken :: !(Maybe Text),
    _sbbBuildBatchConfigOverride ::
      !(Maybe ProjectBuildBatchConfig),
    _sbbSourceLocationOverride ::
      !(Maybe Text),
    _sbbLogsConfigOverride ::
      !(Maybe LogsConfig),
    _sbbArtifactsOverride ::
      !(Maybe ProjectArtifacts),
    _sbbSourceAuthOverride ::
      !(Maybe SourceAuth),
    _sbbBuildTimeoutInMinutesOverride ::
      !(Maybe Nat),
    _sbbImageOverride :: !(Maybe Text),
    _sbbQueuedTimeoutInMinutesOverride ::
      !(Maybe Nat),
    _sbbInsecureSSLOverride ::
      !(Maybe Bool),
    _sbbSecondarySourcesOverride ::
      !(Maybe [ProjectSource]),
    _sbbServiceRoleOverride ::
      !(Maybe Text),
    _sbbRegistryCredentialOverride ::
      !(Maybe RegistryCredential),
    _sbbSecondarySourcesVersionOverride ::
      !(Maybe [ProjectSourceVersion]),
    _sbbEncryptionKeyOverride ::
      !(Maybe Text),
    _sbbPrivilegedModeOverride ::
      !(Maybe Bool),
    _sbbReportBuildBatchStatusOverride ::
      !(Maybe Bool),
    _sbbGitSubmodulesConfigOverride ::
      !(Maybe GitSubmodulesConfig),
    _sbbComputeTypeOverride ::
      !(Maybe ComputeType),
    _sbbCertificateOverride ::
      !(Maybe Text),
    _sbbSourceTypeOverride ::
      !(Maybe SourceType),
    _sbbEnvironmentTypeOverride ::
      !(Maybe EnvironmentType),
    _sbbImagePullCredentialsTypeOverride ::
      !(Maybe ImagePullCredentialsType),
    _sbbSecondaryArtifactsOverride ::
      !(Maybe [ProjectArtifacts]),
    _sbbGitCloneDepthOverride ::
      !(Maybe Nat),
    _sbbCacheOverride ::
      !(Maybe ProjectCache),
    _sbbDebugSessionEnabled ::
      !(Maybe Bool),
    _sbbProjectName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StartBuildBatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sbbBuildspecOverride' - A buildspec file declaration that overrides, for this build only, the latest one already defined in the build project. If this value is set, it can be either an inline buildspec definition, the path to an alternate buildspec file relative to the value of the built-in @CODEBUILD_SRC_DIR@ environment variable, or the path to an S3 bucket. The bucket must be in the same AWS Region as the build project. Specify the buildspec file using its ARN (for example, @arn:aws:s3:::my-codebuild-sample2/buildspec.yml@ ). If this value is not provided or is set to an empty string, the source code must contain a buildspec file in its root directory. For more information, see <https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html#build-spec-ref-name-storage Buildspec File Name and Storage Location> .
--
-- * 'sbbSourceVersion' - The version of the batch build input to be built, for this build only. If not specified, the latest version is used. If specified, the contents depends on the source provider:     * AWS CodeCommit    * The commit ID, branch, or Git tag to use.     * GitHub    * The commit ID, pull request ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a pull request ID is specified, it must use the format @pr/pull-request-ID@ (for example @pr/25@ ). If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.     * Bitbucket    * The commit ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.     * Amazon S3    * The version ID of the object that represents the build input ZIP file to use. If @sourceVersion@ is specified at the project level, then this @sourceVersion@ (at the build level) takes precedence.  For more information, see <https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html Source Version Sample with CodeBuild> in the /AWS CodeBuild User Guide/ .
--
-- * 'sbbEnvironmentVariablesOverride' - An array of @EnvironmentVariable@ objects that override, or add to, the environment variables defined in the batch build project.
--
-- * 'sbbIdempotencyToken' - A unique, case sensitive identifier you provide to ensure the idempotency of the @StartBuildBatch@ request. The token is included in the @StartBuildBatch@ request and is valid for five minutes. If you repeat the @StartBuildBatch@ request with the same token, but change a parameter, AWS CodeBuild returns a parameter mismatch error.
--
-- * 'sbbBuildBatchConfigOverride' - A @BuildBatchConfigOverride@ object that contains batch build configuration overrides.
--
-- * 'sbbSourceLocationOverride' - A location that overrides, for this batch build, the source location defined in the batch build project.
--
-- * 'sbbLogsConfigOverride' - A @LogsConfig@ object that override the log settings defined in the batch build project.
--
-- * 'sbbArtifactsOverride' - An array of @ProjectArtifacts@ objects that contains information about the build output artifact overrides for the build project.
--
-- * 'sbbSourceAuthOverride' - A @SourceAuth@ object that overrides the one defined in the batch build project. This override applies only if the build project's source is BitBucket or GitHub.
--
-- * 'sbbBuildTimeoutInMinutesOverride' - Overrides the build timeout specified in the batch build project.
--
-- * 'sbbImageOverride' - The name of an image for this batch build that overrides the one specified in the batch build project.
--
-- * 'sbbQueuedTimeoutInMinutesOverride' - The number of minutes a batch build is allowed to be queued before it times out.
--
-- * 'sbbInsecureSSLOverride' - Enable this flag to override the insecure SSL setting that is specified in the batch build project. The insecure SSL setting determines whether to ignore SSL warnings while connecting to the project source code. This override applies only if the build's source is GitHub Enterprise.
--
-- * 'sbbSecondarySourcesOverride' - An array of @ProjectSource@ objects that override the secondary sources defined in the batch build project.
--
-- * 'sbbServiceRoleOverride' - The name of a service role for this batch build that overrides the one specified in the batch build project.
--
-- * 'sbbRegistryCredentialOverride' - A @RegistryCredential@ object that overrides credentials for access to a private registry.
--
-- * 'sbbSecondarySourcesVersionOverride' - An array of @ProjectSourceVersion@ objects that override the secondary source versions in the batch build project.
--
-- * 'sbbEncryptionKeyOverride' - The AWS Key Management Service (AWS KMS) customer master key (CMK) that overrides the one specified in the batch build project. The CMK key encrypts the build output artifacts. You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using the format @alias/<alias-name>@ ).
--
-- * 'sbbPrivilegedModeOverride' - Enable this flag to override privileged mode in the batch build project.
--
-- * 'sbbReportBuildBatchStatusOverride' - Set to @true@ to report to your source provider the status of a batch build's start and completion. If you use this option with a source provider other than GitHub, GitHub Enterprise, or Bitbucket, an @invalidInputException@ is thrown.
--
-- * 'sbbGitSubmodulesConfigOverride' - A @GitSubmodulesConfig@ object that overrides the Git submodules configuration for this batch build.
--
-- * 'sbbComputeTypeOverride' - The name of a compute type for this batch build that overrides the one specified in the batch build project.
--
-- * 'sbbCertificateOverride' - The name of a certificate for this batch build that overrides the one specified in the batch build project.
--
-- * 'sbbSourceTypeOverride' - The source input type that overrides the source input defined in the batch build project.
--
-- * 'sbbEnvironmentTypeOverride' - A container type for this batch build that overrides the one specified in the batch build project.
--
-- * 'sbbImagePullCredentialsTypeOverride' - The type of credentials AWS CodeBuild uses to pull images in your batch build. There are two valid values:      * CODEBUILD    * Specifies that AWS CodeBuild uses its own credentials. This requires that you modify your ECR repository policy to trust AWS CodeBuild's service principal.     * SERVICE_ROLE    * Specifies that AWS CodeBuild uses your build project's service role.  When using a cross-account or private registry image, you must use @SERVICE_ROLE@ credentials. When using an AWS CodeBuild curated image, you must use @CODEBUILD@ credentials.
--
-- * 'sbbSecondaryArtifactsOverride' - An array of @ProjectArtifacts@ objects that override the secondary artifacts defined in the batch build project.
--
-- * 'sbbGitCloneDepthOverride' - The user-defined depth of history, with a minimum value of 0, that overrides, for this batch build only, any previous depth of history defined in the batch build project.
--
-- * 'sbbCacheOverride' - A @ProjectCache@ object that specifies cache overrides.
--
-- * 'sbbDebugSessionEnabled' - Specifies if session debugging is enabled for this batch build. For more information, see <https://docs.aws.amazon.com/codebuild/latest/userguide/session-manager.html Viewing a running build in Session Manager> . Batch session debugging is not supported for matrix batch builds.
--
-- * 'sbbProjectName' - The name of the project.
startBuildBatch ::
  -- | 'sbbProjectName'
  Text ->
  StartBuildBatch
startBuildBatch pProjectName_ =
  StartBuildBatch'
    { _sbbBuildspecOverride = Nothing,
      _sbbSourceVersion = Nothing,
      _sbbEnvironmentVariablesOverride = Nothing,
      _sbbIdempotencyToken = Nothing,
      _sbbBuildBatchConfigOverride = Nothing,
      _sbbSourceLocationOverride = Nothing,
      _sbbLogsConfigOverride = Nothing,
      _sbbArtifactsOverride = Nothing,
      _sbbSourceAuthOverride = Nothing,
      _sbbBuildTimeoutInMinutesOverride = Nothing,
      _sbbImageOverride = Nothing,
      _sbbQueuedTimeoutInMinutesOverride = Nothing,
      _sbbInsecureSSLOverride = Nothing,
      _sbbSecondarySourcesOverride = Nothing,
      _sbbServiceRoleOverride = Nothing,
      _sbbRegistryCredentialOverride = Nothing,
      _sbbSecondarySourcesVersionOverride = Nothing,
      _sbbEncryptionKeyOverride = Nothing,
      _sbbPrivilegedModeOverride = Nothing,
      _sbbReportBuildBatchStatusOverride = Nothing,
      _sbbGitSubmodulesConfigOverride = Nothing,
      _sbbComputeTypeOverride = Nothing,
      _sbbCertificateOverride = Nothing,
      _sbbSourceTypeOverride = Nothing,
      _sbbEnvironmentTypeOverride = Nothing,
      _sbbImagePullCredentialsTypeOverride = Nothing,
      _sbbSecondaryArtifactsOverride = Nothing,
      _sbbGitCloneDepthOverride = Nothing,
      _sbbCacheOverride = Nothing,
      _sbbDebugSessionEnabled = Nothing,
      _sbbProjectName = pProjectName_
    }

-- | A buildspec file declaration that overrides, for this build only, the latest one already defined in the build project. If this value is set, it can be either an inline buildspec definition, the path to an alternate buildspec file relative to the value of the built-in @CODEBUILD_SRC_DIR@ environment variable, or the path to an S3 bucket. The bucket must be in the same AWS Region as the build project. Specify the buildspec file using its ARN (for example, @arn:aws:s3:::my-codebuild-sample2/buildspec.yml@ ). If this value is not provided or is set to an empty string, the source code must contain a buildspec file in its root directory. For more information, see <https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html#build-spec-ref-name-storage Buildspec File Name and Storage Location> .
sbbBuildspecOverride :: Lens' StartBuildBatch (Maybe Text)
sbbBuildspecOverride = lens _sbbBuildspecOverride (\s a -> s {_sbbBuildspecOverride = a})

-- | The version of the batch build input to be built, for this build only. If not specified, the latest version is used. If specified, the contents depends on the source provider:     * AWS CodeCommit    * The commit ID, branch, or Git tag to use.     * GitHub    * The commit ID, pull request ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a pull request ID is specified, it must use the format @pr/pull-request-ID@ (for example @pr/25@ ). If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.     * Bitbucket    * The commit ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.     * Amazon S3    * The version ID of the object that represents the build input ZIP file to use. If @sourceVersion@ is specified at the project level, then this @sourceVersion@ (at the build level) takes precedence.  For more information, see <https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html Source Version Sample with CodeBuild> in the /AWS CodeBuild User Guide/ .
sbbSourceVersion :: Lens' StartBuildBatch (Maybe Text)
sbbSourceVersion = lens _sbbSourceVersion (\s a -> s {_sbbSourceVersion = a})

-- | An array of @EnvironmentVariable@ objects that override, or add to, the environment variables defined in the batch build project.
sbbEnvironmentVariablesOverride :: Lens' StartBuildBatch [EnvironmentVariable]
sbbEnvironmentVariablesOverride = lens _sbbEnvironmentVariablesOverride (\s a -> s {_sbbEnvironmentVariablesOverride = a}) . _Default . _Coerce

-- | A unique, case sensitive identifier you provide to ensure the idempotency of the @StartBuildBatch@ request. The token is included in the @StartBuildBatch@ request and is valid for five minutes. If you repeat the @StartBuildBatch@ request with the same token, but change a parameter, AWS CodeBuild returns a parameter mismatch error.
sbbIdempotencyToken :: Lens' StartBuildBatch (Maybe Text)
sbbIdempotencyToken = lens _sbbIdempotencyToken (\s a -> s {_sbbIdempotencyToken = a})

-- | A @BuildBatchConfigOverride@ object that contains batch build configuration overrides.
sbbBuildBatchConfigOverride :: Lens' StartBuildBatch (Maybe ProjectBuildBatchConfig)
sbbBuildBatchConfigOverride = lens _sbbBuildBatchConfigOverride (\s a -> s {_sbbBuildBatchConfigOverride = a})

-- | A location that overrides, for this batch build, the source location defined in the batch build project.
sbbSourceLocationOverride :: Lens' StartBuildBatch (Maybe Text)
sbbSourceLocationOverride = lens _sbbSourceLocationOverride (\s a -> s {_sbbSourceLocationOverride = a})

-- | A @LogsConfig@ object that override the log settings defined in the batch build project.
sbbLogsConfigOverride :: Lens' StartBuildBatch (Maybe LogsConfig)
sbbLogsConfigOverride = lens _sbbLogsConfigOverride (\s a -> s {_sbbLogsConfigOverride = a})

-- | An array of @ProjectArtifacts@ objects that contains information about the build output artifact overrides for the build project.
sbbArtifactsOverride :: Lens' StartBuildBatch (Maybe ProjectArtifacts)
sbbArtifactsOverride = lens _sbbArtifactsOverride (\s a -> s {_sbbArtifactsOverride = a})

-- | A @SourceAuth@ object that overrides the one defined in the batch build project. This override applies only if the build project's source is BitBucket or GitHub.
sbbSourceAuthOverride :: Lens' StartBuildBatch (Maybe SourceAuth)
sbbSourceAuthOverride = lens _sbbSourceAuthOverride (\s a -> s {_sbbSourceAuthOverride = a})

-- | Overrides the build timeout specified in the batch build project.
sbbBuildTimeoutInMinutesOverride :: Lens' StartBuildBatch (Maybe Natural)
sbbBuildTimeoutInMinutesOverride = lens _sbbBuildTimeoutInMinutesOverride (\s a -> s {_sbbBuildTimeoutInMinutesOverride = a}) . mapping _Nat

-- | The name of an image for this batch build that overrides the one specified in the batch build project.
sbbImageOverride :: Lens' StartBuildBatch (Maybe Text)
sbbImageOverride = lens _sbbImageOverride (\s a -> s {_sbbImageOverride = a})

-- | The number of minutes a batch build is allowed to be queued before it times out.
sbbQueuedTimeoutInMinutesOverride :: Lens' StartBuildBatch (Maybe Natural)
sbbQueuedTimeoutInMinutesOverride = lens _sbbQueuedTimeoutInMinutesOverride (\s a -> s {_sbbQueuedTimeoutInMinutesOverride = a}) . mapping _Nat

-- | Enable this flag to override the insecure SSL setting that is specified in the batch build project. The insecure SSL setting determines whether to ignore SSL warnings while connecting to the project source code. This override applies only if the build's source is GitHub Enterprise.
sbbInsecureSSLOverride :: Lens' StartBuildBatch (Maybe Bool)
sbbInsecureSSLOverride = lens _sbbInsecureSSLOverride (\s a -> s {_sbbInsecureSSLOverride = a})

-- | An array of @ProjectSource@ objects that override the secondary sources defined in the batch build project.
sbbSecondarySourcesOverride :: Lens' StartBuildBatch [ProjectSource]
sbbSecondarySourcesOverride = lens _sbbSecondarySourcesOverride (\s a -> s {_sbbSecondarySourcesOverride = a}) . _Default . _Coerce

-- | The name of a service role for this batch build that overrides the one specified in the batch build project.
sbbServiceRoleOverride :: Lens' StartBuildBatch (Maybe Text)
sbbServiceRoleOverride = lens _sbbServiceRoleOverride (\s a -> s {_sbbServiceRoleOverride = a})

-- | A @RegistryCredential@ object that overrides credentials for access to a private registry.
sbbRegistryCredentialOverride :: Lens' StartBuildBatch (Maybe RegistryCredential)
sbbRegistryCredentialOverride = lens _sbbRegistryCredentialOverride (\s a -> s {_sbbRegistryCredentialOverride = a})

-- | An array of @ProjectSourceVersion@ objects that override the secondary source versions in the batch build project.
sbbSecondarySourcesVersionOverride :: Lens' StartBuildBatch [ProjectSourceVersion]
sbbSecondarySourcesVersionOverride = lens _sbbSecondarySourcesVersionOverride (\s a -> s {_sbbSecondarySourcesVersionOverride = a}) . _Default . _Coerce

-- | The AWS Key Management Service (AWS KMS) customer master key (CMK) that overrides the one specified in the batch build project. The CMK key encrypts the build output artifacts. You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using the format @alias/<alias-name>@ ).
sbbEncryptionKeyOverride :: Lens' StartBuildBatch (Maybe Text)
sbbEncryptionKeyOverride = lens _sbbEncryptionKeyOverride (\s a -> s {_sbbEncryptionKeyOverride = a})

-- | Enable this flag to override privileged mode in the batch build project.
sbbPrivilegedModeOverride :: Lens' StartBuildBatch (Maybe Bool)
sbbPrivilegedModeOverride = lens _sbbPrivilegedModeOverride (\s a -> s {_sbbPrivilegedModeOverride = a})

-- | Set to @true@ to report to your source provider the status of a batch build's start and completion. If you use this option with a source provider other than GitHub, GitHub Enterprise, or Bitbucket, an @invalidInputException@ is thrown.
sbbReportBuildBatchStatusOverride :: Lens' StartBuildBatch (Maybe Bool)
sbbReportBuildBatchStatusOverride = lens _sbbReportBuildBatchStatusOverride (\s a -> s {_sbbReportBuildBatchStatusOverride = a})

-- | A @GitSubmodulesConfig@ object that overrides the Git submodules configuration for this batch build.
sbbGitSubmodulesConfigOverride :: Lens' StartBuildBatch (Maybe GitSubmodulesConfig)
sbbGitSubmodulesConfigOverride = lens _sbbGitSubmodulesConfigOverride (\s a -> s {_sbbGitSubmodulesConfigOverride = a})

-- | The name of a compute type for this batch build that overrides the one specified in the batch build project.
sbbComputeTypeOverride :: Lens' StartBuildBatch (Maybe ComputeType)
sbbComputeTypeOverride = lens _sbbComputeTypeOverride (\s a -> s {_sbbComputeTypeOverride = a})

-- | The name of a certificate for this batch build that overrides the one specified in the batch build project.
sbbCertificateOverride :: Lens' StartBuildBatch (Maybe Text)
sbbCertificateOverride = lens _sbbCertificateOverride (\s a -> s {_sbbCertificateOverride = a})

-- | The source input type that overrides the source input defined in the batch build project.
sbbSourceTypeOverride :: Lens' StartBuildBatch (Maybe SourceType)
sbbSourceTypeOverride = lens _sbbSourceTypeOverride (\s a -> s {_sbbSourceTypeOverride = a})

-- | A container type for this batch build that overrides the one specified in the batch build project.
sbbEnvironmentTypeOverride :: Lens' StartBuildBatch (Maybe EnvironmentType)
sbbEnvironmentTypeOverride = lens _sbbEnvironmentTypeOverride (\s a -> s {_sbbEnvironmentTypeOverride = a})

-- | The type of credentials AWS CodeBuild uses to pull images in your batch build. There are two valid values:      * CODEBUILD    * Specifies that AWS CodeBuild uses its own credentials. This requires that you modify your ECR repository policy to trust AWS CodeBuild's service principal.     * SERVICE_ROLE    * Specifies that AWS CodeBuild uses your build project's service role.  When using a cross-account or private registry image, you must use @SERVICE_ROLE@ credentials. When using an AWS CodeBuild curated image, you must use @CODEBUILD@ credentials.
sbbImagePullCredentialsTypeOverride :: Lens' StartBuildBatch (Maybe ImagePullCredentialsType)
sbbImagePullCredentialsTypeOverride = lens _sbbImagePullCredentialsTypeOverride (\s a -> s {_sbbImagePullCredentialsTypeOverride = a})

-- | An array of @ProjectArtifacts@ objects that override the secondary artifacts defined in the batch build project.
sbbSecondaryArtifactsOverride :: Lens' StartBuildBatch [ProjectArtifacts]
sbbSecondaryArtifactsOverride = lens _sbbSecondaryArtifactsOverride (\s a -> s {_sbbSecondaryArtifactsOverride = a}) . _Default . _Coerce

-- | The user-defined depth of history, with a minimum value of 0, that overrides, for this batch build only, any previous depth of history defined in the batch build project.
sbbGitCloneDepthOverride :: Lens' StartBuildBatch (Maybe Natural)
sbbGitCloneDepthOverride = lens _sbbGitCloneDepthOverride (\s a -> s {_sbbGitCloneDepthOverride = a}) . mapping _Nat

-- | A @ProjectCache@ object that specifies cache overrides.
sbbCacheOverride :: Lens' StartBuildBatch (Maybe ProjectCache)
sbbCacheOverride = lens _sbbCacheOverride (\s a -> s {_sbbCacheOverride = a})

-- | Specifies if session debugging is enabled for this batch build. For more information, see <https://docs.aws.amazon.com/codebuild/latest/userguide/session-manager.html Viewing a running build in Session Manager> . Batch session debugging is not supported for matrix batch builds.
sbbDebugSessionEnabled :: Lens' StartBuildBatch (Maybe Bool)
sbbDebugSessionEnabled = lens _sbbDebugSessionEnabled (\s a -> s {_sbbDebugSessionEnabled = a})

-- | The name of the project.
sbbProjectName :: Lens' StartBuildBatch Text
sbbProjectName = lens _sbbProjectName (\s a -> s {_sbbProjectName = a})

instance AWSRequest StartBuildBatch where
  type Rs StartBuildBatch = StartBuildBatchResponse
  request = postJSON codeBuild
  response =
    receiveJSON
      ( \s h x ->
          StartBuildBatchResponse'
            <$> (x .?> "buildBatch") <*> (pure (fromEnum s))
      )

instance Hashable StartBuildBatch

instance NFData StartBuildBatch

instance ToHeaders StartBuildBatch where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("CodeBuild_20161006.StartBuildBatch" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StartBuildBatch where
  toJSON StartBuildBatch' {..} =
    object
      ( catMaybes
          [ ("buildspecOverride" .=) <$> _sbbBuildspecOverride,
            ("sourceVersion" .=) <$> _sbbSourceVersion,
            ("environmentVariablesOverride" .=)
              <$> _sbbEnvironmentVariablesOverride,
            ("idempotencyToken" .=) <$> _sbbIdempotencyToken,
            ("buildBatchConfigOverride" .=)
              <$> _sbbBuildBatchConfigOverride,
            ("sourceLocationOverride" .=)
              <$> _sbbSourceLocationOverride,
            ("logsConfigOverride" .=) <$> _sbbLogsConfigOverride,
            ("artifactsOverride" .=) <$> _sbbArtifactsOverride,
            ("sourceAuthOverride" .=) <$> _sbbSourceAuthOverride,
            ("buildTimeoutInMinutesOverride" .=)
              <$> _sbbBuildTimeoutInMinutesOverride,
            ("imageOverride" .=) <$> _sbbImageOverride,
            ("queuedTimeoutInMinutesOverride" .=)
              <$> _sbbQueuedTimeoutInMinutesOverride,
            ("insecureSslOverride" .=)
              <$> _sbbInsecureSSLOverride,
            ("secondarySourcesOverride" .=)
              <$> _sbbSecondarySourcesOverride,
            ("serviceRoleOverride" .=)
              <$> _sbbServiceRoleOverride,
            ("registryCredentialOverride" .=)
              <$> _sbbRegistryCredentialOverride,
            ("secondarySourcesVersionOverride" .=)
              <$> _sbbSecondarySourcesVersionOverride,
            ("encryptionKeyOverride" .=)
              <$> _sbbEncryptionKeyOverride,
            ("privilegedModeOverride" .=)
              <$> _sbbPrivilegedModeOverride,
            ("reportBuildBatchStatusOverride" .=)
              <$> _sbbReportBuildBatchStatusOverride,
            ("gitSubmodulesConfigOverride" .=)
              <$> _sbbGitSubmodulesConfigOverride,
            ("computeTypeOverride" .=)
              <$> _sbbComputeTypeOverride,
            ("certificateOverride" .=)
              <$> _sbbCertificateOverride,
            ("sourceTypeOverride" .=) <$> _sbbSourceTypeOverride,
            ("environmentTypeOverride" .=)
              <$> _sbbEnvironmentTypeOverride,
            ("imagePullCredentialsTypeOverride" .=)
              <$> _sbbImagePullCredentialsTypeOverride,
            ("secondaryArtifactsOverride" .=)
              <$> _sbbSecondaryArtifactsOverride,
            ("gitCloneDepthOverride" .=)
              <$> _sbbGitCloneDepthOverride,
            ("cacheOverride" .=) <$> _sbbCacheOverride,
            ("debugSessionEnabled" .=)
              <$> _sbbDebugSessionEnabled,
            Just ("projectName" .= _sbbProjectName)
          ]
      )

instance ToPath StartBuildBatch where
  toPath = const "/"

instance ToQuery StartBuildBatch where
  toQuery = const mempty

-- | /See:/ 'startBuildBatchResponse' smart constructor.
data StartBuildBatchResponse = StartBuildBatchResponse'
  { _srsBuildBatch ::
      !(Maybe BuildBatch),
    _srsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'StartBuildBatchResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srsBuildBatch' - A @BuildBatch@ object that contains information about the batch build.
--
-- * 'srsResponseStatus' - -- | The response status code.
startBuildBatchResponse ::
  -- | 'srsResponseStatus'
  Int ->
  StartBuildBatchResponse
startBuildBatchResponse pResponseStatus_ =
  StartBuildBatchResponse'
    { _srsBuildBatch = Nothing,
      _srsResponseStatus = pResponseStatus_
    }

-- | A @BuildBatch@ object that contains information about the batch build.
srsBuildBatch :: Lens' StartBuildBatchResponse (Maybe BuildBatch)
srsBuildBatch = lens _srsBuildBatch (\s a -> s {_srsBuildBatch = a})

-- | -- | The response status code.
srsResponseStatus :: Lens' StartBuildBatchResponse Int
srsResponseStatus = lens _srsResponseStatus (\s a -> s {_srsResponseStatus = a})

instance NFData StartBuildBatchResponse
