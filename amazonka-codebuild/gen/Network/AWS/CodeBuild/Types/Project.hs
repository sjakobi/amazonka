{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.Types.Project
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.Project where

import Network.AWS.CodeBuild.Types.LogsConfig
import Network.AWS.CodeBuild.Types.ProjectArtifacts
import Network.AWS.CodeBuild.Types.ProjectBadge
import Network.AWS.CodeBuild.Types.ProjectBuildBatchConfig
import Network.AWS.CodeBuild.Types.ProjectCache
import Network.AWS.CodeBuild.Types.ProjectEnvironment
import Network.AWS.CodeBuild.Types.ProjectFileSystemLocation
import Network.AWS.CodeBuild.Types.ProjectSource
import Network.AWS.CodeBuild.Types.ProjectSourceVersion
import Network.AWS.CodeBuild.Types.Tag
import Network.AWS.CodeBuild.Types.VPCConfig
import Network.AWS.CodeBuild.Types.Webhook
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a build project.
--
--
--
-- /See:/ 'project' smart constructor.
data Project = Project'
  { _pVpcConfig ::
      !(Maybe VPCConfig),
    _pSecondaryArtifacts :: !(Maybe [ProjectArtifacts]),
    _pSourceVersion :: !(Maybe Text),
    _pCache :: !(Maybe ProjectCache),
    _pServiceRole :: !(Maybe Text),
    _pSecondarySourceVersions ::
      !(Maybe [ProjectSourceVersion]),
    _pWebhook :: !(Maybe Webhook),
    _pEncryptionKey :: !(Maybe Text),
    _pConcurrentBuildLimit :: !(Maybe Int),
    _pArtifacts :: !(Maybe ProjectArtifacts),
    _pEnvironment :: !(Maybe ProjectEnvironment),
    _pSource :: !(Maybe ProjectSource),
    _pArn :: !(Maybe Text),
    _pLogsConfig :: !(Maybe LogsConfig),
    _pName :: !(Maybe Text),
    _pQueuedTimeoutInMinutes :: !(Maybe Nat),
    _pSecondarySources :: !(Maybe [ProjectSource]),
    _pTags :: !(Maybe [Tag]),
    _pTimeoutInMinutes :: !(Maybe Nat),
    _pDescription :: !(Maybe Text),
    _pLastModified :: !(Maybe POSIX),
    _pCreated :: !(Maybe POSIX),
    _pBuildBatchConfig ::
      !(Maybe ProjectBuildBatchConfig),
    _pBadge :: !(Maybe ProjectBadge),
    _pFileSystemLocations ::
      !(Maybe [ProjectFileSystemLocation])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Project' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pVpcConfig' - Information about the VPC configuration that AWS CodeBuild accesses.
--
-- * 'pSecondaryArtifacts' - An array of @ProjectArtifacts@ objects.
--
-- * 'pSourceVersion' - A version of the build input to be built for this project. If not specified, the latest version is used. If specified, it must be one of:     * For AWS CodeCommit: the commit ID, branch, or Git tag to use.     * For GitHub: the commit ID, pull request ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a pull request ID is specified, it must use the format @pr/pull-request-ID@ (for example @pr/25@ ). If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.     * For Bitbucket: the commit ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.     * For Amazon S3: the version ID of the object that represents the build input ZIP file to use. If @sourceVersion@ is specified at the build level, then that version takes precedence over this @sourceVersion@ (at the project level).  For more information, see <https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html Source Version Sample with CodeBuild> in the /AWS CodeBuild User Guide/ .
--
-- * 'pCache' - Information about the cache for the build project.
--
-- * 'pServiceRole' - The ARN of the AWS Identity and Access Management (IAM) role that enables AWS CodeBuild to interact with dependent AWS services on behalf of the AWS account.
--
-- * 'pSecondarySourceVersions' - An array of @ProjectSourceVersion@ objects. If @secondarySourceVersions@ is specified at the build level, then they take over these @secondarySourceVersions@ (at the project level).
--
-- * 'pWebhook' - Information about a webhook that connects repository events to a build project in AWS CodeBuild.
--
-- * 'pEncryptionKey' - The AWS Key Management Service (AWS KMS) customer master key (CMK) to be used for encrypting the build output artifacts. You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using the format @alias/<alias-name>@ ).
--
-- * 'pConcurrentBuildLimit' - The maximum number of concurrent builds that are allowed for this project. New builds are only started if the current number of builds is less than or equal to this limit. If the current build count meets this limit, new builds are throttled and are not run.
--
-- * 'pArtifacts' - Information about the build output artifacts for the build project.
--
-- * 'pEnvironment' - Information about the build environment for this build project.
--
-- * 'pSource' - Information about the build input source code for this build project.
--
-- * 'pArn' - The Amazon Resource Name (ARN) of the build project.
--
-- * 'pLogsConfig' - Information about logs for the build project. A project can create logs in Amazon CloudWatch Logs, an S3 bucket, or both.
--
-- * 'pName' - The name of the build project.
--
-- * 'pQueuedTimeoutInMinutes' - The number of minutes a build is allowed to be queued before it times out.
--
-- * 'pSecondarySources' - An array of @ProjectSource@ objects.
--
-- * 'pTags' - A list of tag key and value pairs associated with this build project. These tags are available for use by AWS services that support AWS CodeBuild build project tags.
--
-- * 'pTimeoutInMinutes' - How long, in minutes, from 5 to 480 (8 hours), for AWS CodeBuild to wait before timing out any related build that did not get marked as completed. The default is 60 minutes.
--
-- * 'pDescription' - A description that makes the build project easy to identify.
--
-- * 'pLastModified' - When the build project's settings were last modified, expressed in Unix time format.
--
-- * 'pCreated' - When the build project was created, expressed in Unix time format.
--
-- * 'pBuildBatchConfig' - A 'ProjectBuildBatchConfig' object that defines the batch build options for the project.
--
-- * 'pBadge' - Information about the build badge for the build project.
--
-- * 'pFileSystemLocations' - An array of @ProjectFileSystemLocation@ objects for a CodeBuild build project. A @ProjectFileSystemLocation@ object specifies the @identifier@ , @location@ , @mountOptions@ , @mountPoint@ , and @type@ of a file system created using Amazon Elastic File System.
project ::
  Project
project =
  Project'
    { _pVpcConfig = Nothing,
      _pSecondaryArtifacts = Nothing,
      _pSourceVersion = Nothing,
      _pCache = Nothing,
      _pServiceRole = Nothing,
      _pSecondarySourceVersions = Nothing,
      _pWebhook = Nothing,
      _pEncryptionKey = Nothing,
      _pConcurrentBuildLimit = Nothing,
      _pArtifacts = Nothing,
      _pEnvironment = Nothing,
      _pSource = Nothing,
      _pArn = Nothing,
      _pLogsConfig = Nothing,
      _pName = Nothing,
      _pQueuedTimeoutInMinutes = Nothing,
      _pSecondarySources = Nothing,
      _pTags = Nothing,
      _pTimeoutInMinutes = Nothing,
      _pDescription = Nothing,
      _pLastModified = Nothing,
      _pCreated = Nothing,
      _pBuildBatchConfig = Nothing,
      _pBadge = Nothing,
      _pFileSystemLocations = Nothing
    }

-- | Information about the VPC configuration that AWS CodeBuild accesses.
pVpcConfig :: Lens' Project (Maybe VPCConfig)
pVpcConfig = lens _pVpcConfig (\s a -> s {_pVpcConfig = a})

-- | An array of @ProjectArtifacts@ objects.
pSecondaryArtifacts :: Lens' Project [ProjectArtifacts]
pSecondaryArtifacts = lens _pSecondaryArtifacts (\s a -> s {_pSecondaryArtifacts = a}) . _Default . _Coerce

-- | A version of the build input to be built for this project. If not specified, the latest version is used. If specified, it must be one of:     * For AWS CodeCommit: the commit ID, branch, or Git tag to use.     * For GitHub: the commit ID, pull request ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a pull request ID is specified, it must use the format @pr/pull-request-ID@ (for example @pr/25@ ). If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.     * For Bitbucket: the commit ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.     * For Amazon S3: the version ID of the object that represents the build input ZIP file to use. If @sourceVersion@ is specified at the build level, then that version takes precedence over this @sourceVersion@ (at the project level).  For more information, see <https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html Source Version Sample with CodeBuild> in the /AWS CodeBuild User Guide/ .
pSourceVersion :: Lens' Project (Maybe Text)
pSourceVersion = lens _pSourceVersion (\s a -> s {_pSourceVersion = a})

-- | Information about the cache for the build project.
pCache :: Lens' Project (Maybe ProjectCache)
pCache = lens _pCache (\s a -> s {_pCache = a})

-- | The ARN of the AWS Identity and Access Management (IAM) role that enables AWS CodeBuild to interact with dependent AWS services on behalf of the AWS account.
pServiceRole :: Lens' Project (Maybe Text)
pServiceRole = lens _pServiceRole (\s a -> s {_pServiceRole = a})

-- | An array of @ProjectSourceVersion@ objects. If @secondarySourceVersions@ is specified at the build level, then they take over these @secondarySourceVersions@ (at the project level).
pSecondarySourceVersions :: Lens' Project [ProjectSourceVersion]
pSecondarySourceVersions = lens _pSecondarySourceVersions (\s a -> s {_pSecondarySourceVersions = a}) . _Default . _Coerce

-- | Information about a webhook that connects repository events to a build project in AWS CodeBuild.
pWebhook :: Lens' Project (Maybe Webhook)
pWebhook = lens _pWebhook (\s a -> s {_pWebhook = a})

-- | The AWS Key Management Service (AWS KMS) customer master key (CMK) to be used for encrypting the build output artifacts. You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using the format @alias/<alias-name>@ ).
pEncryptionKey :: Lens' Project (Maybe Text)
pEncryptionKey = lens _pEncryptionKey (\s a -> s {_pEncryptionKey = a})

