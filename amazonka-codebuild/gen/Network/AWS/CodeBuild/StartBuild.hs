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
-- Module      : Network.AWS.CodeBuild.StartBuild
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts running a build.
module Network.AWS.CodeBuild.StartBuild
  ( -- * Creating a Request
    startBuild,
    StartBuild,

    -- * Request Lenses
    sbBuildspecOverride,
    sbSourceVersion,
    sbEnvironmentVariablesOverride,
    sbIdempotencyToken,
    sbSourceLocationOverride,
    sbLogsConfigOverride,
    sbArtifactsOverride,
    sbSourceAuthOverride,
    sbImageOverride,
    sbQueuedTimeoutInMinutesOverride,
    sbInsecureSSLOverride,
    sbSecondarySourcesOverride,
    sbReportBuildStatusOverride,
    sbServiceRoleOverride,
    sbRegistryCredentialOverride,
    sbSecondarySourcesVersionOverride,
    sbBuildStatusConfigOverride,
    sbEncryptionKeyOverride,
    sbPrivilegedModeOverride,
    sbGitSubmodulesConfigOverride,
    sbComputeTypeOverride,
    sbCertificateOverride,
    sbSourceTypeOverride,
    sbEnvironmentTypeOverride,
    sbImagePullCredentialsTypeOverride,
    sbSecondaryArtifactsOverride,
    sbGitCloneDepthOverride,
    sbCacheOverride,
    sbTimeoutInMinutesOverride,
    sbDebugSessionEnabled,
    sbProjectName,

    -- * Destructuring the Response
    startBuildResponse,
    StartBuildResponse,

    -- * Response Lenses
    sbrrsBuild,
    sbrrsResponseStatus,
  )
where

