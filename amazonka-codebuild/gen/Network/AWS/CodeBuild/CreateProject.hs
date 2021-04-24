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
-- Module      : Network.AWS.CodeBuild.CreateProject
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a build project.
module Network.AWS.CodeBuild.CreateProject
  ( -- * Creating a Request
    createProject,
    CreateProject,

    -- * Request Lenses
    cpVpcConfig,
    cpSecondaryArtifacts,
    cpSourceVersion,
    cpCache,
    cpSecondarySourceVersions,
    cpEncryptionKey,
    cpBadgeEnabled,
    cpConcurrentBuildLimit,
    cpLogsConfig,
    cpQueuedTimeoutInMinutes,
    cpSecondarySources,
    cpTags,
    cpTimeoutInMinutes,
    cpDescription,
    cpBuildBatchConfig,
    cpFileSystemLocations,
    cpName,
    cpSource,
    cpArtifacts,
    cpEnvironment,
    cpServiceRole,

    -- * Destructuring the Response
    createProjectResponse,
    CreateProjectResponse,

    -- * Response Lenses
    cprrsProject,
    cprrsResponseStatus,
  )
where

import Network.AWS.CodeBuild.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createProject' smart constructor.
data CreateProject = CreateProject'
  { _cpVpcConfig ::
      !(Maybe VPCConfig),
    _cpSecondaryArtifacts ::
      !(Maybe [ProjectArtifacts]),
    _cpSourceVersion :: !(Maybe Text),
    _cpCache :: !(Maybe ProjectCache),
    _cpSecondarySourceVersions ::
      !(Maybe [ProjectSourceVersion]),
    _cpEncryptionKey :: !(Maybe Text),
    _cpBadgeEnabled :: !(Maybe Bool),
    _cpConcurrentBuildLimit :: !(Maybe Int),
    _cpLogsConfig :: !(Maybe LogsConfig),
    _cpQueuedTimeoutInMinutes :: !(Maybe Nat),
    _cpSecondarySources ::
      !(Maybe [ProjectSource]),
    _cpTags :: !(Maybe [Tag]),
    _cpTimeoutInMinutes :: !(Maybe Nat),
    _cpDescription :: !(Maybe Text),
    _cpBuildBatchConfig ::
      !(Maybe ProjectBuildBatchConfig),
    _cpFileSystemLocations ::
      !(Maybe [ProjectFileSystemLocation]),
    _cpName :: !Text,
    _cpSource :: !ProjectSource,
    _cpArtifacts :: !ProjectArtifacts,
    _cpEnvironment :: !ProjectEnvironment,
    _cpServiceRole :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateProject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpVpcConfig' - VpcConfig enables AWS CodeBuild to access resources in an Amazon VPC.
--
-- * 'cpSecondaryArtifacts' - An array of @ProjectArtifacts@ objects.
--
-- * 'cpSourceVersion' - A version of the build input to be built for this project. If not specified, the latest version is used. If specified, it must be one of:      * For AWS CodeCommit: the commit ID, branch, or Git tag to use.     * For GitHub: the commit ID, pull request ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a pull request ID is specified, it must use the format @pr/pull-request-ID@ (for example @pr/25@ ). If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.     * For Bitbucket: the commit ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.     * For Amazon S3: the version ID of the object that represents the build input ZIP file to use. If @sourceVersion@ is specified at the build level, then that version takes precedence over this @sourceVersion@ (at the project level).  For more information, see <https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html Source Version Sample with CodeBuild> in the /AWS CodeBuild User Guide/ .
--
-- * 'cpCache' - Stores recently used information so that it can be quickly accessed at a later time.
--
-- * 'cpSecondarySourceVersions' - An array of @ProjectSourceVersion@ objects. If @secondarySourceVersions@ is specified at the build level, then they take precedence over these @secondarySourceVersions@ (at the project level).
--
-- * 'cpEncryptionKey' - The AWS Key Management Service (AWS KMS) customer master key (CMK) to be used for encrypting the build output artifacts. You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using the format @alias/<alias-name>@ ).
--
-- * 'cpBadgeEnabled' - Set this to true to generate a publicly accessible URL for your project's build badge.
--
-- * 'cpConcurrentBuildLimit' - The maximum number of concurrent builds that are allowed for this project. New builds are only started if the current number of builds is less than or equal to this limit. If the current build count meets this limit, new builds are throttled and are not run.
--
-- * 'cpLogsConfig' - Information about logs for the build project. These can be logs in Amazon CloudWatch Logs, logs uploaded to a specified S3 bucket, or both.
--
-- * 'cpQueuedTimeoutInMinutes' - The number of minutes a build is allowed to be queued before it times out.
--
-- * 'cpSecondarySources' - An array of @ProjectSource@ objects.
--
-- * 'cpTags' - A list of tag key and value pairs associated with this build project. These tags are available for use by AWS services that support AWS CodeBuild build project tags.
--
-- * 'cpTimeoutInMinutes' - How long, in minutes, from 5 to 480 (8 hours), for AWS CodeBuild to wait before it times out any build that has not been marked as completed. The default is 60 minutes.
--
-- * 'cpDescription' - A description that makes the build project easy to identify.
--
-- * 'cpBuildBatchConfig' - A 'ProjectBuildBatchConfig' object that defines the batch build options for the project.
--
-- * 'cpFileSystemLocations' - An array of @ProjectFileSystemLocation@ objects for a CodeBuild build project. A @ProjectFileSystemLocation@ object specifies the @identifier@ , @location@ , @mountOptions@ , @mountPoint@ , and @type@ of a file system created using Amazon Elastic File System.
--
-- * 'cpName' - The name of the build project.
--
-- * 'cpSource' - Information about the build input source code for the build project.
--
-- * 'cpArtifacts' - Information about the build output artifacts for the build project.
--
-- * 'cpEnvironment' - Information about the build environment for the build project.
--
-- * 'cpServiceRole' - The ARN of the AWS Identity and Access Management (IAM) role that enables AWS CodeBuild to interact with dependent AWS services on behalf of the AWS account.
createProject ::
  -- | 'cpName'
  Text ->
  -- | 'cpSource'
  ProjectSource ->
  -- | 'cpArtifacts'
  ProjectArtifacts ->
  -- | 'cpEnvironment'
  ProjectEnvironment ->
  -- | 'cpServiceRole'
  Text ->
  CreateProject