-- | The maximum number of concurrent builds that are allowed for this project. New builds are only started if the current number of builds is less than or equal to this limit. If the current build count meets this limit, new builds are throttled and are not run.
pConcurrentBuildLimit :: Lens' Project (Maybe Int)
pConcurrentBuildLimit = lens _pConcurrentBuildLimit (\s a -> s {_pConcurrentBuildLimit = a})

-- | Information about the build output artifacts for the build project.
pArtifacts :: Lens' Project (Maybe ProjectArtifacts)
pArtifacts = lens _pArtifacts (\s a -> s {_pArtifacts = a})

-- | Information about the build environment for this build project.
pEnvironment :: Lens' Project (Maybe ProjectEnvironment)
pEnvironment = lens _pEnvironment (\s a -> s {_pEnvironment = a})

-- | Information about the build input source code for this build project.
pSource :: Lens' Project (Maybe ProjectSource)
pSource = lens _pSource (\s a -> s {_pSource = a})

-- | The Amazon Resource Name (ARN) of the build project.
pArn :: Lens' Project (Maybe Text)
pArn = lens _pArn (\s a -> s {_pArn = a})

-- | Information about logs for the build project. A project can create logs in Amazon CloudWatch Logs, an S3 bucket, or both.
pLogsConfig :: Lens' Project (Maybe LogsConfig)
pLogsConfig = lens _pLogsConfig (\s a -> s {_pLogsConfig = a})

