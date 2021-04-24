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
-- Module      : Network.AWS.SageMaker.DeletePipeline
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a pipeline if there are no in-progress executions.
module Network.AWS.SageMaker.DeletePipeline
  ( -- * Creating a Request
    deletePipeline,
    DeletePipeline,

    -- * Request Lenses
    dPipelineName,
    dClientRequestToken,

    -- * Destructuring the Response
    deletePipelineResponse,
    DeletePipelineResponse,

    -- * Response Lenses
    dprprsPipelineARN,
    dprprsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'deletePipeline' smart constructor.
data DeletePipeline = DeletePipeline'
  { _dPipelineName ::
      !Text,
    _dClientRequestToken :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeletePipeline' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dPipelineName' - The name of the pipeline to delete.
--
-- * 'dClientRequestToken' - A unique, case-sensitive identifier that you provide to ensure the idempotency of the operation. An idempotent operation completes no more than one time.
deletePipeline ::
  -- | 'dPipelineName'
  Text ->
  -- | 'dClientRequestToken'
  Text ->
  DeletePipeline
deletePipeline pPipelineName_ pClientRequestToken_ =
  DeletePipeline'
    { _dPipelineName = pPipelineName_,
      _dClientRequestToken = pClientRequestToken_
    }

-- | The name of the pipeline to delete.
dPipelineName :: Lens' DeletePipeline Text
dPipelineName = lens _dPipelineName (\s a -> s {_dPipelineName = a})

-- | A unique, case-sensitive identifier that you provide to ensure the idempotency of the operation. An idempotent operation completes no more than one time.
dClientRequestToken :: Lens' DeletePipeline Text
dClientRequestToken = lens _dClientRequestToken (\s a -> s {_dClientRequestToken = a})

instance AWSRequest DeletePipeline where
  type Rs DeletePipeline = DeletePipelineResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          DeletePipelineResponse'
            <$> (x .?> "PipelineArn") <*> (pure (fromEnum s))
      )

instance Hashable DeletePipeline

instance NFData DeletePipeline

instance ToHeaders DeletePipeline where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.DeletePipeline" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeletePipeline where
  toJSON DeletePipeline' {..} =
    object
      ( catMaybes
          [ Just ("PipelineName" .= _dPipelineName),
            Just ("ClientRequestToken" .= _dClientRequestToken)
          ]
      )

instance ToPath DeletePipeline where
  toPath = const "/"

instance ToQuery DeletePipeline where
  toQuery = const mempty

-- | /See:/ 'deletePipelineResponse' smart constructor.
data DeletePipelineResponse = DeletePipelineResponse'
  { _dprprsPipelineARN ::
      !(Maybe Text),
    _dprprsResponseStatus ::
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

-- | Creates a value of 'DeletePipelineResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dprprsPipelineARN' - The Amazon Resource Name (ARN) of the pipeline to delete.
--
-- * 'dprprsResponseStatus' - -- | The response status code.
deletePipelineResponse ::
  -- | 'dprprsResponseStatus'
  Int ->
  DeletePipelineResponse
deletePipelineResponse pResponseStatus_ =
  DeletePipelineResponse'
    { _dprprsPipelineARN =
        Nothing,
      _dprprsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the pipeline to delete.
dprprsPipelineARN :: Lens' DeletePipelineResponse (Maybe Text)
dprprsPipelineARN = lens _dprprsPipelineARN (\s a -> s {_dprprsPipelineARN = a})

-- | -- | The response status code.
dprprsResponseStatus :: Lens' DeletePipelineResponse Int
dprprsResponseStatus = lens _dprprsResponseStatus (\s a -> s {_dprprsResponseStatus = a})

instance NFData DeletePipelineResponse
