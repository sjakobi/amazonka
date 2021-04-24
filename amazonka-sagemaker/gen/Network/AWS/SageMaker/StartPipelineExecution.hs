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
-- Module      : Network.AWS.SageMaker.StartPipelineExecution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts a pipeline execution.
module Network.AWS.SageMaker.StartPipelineExecution
  ( -- * Creating a Request
    startPipelineExecution,
    StartPipelineExecution,

    -- * Request Lenses
    spePipelineExecutionDescription,
    spePipelineParameters,
    spePipelineExecutionDisplayName,
    spePipelineName,
    speClientRequestToken,

    -- * Destructuring the Response
    startPipelineExecutionResponse,
    StartPipelineExecutionResponse,

    -- * Response Lenses
    srsPipelineExecutionARN,
    srsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'startPipelineExecution' smart constructor.
data StartPipelineExecution = StartPipelineExecution'
  { _spePipelineExecutionDescription ::
      !(Maybe Text),
    _spePipelineParameters ::
      !(Maybe [Parameter]),
    _spePipelineExecutionDisplayName ::
      !(Maybe Text),
    _spePipelineName :: !Text,
    _speClientRequestToken ::
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

-- | Creates a value of 'StartPipelineExecution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spePipelineExecutionDescription' - The description of the pipeline execution.
--
-- * 'spePipelineParameters' - Contains a list of pipeline parameters. This list can be empty.
--
-- * 'spePipelineExecutionDisplayName' - The display name of the pipeline execution.
--
-- * 'spePipelineName' - The name of the pipeline.
--
-- * 'speClientRequestToken' - A unique, case-sensitive identifier that you provide to ensure the idempotency of the operation. An idempotent operation completes no more than one time.
startPipelineExecution ::
  -- | 'spePipelineName'
  Text ->
  -- | 'speClientRequestToken'
  Text ->
  StartPipelineExecution
startPipelineExecution
  pPipelineName_
  pClientRequestToken_ =
    StartPipelineExecution'
      { _spePipelineExecutionDescription =
          Nothing,
        _spePipelineParameters = Nothing,
        _spePipelineExecutionDisplayName = Nothing,
        _spePipelineName = pPipelineName_,
        _speClientRequestToken = pClientRequestToken_
      }

-- | The description of the pipeline execution.
spePipelineExecutionDescription :: Lens' StartPipelineExecution (Maybe Text)
spePipelineExecutionDescription = lens _spePipelineExecutionDescription (\s a -> s {_spePipelineExecutionDescription = a})

-- | Contains a list of pipeline parameters. This list can be empty.
spePipelineParameters :: Lens' StartPipelineExecution [Parameter]
spePipelineParameters = lens _spePipelineParameters (\s a -> s {_spePipelineParameters = a}) . _Default . _Coerce

-- | The display name of the pipeline execution.
spePipelineExecutionDisplayName :: Lens' StartPipelineExecution (Maybe Text)
spePipelineExecutionDisplayName = lens _spePipelineExecutionDisplayName (\s a -> s {_spePipelineExecutionDisplayName = a})

-- | The name of the pipeline.
spePipelineName :: Lens' StartPipelineExecution Text
spePipelineName = lens _spePipelineName (\s a -> s {_spePipelineName = a})

-- | A unique, case-sensitive identifier that you provide to ensure the idempotency of the operation. An idempotent operation completes no more than one time.
speClientRequestToken :: Lens' StartPipelineExecution Text
speClientRequestToken = lens _speClientRequestToken (\s a -> s {_speClientRequestToken = a})

instance AWSRequest StartPipelineExecution where
  type
    Rs StartPipelineExecution =
      StartPipelineExecutionResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          StartPipelineExecutionResponse'
            <$> (x .?> "PipelineExecutionArn")
            <*> (pure (fromEnum s))
      )

instance Hashable StartPipelineExecution

instance NFData StartPipelineExecution

instance ToHeaders StartPipelineExecution where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.StartPipelineExecution" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StartPipelineExecution where
  toJSON StartPipelineExecution' {..} =
    object
      ( catMaybes
          [ ("PipelineExecutionDescription" .=)
              <$> _spePipelineExecutionDescription,
            ("PipelineParameters" .=) <$> _spePipelineParameters,
            ("PipelineExecutionDisplayName" .=)
              <$> _spePipelineExecutionDisplayName,
            Just ("PipelineName" .= _spePipelineName),
            Just
              ("ClientRequestToken" .= _speClientRequestToken)
          ]
      )

instance ToPath StartPipelineExecution where
  toPath = const "/"

instance ToQuery StartPipelineExecution where
  toQuery = const mempty

-- | /See:/ 'startPipelineExecutionResponse' smart constructor.
data StartPipelineExecutionResponse = StartPipelineExecutionResponse'
  { _srsPipelineExecutionARN ::
      !( Maybe
           Text
       ),
    _srsResponseStatus ::
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

-- | Creates a value of 'StartPipelineExecutionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srsPipelineExecutionARN' - The Amazon Resource Name (ARN) of the pipeline execution.
--
-- * 'srsResponseStatus' - -- | The response status code.
startPipelineExecutionResponse ::
  -- | 'srsResponseStatus'
  Int ->
  StartPipelineExecutionResponse
startPipelineExecutionResponse pResponseStatus_ =
  StartPipelineExecutionResponse'
    { _srsPipelineExecutionARN =
        Nothing,
      _srsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the pipeline execution.
srsPipelineExecutionARN :: Lens' StartPipelineExecutionResponse (Maybe Text)
srsPipelineExecutionARN = lens _srsPipelineExecutionARN (\s a -> s {_srsPipelineExecutionARN = a})

-- | -- | The response status code.
srsResponseStatus :: Lens' StartPipelineExecutionResponse Int
srsResponseStatus = lens _srsResponseStatus (\s a -> s {_srsResponseStatus = a})

instance NFData StartPipelineExecutionResponse