import Network.AWS.CodeBuild.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'startBuild' smart constructor.
data StartBuild = StartBuild'
  { _sbBuildspecOverride ::
      !(Maybe Text),
    _sbSourceVersion :: !(Maybe Text),
    _sbEnvironmentVariablesOverride ::
      !(Maybe [EnvironmentVariable]),
    _sbIdempotencyToken :: !(Maybe Text),
    _sbSourceLocationOverride :: !(Maybe Text),
    _sbLogsConfigOverride :: !(Maybe LogsConfig),
    _sbArtifactsOverride :: !(Maybe ProjectArtifacts),
    _sbSourceAuthOverride :: !(Maybe SourceAuth),
    _sbImageOverride :: !(Maybe Text),
    _sbQueuedTimeoutInMinutesOverride :: !(Maybe Nat),
    _sbInsecureSSLOverride :: !(Maybe Bool),
    _sbSecondarySourcesOverride ::
      !(Maybe [ProjectSource]),
    _sbReportBuildStatusOverride :: !(Maybe Bool),
    _sbServiceRoleOverride :: !(Maybe Text),
    _sbRegistryCredentialOverride ::
      !(Maybe RegistryCredential),
    _sbSecondarySourcesVersionOverride ::
      !(Maybe [ProjectSourceVersion]),
    _sbBuildStatusConfigOverride ::
      !(Maybe BuildStatusConfig),
    _sbEncryptionKeyOverride :: !(Maybe Text),
    _sbPrivilegedModeOverride :: !(Maybe Bool),
    _sbGitSubmodulesConfigOverride ::
      !(Maybe GitSubmodulesConfig),
    _sbComputeTypeOverride :: !(Maybe ComputeType),
    _sbCertificateOverride :: !(Maybe Text),
    _sbSourceTypeOverride :: !(Maybe SourceType),
    _sbEnvironmentTypeOverride ::
      !(Maybe EnvironmentType),
    _sbImagePullCredentialsTypeOverride ::
      !(Maybe ImagePullCredentialsType),
    _sbSecondaryArtifactsOverride ::
      !(Maybe [ProjectArtifacts]),
    _sbGitCloneDepthOverride :: !(Maybe Nat),
    _sbCacheOverride :: !(Maybe ProjectCache),
    _sbTimeoutInMinutesOverride :: !(Maybe Nat),
    _sbDebugSessionEnabled :: !(Maybe Bool),
    _sbProjectName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StartBuild' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sbBuildspecOverride' - A buildspec file declaration that overrides, for this build only, the latest one already defined in the build project. If this value is set, it can be either an inline buildspec definition, the path to an alternate buildspec file relative to the value of the built-in @CODEBUILD_SRC_DIR@ environment variable, or the path to an S3 bucket. The bucket must be in the same AWS Region as the build project. Specify the buildspec file using its ARN (for example, @arn:aws:s3:::my-codebuild-sample2/buildspec.yml@ ). If this value is not provided or is set to an empty string, the source code must contain a buildspec file in its root directory. For more information, see <https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html#build-spec-ref-name-storage Buildspec File Name and Storage Location> .
--
-- * 'sbSourceVersion' - The version of the build input to be built, for this build only. If not specified, the latest version is used. If specified, the contents depends on the source provider:     * AWS CodeCommit    * The commit ID, branch, or Git tag to use.     * GitHub    * The commit ID, pull request ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a pull request ID is specified, it must use the format @pr/pull-request-ID@ (for example @pr/25@ ). If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.     * Bitbucket    * The commit ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.     * Amazon S3    * The version ID of the object that represents the build input ZIP file to use. If @sourceVersion@ is specified at the project level, then this @sourceVersion@ (at the build level) takes precedence.  For more information, see <https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html Source Version Sample with CodeBuild> in the /AWS CodeBuild User Guide/ .
--
-- * 'sbEnvironmentVariablesOverride' - A set of environment variables that overrides, for this build only, the latest ones already defined in the build project.
--
-- * 'sbIdempotencyToken' - A unique, case sensitive identifier you provide to ensure the idempotency of the StartBuild request. The token is included in the StartBuild request and is valid for 5 minutes. If you repeat the StartBuild request with the same token, but change a parameter, AWS CodeBuild returns a parameter mismatch error.
--
-- * 'sbSourceLocationOverride' - A location that overrides, for this build, the source location for the one defined in the build project.
--
-- * 'sbLogsConfigOverride' - Log settings for this build that override the log settings defined in the build project.
--
-- * 'sbArtifactsOverride' - Build output artifact settings that override, for this build only, the latest ones already defined in the build project.
--
-- * 'sbSourceAuthOverride' - An authorization type for this build that overrides the one defined in the build project. This override applies only if the build project's source is BitBucket or GitHub.
--
-- * 'sbImageOverride' - The name of an image for this build that overrides the one specified in the build project.
--
-- * 'sbQueuedTimeoutInMinutesOverride' - The number of minutes a build is allowed to be queued before it times out.
--
-- * 'sbInsecureSSLOverride' - Enable this flag to override the insecure SSL setting that is specified in the build project. The insecure SSL setting determines whether to ignore SSL warnings while connecting to the project source code. This override applies only if the build's source is GitHub Enterprise.
--
-- * 'sbSecondarySourcesOverride' - An array of @ProjectSource@ objects.
--
-- * 'sbReportBuildStatusOverride' - Set to true to report to your source provider the status of a build's start and completion. If you use this option with a source provider other than GitHub, GitHub Enterprise, or Bitbucket, an @invalidInputException@ is thrown.  To be able to report the build status to the source provider, the user associated with the source provider must have write access to the repo. If the user does not have write access, the build status cannot be updated. For more information, see <https://docs.aws.amazon.com/codebuild/latest/userguide/access-tokens.html Source provider access> in the /AWS CodeBuild User Guide/ .
--
-- * 'sbServiceRoleOverride' - The name of a service role for this build that overrides the one specified in the build project.
--
-- * 'sbRegistryCredentialOverride' - The credentials for access to a private registry.
--
-- * 'sbSecondarySourcesVersionOverride' - An array of @ProjectSourceVersion@ objects that specify one or more versions of the project's secondary sources to be used for this build only.
--
-- * 'sbBuildStatusConfigOverride' - Contains information that defines how the build project reports the build status to the source provider. This option is only used when the source provider is @GITHUB@ , @GITHUB_ENTERPRISE@ , or @BITBUCKET@ .
--
-- * 'sbEncryptionKeyOverride' - The AWS Key Management Service (AWS KMS) customer master key (CMK) that overrides the one specified in the build project. The CMK key encrypts the build output artifacts. You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using the format @alias/<alias-name>@ ).
--
-- * 'sbPrivilegedModeOverride' - Enable this flag to override privileged mode in the build project.
--
-- * 'sbGitSubmodulesConfigOverride' - Information about the Git submodules configuration for this build of an AWS CodeBuild build project.
--
-- * 'sbComputeTypeOverride' - The name of a compute type for this build that overrides the one specified in the build project.
--
-- * 'sbCertificateOverride' - The name of a certificate for this build that overrides the one specified in the build project.
--
-- * 'sbSourceTypeOverride' - A source input type, for this build, that overrides the source input defined in the build project.
--
-- * 'sbEnvironmentTypeOverride' - A container type for this build that overrides the one specified in the build project.
--
-- * 'sbImagePullCredentialsTypeOverride' - The type of credentials AWS CodeBuild uses to pull images in your build. There are two valid values:      * CODEBUILD    * Specifies that AWS CodeBuild uses its own credentials. This requires that you modify your ECR repository policy to trust AWS CodeBuild's service principal.     * SERVICE_ROLE    * Specifies that AWS CodeBuild uses your build project's service role.  When using a cross-account or private registry image, you must use @SERVICE_ROLE@ credentials. When using an AWS CodeBuild curated image, you must use @CODEBUILD@ credentials.
--
-- * 'sbSecondaryArtifactsOverride' - An array of @ProjectArtifacts@ objects.
--
-- * 'sbGitCloneDepthOverride' - The user-defined depth of history, with a minimum value of 0, that overrides, for this build only, any previous depth of history defined in the build project.
--
-- * 'sbCacheOverride' - A ProjectCache object specified for this build that overrides the one defined in the build project.
--
-- * 'sbTimeoutInMinutesOverride' - The number of build timeout minutes, from 5 to 480 (8 hours), that overrides, for this build only, the latest setting already defined in the build project.
--
-- * 'sbDebugSessionEnabled' - Specifies if session debugging is enabled for this build. For more information, see <https://docs.aws.amazon.com/codebuild/latest/userguide/session-manager.html Viewing a running build in Session Manager> .
--
-- * 'sbProjectName' - The name of the AWS CodeBuild build project to start running a build.
startBuild ::
  -- | 'sbProjectName'
  Text ->
  StartBuild
