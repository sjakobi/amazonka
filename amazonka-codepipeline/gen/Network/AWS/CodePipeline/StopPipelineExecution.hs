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
-- Module      : Network.AWS.CodePipeline.StopPipelineExecution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops the specified pipeline execution. You choose to either stop the pipeline execution by completing in-progress actions without starting subsequent actions, or by abandoning in-progress actions. While completing or abandoning in-progress actions, the pipeline execution is in a @Stopping@ state. After all in-progress actions are completed or abandoned, the pipeline execution is in a @Stopped@ state.
module Network.AWS.CodePipeline.StopPipelineExecution
  ( -- * Creating a Request
    stopPipelineExecution,
    StopPipelineExecution,

    -- * Request Lenses
    speReason,
    speAbandon,
    spePipelineName,
    spePipelineExecutionId,

    -- * Destructuring the Response
    stopPipelineExecutionResponse,
    StopPipelineExecutionResponse,

    -- * Response Lenses
    sperrsPipelineExecutionId,
    sperrsResponseStatus,
  )
where

import Network.AWS.CodePipeline.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'stopPipelineExecution' smart constructor.
data StopPipelineExecution = StopPipelineExecution'
  { _speReason ::
      !(Maybe Text),
    _speAbandon ::
      !(Maybe Bool),
    _spePipelineName :: !Text,
    _spePipelineExecutionId ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'StopPipelineExecution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'speReason' - Use this option to enter comments, such as the reason the pipeline was stopped.
--
-- * 'speAbandon' - Use this option to stop the pipeline execution by abandoning, rather than finishing, in-progress actions.
--
-- * 'spePipelineName' - The name of the pipeline to stop.
--
-- * 'spePipelineExecutionId' - The ID of the pipeline execution to be stopped in the current stage. Use the @GetPipelineState@ action to retrieve the current pipelineExecutionId.
stopPipelineExecution ::
  -- | 'spePipelineName'
  Text ->
  -- | 'spePipelineExecutionId'
  Text ->
  StopPipelineExecution
stopPipelineExecution
  pPipelineName_
  pPipelineExecutionId_ =
    StopPipelineExecution'
      { _speReason = Nothing,
        _speAbandon = Nothing,
        _spePipelineName = pPipelineName_,
        _spePipelineExecutionId = pPipelineExecutionId_
      }

-- | Use this option to enter comments, such as the reason the pipeline was stopped.
speReason :: Lens' StopPipelineExecution (Maybe Text)
speReason = lens _speReason (\s a -> s {_speReason = a})

-- | Use this option to stop the pipeline execution by abandoning, rather than finishing, in-progress actions.
speAbandon :: Lens' StopPipelineExecution (Maybe Bool)
speAbandon = lens _speAbandon (\s a -> s {_speAbandon = a})

-- | The name of the pipeline to stop.
spePipelineName :: Lens' StopPipelineExecution Text
spePipelineName = lens _spePipelineName (\s a -> s {_spePipelineName = a})

-- | The ID of the pipeline execution to be stopped in the current stage. Use the @GetPipelineState@ action to retrieve the current pipelineExecutionId.
spePipelineExecutionId :: Lens' StopPipelineExecution Text
spePipelineExecutionId = lens _spePipelineExecutionId (\s a -> s {_spePipelineExecutionId = a})

instance AWSRequest StopPipelineExecution where
  type
    Rs StopPipelineExecution =
      StopPipelineExecutionResponse
  request = postJSON codePipeline
  response =
    receiveJSON
      ( \s h x ->
          StopPipelineExecutionResponse'
            <$> (x .?> "pipelineExecutionId")
            <*> (pure (fromEnum s))
      )

instance Hashable StopPipelineExecution

instance NFData StopPipelineExecution

instance ToHeaders StopPipelineExecution where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodePipeline_20150709.StopPipelineExecution" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StopPipelineExecution where
  toJSON StopPipelineExecution' {..} =
    object
      ( catMaybes
          [ ("reason" .=) <$> _speReason,
            ("abandon" .=) <$> _speAbandon,
            Just ("pipelineName" .= _spePipelineName),
            Just
              ("pipelineExecutionId" .= _spePipelineExecutionId)
          ]
      )

instance ToPath StopPipelineExecution where
  toPath = const "/"

instance ToQuery StopPipelineExecution where
  toQuery = const mempty

-- | /See:/ 'stopPipelineExecutionResponse' smart constructor.
data StopPipelineExecutionResponse = StopPipelineExecutionResponse'
  { _sperrsPipelineExecutionId ::
      !( Maybe
           Text
       ),
    _sperrsResponseStatus ::
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

-- | Creates a value of 'StopPipelineExecutionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sperrsPipelineExecutionId' - The unique system-generated ID of the pipeline execution that was stopped.
--
-- * 'sperrsResponseStatus' - -- | The response status code.
stopPipelineExecutionResponse ::
  -- | 'sperrsResponseStatus'
  Int ->
  StopPipelineExecutionResponse
stopPipelineExecutionResponse pResponseStatus_ =
  StopPipelineExecutionResponse'
    { _sperrsPipelineExecutionId =
        Nothing,
      _sperrsResponseStatus = pResponseStatus_
    }

-- | The unique system-generated ID of the pipeline execution that was stopped.
sperrsPipelineExecutionId :: Lens' StopPipelineExecutionResponse (Maybe Text)
sperrsPipelineExecutionId = lens _sperrsPipelineExecutionId (\s a -> s {_sperrsPipelineExecutionId = a})

-- | -- | The response status code.
sperrsResponseStatus :: Lens' StopPipelineExecutionResponse Int
sperrsResponseStatus = lens _sperrsResponseStatus (\s a -> s {_sperrsResponseStatus = a})

instance NFData StopPipelineExecutionResponse
