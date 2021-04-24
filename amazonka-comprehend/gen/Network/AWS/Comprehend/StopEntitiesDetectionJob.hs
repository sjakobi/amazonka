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
-- Module      : Network.AWS.Comprehend.StopEntitiesDetectionJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops an entities detection job in progress.
--
--
-- If the job state is @IN_PROGRESS@ the job is marked for termination and put into the @STOP_REQUESTED@ state. If the job completes before it can be stopped, it is put into the @COMPLETED@ state; otherwise the job is stopped and put into the @STOPPED@ state.
--
-- If the job is in the @COMPLETED@ or @FAILED@ state when you call the @StopDominantLanguageDetectionJob@ operation, the operation returns a 400 Internal Request Exception.
--
-- When a job is stopped, any documents already processed are written to the output location.
module Network.AWS.Comprehend.StopEntitiesDetectionJob
  ( -- * Creating a Request
    stopEntitiesDetectionJob,
    StopEntitiesDetectionJob,

    -- * Request Lenses
    sJobId,

    -- * Destructuring the Response
    stopEntitiesDetectionJobResponse,
    StopEntitiesDetectionJobResponse,

    -- * Response Lenses
    ssrsJobStatus,
    ssrsJobId,
    ssrsResponseStatus,
  )
where

import Network.AWS.Comprehend.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'stopEntitiesDetectionJob' smart constructor.
newtype StopEntitiesDetectionJob = StopEntitiesDetectionJob'
  { _sJobId ::
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

-- | Creates a value of 'StopEntitiesDetectionJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sJobId' - The identifier of the entities detection job to stop.
stopEntitiesDetectionJob ::
  -- | 'sJobId'
  Text ->
  StopEntitiesDetectionJob
stopEntitiesDetectionJob pJobId_ =
  StopEntitiesDetectionJob' {_sJobId = pJobId_}

-- | The identifier of the entities detection job to stop.
sJobId :: Lens' StopEntitiesDetectionJob Text
sJobId = lens _sJobId (\s a -> s {_sJobId = a})

instance AWSRequest StopEntitiesDetectionJob where
  type
    Rs StopEntitiesDetectionJob =
      StopEntitiesDetectionJobResponse
  request = postJSON comprehend
  response =
    receiveJSON
      ( \s h x ->
          StopEntitiesDetectionJobResponse'
            <$> (x .?> "JobStatus")
            <*> (x .?> "JobId")
            <*> (pure (fromEnum s))
      )

instance Hashable StopEntitiesDetectionJob

instance NFData StopEntitiesDetectionJob

instance ToHeaders StopEntitiesDetectionJob where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Comprehend_20171127.StopEntitiesDetectionJob" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StopEntitiesDetectionJob where
  toJSON StopEntitiesDetectionJob' {..} =
    object (catMaybes [Just ("JobId" .= _sJobId)])

instance ToPath StopEntitiesDetectionJob where
  toPath = const "/"

instance ToQuery StopEntitiesDetectionJob where
  toQuery = const mempty

-- | /See:/ 'stopEntitiesDetectionJobResponse' smart constructor.
data StopEntitiesDetectionJobResponse = StopEntitiesDetectionJobResponse'
  { _ssrsJobStatus ::
      !( Maybe
           JobStatus
       ),
    _ssrsJobId ::
      !( Maybe
           Text
       ),
    _ssrsResponseStatus ::
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

-- | Creates a value of 'StopEntitiesDetectionJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssrsJobStatus' - Either @STOP_REQUESTED@ if the job is currently running, or @STOPPED@ if the job was previously stopped with the @StopEntitiesDetectionJob@ operation.
--
-- * 'ssrsJobId' - The identifier of the entities detection job to stop.
--
-- * 'ssrsResponseStatus' - -- | The response status code.
stopEntitiesDetectionJobResponse ::
  -- | 'ssrsResponseStatus'
  Int ->
  StopEntitiesDetectionJobResponse
stopEntitiesDetectionJobResponse pResponseStatus_ =
  StopEntitiesDetectionJobResponse'
    { _ssrsJobStatus =
        Nothing,
      _ssrsJobId = Nothing,
      _ssrsResponseStatus = pResponseStatus_
    }

-- | Either @STOP_REQUESTED@ if the job is currently running, or @STOPPED@ if the job was previously stopped with the @StopEntitiesDetectionJob@ operation.
ssrsJobStatus :: Lens' StopEntitiesDetectionJobResponse (Maybe JobStatus)
ssrsJobStatus = lens _ssrsJobStatus (\s a -> s {_ssrsJobStatus = a})

-- | The identifier of the entities detection job to stop.
ssrsJobId :: Lens' StopEntitiesDetectionJobResponse (Maybe Text)
ssrsJobId = lens _ssrsJobId (\s a -> s {_ssrsJobId = a})

-- | -- | The response status code.
ssrsResponseStatus :: Lens' StopEntitiesDetectionJobResponse Int
ssrsResponseStatus = lens _ssrsResponseStatus (\s a -> s {_ssrsResponseStatus = a})

instance NFData StopEntitiesDetectionJobResponse
