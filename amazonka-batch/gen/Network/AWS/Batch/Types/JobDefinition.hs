{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Batch.Types.JobDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Batch.Types.JobDefinition where

import Network.AWS.Batch.Types.ContainerProperties
import Network.AWS.Batch.Types.JobTimeout
import Network.AWS.Batch.Types.NodeProperties
import Network.AWS.Batch.Types.PlatformCapability
import Network.AWS.Batch.Types.RetryStrategy
import Network.AWS.Lens
import Network.AWS.Prelude

-- | An object representing an AWS Batch job definition.
--
--
--
-- /See:/ 'jobDefinition' smart constructor.
data JobDefinition = JobDefinition'
  { _jdStatus ::
      !(Maybe Text),
    _jdPlatformCapabilities ::
      !(Maybe [PlatformCapability]),
    _jdTimeout :: !(Maybe JobTimeout),
    _jdNodeProperties ::
      !(Maybe NodeProperties),
    _jdTags :: !(Maybe (Map Text Text)),
    _jdContainerProperties ::
      !(Maybe ContainerProperties),
    _jdRetryStrategy :: !(Maybe RetryStrategy),
    _jdParameters :: !(Maybe (Map Text Text)),
    _jdPropagateTags :: !(Maybe Bool),
    _jdJobDefinitionName :: !Text,
    _jdJobDefinitionARN :: !Text,
    _jdRevision :: !Int,
    _jdType :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'JobDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jdStatus' - The status of the job definition.
--
-- * 'jdPlatformCapabilities' - The platform capabilities required by the job definition. If no value is specified, it defaults to @EC2@ . Jobs run on Fargate resources specify @FARGATE@ .
--
-- * 'jdTimeout' - The timeout configuration for jobs that are submitted with this job definition. You can specify a timeout duration after which AWS Batch terminates your jobs if they haven't finished.
--
-- * 'jdNodeProperties' - An object with various properties specific to multi-node parallel jobs.
--
-- * 'jdTags' - The tags applied to the job definition.
--
-- * 'jdContainerProperties' - An object with various properties specific to container-based jobs.
--
-- * 'jdRetryStrategy' - The retry strategy to use for failed jobs that are submitted with this job definition.
--
-- * 'jdParameters' - Default parameters or parameter substitution placeholders that are set in the job definition. Parameters are specified as a key-value pair mapping. Parameters in a @SubmitJob@ request override any corresponding parameter defaults from the job definition. For more information about specifying parameters, see <https://docs.aws.amazon.com/batch/latest/userguide/job_definition_parameters.html Job Definition Parameters> in the /AWS Batch User Guide/ .
--
-- * 'jdPropagateTags' - Specifies whether to propagate the tags from the job or job definition to the corresponding Amazon ECS task. If no value is specified, the tags aren't propagated. Tags can only be propagated to the tasks during task creation. For tags with the same name, job tags are given priority over job definitions tags. If the total number of combined tags from the job and job definition is over 50, the job is moved to the @FAILED@ state.
--
-- * 'jdJobDefinitionName' - The name of the job definition.
--
-- * 'jdJobDefinitionARN' - The Amazon Resource Name (ARN) for the job definition.
--
-- * 'jdRevision' - The revision of the job definition.
--
-- * 'jdType' - The type of job definition. If the job is run on Fargate resources, then @multinode@ isn't supported. For more information about multi-node parallel jobs, see <https://docs.aws.amazon.com/batch/latest/userguide/multi-node-job-def.html Creating a multi-node parallel job definition> in the /AWS Batch User Guide/ .
jobDefinition ::
  -- | 'jdJobDefinitionName'
  Text ->
  -- | 'jdJobDefinitionARN'
  Text ->
  -- | 'jdRevision'
  Int ->
  -- | 'jdType'
  Text ->
  JobDefinition
jobDefinition
  pJobDefinitionName_
  pJobDefinitionARN_
  pRevision_
  pType_ =
    JobDefinition'
      { _jdStatus = Nothing,
        _jdPlatformCapabilities = Nothing,
        _jdTimeout = Nothing,
        _jdNodeProperties = Nothing,
        _jdTags = Nothing,
        _jdContainerProperties = Nothing,
        _jdRetryStrategy = Nothing,
        _jdParameters = Nothing,
        _jdPropagateTags = Nothing,
        _jdJobDefinitionName = pJobDefinitionName_,
        _jdJobDefinitionARN = pJobDefinitionARN_,
        _jdRevision = pRevision_,
        _jdType = pType_
      }

-- | The status of the job definition.
jdStatus :: Lens' JobDefinition (Maybe Text)
jdStatus = lens _jdStatus (\s a -> s {_jdStatus = a})

-- | The platform capabilities required by the job definition. If no value is specified, it defaults to @EC2@ . Jobs run on Fargate resources specify @FARGATE@ .
jdPlatformCapabilities :: Lens' JobDefinition [PlatformCapability]
jdPlatformCapabilities = lens _jdPlatformCapabilities (\s a -> s {_jdPlatformCapabilities = a}) . _Default . _Coerce

-- | The timeout configuration for jobs that are submitted with this job definition. You can specify a timeout duration after which AWS Batch terminates your jobs if they haven't finished.
jdTimeout :: Lens' JobDefinition (Maybe JobTimeout)
jdTimeout = lens _jdTimeout (\s a -> s {_jdTimeout = a})

-- | An object with various properties specific to multi-node parallel jobs.
jdNodeProperties :: Lens' JobDefinition (Maybe NodeProperties)
jdNodeProperties = lens _jdNodeProperties (\s a -> s {_jdNodeProperties = a})

-- | The tags applied to the job definition.
jdTags :: Lens' JobDefinition (HashMap Text Text)
jdTags = lens _jdTags (\s a -> s {_jdTags = a}) . _Default . _Map

-- | An object with various properties specific to container-based jobs.
jdContainerProperties :: Lens' JobDefinition (Maybe ContainerProperties)
jdContainerProperties = lens _jdContainerProperties (\s a -> s {_jdContainerProperties = a})

-- | The retry strategy to use for failed jobs that are submitted with this job definition.
jdRetryStrategy :: Lens' JobDefinition (Maybe RetryStrategy)
jdRetryStrategy = lens _jdRetryStrategy (\s a -> s {_jdRetryStrategy = a})

-- | Default parameters or parameter substitution placeholders that are set in the job definition. Parameters are specified as a key-value pair mapping. Parameters in a @SubmitJob@ request override any corresponding parameter defaults from the job definition. For more information about specifying parameters, see <https://docs.aws.amazon.com/batch/latest/userguide/job_definition_parameters.html Job Definition Parameters> in the /AWS Batch User Guide/ .
jdParameters :: Lens' JobDefinition (HashMap Text Text)
jdParameters = lens _jdParameters (\s a -> s {_jdParameters = a}) . _Default . _Map

-- | Specifies whether to propagate the tags from the job or job definition to the corresponding Amazon ECS task. If no value is specified, the tags aren't propagated. Tags can only be propagated to the tasks during task creation. For tags with the same name, job tags are given priority over job definitions tags. If the total number of combined tags from the job and job definition is over 50, the job is moved to the @FAILED@ state.
jdPropagateTags :: Lens' JobDefinition (Maybe Bool)
jdPropagateTags = lens _jdPropagateTags (\s a -> s {_jdPropagateTags = a})

-- | The name of the job definition.
jdJobDefinitionName :: Lens' JobDefinition Text
jdJobDefinitionName = lens _jdJobDefinitionName (\s a -> s {_jdJobDefinitionName = a})

-- | The Amazon Resource Name (ARN) for the job definition.
jdJobDefinitionARN :: Lens' JobDefinition Text
jdJobDefinitionARN = lens _jdJobDefinitionARN (\s a -> s {_jdJobDefinitionARN = a})

-- | The revision of the job definition.
jdRevision :: Lens' JobDefinition Int
jdRevision = lens _jdRevision (\s a -> s {_jdRevision = a})

-- | The type of job definition. If the job is run on Fargate resources, then @multinode@ isn't supported. For more information about multi-node parallel jobs, see <https://docs.aws.amazon.com/batch/latest/userguide/multi-node-job-def.html Creating a multi-node parallel job definition> in the /AWS Batch User Guide/ .
jdType :: Lens' JobDefinition Text
jdType = lens _jdType (\s a -> s {_jdType = a})

instance FromJSON JobDefinition where
  parseJSON =
    withObject
      "JobDefinition"
      ( \x ->
          JobDefinition'
            <$> (x .:? "status")
            <*> (x .:? "platformCapabilities" .!= mempty)
            <*> (x .:? "timeout")
            <*> (x .:? "nodeProperties")
            <*> (x .:? "tags" .!= mempty)
            <*> (x .:? "containerProperties")
            <*> (x .:? "retryStrategy")
            <*> (x .:? "parameters" .!= mempty)
            <*> (x .:? "propagateTags")
            <*> (x .: "jobDefinitionName")
            <*> (x .: "jobDefinitionArn")
            <*> (x .: "revision")
            <*> (x .: "type")
      )

instance Hashable JobDefinition

instance NFData JobDefinition
