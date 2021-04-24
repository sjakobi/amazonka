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
-- Module      : Network.AWS.SageMaker.UpdatePipeline
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a pipeline.
module Network.AWS.SageMaker.UpdatePipeline
  ( -- * Creating a Request
    updatePipeline,
    UpdatePipeline,

    -- * Request Lenses
    upPipelineDescription,
    upRoleARN,
    upPipelineDefinition,
    upPipelineDisplayName,
    upPipelineName,

    -- * Destructuring the Response
    updatePipelineResponse,
    UpdatePipelineResponse,

    -- * Response Lenses
    uprrsPipelineARN,
    uprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'updatePipeline' smart constructor.
data UpdatePipeline = UpdatePipeline'
  { _upPipelineDescription ::
      !(Maybe Text),
    _upRoleARN :: !(Maybe Text),
    _upPipelineDefinition :: !(Maybe Text),
    _upPipelineDisplayName :: !(Maybe Text),
    _upPipelineName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdatePipeline' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upPipelineDescription' - The description of the pipeline.
--
-- * 'upRoleARN' - The Amazon Resource Name (ARN) that the pipeline uses to execute.
--
-- * 'upPipelineDefinition' - The JSON pipeline definition.
--
-- * 'upPipelineDisplayName' - The display name of the pipeline.
--
-- * 'upPipelineName' - The name of the pipeline to update.
updatePipeline ::
  -- | 'upPipelineName'
  Text ->
  UpdatePipeline
updatePipeline pPipelineName_ =
  UpdatePipeline'
    { _upPipelineDescription = Nothing,
      _upRoleARN = Nothing,
      _upPipelineDefinition = Nothing,
      _upPipelineDisplayName = Nothing,
      _upPipelineName = pPipelineName_
    }

-- | The description of the pipeline.
upPipelineDescription :: Lens' UpdatePipeline (Maybe Text)
upPipelineDescription = lens _upPipelineDescription (\s a -> s {_upPipelineDescription = a})

-- | The Amazon Resource Name (ARN) that the pipeline uses to execute.
upRoleARN :: Lens' UpdatePipeline (Maybe Text)
upRoleARN = lens _upRoleARN (\s a -> s {_upRoleARN = a})

-- | The JSON pipeline definition.
upPipelineDefinition :: Lens' UpdatePipeline (Maybe Text)
upPipelineDefinition = lens _upPipelineDefinition (\s a -> s {_upPipelineDefinition = a})

-- | The display name of the pipeline.
upPipelineDisplayName :: Lens' UpdatePipeline (Maybe Text)
upPipelineDisplayName = lens _upPipelineDisplayName (\s a -> s {_upPipelineDisplayName = a})

-- | The name of the pipeline to update.
upPipelineName :: Lens' UpdatePipeline Text
upPipelineName = lens _upPipelineName (\s a -> s {_upPipelineName = a})

instance AWSRequest UpdatePipeline where
  type Rs UpdatePipeline = UpdatePipelineResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          UpdatePipelineResponse'
            <$> (x .?> "PipelineArn") <*> (pure (fromEnum s))
      )

instance Hashable UpdatePipeline

instance NFData UpdatePipeline

instance ToHeaders UpdatePipeline where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.UpdatePipeline" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdatePipeline where
  toJSON UpdatePipeline' {..} =
    object
      ( catMaybes
          [ ("PipelineDescription" .=)
              <$> _upPipelineDescription,
            ("RoleArn" .=) <$> _upRoleARN,
            ("PipelineDefinition" .=) <$> _upPipelineDefinition,
            ("PipelineDisplayName" .=)
              <$> _upPipelineDisplayName,
            Just ("PipelineName" .= _upPipelineName)
          ]
      )

instance ToPath UpdatePipeline where
  toPath = const "/"

instance ToQuery UpdatePipeline where
  toQuery = const mempty

-- | /See:/ 'updatePipelineResponse' smart constructor.
data UpdatePipelineResponse = UpdatePipelineResponse'
  { _uprrsPipelineARN ::
      !(Maybe Text),
    _uprrsResponseStatus ::
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

-- | Creates a value of 'UpdatePipelineResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uprrsPipelineARN' - The Amazon Resource Name (ARN) of the updated pipeline.
--
-- * 'uprrsResponseStatus' - -- | The response status code.
updatePipelineResponse ::
  -- | 'uprrsResponseStatus'
  Int ->
  UpdatePipelineResponse
updatePipelineResponse pResponseStatus_ =
  UpdatePipelineResponse'
    { _uprrsPipelineARN =
        Nothing,
      _uprrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the updated pipeline.
uprrsPipelineARN :: Lens' UpdatePipelineResponse (Maybe Text)
uprrsPipelineARN = lens _uprrsPipelineARN (\s a -> s {_uprrsPipelineARN = a})

-- | -- | The response status code.
uprrsResponseStatus :: Lens' UpdatePipelineResponse Int
uprrsResponseStatus = lens _uprrsResponseStatus (\s a -> s {_uprrsResponseStatus = a})

instance NFData UpdatePipelineResponse