startBuild pProjectName_ =
  StartBuild'
    { _sbBuildspecOverride = Nothing,
      _sbSourceVersion = Nothing,
      _sbEnvironmentVariablesOverride = Nothing,
      _sbIdempotencyToken = Nothing,
      _sbSourceLocationOverride = Nothing,
      _sbLogsConfigOverride = Nothing,
      _sbArtifactsOverride = Nothing,
      _sbSourceAuthOverride = Nothing,
      _sbImageOverride = Nothing,
      _sbQueuedTimeoutInMinutesOverride = Nothing,
      _sbInsecureSSLOverride = Nothing,
      _sbSecondarySourcesOverride = Nothing,
      _sbReportBuildStatusOverride = Nothing,
      _sbServiceRoleOverride = Nothing,
      _sbRegistryCredentialOverride = Nothing,
      _sbSecondarySourcesVersionOverride = Nothing,
      _sbBuildStatusConfigOverride = Nothing,
      _sbEncryptionKeyOverride = Nothing,
      _sbPrivilegedModeOverride = Nothing,
      _sbGitSubmodulesConfigOverride = Nothing,
      _sbComputeTypeOverride = Nothing,
      _sbCertificateOverride = Nothing,
      _sbSourceTypeOverride = Nothing,
      _sbEnvironmentTypeOverride = Nothing,
      _sbImagePullCredentialsTypeOverride = Nothing,
      _sbSecondaryArtifactsOverride = Nothing,
      _sbGitCloneDepthOverride = Nothing,
      _sbCacheOverride = Nothing,
      _sbTimeoutInMinutesOverride = Nothing,
      _sbDebugSessionEnabled = Nothing,
      _sbProjectName = pProjectName_
    }

