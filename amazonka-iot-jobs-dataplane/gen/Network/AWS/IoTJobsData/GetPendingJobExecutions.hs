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
-- Module      : Network.AWS.IoTJobsData.GetPendingJobExecutions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the list of all jobs for a thing that are not in a terminal status.
module Network.AWS.IoTJobsData.GetPendingJobExecutions
  ( -- * Creating a Request
    getPendingJobExecutions,
    GetPendingJobExecutions,

    -- * Request Lenses
    gpjeThingName,

    -- * Destructuring the Response
    getPendingJobExecutionsResponse,
    GetPendingJobExecutionsResponse,

    -- * Response Lenses
    gpjerrsInProgressJobs,
    gpjerrsQueuedJobs,
    gpjerrsResponseStatus,
  )
where

import Network.AWS.IoTJobsData.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getPendingJobExecutions' smart constructor.
newtype GetPendingJobExecutions = GetPendingJobExecutions'
  { _gpjeThingName ::
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

-- | Creates a value of 'GetPendingJobExecutions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpjeThingName' - The name of the thing that is executing the job.
getPendingJobExecutions ::
  -- | 'gpjeThingName'
  Text ->
  GetPendingJobExecutions
getPendingJobExecutions pThingName_ =
  GetPendingJobExecutions'
    { _gpjeThingName =
        pThingName_
    }

-- | The name of the thing that is executing the job.
gpjeThingName :: Lens' GetPendingJobExecutions Text
gpjeThingName = lens _gpjeThingName (\s a -> s {_gpjeThingName = a})

instance AWSRequest GetPendingJobExecutions where
  type
    Rs GetPendingJobExecutions =
      GetPendingJobExecutionsResponse
  request = get ioTJobsData
  response =
    receiveJSON
      ( \s h x ->
          GetPendingJobExecutionsResponse'
            <$> (x .?> "inProgressJobs" .!@ mempty)
            <*> (x .?> "queuedJobs" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetPendingJobExecutions

instance NFData GetPendingJobExecutions

instance ToHeaders GetPendingJobExecutions where
  toHeaders = const mempty

instance ToPath GetPendingJobExecutions where
  toPath GetPendingJobExecutions' {..} =
    mconcat ["/things/", toBS _gpjeThingName, "/jobs"]

instance ToQuery GetPendingJobExecutions where
  toQuery = const mempty

-- | /See:/ 'getPendingJobExecutionsResponse' smart constructor.
data GetPendingJobExecutionsResponse = GetPendingJobExecutionsResponse'
  { _gpjerrsInProgressJobs ::
      !( Maybe
           [JobExecutionSummary]
       ),
    _gpjerrsQueuedJobs ::
      !( Maybe
           [JobExecutionSummary]
       ),
    _gpjerrsResponseStatus ::
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

-- | Creates a value of 'GetPendingJobExecutionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpjerrsInProgressJobs' - A list of JobExecutionSummary objects with status IN_PROGRESS.
--
-- * 'gpjerrsQueuedJobs' - A list of JobExecutionSummary objects with status QUEUED.
--
-- * 'gpjerrsResponseStatus' - -- | The response status code.
getPendingJobExecutionsResponse ::
  -- | 'gpjerrsResponseStatus'
  Int ->
  GetPendingJobExecutionsResponse
getPendingJobExecutionsResponse pResponseStatus_ =
  GetPendingJobExecutionsResponse'
    { _gpjerrsInProgressJobs =
        Nothing,
      _gpjerrsQueuedJobs = Nothing,
      _gpjerrsResponseStatus = pResponseStatus_
    }

-- | A list of JobExecutionSummary objects with status IN_PROGRESS.
gpjerrsInProgressJobs :: Lens' GetPendingJobExecutionsResponse [JobExecutionSummary]
gpjerrsInProgressJobs = lens _gpjerrsInProgressJobs (\s a -> s {_gpjerrsInProgressJobs = a}) . _Default . _Coerce

-- | A list of JobExecutionSummary objects with status QUEUED.
gpjerrsQueuedJobs :: Lens' GetPendingJobExecutionsResponse [JobExecutionSummary]
gpjerrsQueuedJobs = lens _gpjerrsQueuedJobs (\s a -> s {_gpjerrsQueuedJobs = a}) . _Default . _Coerce

-- | -- | The response status code.
gpjerrsResponseStatus :: Lens' GetPendingJobExecutionsResponse Int
gpjerrsResponseStatus = lens _gpjerrsResponseStatus (\s a -> s {_gpjerrsResponseStatus = a})

instance NFData GetPendingJobExecutionsResponse
