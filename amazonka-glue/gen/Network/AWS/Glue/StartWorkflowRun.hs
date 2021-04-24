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
-- Module      : Network.AWS.Glue.StartWorkflowRun
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts a new run of the specified workflow.
module Network.AWS.Glue.StartWorkflowRun
  ( -- * Creating a Request
    startWorkflowRun,
    StartWorkflowRun,

    -- * Request Lenses
    swrwName,

    -- * Destructuring the Response
    startWorkflowRunResponse,
    StartWorkflowRunResponse,

    -- * Response Lenses
    starsRunId,
    starsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'startWorkflowRun' smart constructor.
newtype StartWorkflowRun = StartWorkflowRun'
  { _swrwName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StartWorkflowRun' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'swrwName' - The name of the workflow to start.
startWorkflowRun ::
  -- | 'swrwName'
  Text ->
  StartWorkflowRun
startWorkflowRun pName_ =
  StartWorkflowRun' {_swrwName = pName_}

-- | The name of the workflow to start.
swrwName :: Lens' StartWorkflowRun Text
swrwName = lens _swrwName (\s a -> s {_swrwName = a})

instance AWSRequest StartWorkflowRun where
  type Rs StartWorkflowRun = StartWorkflowRunResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          StartWorkflowRunResponse'
            <$> (x .?> "RunId") <*> (pure (fromEnum s))
      )

instance Hashable StartWorkflowRun

instance NFData StartWorkflowRun

instance ToHeaders StartWorkflowRun where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.StartWorkflowRun" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StartWorkflowRun where
  toJSON StartWorkflowRun' {..} =
    object (catMaybes [Just ("Name" .= _swrwName)])

instance ToPath StartWorkflowRun where
  toPath = const "/"

instance ToQuery StartWorkflowRun where
  toQuery = const mempty

-- | /See:/ 'startWorkflowRunResponse' smart constructor.
data StartWorkflowRunResponse = StartWorkflowRunResponse'
  { _starsRunId ::
      !(Maybe Text),
    _starsResponseStatus ::
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

-- | Creates a value of 'StartWorkflowRunResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'starsRunId' - An Id for the new run.
--
-- * 'starsResponseStatus' - -- | The response status code.
startWorkflowRunResponse ::
  -- | 'starsResponseStatus'
  Int ->
  StartWorkflowRunResponse
startWorkflowRunResponse pResponseStatus_ =
  StartWorkflowRunResponse'
    { _starsRunId = Nothing,
      _starsResponseStatus = pResponseStatus_
    }

-- | An Id for the new run.
starsRunId :: Lens' StartWorkflowRunResponse (Maybe Text)
starsRunId = lens _starsRunId (\s a -> s {_starsRunId = a})

-- | -- | The response status code.
starsResponseStatus :: Lens' StartWorkflowRunResponse Int
starsResponseStatus = lens _starsResponseStatus (\s a -> s {_starsResponseStatus = a})

instance NFData StartWorkflowRunResponse
