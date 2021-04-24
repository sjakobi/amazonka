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
-- Module      : Network.AWS.IoTAnalytics.CreatePipeline
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a pipeline. A pipeline consumes messages from a channel and allows you to process the messages before storing them in a data store. You must specify both a @channel@ and a @datastore@ activity and, optionally, as many as 23 additional activities in the @pipelineActivities@ array.
module Network.AWS.IoTAnalytics.CreatePipeline
  ( -- * Creating a Request
    createPipeline,
    CreatePipeline,

    -- * Request Lenses
    cpTags,
    cpPipelineName,
    cpPipelineActivities,

    -- * Destructuring the Response
    createPipelineResponse,
    CreatePipelineResponse,

    -- * Response Lenses
    cprrsPipelineARN,
    cprrsPipelineName,
    cprrsResponseStatus,
  )
where

import Network.AWS.IoTAnalytics.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createPipeline' smart constructor.
data CreatePipeline = CreatePipeline'
  { _cpTags ::
      !(Maybe (List1 Tag)),
    _cpPipelineName :: !Text,
    _cpPipelineActivities ::
      !(List1 PipelineActivity)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreatePipeline' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpTags' - Metadata which can be used to manage the pipeline.
--
-- * 'cpPipelineName' - The name of the pipeline.
--
-- * 'cpPipelineActivities' - A list of @PipelineActivity@ objects. Activities perform transformations on your messages, such as removing, renaming or adding message attributes; filtering messages based on attribute values; invoking your Lambda functions on messages for advanced processing; or performing mathematical transformations to normalize device data. The list can be 2-25 @PipelineActivity@ objects and must contain both a @channel@ and a @datastore@ activity. Each entry in the list must contain only one activity. For example: @pipelineActivities = [ { "channel": { ... } }, { "lambda": { ... } }, ... ]@
createPipeline ::
  -- | 'cpPipelineName'
  Text ->
  -- | 'cpPipelineActivities'
  NonEmpty PipelineActivity ->
  CreatePipeline
createPipeline pPipelineName_ pPipelineActivities_ =
  CreatePipeline'
    { _cpTags = Nothing,
      _cpPipelineName = pPipelineName_,
      _cpPipelineActivities =
        _List1 # pPipelineActivities_
    }

-- | Metadata which can be used to manage the pipeline.
cpTags :: Lens' CreatePipeline (Maybe (NonEmpty Tag))
cpTags = lens _cpTags (\s a -> s {_cpTags = a}) . mapping _List1

-- | The name of the pipeline.
cpPipelineName :: Lens' CreatePipeline Text
cpPipelineName = lens _cpPipelineName (\s a -> s {_cpPipelineName = a})

-- | A list of @PipelineActivity@ objects. Activities perform transformations on your messages, such as removing, renaming or adding message attributes; filtering messages based on attribute values; invoking your Lambda functions on messages for advanced processing; or performing mathematical transformations to normalize device data. The list can be 2-25 @PipelineActivity@ objects and must contain both a @channel@ and a @datastore@ activity. Each entry in the list must contain only one activity. For example: @pipelineActivities = [ { "channel": { ... } }, { "lambda": { ... } }, ... ]@
cpPipelineActivities :: Lens' CreatePipeline (NonEmpty PipelineActivity)
cpPipelineActivities = lens _cpPipelineActivities (\s a -> s {_cpPipelineActivities = a}) . _List1

instance AWSRequest CreatePipeline where
  type Rs CreatePipeline = CreatePipelineResponse
  request = postJSON ioTAnalytics
  response =
    receiveJSON
      ( \s h x ->
          CreatePipelineResponse'
            <$> (x .?> "pipelineArn")
            <*> (x .?> "pipelineName")
            <*> (pure (fromEnum s))
      )

instance Hashable CreatePipeline

instance NFData CreatePipeline

instance ToHeaders CreatePipeline where
  toHeaders = const mempty

instance ToJSON CreatePipeline where
  toJSON CreatePipeline' {..} =
    object
      ( catMaybes
          [ ("tags" .=) <$> _cpTags,
            Just ("pipelineName" .= _cpPipelineName),
            Just
              ("pipelineActivities" .= _cpPipelineActivities)
          ]
      )

instance ToPath CreatePipeline where
  toPath = const "/pipelines"

instance ToQuery CreatePipeline where
  toQuery = const mempty

-- | /See:/ 'createPipelineResponse' smart constructor.
data CreatePipelineResponse = CreatePipelineResponse'
  { _cprrsPipelineARN ::
      !(Maybe Text),
    _cprrsPipelineName ::
      !(Maybe Text),
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

-- | Creates a value of 'CreatePipelineResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cprrsPipelineARN' - The ARN of the pipeline.
--
-- * 'cprrsPipelineName' - The name of the pipeline.
--
-- * 'cprrsResponseStatus' - -- | The response status code.
createPipelineResponse ::
  -- | 'cprrsResponseStatus'
  Int ->
  CreatePipelineResponse
createPipelineResponse pResponseStatus_ =
  CreatePipelineResponse'
    { _cprrsPipelineARN =
        Nothing,
      _cprrsPipelineName = Nothing,
      _cprrsResponseStatus = pResponseStatus_
    }

-- | The ARN of the pipeline.
cprrsPipelineARN :: Lens' CreatePipelineResponse (Maybe Text)
cprrsPipelineARN = lens _cprrsPipelineARN (\s a -> s {_cprrsPipelineARN = a})

-- | The name of the pipeline.
cprrsPipelineName :: Lens' CreatePipelineResponse (Maybe Text)
cprrsPipelineName = lens _cprrsPipelineName (\s a -> s {_cprrsPipelineName = a})

-- | -- | The response status code.
cprrsResponseStatus :: Lens' CreatePipelineResponse Int
cprrsResponseStatus = lens _cprrsResponseStatus (\s a -> s {_cprrsResponseStatus = a})

instance NFData CreatePipelineResponse
