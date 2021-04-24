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
-- Module      : Network.AWS.Batch.RegisterJobDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Registers an AWS Batch job definition.
module Network.AWS.Batch.RegisterJobDefinition
  ( -- * Creating a Request
    registerJobDefinition,
    RegisterJobDefinition,

    -- * Request Lenses
    rjdPlatformCapabilities,
    rjdTimeout,
    rjdNodeProperties,
    rjdTags,
    rjdContainerProperties,
    rjdRetryStrategy,
    rjdParameters,
    rjdPropagateTags,
    rjdJobDefinitionName,
    rjdType,

    -- * Destructuring the Response
    registerJobDefinitionResponse,
    RegisterJobDefinitionResponse,

    -- * Response Lenses
    rjdrrsResponseStatus,
    rjdrrsJobDefinitionName,
    rjdrrsJobDefinitionARN,
    rjdrrsRevision,
  )
where

import Network.AWS.Batch.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for @RegisterJobDefinition@ .
--
--
--
-- /See:/ 'registerJobDefinition' smart constructor.
data RegisterJobDefinition = RegisterJobDefinition'
  { _rjdPlatformCapabilities ::
      !( Maybe
           [PlatformCapability]
       ),
    _rjdTimeout ::
      !(Maybe JobTimeout),
    _rjdNodeProperties ::
      !(Maybe NodeProperties),
    _rjdTags ::
      !(Maybe (Map Text Text)),
    _rjdContainerProperties ::
      !( Maybe
           ContainerProperties
       ),
    _rjdRetryStrategy ::
      !(Maybe RetryStrategy),
    _rjdParameters ::
      !(Maybe (Map Text Text)),
    _rjdPropagateTags ::
      !(Maybe Bool),
    _rjdJobDefinitionName ::
      !Text,
    _rjdType ::
      !JobDefinitionType
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'RegisterJobDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rjdPlatformCapabilities' - The platform capabilities required by the job definition. If no value is specified, it defaults to @EC2@ . To run the job on Fargate resources, specify @FARGATE@ .
--
-- * 'rjdTimeout' - The timeout configuration for jobs that are submitted with this job definition, after which AWS Batch terminates your jobs if they have not finished. If a job is terminated due to a timeout, it isn't retried. The minimum value for the timeout is 60 seconds. Any timeout configuration that's specified during a 'SubmitJob' operation overrides the timeout configuration defined here. For more information, see <https://docs.aws.amazon.com/batch/latest/userguide/job_timeouts.html Job Timeouts> in the /AWS Batch User Guide/ .
--
-- * 'rjdNodeProperties' - An object with various properties specific to multi-node parallel jobs. If you specify node properties for a job, it becomes a multi-node parallel job. For more information, see <https://docs.aws.amazon.com/batch/latest/userguide/multi-node-parallel-jobs.html Multi-node Parallel Jobs> in the /AWS Batch User Guide/ . If the job definition's @type@ parameter is @container@ , then you must specify either @containerProperties@ or @nodeProperties@ .
--
-- * 'rjdTags' - The tags that you apply to the job definition to help you categorize and organize your resources. Each tag consists of a key and an optional value. For more information, see <https://docs.aws.amazon.com/batch/latest/userguide/using-tags.html Tagging AWS Resources> in /AWS Batch User Guide/ .
--
-- * 'rjdContainerProperties' - An object with various properties specific to single-node container-based jobs. If the job definition's @type@ parameter is @container@ , then you must specify either @containerProperties@ or @nodeProperties@ .
--
-- * 'rjdRetryStrategy' - The retry strategy to use for failed jobs that are submitted with this job definition. Any retry strategy that's specified during a 'SubmitJob' operation overrides the retry strategy defined here. If a job is terminated due to a timeout, it isn't retried.
--
-- * 'rjdParameters' - Default parameter substitution placeholders to set in the job definition. Parameters are specified as a key-value pair mapping. Parameters in a @SubmitJob@ request override any corresponding parameter defaults from the job definition.
--
-- * 'rjdPropagateTags' - Specifies whether to propagate the tags from the job or job definition to the corresponding Amazon ECS task. If no value is specified, the tags are not propagated. Tags can only be propagated to the tasks during task creation. For tags with the same name, job tags are given priority over job definitions tags. If the total number of combined tags from the job and job definition is over 50, the job is moved to the @FAILED@ state.
--
-- * 'rjdJobDefinitionName' - The name of the job definition to register. Up to 128 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed.
--
-- * 'rjdType' - The type of job definition. For more information about multi-node parallel jobs, see <https://docs.aws.amazon.com/batch/latest/userguide/multi-node-job-def.html Creating a multi-node parallel job definition> in the /AWS Batch User Guide/ .
registerJobDefinition ::
  -- | 'rjdJobDefinitionName'
  Text ->
  -- | 'rjdType'
  JobDefinitionType ->
  RegisterJobDefinition
registerJobDefinition pJobDefinitionName_ pType_ =
  RegisterJobDefinition'
    { _rjdPlatformCapabilities =
        Nothing,
      _rjdTimeout = Nothing,
      _rjdNodeProperties = Nothing,
      _rjdTags = Nothing,
      _rjdContainerProperties = Nothing,
      _rjdRetryStrategy = Nothing,
      _rjdParameters = Nothing,
      _rjdPropagateTags = Nothing,
      _rjdJobDefinitionName = pJobDefinitionName_,
      _rjdType = pType_
    }

-- | The platform capabilities required by the job definition. If no value is specified, it defaults to @EC2@ . To run the job on Fargate resources, specify @FARGATE@ .
rjdPlatformCapabilities :: Lens' RegisterJobDefinition [PlatformCapability]
rjdPlatformCapabilities = lens _rjdPlatformCapabilities (\s a -> s {_rjdPlatformCapabilities = a}) . _Default . _Coerce

-- | The timeout configuration for jobs that are submitted with this job definition, after which AWS Batch terminates your jobs if they have not finished. If a job is terminated due to a timeout, it isn't retried. The minimum value for the timeout is 60 seconds. Any timeout configuration that's specified during a 'SubmitJob' operation overrides the timeout configuration defined here. For more information, see <https://docs.aws.amazon.com/batch/latest/userguide/job_timeouts.html Job Timeouts> in the /AWS Batch User Guide/ .
rjdTimeout :: Lens' RegisterJobDefinition (Maybe JobTimeout)
rjdTimeout = lens _rjdTimeout (\s a -> s {_rjdTimeout = a})

-- | An object with various properties specific to multi-node parallel jobs. If you specify node properties for a job, it becomes a multi-node parallel job. For more information, see <https://docs.aws.amazon.com/batch/latest/userguide/multi-node-parallel-jobs.html Multi-node Parallel Jobs> in the /AWS Batch User Guide/ . If the job definition's @type@ parameter is @container@ , then you must specify either @containerProperties@ or @nodeProperties@ .
rjdNodeProperties :: Lens' RegisterJobDefinition (Maybe NodeProperties)
rjdNodeProperties = lens _rjdNodeProperties (\s a -> s {_rjdNodeProperties = a})

-- | The tags that you apply to the job definition to help you categorize and organize your resources. Each tag consists of a key and an optional value. For more information, see <https://docs.aws.amazon.com/batch/latest/userguide/using-tags.html Tagging AWS Resources> in /AWS Batch User Guide/ .
rjdTags :: Lens' RegisterJobDefinition (HashMap Text Text)
rjdTags = lens _rjdTags (\s a -> s {_rjdTags = a}) . _Default . _Map

-- | An object with various properties specific to single-node container-based jobs. If the job definition's @type@ parameter is @container@ , then you must specify either @containerProperties@ or @nodeProperties@ .
rjdContainerProperties :: Lens' RegisterJobDefinition (Maybe ContainerProperties)
rjdContainerProperties = lens _rjdContainerProperties (\s a -> s {_rjdContainerProperties = a})

-- | The retry strategy to use for failed jobs that are submitted with this job definition. Any retry strategy that's specified during a 'SubmitJob' operation overrides the retry strategy defined here. If a job is terminated due to a timeout, it isn't retried.
rjdRetryStrategy :: Lens' RegisterJobDefinition (Maybe RetryStrategy)
rjdRetryStrategy = lens _rjdRetryStrategy (\s a -> s {_rjdRetryStrategy = a})

-- | Default parameter substitution placeholders to set in the job definition. Parameters are specified as a key-value pair mapping. Parameters in a @SubmitJob@ request override any corresponding parameter defaults from the job definition.
rjdParameters :: Lens' RegisterJobDefinition (HashMap Text Text)
rjdParameters = lens _rjdParameters (\s a -> s {_rjdParameters = a}) . _Default . _Map

-- | Specifies whether to propagate the tags from the job or job definition to the corresponding Amazon ECS task. If no value is specified, the tags are not propagated. Tags can only be propagated to the tasks during task creation. For tags with the same name, job tags are given priority over job definitions tags. If the total number of combined tags from the job and job definition is over 50, the job is moved to the @FAILED@ state.
rjdPropagateTags :: Lens' RegisterJobDefinition (Maybe Bool)
rjdPropagateTags = lens _rjdPropagateTags (\s a -> s {_rjdPropagateTags = a})

-- | The name of the job definition to register. Up to 128 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed.
rjdJobDefinitionName :: Lens' RegisterJobDefinition Text
rjdJobDefinitionName = lens _rjdJobDefinitionName (\s a -> s {_rjdJobDefinitionName = a})

-- | The type of job definition. For more information about multi-node parallel jobs, see <https://docs.aws.amazon.com/batch/latest/userguide/multi-node-job-def.html Creating a multi-node parallel job definition> in the /AWS Batch User Guide/ .
rjdType :: Lens' RegisterJobDefinition JobDefinitionType
rjdType = lens _rjdType (\s a -> s {_rjdType = a})

instance AWSRequest RegisterJobDefinition where
  type
    Rs RegisterJobDefinition =
      RegisterJobDefinitionResponse
  request = postJSON batch
  response =
    receiveJSON
      ( \s h x ->
          RegisterJobDefinitionResponse'
            <$> (pure (fromEnum s))
            <*> (x .:> "jobDefinitionName")
            <*> (x .:> "jobDefinitionArn")
            <*> (x .:> "revision")
      )

instance Hashable RegisterJobDefinition

instance NFData RegisterJobDefinition

instance ToHeaders RegisterJobDefinition where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON RegisterJobDefinition where
  toJSON RegisterJobDefinition' {..} =
    object
      ( catMaybes
          [ ("platformCapabilities" .=)
              <$> _rjdPlatformCapabilities,
            ("timeout" .=) <$> _rjdTimeout,
            ("nodeProperties" .=) <$> _rjdNodeProperties,
            ("tags" .=) <$> _rjdTags,
            ("containerProperties" .=)
              <$> _rjdContainerProperties,
            ("retryStrategy" .=) <$> _rjdRetryStrategy,
            ("parameters" .=) <$> _rjdParameters,
            ("propagateTags" .=) <$> _rjdPropagateTags,
            Just ("jobDefinitionName" .= _rjdJobDefinitionName),
            Just ("type" .= _rjdType)
          ]
      )

instance ToPath RegisterJobDefinition where
  toPath = const "/v1/registerjobdefinition"

instance ToQuery RegisterJobDefinition where
  toQuery = const mempty

-- | /See:/ 'registerJobDefinitionResponse' smart constructor.
data RegisterJobDefinitionResponse = RegisterJobDefinitionResponse'
  { _rjdrrsResponseStatus ::
      !Int,
    _rjdrrsJobDefinitionName ::
      !Text,
    _rjdrrsJobDefinitionARN ::
      !Text,
    _rjdrrsRevision ::
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

-- | Creates a value of 'RegisterJobDefinitionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rjdrrsResponseStatus' - -- | The response status code.
--
-- * 'rjdrrsJobDefinitionName' - The name of the job definition.
--
-- * 'rjdrrsJobDefinitionARN' - The Amazon Resource Name (ARN) of the job definition.
--
-- * 'rjdrrsRevision' - The revision of the job definition.
registerJobDefinitionResponse ::
  -- | 'rjdrrsResponseStatus'
  Int ->
  -- | 'rjdrrsJobDefinitionName'
  Text ->
  -- | 'rjdrrsJobDefinitionARN'
  Text ->
  -- | 'rjdrrsRevision'
  Int ->
  RegisterJobDefinitionResponse
registerJobDefinitionResponse
  pResponseStatus_
  pJobDefinitionName_
  pJobDefinitionARN_
  pRevision_ =
    RegisterJobDefinitionResponse'
      { _rjdrrsResponseStatus =
          pResponseStatus_,
        _rjdrrsJobDefinitionName =
          pJobDefinitionName_,
        _rjdrrsJobDefinitionARN = pJobDefinitionARN_,
        _rjdrrsRevision = pRevision_
      }

-- | -- | The response status code.
rjdrrsResponseStatus :: Lens' RegisterJobDefinitionResponse Int
rjdrrsResponseStatus = lens _rjdrrsResponseStatus (\s a -> s {_rjdrrsResponseStatus = a})

-- | The name of the job definition.
rjdrrsJobDefinitionName :: Lens' RegisterJobDefinitionResponse Text
rjdrrsJobDefinitionName = lens _rjdrrsJobDefinitionName (\s a -> s {_rjdrrsJobDefinitionName = a})

-- | The Amazon Resource Name (ARN) of the job definition.
rjdrrsJobDefinitionARN :: Lens' RegisterJobDefinitionResponse Text
rjdrrsJobDefinitionARN = lens _rjdrrsJobDefinitionARN (\s a -> s {_rjdrrsJobDefinitionARN = a})

-- | The revision of the job definition.
rjdrrsRevision :: Lens' RegisterJobDefinitionResponse Int
rjdrrsRevision = lens _rjdrrsRevision (\s a -> s {_rjdrrsRevision = a})

instance NFData RegisterJobDefinitionResponse