-- | A buildspec file declaration that overrides, for this build only, the latest one already defined in the build project. If this value is set, it can be either an inline buildspec definition, the path to an alternate buildspec file relative to the value of the built-in @CODEBUILD_SRC_DIR@ environment variable, or the path to an S3 bucket. The bucket must be in the same AWS Region as the build project. Specify the buildspec file using its ARN (for example, @arn:aws:s3:::my-codebuild-sample2/buildspec.yml@ ). If this value is not provided or is set to an empty string, the source code must contain a buildspec file in its root directory. For more information, see <https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html#build-spec-ref-name-storage Buildspec File Name and Storage Location> .
sbBuildspecOverride :: Lens' StartBuild (Maybe Text)
sbBuildspecOverride = lens _sbBuildspecOverride (\s a -> s {_sbBuildspecOverride = a})

-- | The version of the build input to be built, for this build only. If not specified, the latest version is used. If specified, the contents depends on the source provider:     * AWS CodeCommit    * The commit ID, branch, or Git tag to use.     * GitHub    * The commit ID, pull request ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a pull request ID is specified, it must use the format @pr/pull-request-ID@ (for example @pr/25@ ). If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.     * Bitbucket    * The commit ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.     * Amazon S3    * The version ID of the object that represents the build input ZIP file to use. If @sourceVersion@ is specified at the project level, then this @sourceVersion@ (at the build level) takes precedence.  For more information, see <https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html Source Version Sample with CodeBuild> in the /AWS CodeBuild User Guide/ .
sbSourceVersion :: Lens' StartBuild (Maybe Text)
sbSourceVersion = lens _sbSourceVersion (\s a -> s {_sbSourceVersion = a})

-- | A set of environment variables that overrides, for this build only, the latest ones already defined in the build project.
sbEnvironmentVariablesOverride :: Lens' StartBuild [EnvironmentVariable]
sbEnvironmentVariablesOverride = lens _sbEnvironmentVariablesOverride (\s a -> s {_sbEnvironmentVariablesOverride = a}) . _Default . _Coerce

-- | A unique, case sensitive identifier you provide to ensure the idempotency of the StartBuild request. The token is included in the StartBuild request and is valid for 5 minutes. If you repeat the StartBuild request with the same token, but change a parameter, AWS CodeBuild returns a parameter mismatch error.
sbIdempotencyToken :: Lens' StartBuild (Maybe Text)
sbIdempotencyToken = lens _sbIdempotencyToken (\s a -> s {_sbIdempotencyToken = a})

-- | A location that overrides, for this build, the source location for the one defined in the build project.
sbSourceLocationOverride :: Lens' StartBuild (Maybe Text)
sbSourceLocationOverride = lens _sbSourceLocationOverride (\s a -> s {_sbSourceLocationOverride = a})

-- | Log settings for this build that override the log settings defined in the build project.
sbLogsConfigOverride :: Lens' StartBuild (Maybe LogsConfig)
sbLogsConfigOverride = lens _sbLogsConfigOverride (\s a -> s {_sbLogsConfigOverride = a})

-- | Build output artifact settings that override, for this build only, the latest ones already defined in the build project.
sbArtifactsOverride :: Lens' StartBuild (Maybe ProjectArtifacts)
sbArtifactsOverride = lens _sbArtifactsOverride (\s a -> s {_sbArtifactsOverride = a})

-- | An authorization type for this build that overrides the one defined in the build project. This override applies only if the build project's source is BitBucket or GitHub.
sbSourceAuthOverride :: Lens' StartBuild (Maybe SourceAuth)
sbSourceAuthOverride = lens _sbSourceAuthOverride (\s a -> s {_sbSourceAuthOverride = a})

-- | The name of an image for this build that overrides the one specified in the build project.
sbImageOverride :: Lens' StartBuild (Maybe Text)
sbImageOverride = lens _sbImageOverride (\s a -> s {_sbImageOverride = a})

-- | The number of minutes a build is allowed to be queued before it times out.
sbQueuedTimeoutInMinutesOverride :: Lens' StartBuild (Maybe Natural)
sbQueuedTimeoutInMinutesOverride = lens _sbQueuedTimeoutInMinutesOverride (\s a -> s {_sbQueuedTimeoutInMinutesOverride = a}) . mapping _Nat

