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
-- Module      : Network.AWS.DataPipeline.ReportTaskProgress
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Task runners call @ReportTaskProgress@ when assigned a task to acknowledge that it has the task. If the web service does not receive this acknowledgement within 2 minutes, it assigns the task in a subsequent 'PollForTask' call. After this initial acknowledgement, the task runner only needs to report progress every 15 minutes to maintain its ownership of the task. You can change this reporting time from 15 minutes by specifying a @reportProgressTimeout@ field in your pipeline.
--
--
-- If a task runner does not report its status after 5 minutes, AWS Data Pipeline assumes that the task runner is unable to process the task and reassigns the task in a subsequent response to 'PollForTask' . Task runners should call @ReportTaskProgress@ every 60 seconds.
module Network.AWS.DataPipeline.ReportTaskProgress
  ( -- * Creating a Request
    reportTaskProgress,
    ReportTaskProgress,

    -- * Request Lenses
    rtpFields,
    rtpTaskId,

    -- * Destructuring the Response
    reportTaskProgressResponse,
    ReportTaskProgressResponse,

    -- * Response Lenses
    rtprrsResponseStatus,
    rtprrsCanceled,
  )
where

import Network.AWS.DataPipeline.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for ReportTaskProgress.
--
--
--
-- /See:/ 'reportTaskProgress' smart constructor.
data ReportTaskProgress = ReportTaskProgress'
  { _rtpFields ::
      !(Maybe [Field]),
    _rtpTaskId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ReportTaskProgress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtpFields' - Key-value pairs that define the properties of the ReportTaskProgressInput object.
--
-- * 'rtpTaskId' - The ID of the task assigned to the task runner. This value is provided in the response for 'PollForTask' .
reportTaskProgress ::
  -- | 'rtpTaskId'
  Text ->
  ReportTaskProgress
reportTaskProgress pTaskId_ =
  ReportTaskProgress'
    { _rtpFields = Nothing,
      _rtpTaskId = pTaskId_
    }

-- | Key-value pairs that define the properties of the ReportTaskProgressInput object.
rtpFields :: Lens' ReportTaskProgress [Field]
rtpFields = lens _rtpFields (\s a -> s {_rtpFields = a}) . _Default . _Coerce

-- | The ID of the task assigned to the task runner. This value is provided in the response for 'PollForTask' .
rtpTaskId :: Lens' ReportTaskProgress Text
rtpTaskId = lens _rtpTaskId (\s a -> s {_rtpTaskId = a})

instance AWSRequest ReportTaskProgress where
  type
    Rs ReportTaskProgress =
      ReportTaskProgressResponse
  request = postJSON dataPipeline
  response =
    receiveJSON
      ( \s h x ->
          ReportTaskProgressResponse'
            <$> (pure (fromEnum s)) <*> (x .:> "canceled")
      )

instance Hashable ReportTaskProgress

instance NFData ReportTaskProgress

instance ToHeaders ReportTaskProgress where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("DataPipeline.ReportTaskProgress" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ReportTaskProgress where
  toJSON ReportTaskProgress' {..} =
    object
      ( catMaybes
          [ ("fields" .=) <$> _rtpFields,
            Just ("taskId" .= _rtpTaskId)
          ]
      )

instance ToPath ReportTaskProgress where
  toPath = const "/"

instance ToQuery ReportTaskProgress where
  toQuery = const mempty

-- | Contains the output of ReportTaskProgress.
--
--
--
-- /See:/ 'reportTaskProgressResponse' smart constructor.
data ReportTaskProgressResponse = ReportTaskProgressResponse'
  { _rtprrsResponseStatus ::
      !Int,
    _rtprrsCanceled ::
      !Bool
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ReportTaskProgressResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtprrsResponseStatus' - -- | The response status code.
--
-- * 'rtprrsCanceled' - If true, the calling task runner should cancel processing of the task. The task runner does not need to call 'SetTaskStatus' for canceled tasks.
reportTaskProgressResponse ::
  -- | 'rtprrsResponseStatus'
  Int ->
  -- | 'rtprrsCanceled'
  Bool ->
  ReportTaskProgressResponse
reportTaskProgressResponse
  pResponseStatus_
  pCanceled_ =
    ReportTaskProgressResponse'
      { _rtprrsResponseStatus =
          pResponseStatus_,
        _rtprrsCanceled = pCanceled_
      }

-- | -- | The response status code.
rtprrsResponseStatus :: Lens' ReportTaskProgressResponse Int
rtprrsResponseStatus = lens _rtprrsResponseStatus (\s a -> s {_rtprrsResponseStatus = a})

-- | If true, the calling task runner should cancel processing of the task. The task runner does not need to call 'SetTaskStatus' for canceled tasks.
rtprrsCanceled :: Lens' ReportTaskProgressResponse Bool
rtprrsCanceled = lens _rtprrsCanceled (\s a -> s {_rtprrsCanceled = a})

instance NFData ReportTaskProgressResponse