-- | The name of the build project.
pName :: Lens' Project (Maybe Text)
pName = lens _pName (\s a -> s {_pName = a})

-- | The number of minutes a build is allowed to be queued before it times out.
pQueuedTimeoutInMinutes :: Lens' Project (Maybe Natural)
pQueuedTimeoutInMinutes = lens _pQueuedTimeoutInMinutes (\s a -> s {_pQueuedTimeoutInMinutes = a}) . mapping _Nat

-- | An array of @ProjectSource@ objects.
pSecondarySources :: Lens' Project [ProjectSource]
pSecondarySources = lens _pSecondarySources (\s a -> s {_pSecondarySources = a}) . _Default . _Coerce

-- | A list of tag key and value pairs associated with this build project. These tags are available for use by AWS services that support AWS CodeBuild build project tags.
pTags :: Lens' Project [Tag]
pTags = lens _pTags (\s a -> s {_pTags = a}) . _Default . _Coerce

-- | How long, in minutes, from 5 to 480 (8 hours), for AWS CodeBuild to wait before timing out any related build that did not get marked as completed. The default is 60 minutes.
pTimeoutInMinutes :: Lens' Project (Maybe Natural)
pTimeoutInMinutes = lens _pTimeoutInMinutes (\s a -> s {_pTimeoutInMinutes = a}) . mapping _Nat