-- | Enable this flag to override the insecure SSL setting that is specified in the build project. The insecure SSL setting determines whether to ignore SSL warnings while connecting to the project source code. This override applies only if the build's source is GitHub Enterprise.
sbInsecureSSLOverride :: Lens' StartBuild (Maybe Bool)
sbInsecureSSLOverride = lens _sbInsecureSSLOverride (\s a -> s {_sbInsecureSSLOverride = a})

-- | An array of @ProjectSource@ objects.
sbSecondarySourcesOverride :: Lens' StartBuild [ProjectSource]
sbSecondarySourcesOverride = lens _sbSecondarySourcesOverride (\s a -> s {_sbSecondarySourcesOverride = a}) . _Default . _Coerce

-- | Set to true to report to your source provider the status of a build's start and completion. If you use this option with a source provider other than GitHub, GitHub Enterprise, or Bitbucket, an @invalidInputException@ is thrown.  To be able to report the build status to the source provider, the user associated with the source provider must have write access to the repo. If the user does not have write access, the build status cannot be updated. For more information, see <https://docs.aws.amazon.com/codebuild/latest/userguide/access-tokens.html Source provider access> in the /AWS CodeBuild User Guide/ .
sbReportBuildStatusOverride :: Lens' StartBuild (Maybe Bool)
sbReportBuildStatusOverride = lens _sbReportBuildStatusOverride (\s a -> s {_sbReportBuildStatusOverride = a})

-- | The name of a service role for this build that overrides the one specified in the build project.
sbServiceRoleOverride :: Lens' StartBuild (Maybe Text)
sbServiceRoleOverride = lens _sbServiceRoleOverride (\s a -> s {_sbServiceRoleOverride = a})

-- | The credentials for access to a private registry.
sbRegistryCredentialOverride :: Lens' StartBuild (Maybe RegistryCredential)
sbRegistryCredentialOverride = lens _sbRegistryCredentialOverride (\s a -> s {_sbRegistryCredentialOverride = a})

-- | An array of @ProjectSourceVersion@ objects that specify one or more versions of the project's secondary sources to be used for this build only.
sbSecondarySourcesVersionOverride :: Lens' StartBuild [ProjectSourceVersion]
sbSecondarySourcesVersionOverride = lens _sbSecondarySourcesVersionOverride (\s a -> s {_sbSecondarySourcesVersionOverride = a}) . _Default . _Coerce

-- | Contains information that defines how the build project reports the build status to the source provider. This option is only used when the source provider is @GITHUB@ , @GITHUB_ENTERPRISE@ , or @BITBUCKET@ .
sbBuildStatusConfigOverride :: Lens' StartBuild (Maybe BuildStatusConfig)
sbBuildStatusConfigOverride = lens _sbBuildStatusConfigOverride (\s a -> s {_sbBuildStatusConfigOverride = a})

-- | The AWS Key Management Service (AWS KMS) customer master key (CMK) that overrides the one specified in the build project. The CMK key encrypts the build output artifacts. You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using the format @alias/<alias-name>@ ).
sbEncryptionKeyOverride :: Lens' StartBuild (Maybe Text)
sbEncryptionKeyOverride = lens _sbEncryptionKeyOverride (\s a -> s {_sbEncryptionKeyOverride = a})

-- | Enable this flag to override privileged mode in the build project.
sbPrivilegedModeOverride :: Lens' StartBuild (Maybe Bool)
sbPrivilegedModeOverride = lens _sbPrivilegedModeOverride (\s a -> s {_sbPrivilegedModeOverride = a})

-- | Information about the Git submodules configuration for this build of an AWS CodeBuild build project.
sbGitSubmodulesConfigOverride :: Lens' StartBuild (Maybe GitSubmodulesConfig)
sbGitSubmodulesConfigOverride = lens _sbGitSubmodulesConfigOverride (\s a -> s {_sbGitSubmodulesConfigOverride = a})

-- | The name of a compute type for this build that overrides the one specified in the build project.
sbComputeTypeOverride :: Lens' StartBuild (Maybe ComputeType)
sbComputeTypeOverride = lens _sbComputeTypeOverride (\s a -> s {_sbComputeTypeOverride = a})

