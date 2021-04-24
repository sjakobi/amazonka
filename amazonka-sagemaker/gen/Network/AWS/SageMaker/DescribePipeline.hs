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
-- Module      : Network.AWS.SageMaker.DescribePipeline
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the details of a pipeline.
module Network.AWS.SageMaker.DescribePipeline
  ( -- * Creating a Request
    describePipeline,
    DescribePipeline,

    -- * Request Lenses
    dpPipelineName,

    -- * Destructuring the Response
    describePipelineResponse,
    DescribePipelineResponse,

    -- * Response Lenses
    dprrsPipelineARN,
    dprrsPipelineDescription,
    dprrsCreationTime,
    dprrsRoleARN,
    dprrsLastRunTime,
    dprrsPipelineDefinition,
    dprrsPipelineDisplayName,
    dprrsLastModifiedTime,
    dprrsPipelineStatus,
    dprrsCreatedBy,
    dprrsLastModifiedBy,
    dprrsPipelineName,
    dprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'describePipeline' smart constructor.
newtype DescribePipeline = DescribePipeline'
  { _dpPipelineName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribePipeline' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpPipelineName' - The name of the pipeline to describe.
describePipeline ::
  -- | 'dpPipelineName'
  Text ->
  DescribePipeline
describePipeline pPipelineName_ =
  DescribePipeline' {_dpPipelineName = pPipelineName_}

-- | The name of the pipeline to describe.
dpPipelineName :: Lens' DescribePipeline Text
dpPipelineName = lens _dpPipelineName (\s a -> s {_dpPipelineName = a})

instance AWSRequest DescribePipeline where
  type Rs DescribePipeline = DescribePipelineResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          DescribePipelineResponse'
            <$> (x .?> "PipelineArn")
            <*> (x .?> "PipelineDescription")
            <*> (x .?> "CreationTime")
            <*> (x .?> "RoleArn")
            <*> (x .?> "LastRunTime")
            <*> (x .?> "PipelineDefinition")
            <*> (x .?> "PipelineDisplayName")
            <*> (x .?> "LastModifiedTime")
            <*> (x .?> "PipelineStatus")
            <*> (x .?> "CreatedBy")
            <*> (x .?> "LastModifiedBy")
            <*> (x .?> "PipelineName")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribePipeline

instance NFData DescribePipeline

instance ToHeaders DescribePipeline where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.DescribePipeline" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribePipeline where
  toJSON DescribePipeline' {..} =
    object
      ( catMaybes
          [Just ("PipelineName" .= _dpPipelineName)]
      )

instance ToPath DescribePipeline where
  toPath = const "/"

instance ToQuery DescribePipeline where
  toQuery = const mempty

-- | /See:/ 'describePipelineResponse' smart constructor.
data DescribePipelineResponse = DescribePipelineResponse'
  { _dprrsPipelineARN ::
      !(Maybe Text),
    _dprrsPipelineDescription ::
      !(Maybe Text),
    _dprrsCreationTime ::
      !(Maybe POSIX),
    _dprrsRoleARN ::
      !(Maybe Text),
    _dprrsLastRunTime ::
      !(Maybe POSIX),
    _dprrsPipelineDefinition ::
      !(Maybe Text),
    _dprrsPipelineDisplayName ::
      !(Maybe Text),
    _dprrsLastModifiedTime ::
      !(Maybe POSIX),
    _dprrsPipelineStatus ::
      !( Maybe
           PipelineStatus
       ),
    _dprrsCreatedBy ::
      !(Maybe UserContext),
    _dprrsLastModifiedBy ::
      !(Maybe UserContext),
    _dprrsPipelineName ::
      !(Maybe Text),
    _dprrsResponseStatus ::
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

-- | Creates a value of 'DescribePipelineResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dprrsPipelineARN' - The Amazon Resource Name (ARN) of the pipeline.
--
-- * 'dprrsPipelineDescription' - The description of the pipeline.
--
-- * 'dprrsCreationTime' - The time when the pipeline was created.
--
-- * 'dprrsRoleARN' - The Amazon Resource Name (ARN) that the pipeline uses to execute.
--
-- * 'dprrsLastRunTime' - The time when the pipeline was last run.
--
-- * 'dprrsPipelineDefinition' - The JSON pipeline definition.
--
-- * 'dprrsPipelineDisplayName' - The display name of the pipeline.
--
-- * 'dprrsLastModifiedTime' - The time when the pipeline was last modified.
--
-- * 'dprrsPipelineStatus' - The status of the pipeline execution.
--
-- * 'dprrsCreatedBy' - Undocumented member.
--
-- * 'dprrsLastModifiedBy' - Undocumented member.
--
-- * 'dprrsPipelineName' - The name of the pipeline.
--
-- * 'dprrsResponseStatus' - -- | The response status code.
describePipelineResponse ::
  -- | 'dprrsResponseStatus'
  Int ->
  DescribePipelineResponse
describePipelineResponse pResponseStatus_ =
  DescribePipelineResponse'
    { _dprrsPipelineARN =
        Nothing,
      _dprrsPipelineDescription = Nothing,
      _dprrsCreationTime = Nothing,
      _dprrsRoleARN = Nothing,
      _dprrsLastRunTime = Nothing,
      _dprrsPipelineDefinition = Nothing,
      _dprrsPipelineDisplayName = Nothing,
      _dprrsLastModifiedTime = Nothing,
      _dprrsPipelineStatus = Nothing,
      _dprrsCreatedBy = Nothing,
      _dprrsLastModifiedBy = Nothing,
      _dprrsPipelineName = Nothing,
      _dprrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the pipeline.
dprrsPipelineARN :: Lens' DescribePipelineResponse (Maybe Text)
dprrsPipelineARN = lens _dprrsPipelineARN (\s a -> s {_dprrsPipelineARN = a})

-- | The description of the pipeline.
dprrsPipelineDescription :: Lens' DescribePipelineResponse (Maybe Text)
dprrsPipelineDescription = lens _dprrsPipelineDescription (\s a -> s {_dprrsPipelineDescription = a})

-- | The time when the pipeline was created.
dprrsCreationTime :: Lens' DescribePipelineResponse (Maybe UTCTime)
dprrsCreationTime = lens _dprrsCreationTime (\s a -> s {_dprrsCreationTime = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) that the pipeline uses to execute.
dprrsRoleARN :: Lens' DescribePipelineResponse (Maybe Text)
dprrsRoleARN = lens _dprrsRoleARN (\s a -> s {_dprrsRoleARN = a})

-- | The time when the pipeline was last run.
dprrsLastRunTime :: Lens' DescribePipelineResponse (Maybe UTCTime)
dprrsLastRunTime = lens _dprrsLastRunTime (\s a -> s {_dprrsLastRunTime = a}) . mapping _Time

-- | The JSON pipeline definition.
dprrsPipelineDefinition :: Lens' DescribePipelineResponse (Maybe Text)
dprrsPipelineDefinition = lens _dprrsPipelineDefinition (\s a -> s {_dprrsPipelineDefinition = a})

-- | The display name of the pipeline.
dprrsPipelineDisplayName :: Lens' DescribePipelineResponse (Maybe Text)
dprrsPipelineDisplayName = lens _dprrsPipelineDisplayName (\s a -> s {_dprrsPipelineDisplayName = a})

-- | The time when the pipeline was last modified.
dprrsLastModifiedTime :: Lens' DescribePipelineResponse (Maybe UTCTime)
dprrsLastModifiedTime = lens _dprrsLastModifiedTime (\s a -> s {_dprrsLastModifiedTime = a}) . mapping _Time

-- | The status of the pipeline execution.
dprrsPipelineStatus :: Lens' DescribePipelineResponse (Maybe PipelineStatus)
dprrsPipelineStatus = lens _dprrsPipelineStatus (\s a -> s {_dprrsPipelineStatus = a})

-- | Undocumented member.
dprrsCreatedBy :: Lens' DescribePipelineResponse (Maybe UserContext)
dprrsCreatedBy = lens _dprrsCreatedBy (\s a -> s {_dprrsCreatedBy = a})

-- | Undocumented member.
dprrsLastModifiedBy :: Lens' DescribePipelineResponse (Maybe UserContext)
dprrsLastModifiedBy = lens _dprrsLastModifiedBy (\s a -> s {_dprrsLastModifiedBy = a})

-- | The name of the pipeline.
dprrsPipelineName :: Lens' DescribePipelineResponse (Maybe Text)
dprrsPipelineName = lens _dprrsPipelineName (\s a -> s {_dprrsPipelineName = a})

-- | -- | The response status code.
dprrsResponseStatus :: Lens' DescribePipelineResponse Int
dprrsResponseStatus = lens _dprrsResponseStatus (\s a -> s {_dprrsResponseStatus = a})

instance NFData DescribePipelineResponse
