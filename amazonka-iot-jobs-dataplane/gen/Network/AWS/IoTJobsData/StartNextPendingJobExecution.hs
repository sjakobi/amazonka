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
-- Module      : Network.AWS.IoTJobsData.StartNextPendingJobExecution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets and starts the next pending (status IN_PROGRESS or QUEUED) job execution for a thing.
module Network.AWS.IoTJobsData.StartNextPendingJobExecution
  ( -- * Creating a Request
    startNextPendingJobExecution,
    StartNextPendingJobExecution,

    -- * Request Lenses
    snpjeStatusDetails,
    snpjeStepTimeoutInMinutes,
    snpjeThingName,

    -- * Destructuring the Response
    startNextPendingJobExecutionResponse,
    StartNextPendingJobExecutionResponse,

    -- * Response Lenses
    snpjerrsExecution,
    snpjerrsResponseStatus,
  )
where

import Network.AWS.IoTJobsData.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'startNextPendingJobExecution' smart constructor.
data StartNextPendingJobExecution = StartNextPendingJobExecution'
  { _snpjeStatusDetails ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _snpjeStepTimeoutInMinutes ::
      !( Maybe
           Integer
       ),
    _snpjeThingName ::
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

-- | Creates a value of 'StartNextPendingJobExecution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'snpjeStatusDetails' - A collection of name/value pairs that describe the status of the job execution. If not specified, the statusDetails are unchanged.
--
-- * 'snpjeStepTimeoutInMinutes' - Specifies the amount of time this device has to finish execution of this job. If the job execution status is not set to a terminal state before this timer expires, or before the timer is reset (by calling @UpdateJobExecution@ , setting the status to @IN_PROGRESS@ and specifying a new timeout value in field @stepTimeoutInMinutes@ ) the job execution status will be automatically set to @TIMED_OUT@ . Note that setting this timeout has no effect on that job execution timeout which may have been specified when the job was created (@CreateJob@ using field @timeoutConfig@ ).
--
-- * 'snpjeThingName' - The name of the thing associated with the device.
startNextPendingJobExecution ::
  -- | 'snpjeThingName'
  Text ->
  StartNextPendingJobExecution
startNextPendingJobExecution pThingName_ =
  StartNextPendingJobExecution'
    { _snpjeStatusDetails =
        Nothing,
      _snpjeStepTimeoutInMinutes = Nothing,
      _snpjeThingName = pThingName_
    }

-- | A collection of name/value pairs that describe the status of the job execution. If not specified, the statusDetails are unchanged.
snpjeStatusDetails :: Lens' StartNextPendingJobExecution (HashMap Text Text)
snpjeStatusDetails = lens _snpjeStatusDetails (\s a -> s {_snpjeStatusDetails = a}) . _Default . _Map

-- | Specifies the amount of time this device has to finish execution of this job. If the job execution status is not set to a terminal state before this timer expires, or before the timer is reset (by calling @UpdateJobExecution@ , setting the status to @IN_PROGRESS@ and specifying a new timeout value in field @stepTimeoutInMinutes@ ) the job execution status will be automatically set to @TIMED_OUT@ . Note that setting this timeout has no effect on that job execution timeout which may have been specified when the job was created (@CreateJob@ using field @timeoutConfig@ ).
snpjeStepTimeoutInMinutes :: Lens' StartNextPendingJobExecution (Maybe Integer)
snpjeStepTimeoutInMinutes = lens _snpjeStepTimeoutInMinutes (\s a -> s {_snpjeStepTimeoutInMinutes = a})

-- | The name of the thing associated with the device.
snpjeThingName :: Lens' StartNextPendingJobExecution Text
snpjeThingName = lens _snpjeThingName (\s a -> s {_snpjeThingName = a})

instance AWSRequest StartNextPendingJobExecution where
  type
    Rs StartNextPendingJobExecution =
      StartNextPendingJobExecutionResponse
  request = putJSON ioTJobsData
  response =
    receiveJSON
      ( \s h x ->
          StartNextPendingJobExecutionResponse'
            <$> (x .?> "execution") <*> (pure (fromEnum s))
      )

instance Hashable StartNextPendingJobExecution

instance NFData StartNextPendingJobExecution

instance ToHeaders StartNextPendingJobExecution where
  toHeaders = const mempty

instance ToJSON StartNextPendingJobExecution where
  toJSON StartNextPendingJobExecution' {..} =
    object
      ( catMaybes
          [ ("statusDetails" .=) <$> _snpjeStatusDetails,
            ("stepTimeoutInMinutes" .=)
              <$> _snpjeStepTimeoutInMinutes
          ]
      )

instance ToPath StartNextPendingJobExecution where
  toPath StartNextPendingJobExecution' {..} =
    mconcat
      ["/things/", toBS _snpjeThingName, "/jobs/$next"]

instance ToQuery StartNextPendingJobExecution where
  toQuery = const mempty

-- | /See:/ 'startNextPendingJobExecutionResponse' smart constructor.
data StartNextPendingJobExecutionResponse = StartNextPendingJobExecutionResponse'
  { _snpjerrsExecution ::
      !( Maybe
           JobExecution
       ),
    _snpjerrsResponseStatus ::
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

-- | Creates a value of 'StartNextPendingJobExecutionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'snpjerrsExecution' - A JobExecution object.
--
-- * 'snpjerrsResponseStatus' - -- | The response status code.
startNextPendingJobExecutionResponse ::
  -- | 'snpjerrsResponseStatus'
  Int ->
  StartNextPendingJobExecutionResponse
startNextPendingJobExecutionResponse pResponseStatus_ =
  StartNextPendingJobExecutionResponse'
    { _snpjerrsExecution =
        Nothing,
      _snpjerrsResponseStatus =
        pResponseStatus_
    }

-- | A JobExecution object.
snpjerrsExecution :: Lens' StartNextPendingJobExecutionResponse (Maybe JobExecution)
snpjerrsExecution = lens _snpjerrsExecution (\s a -> s {_snpjerrsExecution = a})

-- | -- | The response status code.
snpjerrsResponseStatus :: Lens' StartNextPendingJobExecutionResponse Int
snpjerrsResponseStatus = lens _snpjerrsResponseStatus (\s a -> s {_snpjerrsResponseStatus = a})

instance NFData StartNextPendingJobExecutionResponse