-- | The name of a certificate for this build that overrides the one specified in the build project.
sbCertificateOverride :: Lens' StartBuild (Maybe Text)
sbCertificateOverride = lens _sbCertificateOverride (\s a -> s {_sbCertificateOverride = a})

-- | A source input type, for this build, that overrides the source input defined in the build project.
sbSourceTypeOverride :: Lens' StartBuild (Maybe SourceType)
sbSourceTypeOverride = lens _sbSourceTypeOverride (\s a -> s {_sbSourceTypeOverride = a})

-- | A container type for this build that overrides the one specified in the build project.
sbEnvironmentTypeOverride :: Lens' StartBuild (Maybe EnvironmentType)
sbEnvironmentTypeOverride = lens _sbEnvironmentTypeOverride (\s a -> s {_sbEnvironmentTypeOverride = a})

-- | The type of credentials AWS CodeBuild uses to pull images in your build. There are two valid values:      * CODEBUILD    * Specifies that AWS CodeBuild uses its own credentials. This requires that you modify your ECR repository policy to trust AWS CodeBuild's service principal.     * SERVICE_ROLE    * Specifies that AWS CodeBuild uses your build project's service role.  When using a cross-account or private registry image, you must use @SERVICE_ROLE@ credentials. When using an AWS CodeBuild curated image, you must use @CODEBUILD@ credentials.
sbImagePullCredentialsTypeOverride :: Lens' StartBuild (Maybe ImagePullCredentialsType)
sbImagePullCredentialsTypeOverride = lens _sbImagePullCredentialsTypeOverride (\s a -> s {_sbImagePullCredentialsTypeOverride = a})

-- | An array of @ProjectArtifacts@ objects.
sbSecondaryArtifactsOverride :: Lens' StartBuild [ProjectArtifacts]
sbSecondaryArtifactsOverride = lens _sbSecondaryArtifactsOverride (\s a -> s {_sbSecondaryArtifactsOverride = a}) . _Default . _Coerce

-- | The user-defined depth of history, with a minimum value of 0, that overrides, for this build only, any previous depth of history defined in the build project.
sbGitCloneDepthOverride :: Lens' StartBuild (Maybe Natural)
sbGitCloneDepthOverride = lens _sbGitCloneDepthOverride (\s a -> s {_sbGitCloneDepthOverride = a}) . mapping _Nat

-- | A ProjectCache object specified for this build that overrides the one defined in the build project.
sbCacheOverride :: Lens' StartBuild (Maybe ProjectCache)
sbCacheOverride = lens _sbCacheOverride (\s a -> s {_sbCacheOverride = a})

-- | The number of build timeout minutes, from 5 to 480 (8 hours), that overrides, for this build only, the latest setting already defined in the build project.
sbTimeoutInMinutesOverride :: Lens' StartBuild (Maybe Natural)
sbTimeoutInMinutesOverride = lens _sbTimeoutInMinutesOverride (\s a -> s {_sbTimeoutInMinutesOverride = a}) . mapping _Nat

-- | Specifies if session debugging is enabled for this build. For more information, see <https://docs.aws.amazon.com/codebuild/latest/userguide/session-manager.html Viewing a running build in Session Manager> .
sbDebugSessionEnabled :: Lens' StartBuild (Maybe Bool)
sbDebugSessionEnabled = lens _sbDebugSessionEnabled (\s a -> s {_sbDebugSessionEnabled = a})

-- | The name of the AWS CodeBuild build project to start running a build.
sbProjectName :: Lens' StartBuild Text
sbProjectName = lens _sbProjectName (\s a -> s {_sbProjectName = a})

instance AWSRequest StartBuild where
  type Rs StartBuild = StartBuildResponse
  request = postJSON codeBuild
  response =
    receiveJSON
      ( \s h x ->
          StartBuildResponse'
            <$> (x .?> "build") <*> (pure (fromEnum s))
      )

instance Hashable StartBuild

instance NFData StartBuild

