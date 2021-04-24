{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.Types.BuildBatch
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.BuildBatch where

import Network.AWS.CodeBuild.Types.BuildArtifacts
import Network.AWS.CodeBuild.Types.BuildBatchPhase
import Network.AWS.CodeBuild.Types.BuildGroup
import Network.AWS.CodeBuild.Types.LogsConfig
import Network.AWS.CodeBuild.Types.ProjectBuildBatchConfig
import Network.AWS.CodeBuild.Types.ProjectCache
import Network.AWS.CodeBuild.Types.ProjectEnvironment
import Network.AWS.CodeBuild.Types.ProjectFileSystemLocation
import Network.AWS.CodeBuild.Types.ProjectSource
import Network.AWS.CodeBuild.Types.ProjectSourceVersion
import Network.AWS.CodeBuild.Types.StatusType
import Network.AWS.CodeBuild.Types.VPCConfig
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about a batch build.
--
--
--
-- /See:/ 'buildBatch' smart constructor.
data BuildBatch = BuildBatch'
  { _bbVpcConfig ::
      !(Maybe VPCConfig),
    _bbResolvedSourceVersion :: !(Maybe Text),
    _bbSecondaryArtifacts ::
      !(Maybe [BuildArtifacts]),
    _bbSourceVersion :: !(Maybe Text),
    _bbPhases :: !(Maybe [BuildBatchPhase]),
    _bbCache :: !(Maybe ProjectCache),
    _bbServiceRole :: !(Maybe Text),
    _bbBuildBatchNumber :: !(Maybe Integer),
    _bbSecondarySourceVersions ::
      !(Maybe [ProjectSourceVersion]),
    _bbEncryptionKey :: !(Maybe Text),
    _bbArtifacts :: !(Maybe BuildArtifacts),
    _bbStartTime :: !(Maybe POSIX),
    _bbId :: !(Maybe Text),
    _bbEnvironment :: !(Maybe ProjectEnvironment),
    _bbSource :: !(Maybe ProjectSource),
    _bbArn :: !(Maybe Text),
    _bbProjectName :: !(Maybe Text),
    _bbEndTime :: !(Maybe POSIX),
    _bbBuildGroups :: !(Maybe [BuildGroup]),
    _bbBuildTimeoutInMinutes :: !(Maybe Int),
    _bbQueuedTimeoutInMinutes :: !(Maybe Int),
    _bbSecondarySources :: !(Maybe [ProjectSource]),
    _bbComplete :: !(Maybe Bool),
    _bbLogConfig :: !(Maybe LogsConfig),
    _bbCurrentPhase :: !(Maybe Text),
    _bbBuildBatchStatus :: !(Maybe StatusType),
    _bbInitiator :: !(Maybe Text),
    _bbBuildBatchConfig ::
      !(Maybe ProjectBuildBatchConfig),
    _bbFileSystemLocations ::
      !(Maybe [ProjectFileSystemLocation]),
    _bbDebugSessionEnabled :: !(Maybe Bool)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'BuildBatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbVpcConfig' - Undocumented member.
--
-- * 'bbResolvedSourceVersion' - The identifier of the resolved version of this batch build's source code.     * For AWS CodeCommit, GitHub, GitHub Enterprise, and BitBucket, the commit ID.     * For AWS CodePipeline, the source revision provided by AWS CodePipeline.     * For Amazon S3, this does not apply.
--
-- * 'bbSecondaryArtifacts' - An array of @BuildArtifacts@ objects the define the build artifacts for this batch build.
--
-- * 'bbSourceVersion' - The identifier of the version of the source code to be built.
--
-- * 'bbPhases' - An array of @BuildBatchPhase@ objects the specify the phases of the batch build.
--
-- * 'bbCache' - Undocumented member.
--
-- * 'bbServiceRole' - The name of a service role used for builds in the batch.
--
-- * 'bbBuildBatchNumber' - The number of the batch build. For each project, the @buildBatchNumber@ of its first batch build is @1@ . The @buildBatchNumber@ of each subsequent batch build is incremented by @1@ . If a batch build is deleted, the @buildBatchNumber@ of other batch builds does not change.
--
-- * 'bbSecondarySourceVersions' - An array of @ProjectSourceVersion@ objects. Each @ProjectSourceVersion@ must be one of:      * For AWS CodeCommit: the commit ID, branch, or Git tag to use.     * For GitHub: the commit ID, pull request ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a pull request ID is specified, it must use the format @pr/pull-request-ID@ (for example, @pr/25@ ). If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.     * For Bitbucket: the commit ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.     * For Amazon S3: the version ID of the object that represents the build input ZIP file to use.
--
-- * 'bbEncryptionKey' - The AWS Key Management Service (AWS KMS) customer master key (CMK) to be used for encrypting the batch build output artifacts. You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using the format @alias/<alias-name>@ ).
--
-- * 'bbArtifacts' - A @BuildArtifacts@ object the defines the build artifacts for this batch build.
--
-- * 'bbStartTime' - The date and time that the batch build started.
--
-- * 'bbId' - The identifier of the batch build.
--
-- * 'bbEnvironment' - Undocumented member.
--
-- * 'bbSource' - Undocumented member.
--
-- * 'bbArn' - The ARN of the batch build.
--
-- * 'bbProjectName' - The name of the batch build project.
--
-- * 'bbEndTime' - The date and time that the batch build ended.
--
-- * 'bbBuildGroups' - An array of @BuildGroup@ objects that define the build groups for the batch build.
--
-- * 'bbBuildTimeoutInMinutes' - Specifies the maximum amount of time, in minutes, that the build in a batch must be completed in.
--
-- * 'bbQueuedTimeoutInMinutes' - Specifies the amount of time, in minutes, that the batch build is allowed to be queued before it times out.
--
-- * 'bbSecondarySources' - An array of @ProjectSource@ objects that define the sources for the batch build.
--
-- * 'bbComplete' - Indicates if the batch build is complete.
--
-- * 'bbLogConfig' - Undocumented member.
--
-- * 'bbCurrentPhase' - The current phase of the batch build.
--
-- * 'bbBuildBatchStatus' - The status of the batch build.
--
-- * 'bbInitiator' - The entity that started the batch build. Valid values include:     * If AWS CodePipeline started the build, the pipeline's name (for example, @codepipeline/my-demo-pipeline@ ).     * If an AWS Identity and Access Management (IAM) user started the build, the user's name.     * If the Jenkins plugin for AWS CodeBuild started the build, the string @CodeBuild-Jenkins-Plugin@ .
--
-- * 'bbBuildBatchConfig' - Undocumented member.
--
-- * 'bbFileSystemLocations' - An array of @ProjectFileSystemLocation@ objects for the batch build project. A @ProjectFileSystemLocation@ object specifies the @identifier@ , @location@ , @mountOptions@ , @mountPoint@ , and @type@ of a file system created using Amazon Elastic File System.
--
-- * 'bbDebugSessionEnabled' -  Specifies if session debugging is enabled for this batch build. For more information, see <https://docs.aws.amazon.com/codebuild/latest/userguide/session-manager.html Viewing a running build in Session Manager> . Batch session debugging is not supported for matrix batch builds.
buildBatch ::
  BuildBatch
buildBatch =
  BuildBatch'
    { _bbVpcConfig = Nothing,
      _bbResolvedSourceVersion = Nothing,
      _bbSecondaryArtifacts = Nothing,
      _bbSourceVersion = Nothing,
      _bbPhases = Nothing,
      _bbCache = Nothing,
      _bbServiceRole = Nothing,
      _bbBuildBatchNumber = Nothing,
      _bbSecondarySourceVersions = Nothing,
      _bbEncryptionKey = Nothing,
      _bbArtifacts = Nothing,
      _bbStartTime = Nothing,
      _bbId = Nothing,
      _bbEnvironment = Nothing,
      _bbSource = Nothing,
      _bbArn = Nothing,
      _bbProjectName = Nothing,
      _bbEndTime = Nothing,
      _bbBuildGroups = Nothing,
      _bbBuildTimeoutInMinutes = Nothing,
      _bbQueuedTimeoutInMinutes = Nothing,
      _bbSecondarySources = Nothing,
      _bbComplete = Nothing,
      _bbLogConfig = Nothing,
      _bbCurrentPhase = Nothing,
      _bbBuildBatchStatus = Nothing,
      _bbInitiator = Nothing,
      _bbBuildBatchConfig = Nothing,
      _bbFileSystemLocations = Nothing,
      _bbDebugSessionEnabled = Nothing
    }

-- | Undocumented member.
bbVpcConfig :: Lens' BuildBatch (Maybe VPCConfig)
bbVpcConfig = lens _bbVpcConfig (\s a -> s {_bbVpcConfig = a})

-- | The identifier of the resolved version of this batch build's source code.     * For AWS CodeCommit, GitHub, GitHub Enterprise, and BitBucket, the commit ID.     * For AWS CodePipeline, the source revision provided by AWS CodePipeline.     * For Amazon S3, this does not apply.
bbResolvedSourceVersion :: Lens' BuildBatch (Maybe Text)
bbResolvedSourceVersion = lens _bbResolvedSourceVersion (\s a -> s {_bbResolvedSourceVersion = a})

-- | An array of @BuildArtifacts@ objects the define the build artifacts for this batch build.
bbSecondaryArtifacts :: Lens' BuildBatch [BuildArtifacts]
bbSecondaryArtifacts = lens _bbSecondaryArtifacts (\s a -> s {_bbSecondaryArtifacts = a}) . _Default . _Coerce

-- | The identifier of the version of the source code to be built.
bbSourceVersion :: Lens' BuildBatch (Maybe Text)
bbSourceVersion = lens _bbSourceVersion (\s a -> s {_bbSourceVersion = a})

-- | An array of @BuildBatchPhase@ objects the specify the phases of the batch build.
bbPhases :: Lens' BuildBatch [BuildBatchPhase]
bbPhases = lens _bbPhases (\s a -> s {_bbPhases = a}) . _Default . _Coerce

-- | Undocumented member.
bbCache :: Lens' BuildBatch (Maybe ProjectCache)
bbCache = lens _bbCache (\s a -> s {_bbCache = a})

-- | The name of a service role used for builds in the batch.
bbServiceRole :: Lens' BuildBatch (Maybe Text)
bbServiceRole = lens _bbServiceRole (\s a -> s {_bbServiceRole = a})

-- | The number of the batch build. For each project, the @buildBatchNumber@ of its first batch build is @1@ . The @buildBatchNumber@ of each subsequent batch build is incremented by @1@ . If a batch build is deleted, the @buildBatchNumber@ of other batch builds does not change.
bbBuildBatchNumber :: Lens' BuildBatch (Maybe Integer)
bbBuildBatchNumber = lens _bbBuildBatchNumber (\s a -> s {_bbBuildBatchNumber = a})

-- | An array of @ProjectSourceVersion@ objects. Each @ProjectSourceVersion@ must be one of:      * For AWS CodeCommit: the commit ID, branch, or Git tag to use.     * For GitHub: the commit ID, pull request ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a pull request ID is specified, it must use the format @pr/pull-request-ID@ (for example, @pr/25@ ). If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.     * For Bitbucket: the commit ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.     * For Amazon S3: the version ID of the object that represents the build input ZIP file to use.
bbSecondarySourceVersions :: Lens' BuildBatch [ProjectSourceVersion]
bbSecondarySourceVersions = lens _bbSecondarySourceVersions (\s a -> s {_bbSecondarySourceVersions = a}) . _Default . _Coerce

-- | The AWS Key Management Service (AWS KMS) customer master key (CMK) to be used for encrypting the batch build output artifacts. You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using the format @alias/<alias-name>@ ).
bbEncryptionKey :: Lens' BuildBatch (Maybe Text)
bbEncryptionKey = lens _bbEncryptionKey (\s a -> s {_bbEncryptionKey = a})

