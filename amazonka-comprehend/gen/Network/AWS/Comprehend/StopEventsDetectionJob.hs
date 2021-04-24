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
-- Module      : Network.AWS.Comprehend.StopEventsDetectionJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops an events detection job in progress.
module Network.AWS.Comprehend.StopEventsDetectionJob
  ( -- * Creating a Request
    stopEventsDetectionJob,
    StopEventsDetectionJob,

    -- * Request Lenses
    sedjJobId,

    -- * Destructuring the Response
    stopEventsDetectionJobResponse,
    StopEventsDetectionJobResponse,

    -- * Response Lenses
    srsJobStatus,
    srsJobId,
    srsResponseStatus,
  )
where

import Network.AWS.Comprehend.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'stopEventsDetectionJob' smart constructor.
newtype StopEventsDetectionJob = StopEventsDetectionJob'
  { _sedjJobId ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'StopEventsDetectionJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sedjJobId' - The identifier of the events detection job to stop.
stopEventsDetectionJob ::
  -- | 'sedjJobId'
  Text ->
  StopEventsDetectionJob
stopEventsDetectionJob pJobId_ =
  StopEventsDetectionJob' {_sedjJobId = pJobId_}

-- | The identifier of the events detection job to stop.
sedjJobId :: Lens' StopEventsDetectionJob Text
sedjJobId = lens _sedjJobId (\s a -> s {_sedjJobId = a})

instance AWSRequest StopEventsDetectionJob where
  type
    Rs StopEventsDetectionJob =
      StopEventsDetectionJobResponse
  request = postJSON comprehend
  response =
    receiveJSON
      ( \s h x ->
          StopEventsDetectionJobResponse'
            <$> (x .?> "JobStatus")
            <*> (x .?> "JobId")
            <*> (pure (fromEnum s))
      )

instance Hashable StopEventsDetectionJob

instance NFData StopEventsDetectionJob

instance ToHeaders StopEventsDetectionJob where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Comprehend_20171127.StopEventsDetectionJob" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StopEventsDetectionJob where
  toJSON StopEventsDetectionJob' {..} =
    object (catMaybes [Just ("JobId" .= _sedjJobId)])

instance ToPath StopEventsDetectionJob where
  toPath = const "/"

instance ToQuery StopEventsDetectionJob where
  toQuery = const mempty

-- | /See:/ 'stopEventsDetectionJobResponse' smart constructor.
data StopEventsDetectionJobResponse = StopEventsDetectionJobResponse'
  { _srsJobStatus ::
      !( Maybe
           JobStatus
       ),
    _srsJobId ::
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

-- | Creates a value of 'StopEventsDetectionJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srsJobStatus' - The status of the events detection job.
--
-- * 'srsJobId' - The identifier of the events detection job to stop.
--
-- * 'srsResponseStatus' - -- | The response status code.
stopEventsDetectionJobResponse ::
  -- | 'srsResponseStatus'
  Int ->
  StopEventsDetectionJobResponse
stopEventsDetectionJobResponse pResponseStatus_ =
  StopEventsDetectionJobResponse'
    { _srsJobStatus =
        Nothing,
      _srsJobId = Nothing,
      _srsResponseStatus = pResponseStatus_
    }

-- | The status of the events detection job.
srsJobStatus :: Lens' StopEventsDetectionJobResponse (Maybe JobStatus)
srsJobStatus = lens _srsJobStatus (\s a -> s {_srsJobStatus = a})

-- | The identifier of the events detection job to stop.
srsJobId :: Lens' StopEventsDetectionJobResponse (Maybe Text)
srsJobId = lens _srsJobId (\s a -> s {_srsJobId = a})

-- | -- | The response status code.
srsResponseStatus :: Lens' StopEventsDetectionJobResponse Int
srsResponseStatus = lens _srsResponseStatus (\s a -> s {_srsResponseStatus = a})

instance NFData StopEventsDetectionJobResponse
