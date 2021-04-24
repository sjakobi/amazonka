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
-- Module      : Network.AWS.SageMaker.UpdatePipelineExecution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a pipeline execution.
module Network.AWS.SageMaker.UpdatePipelineExecution
  ( -- * Creating a Request
    updatePipelineExecution,
    UpdatePipelineExecution,

    -- * Request Lenses
    upePipelineExecutionDescription,
    upePipelineExecutionDisplayName,
    upePipelineExecutionARN,

    -- * Destructuring the Response
    updatePipelineExecutionResponse,
    UpdatePipelineExecutionResponse,

    -- * Response Lenses
    uperrsPipelineExecutionARN,
    uperrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'updatePipelineExecution' smart constructor.
data UpdatePipelineExecution = UpdatePipelineExecution'
  { _upePipelineExecutionDescription ::
      !(Maybe Text),
    _upePipelineExecutionDisplayName ::
      !(Maybe Text),
    _upePipelineExecutionARN ::
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

-- | Creates a value of 'UpdatePipelineExecution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upePipelineExecutionDescription' - The description of the pipeline execution.
--
-- * 'upePipelineExecutionDisplayName' - The display name of the pipeline execution.
--
-- * 'upePipelineExecutionARN' - The Amazon Resource Name (ARN) of the pipeline execution.
updatePipelineExecution ::
  -- | 'upePipelineExecutionARN'
  Text ->
  UpdatePipelineExecution
updatePipelineExecution pPipelineExecutionARN_ =
  UpdatePipelineExecution'
    { _upePipelineExecutionDescription =
        Nothing,
      _upePipelineExecutionDisplayName = Nothing,
      _upePipelineExecutionARN = pPipelineExecutionARN_
    }

-- | The description of the pipeline execution.
upePipelineExecutionDescription :: Lens' UpdatePipelineExecution (Maybe Text)
upePipelineExecutionDescription = lens _upePipelineExecutionDescription (\s a -> s {_upePipelineExecutionDescription = a})

-- | The display name of the pipeline execution.
upePipelineExecutionDisplayName :: Lens' UpdatePipelineExecution (Maybe Text)
upePipelineExecutionDisplayName = lens _upePipelineExecutionDisplayName (\s a -> s {_upePipelineExecutionDisplayName = a})

-- | The Amazon Resource Name (ARN) of the pipeline execution.
upePipelineExecutionARN :: Lens' UpdatePipelineExecution Text
upePipelineExecutionARN = lens _upePipelineExecutionARN (\s a -> s {_upePipelineExecutionARN = a})

instance AWSRequest UpdatePipelineExecution where
  type
    Rs UpdatePipelineExecution =
      UpdatePipelineExecutionResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          UpdatePipelineExecutionResponse'
            <$> (x .?> "PipelineExecutionArn")
            <*> (pure (fromEnum s))
      )

instance Hashable UpdatePipelineExecution

instance NFData UpdatePipelineExecution

instance ToHeaders UpdatePipelineExecution where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.UpdatePipelineExecution" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdatePipelineExecution where
  toJSON UpdatePipelineExecution' {..} =
    object
      ( catMaybes
          [ ("PipelineExecutionDescription" .=)
              <$> _upePipelineExecutionDescription,
            ("PipelineExecutionDisplayName" .=)
              <$> _upePipelineExecutionDisplayName,
            Just
              ( "PipelineExecutionArn"
                  .= _upePipelineExecutionARN
              )
          ]
      )

instance ToPath UpdatePipelineExecution where
  toPath = const "/"

instance ToQuery UpdatePipelineExecution where
  toQuery = const mempty

-- | /See:/ 'updatePipelineExecutionResponse' smart constructor.
data UpdatePipelineExecutionResponse = UpdatePipelineExecutionResponse'
  { _uperrsPipelineExecutionARN ::
      !( Maybe
           Text
       ),
    _uperrsResponseStatus ::
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

-- | Creates a value of 'UpdatePipelineExecutionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uperrsPipelineExecutionARN' - The Amazon Resource Name (ARN) of the updated pipeline execution.
--
-- * 'uperrsResponseStatus' - -- | The response status code.
updatePipelineExecutionResponse ::
  -- | 'uperrsResponseStatus'
  Int ->
  UpdatePipelineExecutionResponse
updatePipelineExecutionResponse pResponseStatus_ =
  UpdatePipelineExecutionResponse'
    { _uperrsPipelineExecutionARN =
        Nothing,
      _uperrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the updated pipeline execution.
uperrsPipelineExecutionARN :: Lens' UpdatePipelineExecutionResponse (Maybe Text)
uperrsPipelineExecutionARN = lens _uperrsPipelineExecutionARN (\s a -> s {_uperrsPipelineExecutionARN = a})

-- | -- | The response status code.
uperrsResponseStatus :: Lens' UpdatePipelineExecutionResponse Int
uperrsResponseStatus = lens _uperrsResponseStatus (\s a -> s {_uperrsResponseStatus = a})

instance NFData UpdatePipelineExecutionResponse
