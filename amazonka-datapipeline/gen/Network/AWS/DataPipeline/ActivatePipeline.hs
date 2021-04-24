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
-- Module      : Network.AWS.DataPipeline.ActivatePipeline
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Validates the specified pipeline and starts processing pipeline tasks. If the pipeline does not pass validation, activation fails.
--
--
-- If you need to pause the pipeline to investigate an issue with a component, such as a data source or script, call 'DeactivatePipeline' .
--
-- To activate a finished pipeline, modify the end date for the pipeline and then activate it.
module Network.AWS.DataPipeline.ActivatePipeline
  ( -- * Creating a Request
    activatePipeline,
    ActivatePipeline,

    -- * Request Lenses
    apParameterValues,
    apStartTimestamp,
    apPipelineId,

    -- * Destructuring the Response
    activatePipelineResponse,
    ActivatePipelineResponse,

    -- * Response Lenses
    aprrsResponseStatus,
  )
where

import Network.AWS.DataPipeline.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for ActivatePipeline.
--
--
--
-- /See:/ 'activatePipeline' smart constructor.
data ActivatePipeline = ActivatePipeline'
  { _apParameterValues ::
      !(Maybe [ParameterValue]),
    _apStartTimestamp :: !(Maybe POSIX),
    _apPipelineId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ActivatePipeline' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apParameterValues' - A list of parameter values to pass to the pipeline at activation.
--
-- * 'apStartTimestamp' - The date and time to resume the pipeline. By default, the pipeline resumes from the last completed execution.
--
-- * 'apPipelineId' - The ID of the pipeline.
activatePipeline ::
  -- | 'apPipelineId'
  Text ->
  ActivatePipeline
activatePipeline pPipelineId_ =
  ActivatePipeline'
    { _apParameterValues = Nothing,
      _apStartTimestamp = Nothing,
      _apPipelineId = pPipelineId_
    }

-- | A list of parameter values to pass to the pipeline at activation.
apParameterValues :: Lens' ActivatePipeline [ParameterValue]
apParameterValues = lens _apParameterValues (\s a -> s {_apParameterValues = a}) . _Default . _Coerce

-- | The date and time to resume the pipeline. By default, the pipeline resumes from the last completed execution.
apStartTimestamp :: Lens' ActivatePipeline (Maybe UTCTime)
apStartTimestamp = lens _apStartTimestamp (\s a -> s {_apStartTimestamp = a}) . mapping _Time

-- | The ID of the pipeline.
apPipelineId :: Lens' ActivatePipeline Text
apPipelineId = lens _apPipelineId (\s a -> s {_apPipelineId = a})

instance AWSRequest ActivatePipeline where
  type Rs ActivatePipeline = ActivatePipelineResponse
  request = postJSON dataPipeline
  response =
    receiveEmpty
      ( \s h x ->
          ActivatePipelineResponse' <$> (pure (fromEnum s))
      )

instance Hashable ActivatePipeline

instance NFData ActivatePipeline

instance ToHeaders ActivatePipeline where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("DataPipeline.ActivatePipeline" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ActivatePipeline where
  toJSON ActivatePipeline' {..} =
    object
      ( catMaybes
          [ ("parameterValues" .=) <$> _apParameterValues,
            ("startTimestamp" .=) <$> _apStartTimestamp,
            Just ("pipelineId" .= _apPipelineId)
          ]
      )

instance ToPath ActivatePipeline where
  toPath = const "/"

instance ToQuery ActivatePipeline where
  toQuery = const mempty

-- | Contains the output of ActivatePipeline.
--
--
--
-- /See:/ 'activatePipelineResponse' smart constructor.
newtype ActivatePipelineResponse = ActivatePipelineResponse'
  { _aprrsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ActivatePipelineResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aprrsResponseStatus' - -- | The response status code.
activatePipelineResponse ::
  -- | 'aprrsResponseStatus'
  Int ->
  ActivatePipelineResponse
activatePipelineResponse pResponseStatus_ =
  ActivatePipelineResponse'
    { _aprrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
aprrsResponseStatus :: Lens' ActivatePipelineResponse Int
aprrsResponseStatus = lens _aprrsResponseStatus (\s a -> s {_aprrsResponseStatus = a})

instance NFData ActivatePipelineResponse