instance ToHeaders StartBuild where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("CodeBuild_20161006.StartBuild" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StartBuild where
  toJSON StartBuild' {..} =
    object
      ( catMaybes
          [ ("buildspecOverride" .=) <$> _sbBuildspecOverride,
            ("sourceVersion" .=) <$> _sbSourceVersion,
            ("environmentVariablesOverride" .=)
              <$> _sbEnvironmentVariablesOverride,
            ("idempotencyToken" .=) <$> _sbIdempotencyToken,
            ("sourceLocationOverride" .=)
              <$> _sbSourceLocationOverride,
            ("logsConfigOverride" .=) <$> _sbLogsConfigOverride,
            ("artifactsOverride" .=) <$> _sbArtifactsOverride,
            ("sourceAuthOverride" .=) <$> _sbSourceAuthOverride,
            ("imageOverride" .=) <$> _sbImageOverride,
            ("queuedTimeoutInMinutesOverride" .=)
              <$> _sbQueuedTimeoutInMinutesOverride,
            ("insecureSslOverride" .=)
              <$> _sbInsecureSSLOverride,
            ("secondarySourcesOverride" .=)
              <$> _sbSecondarySourcesOverride,
            ("reportBuildStatusOverride" .=)
              <$> _sbReportBuildStatusOverride,
            ("serviceRoleOverride" .=)
              <$> _sbServiceRoleOverride,
            ("registryCredentialOverride" .=)
              <$> _sbRegistryCredentialOverride,
            ("secondarySourcesVersionOverride" .=)
              <$> _sbSecondarySourcesVersionOverride,
            ("buildStatusConfigOverride" .=)
              <$> _sbBuildStatusConfigOverride,
            ("encryptionKeyOverride" .=)
              <$> _sbEncryptionKeyOverride,
            ("privilegedModeOverride" .=)
              <$> _sbPrivilegedModeOverride,
            ("gitSubmodulesConfigOverride" .=)
              <$> _sbGitSubmodulesConfigOverride,
            ("computeTypeOverride" .=)
              <$> _sbComputeTypeOverride,
            ("certificateOverride" .=)
              <$> _sbCertificateOverride,
            ("sourceTypeOverride" .=) <$> _sbSourceTypeOverride,
            ("environmentTypeOverride" .=)
              <$> _sbEnvironmentTypeOverride,
            ("imagePullCredentialsTypeOverride" .=)
              <$> _sbImagePullCredentialsTypeOverride,
            ("secondaryArtifactsOverride" .=)
              <$> _sbSecondaryArtifactsOverride,
            ("gitCloneDepthOverride" .=)
              <$> _sbGitCloneDepthOverride,
            ("cacheOverride" .=) <$> _sbCacheOverride,
            ("timeoutInMinutesOverride" .=)
              <$> _sbTimeoutInMinutesOverride,
            ("debugSessionEnabled" .=)
              <$> _sbDebugSessionEnabled,
            Just ("projectName" .= _sbProjectName)
          ]
      )

instance ToPath StartBuild where
  toPath = const "/"

instance ToQuery StartBuild where
  toQuery = const mempty

-- | /See:/ 'startBuildResponse' smart constructor.
data StartBuildResponse = StartBuildResponse'
  { _sbrrsBuild ::
      !(Maybe Build),
    _sbrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StartBuildResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sbrrsBuild' - Information about the build to be run.
--
-- * 'sbrrsResponseStatus' - -- | The response status code.
startBuildResponse ::
  -- | 'sbrrsResponseStatus'
  Int ->
  StartBuildResponse
startBuildResponse pResponseStatus_ =
  StartBuildResponse'
    { _sbrrsBuild = Nothing,
      _sbrrsResponseStatus = pResponseStatus_
    }

-- | Information about the build to be run.
sbrrsBuild :: Lens' StartBuildResponse (Maybe Build)
sbrrsBuild = lens _sbrrsBuild (\s a -> s {_sbrrsBuild = a})

-- | -- | The response status code.
sbrrsResponseStatus :: Lens' StartBuildResponse Int
sbrrsResponseStatus = lens _sbrrsResponseStatus (\s a -> s {_sbrrsResponseStatus = a})

instance NFData StartBuildResponse