-- | A @BuildArtifacts@ object the defines the build artifacts for this batch build.
bbArtifacts :: Lens' BuildBatch (Maybe BuildArtifacts)
bbArtifacts = lens _bbArtifacts (\s a -> s {_bbArtifacts = a})

-- | The date and time that the batch build started.
bbStartTime :: Lens' BuildBatch (Maybe UTCTime)
bbStartTime = lens _bbStartTime (\s a -> s {_bbStartTime = a}) . mapping _Time

-- | The identifier of the batch build.
bbId :: Lens' BuildBatch (Maybe Text)
bbId = lens _bbId (\s a -> s {_bbId = a})

-- | Undocumented member.
bbEnvironment :: Lens' BuildBatch (Maybe ProjectEnvironment)
bbEnvironment = lens _bbEnvironment (\s a -> s {_bbEnvironment = a})

-- | Undocumented member.
bbSource :: Lens' BuildBatch (Maybe ProjectSource)
bbSource = lens _bbSource (\s a -> s {_bbSource = a})

-- | The ARN of the batch build.
bbArn :: Lens' BuildBatch (Maybe Text)
bbArn = lens _bbArn (\s a -> s {_bbArn = a})

-- | The name of the batch build project.
bbProjectName :: Lens' BuildBatch (Maybe Text)
bbProjectName = lens _bbProjectName (\s a -> s {_bbProjectName = a})

