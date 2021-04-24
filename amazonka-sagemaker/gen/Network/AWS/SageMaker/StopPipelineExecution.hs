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
-- Module      : Network.AWS.SageMaker.StopPipelineExecution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops a pipeline execution.
module Network.AWS.SageMaker.StopPipelineExecution
  ( -- * Creating a Request
    stopPipelineExecution,
    StopPipelineExecution,

    -- * Request Lenses
    sPipelineExecutionARN,
    sClientRequestToken,

    -- * Destructuring the Response
    stopPipelineExecutionResponse,
    StopPipelineExecutionResponse,

    -- * Response Lenses
    sperrsPipelineExecutionARN,
    sperrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'stopPipelineExecution' smart constructor.
data StopPipelineExecution = StopPipelineExecution'
  { _sPipelineExecutionARN ::
      !Text,
    _sClientRequestToken ::
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
-- * 'sPipelineExecutionARN' - The Amazon Resource Name (ARN) of the pipeline execution.
--
-- * 'sClientRequestToken' - A unique, case-sensitive identifier that you provide to ensure the idempotency of the operation. An idempotent operation completes no more than one time.
stopPipelineExecution ::
  -- | 'sPipelineExecutionARN'
  Text ->
  -- | 'sClientRequestToken'
  Text ->
  StopPipelineExecution
stopPipelineExecution
  pPipelineExecutionARN_
  pClientRequestToken_ =
    StopPipelineExecution'
      { _sPipelineExecutionARN =
          pPipelineExecutionARN_,
        _sClientRequestToken = pClientRequestToken_
      }

-- | The Amazon Resource Name (ARN) of the pipeline execution.
sPipelineExecutionARN :: Lens' StopPipelineExecution Text
sPipelineExecutionARN = lens _sPipelineExecutionARN (\s a -> s {_sPipelineExecutionARN = a})

-- | A unique, case-sensitive identifier that you provide to ensure the idempotency of the operation. An idempotent operation completes no more than one time.
sClientRequestToken :: Lens' StopPipelineExecution Text
sClientRequestToken = lens _sClientRequestToken (\s a -> s {_sClientRequestToken = a})

instance AWSRequest StopPipelineExecution where
  type
    Rs StopPipelineExecution =
      StopPipelineExecutionResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          StopPipelineExecutionResponse'
            <$> (x .?> "PipelineExecutionArn")
            <*> (pure (fromEnum s))
      )

instance Hashable StopPipelineExecution

instance NFData StopPipelineExecution

instance ToHeaders StopPipelineExecution where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.StopPipelineExecution" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StopPipelineExecution where
  toJSON StopPipelineExecution' {..} =
    object
      ( catMaybes
          [ Just
              ("PipelineExecutionArn" .= _sPipelineExecutionARN),
            Just ("ClientRequestToken" .= _sClientRequestToken)
          ]
      )

instance ToPath StopPipelineExecution where
  toPath = const "/"

instance ToQuery StopPipelineExecution where
  toQuery = const mempty

-- | /See:/ 'stopPipelineExecutionResponse' smart constructor.
data StopPipelineExecutionResponse = StopPipelineExecutionResponse'
  { _sperrsPipelineExecutionARN ::
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
-- * 'sperrsPipelineExecutionARN' - The Amazon Resource Name (ARN) of the pipeline execution.
--
-- * 'sperrsResponseStatus' - -- | The response status code.
stopPipelineExecutionResponse ::
  -- | 'sperrsResponseStatus'
  Int ->
  StopPipelineExecutionResponse
stopPipelineExecutionResponse pResponseStatus_ =
  StopPipelineExecutionResponse'
    { _sperrsPipelineExecutionARN =
        Nothing,
      _sperrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the pipeline execution.
sperrsPipelineExecutionARN :: Lens' StopPipelineExecutionResponse (Maybe Text)
sperrsPipelineExecutionARN = lens _sperrsPipelineExecutionARN (\s a -> s {_sperrsPipelineExecutionARN = a})

-- | -- | The response status code.
sperrsResponseStatus :: Lens' StopPipelineExecutionResponse Int
sperrsResponseStatus = lens _sperrsResponseStatus (\s a -> s {_sperrsResponseStatus = a})

instance NFData StopPipelineExecutionResponse