createProject
  pName_
  pSource_
  pArtifacts_
  pEnvironment_
  pServiceRole_ =
    CreateProject'
      { _cpVpcConfig = Nothing,
        _cpSecondaryArtifacts = Nothing,
        _cpSourceVersion = Nothing,
        _cpCache = Nothing,
        _cpSecondarySourceVersions = Nothing,
        _cpEncryptionKey = Nothing,
        _cpBadgeEnabled = Nothing,
        _cpConcurrentBuildLimit = Nothing,
        _cpLogsConfig = Nothing,
        _cpQueuedTimeoutInMinutes = Nothing,
        _cpSecondarySources = Nothing,
        _cpTags = Nothing,
        _cpTimeoutInMinutes = Nothing,
        _cpDescription = Nothing,
        _cpBuildBatchConfig = Nothing,
        _cpFileSystemLocations = Nothing,
        _cpName = pName_,
        _cpSource = pSource_,
        _cpArtifacts = pArtifacts_,
        _cpEnvironment = pEnvironment_,
        _cpServiceRole = pServiceRole_
      }

-- | VpcConfig enables AWS CodeBuild to access resources in an Amazon VPC.
cpVpcConfig :: Lens' CreateProject (Maybe VPCConfig)
cpVpcConfig = lens _cpVpcConfig (\s a -> s {_cpVpcConfig = a})

-- | An array of @ProjectArtifacts@ objects.
cpSecondaryArtifacts :: Lens' CreateProject [ProjectArtifacts]
cpSecondaryArtifacts = lens _cpSecondaryArtifacts (\s a -> s {_cpSecondaryArtifacts = a}) . _Default . _Coerce

-- | A version of the build input to be built for this project. If not specified, the latest version is used. If specified, it must be one of:      * For AWS CodeCommit: the commit ID, branch, or Git tag to use.     * For GitHub: the commit ID, pull request ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a pull request ID is specified, it must use the format @pr/pull-request-ID@ (for example @pr/25@ ). If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.     * For Bitbucket: the commit ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.     * For Amazon S3: the version ID of the object that represents the build input ZIP file to use. If @sourceVersion@ is specified at the build level, then that version takes precedence over this @sourceVersion@ (at the project level).  For more information, see <https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html Source Version Sample with CodeBuild> in the /AWS CodeBuild User Guide/ .
cpSourceVersion :: Lens' CreateProject (Maybe Text)
cpSourceVersion = lens _cpSourceVersion (\s a -> s {_cpSourceVersion = a})