-- | The date and time that the batch build ended.
bbEndTime :: Lens' BuildBatch (Maybe UTCTime)
bbEndTime = lens _bbEndTime (\s a -> s {_bbEndTime = a}) . mapping _Time

-- | An array of @BuildGroup@ objects that define the build groups for the batch build.
bbBuildGroups :: Lens' BuildBatch [BuildGroup]
bbBuildGroups = lens _bbBuildGroups (\s a -> s {_bbBuildGroups = a}) . _Default . _Coerce

-- | Specifies the maximum amount of time, in minutes, that the build in a batch must be completed in.
bbBuildTimeoutInMinutes :: Lens' BuildBatch (Maybe Int)
bbBuildTimeoutInMinutes = lens _bbBuildTimeoutInMinutes (\s a -> s {_bbBuildTimeoutInMinutes = a})

-- | Specifies the amount of time, in minutes, that the batch build is allowed to be queued before it times out.
bbQueuedTimeoutInMinutes :: Lens' BuildBatch (Maybe Int)
bbQueuedTimeoutInMinutes = lens _bbQueuedTimeoutInMinutes (\s a -> s {_bbQueuedTimeoutInMinutes = a})

-- | An array of @ProjectSource@ objects that define the sources for the batch build.
bbSecondarySources :: Lens' BuildBatch [ProjectSource]
bbSecondarySources = lens _bbSecondarySources (\s a -> s {_bbSecondarySources = a}) . _Default . _Coerce

