{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Batch.Types.JobDetail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Batch.Types.JobDetail where

import Network.AWS.Batch.Types.ArrayPropertiesDetail
import Network.AWS.Batch.Types.AttemptDetail
import Network.AWS.Batch.Types.ContainerDetail
import Network.AWS.Batch.Types.JobDependency
import Network.AWS.Batch.Types.JobStatus
import Network.AWS.Batch.Types.JobTimeout
import Network.AWS.Batch.Types.NodeDetails
import Network.AWS.Batch.Types.NodeProperties
import Network.AWS.Batch.Types.PlatformCapability
import Network.AWS.Batch.Types.RetryStrategy
import Network.AWS.Lens
import Network.AWS.Prelude

-- | An object representing an AWS Batch job.
--
--
--
-- /See:/ 'jobDetail' smart constructor.
data JobDetail = JobDetail'
  { _jContainer ::
      !(Maybe ContainerDetail),
    _jStartedAt :: !(Maybe Integer),
    _jDependsOn :: !(Maybe [JobDependency]),
    _jPlatformCapabilities ::
      !(Maybe [PlatformCapability]),
    _jTimeout :: !(Maybe JobTimeout),
    _jArrayProperties :: !(Maybe ArrayPropertiesDetail),
    _jCreatedAt :: !(Maybe Integer),
    _jJobARN :: !(Maybe Text),
    _jNodeDetails :: !(Maybe NodeDetails),
    _jStoppedAt :: !(Maybe Integer),
    _jNodeProperties :: !(Maybe NodeProperties),
    _jTags :: !(Maybe (Map Text Text)),
    _jAttempts :: !(Maybe [AttemptDetail]),
    _jRetryStrategy :: !(Maybe RetryStrategy),
    _jStatusReason :: !(Maybe Text),
    _jParameters :: !(Maybe (Map Text Text)),
    _jPropagateTags :: !(Maybe Bool),
    _jJobName :: !Text,
    _jJobId :: !Text,
    _jJobQueue :: !Text,
    _jStatus :: !JobStatus,
    _jJobDefinition :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'JobDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jContainer' - An object representing the details of the container that's associated with the job.
--
-- * 'jStartedAt' - The Unix timestamp (in milliseconds) for when the job was started (when the job transitioned from the @STARTING@ state to the @RUNNING@ state). This parameter isn't provided for child jobs of array jobs or multi-node parallel jobs.
--
-- * 'jDependsOn' - A list of job IDs that this job depends on.
--
-- * 'jPlatformCapabilities' - The platform capabilities required by the job definition. If no value is specified, it defaults to @EC2@ . Jobs run on Fargate resources specify @FARGATE@ .
--
-- * 'jTimeout' - The timeout configuration for the job.
--
-- * 'jArrayProperties' - The array properties of the job, if it is an array job.
--
-- * 'jCreatedAt' - The Unix timestamp (in milliseconds) for when the job was created. For non-array jobs and parent array jobs, this is when the job entered the @SUBMITTED@ state (at the time 'SubmitJob' was called). For array child jobs, this is when the child job was spawned by its parent and entered the @PENDING@ state.
--
-- * 'jJobARN' - The Amazon Resource Name (ARN) of the job.
--
-- * 'jNodeDetails' - An object representing the details of a node that's associated with a multi-node parallel job.
--
-- * 'jStoppedAt' - The Unix timestamp (in milliseconds) for when the job was stopped (when the job transitioned from the @RUNNING@ state to a terminal state, such as @SUCCEEDED@ or @FAILED@ ).
--
-- * 'jNodeProperties' - An object representing the node properties of a multi-node parallel job.
--
-- * 'jTags' - The tags applied to the job.
--
-- * 'jAttempts' - A list of job attempts associated with this job.
--
-- * 'jRetryStrategy' - The retry strategy to use for this job if an attempt fails.
--
-- * 'jStatusReason' - A short, human-readable string to provide additional details about the current status of the job.
--
-- * 'jParameters' - Additional parameters passed to the job that replace parameter substitution placeholders or override any corresponding parameter defaults from the job definition.
--
-- * 'jPropagateTags' - Specifies whether to propagate the tags from the job or job definition to the corresponding Amazon ECS task. If no value is specified, the tags are not propagated. Tags can only be propagated to the tasks during task creation. For tags with the same name, job tags are given priority over job definitions tags. If the total number of combined tags from the job and job definition is over 50, the job is moved to the @FAILED@ state.
--
-- * 'jJobName' - The name of the job.
--
-- * 'jJobId' - The ID for the job.
--
-- * 'jJobQueue' - The Amazon Resource Name (ARN) of the job queue that the job is associated with.
--
-- * 'jStatus' - The current status for the job.
--
-- * 'jJobDefinition' - The job definition that's used by this job.
jobDetail ::
  -- | 'jJobName'
  Text ->
  -- | 'jJobId'
  Text ->
  -- | 'jJobQueue'
  Text ->
  -- | 'jStatus'
  JobStatus ->
  -- | 'jJobDefinition'
  Text ->
  JobDetail
jobDetail
  pJobName_
  pJobId_
  pJobQueue_
  pStatus_
  pJobDefinition_ =
    JobDetail'
      { _jContainer = Nothing,
        _jStartedAt = Nothing,
        _jDependsOn = Nothing,
        _jPlatformCapabilities = Nothing,
        _jTimeout = Nothing,
        _jArrayProperties = Nothing,
        _jCreatedAt = Nothing,
        _jJobARN = Nothing,
        _jNodeDetails = Nothing,
        _jStoppedAt = Nothing,
        _jNodeProperties = Nothing,
        _jTags = Nothing,
        _jAttempts = Nothing,
        _jRetryStrategy = Nothing,
        _jStatusReason = Nothing,
        _jParameters = Nothing,
        _jPropagateTags = Nothing,
        _jJobName = pJobName_,
        _jJobId = pJobId_,
        _jJobQueue = pJobQueue_,
        _jStatus = pStatus_,
        _jJobDefinition = pJobDefinition_
      }

-- | An object representing the details of the container that's associated with the job.
jContainer :: Lens' JobDetail (Maybe ContainerDetail)
jContainer = lens _jContainer (\s a -> s {_jContainer = a})

-- | The Unix timestamp (in milliseconds) for when the job was started (when the job transitioned from the @STARTING@ state to the @RUNNING@ state). This parameter isn't provided for child jobs of array jobs or multi-node parallel jobs.
jStartedAt :: Lens' JobDetail (Maybe Integer)
jStartedAt = lens _jStartedAt (\s a -> s {_jStartedAt = a})

-- | A list of job IDs that this job depends on.
jDependsOn :: Lens' JobDetail [JobDependency]
jDependsOn = lens _jDependsOn (\s a -> s {_jDependsOn = a}) . _Default . _Coerce

-- | The platform capabilities required by the job definition. If no value is specified, it defaults to @EC2@ . Jobs run on Fargate resources specify @FARGATE@ .
jPlatformCapabilities :: Lens' JobDetail [PlatformCapability]
jPlatformCapabilities = lens _jPlatformCapabilities (\s a -> s {_jPlatformCapabilities = a}) . _Default . _Coerce

-- | The timeout configuration for the job.
jTimeout :: Lens' JobDetail (Maybe JobTimeout)
jTimeout = lens _jTimeout (\s a -> s {_jTimeout = a})

-- | The array properties of the job, if it is an array job.
jArrayProperties :: Lens' JobDetail (Maybe ArrayPropertiesDetail)
jArrayProperties = lens _jArrayProperties (\s a -> s {_jArrayProperties = a})

-- | The Unix timestamp (in milliseconds) for when the job was created. For non-array jobs and parent array jobs, this is when the job entered the @SUBMITTED@ state (at the time 'SubmitJob' was called). For array child jobs, this is when the child job was spawned by its parent and entered the @PENDING@ state.
jCreatedAt :: Lens' JobDetail (Maybe Integer)
jCreatedAt = lens _jCreatedAt (\s a -> s {_jCreatedAt = a})

-- | The Amazon Resource Name (ARN) of the job.
jJobARN :: Lens' JobDetail (Maybe Text)
jJobARN = lens _jJobARN (\s a -> s {_jJobARN = a})

-- | An object representing the details of a node that's associated with a multi-node parallel job.
jNodeDetails :: Lens' JobDetail (Maybe NodeDetails)
jNodeDetails = lens _jNodeDetails (\s a -> s {_jNodeDetails = a})

-- | The Unix timestamp (in milliseconds) for when the job was stopped (when the job transitioned from the @RUNNING@ state to a terminal state, such as @SUCCEEDED@ or @FAILED@ ).
jStoppedAt :: Lens' JobDetail (Maybe Integer)
jStoppedAt = lens _jStoppedAt (\s a -> s {_jStoppedAt = a})

-- | An object representing the node properties of a multi-node parallel job.
jNodeProperties :: Lens' JobDetail (Maybe NodeProperties)
jNodeProperties = lens _jNodeProperties (\s a -> s {_jNodeProperties = a})

-- | The tags applied to the job.
jTags :: Lens' JobDetail (HashMap Text Text)
jTags = lens _jTags (\s a -> s {_jTags = a}) . _Default . _Map

-- | A list of job attempts associated with this job.
jAttempts :: Lens' JobDetail [AttemptDetail]
jAttempts = lens _jAttempts (\s a -> s {_jAttempts = a}) . _Default . _Coerce

-- | The retry strategy to use for this job if an attempt fails.
jRetryStrategy :: Lens' JobDetail (Maybe RetryStrategy)
jRetryStrategy = lens _jRetryStrategy (\s a -> s {_jRetryStrategy = a})

-- | A short, human-readable string to provide additional details about the current status of the job.
jStatusReason :: Lens' JobDetail (Maybe Text)
jStatusReason = lens _jStatusReason (\s a -> s {_jStatusReason = a})

-- | Additional parameters passed to the job that replace parameter substitution placeholders or override any corresponding parameter defaults from the job definition.
jParameters :: Lens' JobDetail (HashMap Text Text)
jParameters = lens _jParameters (\s a -> s {_jParameters = a}) . _Default . _Map

-- | Specifies whether to propagate the tags from the job or job definition to the corresponding Amazon ECS task. If no value is specified, the tags are not propagated. Tags can only be propagated to the tasks during task creation. For tags with the same name, job tags are given priority over job definitions tags. If the total number of combined tags from the job and job definition is over 50, the job is moved to the @FAILED@ state.
jPropagateTags :: Lens' JobDetail (Maybe Bool)
jPropagateTags = lens _jPropagateTags (\s a -> s {_jPropagateTags = a})

-- | The name of the job.
jJobName :: Lens' JobDetail Text
jJobName = lens _jJobName (\s a -> s {_jJobName = a})

-- | The ID for the job.
jJobId :: Lens' JobDetail Text
jJobId = lens _jJobId (\s a -> s {_jJobId = a})

-- | The Amazon Resource Name (ARN) of the job queue that the job is associated with.
jJobQueue :: Lens' JobDetail Text
jJobQueue = lens _jJobQueue (\s a -> s {_jJobQueue = a})

-- | The current status for the job.
jStatus :: Lens' JobDetail JobStatus
jStatus = lens _jStatus (\s a -> s {_jStatus = a})

-- | The job definition that's used by this job.
jJobDefinition :: Lens' JobDetail Text
jJobDefinition = lens _jJobDefinition (\s a -> s {_jJobDefinition = a})

instance FromJSON JobDetail where
  parseJSON =
    withObject
      "JobDetail"
      ( \x ->
          JobDetail'
            <$> (x .:? "container")
            <*> (x .:? "startedAt")
            <*> (x .:? "dependsOn" .!= mempty)
            <*> (x .:? "platformCapabilities" .!= mempty)
            <*> (x .:? "timeout")
            <*> (x .:? "arrayProperties")
            <*> (x .:? "createdAt")
            <*> (x .:? "jobArn")
            <*> (x .:? "nodeDetails")
            <*> (x .:? "stoppedAt")
            <*> (x .:? "nodeProperties")
            <*> (x .:? "tags" .!= mempty)
            <*> (x .:? "attempts" .!= mempty)
            <*> (x .:? "retryStrategy")
            <*> (x .:? "statusReason")
            <*> (x .:? "parameters" .!= mempty)
            <*> (x .:? "propagateTags")
            <*> (x .: "jobName")
            <*> (x .: "jobId")
            <*> (x .: "jobQueue")
            <*> (x .: "status")
            <*> (x .: "jobDefinition")
      )

instance Hashable JobDetail

instance NFData JobDetail