-- | Stores recently used information so that it can be quickly accessed at a later time.
cpCache :: Lens' CreateProject (Maybe ProjectCache)
cpCache = lens _cpCache (\s a -> s {_cpCache = a})

-- | An array of @ProjectSourceVersion@ objects. If @secondarySourceVersions@ is specified at the build level, then they take precedence over these @secondarySourceVersions@ (at the project level).
cpSecondarySourceVersions :: Lens' CreateProject [ProjectSourceVersion]
cpSecondarySourceVersions = lens _cpSecondarySourceVersions (\s a -> s {_cpSecondarySourceVersions = a}) . _Default . _Coerce

-- | The AWS Key Management Service (AWS KMS) customer master key (CMK) to be used for encrypting the build output artifacts. You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using the format @alias/<alias-name>@ ).
cpEncryptionKey :: Lens' CreateProject (Maybe Text)
cpEncryptionKey = lens _cpEncryptionKey (\s a -> s {_cpEncryptionKey = a})

-- | Set this to true to generate a publicly accessible URL for your project's build badge.
cpBadgeEnabled :: Lens' CreateProject (Maybe Bool)
cpBadgeEnabled = lens _cpBadgeEnabled (\s a -> s {_cpBadgeEnabled = a})

-- | The maximum number of concurrent builds that are allowed for this project. New builds are only started if the current number of builds is less than or equal to this limit. If the current build count meets this limit, new builds are throttled and are not run.
cpConcurrentBuildLimit :: Lens' CreateProject (Maybe Int)
cpConcurrentBuildLimit = lens _cpConcurrentBuildLimit (\s a -> s {_cpConcurrentBuildLimit = a})

-- | Information about logs for the build project. These can be logs in Amazon CloudWatch Logs, logs uploaded to a specified S3 bucket, or both.
cpLogsConfig :: Lens' CreateProject (Maybe LogsConfig)
cpLogsConfig = lens _cpLogsConfig (\s a -> s {_cpLogsConfig = a})

-- | The number of minutes a build is allowed to be queued before it times out.
cpQueuedTimeoutInMinutes :: Lens' CreateProject (Maybe Natural)
cpQueuedTimeoutInMinutes = lens _cpQueuedTimeoutInMinutes (\s a -> s {_cpQueuedTimeoutInMinutes = a}) . mapping _Nat

-- | An array of @ProjectSource@ objects.
cpSecondarySources :: Lens' CreateProject [ProjectSource]
cpSecondarySources = lens _cpSecondarySources (\s a -> s {_cpSecondarySources = a}) . _Default . _Coerce

-- | A list of tag key and value pairs associated with this build project. These tags are available for use by AWS services that support AWS CodeBuild build project tags.
cpTags :: Lens' CreateProject [Tag]
cpTags = lens _cpTags (\s a -> s {_cpTags = a}) . _Default . _Coerce

-- | How long, in minutes, from 5 to 480 (8 hours), for AWS CodeBuild to wait before it times out any build that has not been marked as completed. The default is 60 minutes.
cpTimeoutInMinutes :: Lens' CreateProject (Maybe Natural)
cpTimeoutInMinutes = lens _cpTimeoutInMinutes (\s a -> s {_cpTimeoutInMinutes = a}) . mapping _Nat

-- | A description that makes the build project easy to identify.
cpDescription :: Lens' CreateProject (Maybe Text)
cpDescription = lens _cpDescription (\s a -> s {_cpDescription = a})

-- | A 'ProjectBuildBatchConfig' object that defines the batch build options for the project.
cpBuildBatchConfig :: Lens' CreateProject (Maybe ProjectBuildBatchConfig)
cpBuildBatchConfig = lens _cpBuildBatchConfig (\s a -> s {_cpBuildBatchConfig = a})

-- | An array of @ProjectFileSystemLocation@ objects for a CodeBuild build project. A @ProjectFileSystemLocation@ object specifies the @identifier@ , @location@ , @mountOptions@ , @mountPoint@ , and @type@ of a file system created using Amazon Elastic File System.
cpFileSystemLocations :: Lens' CreateProject [ProjectFileSystemLocation]
cpFileSystemLocations = lens _cpFileSystemLocations (\s a -> s {_cpFileSystemLocations = a}) . _Default . _Coerce