-- | A description that makes the build project easy to identify.
pDescription :: Lens' Project (Maybe Text)
pDescription = lens _pDescription (\s a -> s {_pDescription = a})

-- | When the build project's settings were last modified, expressed in Unix time format.
pLastModified :: Lens' Project (Maybe UTCTime)
pLastModified = lens _pLastModified (\s a -> s {_pLastModified = a}) . mapping _Time

-- | When the build project was created, expressed in Unix time format.
pCreated :: Lens' Project (Maybe UTCTime)
pCreated = lens _pCreated (\s a -> s {_pCreated = a}) . mapping _Time

-- | A 'ProjectBuildBatchConfig' object that defines the batch build options for the project.
pBuildBatchConfig :: Lens' Project (Maybe ProjectBuildBatchConfig)
pBuildBatchConfig = lens _pBuildBatchConfig (\s a -> s {_pBuildBatchConfig = a})

-- | Information about the build badge for the build project.
pBadge :: Lens' Project (Maybe ProjectBadge)
pBadge = lens _pBadge (\s a -> s {_pBadge = a})

-- | An array of @ProjectFileSystemLocation@ objects for a CodeBuild build project. A @ProjectFileSystemLocation@ object specifies the @identifier@ , @location@ , @mountOptions@ , @mountPoint@ , and @type@ of a file system created using Amazon Elastic File System.
pFileSystemLocations :: Lens' Project [ProjectFileSystemLocation]
pFileSystemLocations = lens _pFileSystemLocations (\s a -> s {_pFileSystemLocations = a}) . _Default . _Coerce

instance FromJSON Project where
  parseJSON =
    withObject
      "Project"
      ( \x ->
          Project'
            <$> (x .:? "vpcConfig")
            <*> (x .:? "secondaryArtifacts" .!= mempty)
            <*> (x .:? "sourceVersion")
            <*> (x .:? "cache")
            <*> (x .:? "serviceRole")
            <*> (x .:? "secondarySourceVersions" .!= mempty)
            <*> (x .:? "webhook")
            <*> (x .:? "encryptionKey")
            <*> (x .:? "concurrentBuildLimit")
            <*> (x .:? "artifacts")
            <*> (x .:? "environment")
            <*> (x .:? "source")
            <*> (x .:? "arn")
            <*> (x .:? "logsConfig")
            <*> (x .:? "name")
            <*> (x .:? "queuedTimeoutInMinutes")
            <*> (x .:? "secondarySources" .!= mempty)
            <*> (x .:? "tags" .!= mempty)
            <*> (x .:? "timeoutInMinutes")
            <*> (x .:? "description")
            <*> (x .:? "lastModified")
            <*> (x .:? "created")
            <*> (x .:? "buildBatchConfig")
            <*> (x .:? "badge")
            <*> (x .:? "fileSystemLocations" .!= mempty)
      )

instance Hashable Project

instance NFData Project
