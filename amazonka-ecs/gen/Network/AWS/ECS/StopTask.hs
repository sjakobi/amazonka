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
-- Module      : Network.AWS.ECS.StopTask
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops a running task. Any tags associated with the task will be deleted.
--
--
-- When 'StopTask' is called on a task, the equivalent of @docker stop@ is issued to the containers running in the task. This results in a @SIGTERM@ value and a default 30-second timeout, after which the @SIGKILL@ value is sent and the containers are forcibly stopped. If the container handles the @SIGTERM@ value gracefully and exits within 30 seconds from receiving it, no @SIGKILL@ value is sent.
module Network.AWS.ECS.StopTask
  ( -- * Creating a Request
    stopTask,
    StopTask,

    -- * Request Lenses
    stReason,
    stCluster,
    stTask,

    -- * Destructuring the Response
    stopTaskResponse,
    StopTaskResponse,

    -- * Response Lenses
    strrsTask,
    strrsResponseStatus,
  )
where

import Network.AWS.ECS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'stopTask' smart constructor.
data StopTask = StopTask'
  { _stReason :: !(Maybe Text),
    _stCluster :: !(Maybe Text),
    _stTask :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StopTask' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stReason' - An optional message specified when a task is stopped. For example, if you are using a custom scheduler, you can use this parameter to specify the reason for stopping the task here, and the message appears in subsequent 'DescribeTasks' API operations on this task. Up to 255 characters are allowed in this message.
--
-- * 'stCluster' - The short name or full Amazon Resource Name (ARN) of the cluster that hosts the task to stop. If you do not specify a cluster, the default cluster is assumed.
--
-- * 'stTask' - The task ID or full Amazon Resource Name (ARN) of the task to stop.
stopTask ::
  -- | 'stTask'
  Text ->
  StopTask
stopTask pTask_ =
  StopTask'
    { _stReason = Nothing,
      _stCluster = Nothing,
      _stTask = pTask_
    }

-- | An optional message specified when a task is stopped. For example, if you are using a custom scheduler, you can use this parameter to specify the reason for stopping the task here, and the message appears in subsequent 'DescribeTasks' API operations on this task. Up to 255 characters are allowed in this message.
stReason :: Lens' StopTask (Maybe Text)
stReason = lens _stReason (\s a -> s {_stReason = a})

-- | The short name or full Amazon Resource Name (ARN) of the cluster that hosts the task to stop. If you do not specify a cluster, the default cluster is assumed.
stCluster :: Lens' StopTask (Maybe Text)
stCluster = lens _stCluster (\s a -> s {_stCluster = a})

-- | The task ID or full Amazon Resource Name (ARN) of the task to stop.
stTask :: Lens' StopTask Text
stTask = lens _stTask (\s a -> s {_stTask = a})

instance AWSRequest StopTask where
  type Rs StopTask = StopTaskResponse
  request = postJSON ecs
  response =
    receiveJSON
      ( \s h x ->
          StopTaskResponse'
            <$> (x .?> "task") <*> (pure (fromEnum s))
      )

instance Hashable StopTask

instance NFData StopTask

instance ToHeaders StopTask where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonEC2ContainerServiceV20141113.StopTask" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StopTask where
  toJSON StopTask' {..} =
    object
      ( catMaybes
          [ ("reason" .=) <$> _stReason,
            ("cluster" .=) <$> _stCluster,
            Just ("task" .= _stTask)
          ]
      )

instance ToPath StopTask where
  toPath = const "/"

instance ToQuery StopTask where
  toQuery = const mempty

-- | /See:/ 'stopTaskResponse' smart constructor.
data StopTaskResponse = StopTaskResponse'
  { _strrsTask ::
      !(Maybe Task),
    _strrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StopTaskResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'strrsTask' - The task that was stopped.
--
-- * 'strrsResponseStatus' - -- | The response status code.
stopTaskResponse ::
  -- | 'strrsResponseStatus'
  Int ->
  StopTaskResponse
stopTaskResponse pResponseStatus_ =
  StopTaskResponse'
    { _strrsTask = Nothing,
      _strrsResponseStatus = pResponseStatus_
    }

-- | The task that was stopped.
strrsTask :: Lens' StopTaskResponse (Maybe Task)
strrsTask = lens _strrsTask (\s a -> s {_strrsTask = a})

-- | -- | The response status code.
strrsResponseStatus :: Lens' StopTaskResponse Int
strrsResponseStatus = lens _strrsResponseStatus (\s a -> s {_strrsResponseStatus = a})

instance NFData StopTaskResponse