-- | Indicates if the batch build is complete.
bbComplete :: Lens' BuildBatch (Maybe Bool)
bbComplete = lens _bbComplete (\s a -> s {_bbComplete = a})

-- | Undocumented member.
bbLogConfig :: Lens' BuildBatch (Maybe LogsConfig)
bbLogConfig = lens _bbLogConfig (\s a -> s {_bbLogConfig = a})

-- | The current phase of the batch build.
bbCurrentPhase :: Lens' BuildBatch (Maybe Text)
bbCurrentPhase = lens _bbCurrentPhase (\s a -> s {_bbCurrentPhase = a})

-- | The status of the batch build.
bbBuildBatchStatus :: Lens' BuildBatch (Maybe StatusType)
bbBuildBatchStatus = lens _bbBuildBatchStatus (\s a -> s {_bbBuildBatchStatus = a})

-- | The entity that started the batch build. Valid values include:     * If AWS CodePipeline started the build, the pipeline's name (for example, @codepipeline/my-demo-pipeline@ ).     * If an AWS Identity and Access Management (IAM) user started the build, the user's name.     * If the Jenkins plugin for AWS CodeBuild started the build, the string @CodeBuild-Jenkins-Plugin@ .
bbInitiator :: Lens' BuildBatch (Maybe Text)
bbInitiator = lens _bbInitiator (\s a -> s {_bbInitiator = a})

-- | Undocumented member.
bbBuildBatchConfig :: Lens' BuildBatch (Maybe ProjectBuildBatchConfig)
bbBuildBatchConfig = lens _bbBuildBatchConfig (\s a -> s {_bbBuildBatchConfig = a})

-- | An array of @ProjectFileSystemLocation@ objects for the batch build project. A @ProjectFileSystemLocation@ object specifies the @identifier@ , @location@ , @mountOptions@ , @mountPoint@ , and @type@ of a file system created using Amazon Elastic File System.
bbFileSystemLocations :: Lens' BuildBatch [ProjectFileSystemLocation]
bbFileSystemLocations = lens _bbFileSystemLocations (\s a -> s {_bbFileSystemLocations = a}) . _Default . _Coerce

-- |  Specifies if session debugging is enabled for this batch build. For more information, see <https://docs.aws.amazon.com/codebuild/latest/userguide/session-manager.html Viewing a running build in Session Manager> . Batch session debugging is not supported for matrix batch builds.
bbDebugSessionEnabled :: Lens' BuildBatch (Maybe Bool)
bbDebugSessionEnabled = lens _bbDebugSessionEnabled (\s a -> s {_bbDebugSessionEnabled = a})

instance FromJSON BuildBatch where
  parseJSON =
    withObject
      "BuildBatch"
      ( \x ->
          BuildBatch'
            <$> (x .:? "vpcConfig")
            <*> (x .:? "resolvedSourceVersion")
            <*> (x .:? "secondaryArtifacts" .!= mempty)
            <*> (x .:? "sourceVersion")
            <*> (x .:? "phases" .!= mempty)
            <*> (x .:? "cache")
            <*> (x .:? "serviceRole")
            <*> (x .:? "buildBatchNumber")
            <*> (x .:? "secondarySourceVersions" .!= mempty)
            <*> (x .:? "encryptionKey")
            <*> (x .:? "artifacts")
            <*> (x .:? "startTime")
            <*> (x .:? "id")
            <*> (x .:? "environment")
            <*> (x .:? "source")
            <*> (x .:? "arn")
            <*> (x .:? "projectName")
            <*> (x .:? "endTime")
            <*> (x .:? "buildGroups" .!= mempty)
            <*> (x .:? "buildTimeoutInMinutes")
            <*> (x .:? "queuedTimeoutInMinutes")
            <*> (x .:? "secondarySources" .!= mempty)
            <*> (x .:? "complete")
            <*> (x .:? "logConfig")
            <*> (x .:? "currentPhase")
            <*> (x .:? "buildBatchStatus")
            <*> (x .:? "initiator")
            <*> (x .:? "buildBatchConfig")
            <*> (x .:? "fileSystemLocations" .!= mempty)
            <*> (x .:? "debugSessionEnabled")
      )

instance Hashable BuildBatch

instance NFData BuildBatch
