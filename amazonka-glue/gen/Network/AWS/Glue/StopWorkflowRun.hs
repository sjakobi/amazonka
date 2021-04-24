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
-- Module      : Network.AWS.Glue.StopWorkflowRun
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops the execution of the specified workflow run.
module Network.AWS.Glue.StopWorkflowRun
  ( -- * Creating a Request
    stopWorkflowRun,
    StopWorkflowRun,

    -- * Request Lenses
    swrName,
    swrRunId,

    -- * Destructuring the Response
    stopWorkflowRunResponse,
    StopWorkflowRunResponse,

    -- * Response Lenses
    swrrrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'stopWorkflowRun' smart constructor.
data StopWorkflowRun = StopWorkflowRun'
  { _swrName ::
      !Text,
    _swrRunId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StopWorkflowRun' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'swrName' - The name of the workflow to stop.
--
-- * 'swrRunId' - The ID of the workflow run to stop.
stopWorkflowRun ::
  -- | 'swrName'
  Text ->
  -- | 'swrRunId'
  Text ->
  StopWorkflowRun
stopWorkflowRun pName_ pRunId_ =
  StopWorkflowRun'
    { _swrName = pName_,
      _swrRunId = pRunId_
    }

-- | The name of the workflow to stop.
swrName :: Lens' StopWorkflowRun Text
swrName = lens _swrName (\s a -> s {_swrName = a})

-- | The ID of the workflow run to stop.
swrRunId :: Lens' StopWorkflowRun Text
swrRunId = lens _swrRunId (\s a -> s {_swrRunId = a})

instance AWSRequest StopWorkflowRun where
  type Rs StopWorkflowRun = StopWorkflowRunResponse
  request = postJSON glue
  response =
    receiveEmpty
      ( \s h x ->
          StopWorkflowRunResponse' <$> (pure (fromEnum s))
      )

instance Hashable StopWorkflowRun

instance NFData StopWorkflowRun

instance ToHeaders StopWorkflowRun where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.StopWorkflowRun" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StopWorkflowRun where
  toJSON StopWorkflowRun' {..} =
    object
      ( catMaybes
          [ Just ("Name" .= _swrName),
            Just ("RunId" .= _swrRunId)
          ]
      )

instance ToPath StopWorkflowRun where
  toPath = const "/"

instance ToQuery StopWorkflowRun where
  toQuery = const mempty

-- | /See:/ 'stopWorkflowRunResponse' smart constructor.
newtype StopWorkflowRunResponse = StopWorkflowRunResponse'
  { _swrrrsResponseStatus ::
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

-- | Creates a value of 'StopWorkflowRunResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'swrrrsResponseStatus' - -- | The response status code.
stopWorkflowRunResponse ::
  -- | 'swrrrsResponseStatus'
  Int ->
  StopWorkflowRunResponse
stopWorkflowRunResponse pResponseStatus_ =
  StopWorkflowRunResponse'
    { _swrrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
swrrrsResponseStatus :: Lens' StopWorkflowRunResponse Int
swrrrsResponseStatus = lens _swrrrsResponseStatus (\s a -> s {_swrrrsResponseStatus = a})

instance NFData StopWorkflowRunResponse
