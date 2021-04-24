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
-- Module      : Network.AWS.StepFunctions.GetActivityTask
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Used by workers to retrieve a task (with the specified activity ARN) which has been scheduled for execution by a running state machine. This initiates a long poll, where the service holds the HTTP connection open and responds as soon as a task becomes available (i.e. an execution of a task of this type is needed.) The maximum time the service holds on to the request before responding is 60 seconds. If no task is available within 60 seconds, the poll returns a @taskToken@ with a null string.
--
--
-- /Important:/ Workers should set their client side socket timeout to at least 65 seconds (5 seconds higher than the maximum time the service may hold the poll request).
--
-- Polling with @GetActivityTask@ can cause latency in some implementations. See <https://docs.aws.amazon.com/step-functions/latest/dg/bp-activity-pollers.html Avoid Latency When Polling for Activity Tasks> in the Step Functions Developer Guide.
module Network.AWS.StepFunctions.GetActivityTask
  ( -- * Creating a Request
    getActivityTask,
    GetActivityTask,

    -- * Request Lenses
    gatWorkerName,
    gatActivityARN,

    -- * Destructuring the Response
    getActivityTaskResponse,
    GetActivityTaskResponse,

    -- * Response Lenses
    gatrrsInput,
    gatrrsTaskToken,
    gatrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.StepFunctions.Types

-- | /See:/ 'getActivityTask' smart constructor.
data GetActivityTask = GetActivityTask'
  { _gatWorkerName ::
      !(Maybe Text),
    _gatActivityARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetActivityTask' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gatWorkerName' - You can provide an arbitrary name in order to identify the worker that the task is assigned to. This name is used when it is logged in the execution history.
--
-- * 'gatActivityARN' - The Amazon Resource Name (ARN) of the activity to retrieve tasks from (assigned when you create the task using 'CreateActivity' .)
getActivityTask ::
  -- | 'gatActivityARN'
  Text ->
  GetActivityTask
getActivityTask pActivityARN_ =
  GetActivityTask'
    { _gatWorkerName = Nothing,
      _gatActivityARN = pActivityARN_
    }

-- | You can provide an arbitrary name in order to identify the worker that the task is assigned to. This name is used when it is logged in the execution history.
gatWorkerName :: Lens' GetActivityTask (Maybe Text)
gatWorkerName = lens _gatWorkerName (\s a -> s {_gatWorkerName = a})

-- | The Amazon Resource Name (ARN) of the activity to retrieve tasks from (assigned when you create the task using 'CreateActivity' .)
gatActivityARN :: Lens' GetActivityTask Text
gatActivityARN = lens _gatActivityARN (\s a -> s {_gatActivityARN = a})

instance AWSRequest GetActivityTask where
  type Rs GetActivityTask = GetActivityTaskResponse
  request = postJSON stepFunctions
  response =
    receiveJSON
      ( \s h x ->
          GetActivityTaskResponse'
            <$> (x .?> "input")
            <*> (x .?> "taskToken")
            <*> (pure (fromEnum s))
      )

instance Hashable GetActivityTask

instance NFData GetActivityTask

instance ToHeaders GetActivityTask where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSStepFunctions.GetActivityTask" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.0" :: ByteString)
          ]
      )

instance ToJSON GetActivityTask where
  toJSON GetActivityTask' {..} =
    object
      ( catMaybes
          [ ("workerName" .=) <$> _gatWorkerName,
            Just ("activityArn" .= _gatActivityARN)
          ]
      )

instance ToPath GetActivityTask where
  toPath = const "/"

instance ToQuery GetActivityTask where
  toQuery = const mempty

-- | /See:/ 'getActivityTaskResponse' smart constructor.
data GetActivityTaskResponse = GetActivityTaskResponse'
  { _gatrrsInput ::
      !( Maybe
           (Sensitive Text)
       ),
    _gatrrsTaskToken ::
      !(Maybe Text),
    _gatrrsResponseStatus ::
      !Int
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetActivityTaskResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gatrrsInput' - The string that contains the JSON input data for the task. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.
--
-- * 'gatrrsTaskToken' - A token that identifies the scheduled task. This token must be copied and included in subsequent calls to 'SendTaskHeartbeat' , 'SendTaskSuccess' or 'SendTaskFailure' in order to report the progress or completion of the task.
--
-- * 'gatrrsResponseStatus' - -- | The response status code.
getActivityTaskResponse ::
  -- | 'gatrrsResponseStatus'
  Int ->
  GetActivityTaskResponse
getActivityTaskResponse pResponseStatus_ =
  GetActivityTaskResponse'
    { _gatrrsInput = Nothing,
      _gatrrsTaskToken = Nothing,
      _gatrrsResponseStatus = pResponseStatus_
    }

-- | The string that contains the JSON input data for the task. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.
gatrrsInput :: Lens' GetActivityTaskResponse (Maybe Text)
gatrrsInput = lens _gatrrsInput (\s a -> s {_gatrrsInput = a}) . mapping _Sensitive

-- | A token that identifies the scheduled task. This token must be copied and included in subsequent calls to 'SendTaskHeartbeat' , 'SendTaskSuccess' or 'SendTaskFailure' in order to report the progress or completion of the task.
gatrrsTaskToken :: Lens' GetActivityTaskResponse (Maybe Text)
gatrrsTaskToken = lens _gatrrsTaskToken (\s a -> s {_gatrrsTaskToken = a})

-- | -- | The response status code.
gatrrsResponseStatus :: Lens' GetActivityTaskResponse Int
gatrrsResponseStatus = lens _gatrrsResponseStatus (\s a -> s {_gatrrsResponseStatus = a})

instance NFData GetActivityTaskResponse