-- | The name of the build project.
cpName :: Lens' CreateProject Text
cpName = lens _cpName (\s a -> s {_cpName = a})

-- | Information about the build input source code for the build project.
cpSource :: Lens' CreateProject ProjectSource
cpSource = lens _cpSource (\s a -> s {_cpSource = a})

-- | Information about the build output artifacts for the build project.
cpArtifacts :: Lens' CreateProject ProjectArtifacts
cpArtifacts = lens _cpArtifacts (\s a -> s {_cpArtifacts = a})

-- | Information about the build environment for the build project.
cpEnvironment :: Lens' CreateProject ProjectEnvironment
cpEnvironment = lens _cpEnvironment (\s a -> s {_cpEnvironment = a})

-- | The ARN of the AWS Identity and Access Management (IAM) role that enables AWS CodeBuild to interact with dependent AWS services on behalf of the AWS account.
cpServiceRole :: Lens' CreateProject Text
cpServiceRole = lens _cpServiceRole (\s a -> s {_cpServiceRole = a})

instance AWSRequest CreateProject where
  type Rs CreateProject = CreateProjectResponse
  request = postJSON codeBuild
  response =
    receiveJSON
      ( \s h x ->
          CreateProjectResponse'
            <$> (x .?> "project") <*> (pure (fromEnum s))
      )

instance Hashable CreateProject

instance NFData CreateProject

instance ToHeaders CreateProject where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("CodeBuild_20161006.CreateProject" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateProject where
  toJSON CreateProject' {..} =
    object
      ( catMaybes
          [ ("vpcConfig" .=) <$> _cpVpcConfig,
            ("secondaryArtifacts" .=) <$> _cpSecondaryArtifacts,
            ("sourceVersion" .=) <$> _cpSourceVersion,
            ("cache" .=) <$> _cpCache,
            ("secondarySourceVersions" .=)
              <$> _cpSecondarySourceVersions,
            ("encryptionKey" .=) <$> _cpEncryptionKey,
            ("badgeEnabled" .=) <$> _cpBadgeEnabled,
            ("concurrentBuildLimit" .=)
              <$> _cpConcurrentBuildLimit,
            ("logsConfig" .=) <$> _cpLogsConfig,
            ("queuedTimeoutInMinutes" .=)
              <$> _cpQueuedTimeoutInMinutes,
            ("secondarySources" .=) <$> _cpSecondarySources,
            ("tags" .=) <$> _cpTags,
            ("timeoutInMinutes" .=) <$> _cpTimeoutInMinutes,
            ("description" .=) <$> _cpDescription,
            ("buildBatchConfig" .=) <$> _cpBuildBatchConfig,
            ("fileSystemLocations" .=)
              <$> _cpFileSystemLocations,
            Just ("name" .= _cpName),
            Just ("source" .= _cpSource),
            Just ("artifacts" .= _cpArtifacts),
            Just ("environment" .= _cpEnvironment),
            Just ("serviceRole" .= _cpServiceRole)
          ]
      )

instance ToPath CreateProject where
  toPath = const "/"

instance ToQuery CreateProject where
  toQuery = const mempty

-- | /See:/ 'createProjectResponse' smart constructor.
data CreateProjectResponse = CreateProjectResponse'
  { _cprrsProject ::
      !(Maybe Project),
    _cprrsResponseStatus ::
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

-- | Creates a value of 'CreateProjectResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cprrsProject' - Information about the build project that was created.
--
-- * 'cprrsResponseStatus' - -- | The response status code.
createProjectResponse ::
  -- | 'cprrsResponseStatus'
  Int ->
  CreateProjectResponse
createProjectResponse pResponseStatus_ =
  CreateProjectResponse'
    { _cprrsProject = Nothing,
      _cprrsResponseStatus = pResponseStatus_
    }

-- | Information about the build project that was created.
cprrsProject :: Lens' CreateProjectResponse (Maybe Project)
cprrsProject = lens _cprrsProject (\s a -> s {_cprrsProject = a})

-- | -- | The response status code.
cprrsResponseStatus :: Lens' CreateProjectResponse Int
cprrsResponseStatus = lens _cprrsResponseStatus (\s a -> s {_cprrsResponseStatus = a})

instance NFData CreateProjectResponse
