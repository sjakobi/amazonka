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
-- Module      : Network.AWS.IoT.CancelJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels a job.
module Network.AWS.IoT.CancelJob
  ( -- * Creating a Request
    cancelJob,
    CancelJob,

    -- * Request Lenses
    cjReasonCode,
    cjComment,
    cjForce,
    cjJobId,

    -- * Destructuring the Response
    cancelJobResponse,
    CancelJobResponse,

    -- * Response Lenses
    cjrrsJobARN,
    cjrrsDescription,
    cjrrsJobId,
    cjrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'cancelJob' smart constructor.
data CancelJob = CancelJob'
  { _cjReasonCode ::
      !(Maybe Text),
    _cjComment :: !(Maybe Text),
    _cjForce :: !(Maybe Bool),
    _cjJobId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CancelJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cjReasonCode' - (Optional)A reason code string that explains why the job was canceled.
--
-- * 'cjComment' - An optional comment string describing why the job was canceled.
--
-- * 'cjForce' - (Optional) If @true@ job executions with status "IN_PROGRESS" and "QUEUED" are canceled, otherwise only job executions with status "QUEUED" are canceled. The default is @false@ . Canceling a job which is "IN_PROGRESS", will cause a device which is executing the job to be unable to update the job execution status. Use caution and ensure that each device executing a job which is canceled is able to recover to a valid state.
--
-- * 'cjJobId' - The unique identifier you assigned to this job when it was created.
cancelJob ::
  -- | 'cjJobId'
  Text ->
  CancelJob
cancelJob pJobId_ =
  CancelJob'
    { _cjReasonCode = Nothing,
      _cjComment = Nothing,
      _cjForce = Nothing,
      _cjJobId = pJobId_
    }

-- | (Optional)A reason code string that explains why the job was canceled.
cjReasonCode :: Lens' CancelJob (Maybe Text)
cjReasonCode = lens _cjReasonCode (\s a -> s {_cjReasonCode = a})

-- | An optional comment string describing why the job was canceled.
cjComment :: Lens' CancelJob (Maybe Text)
cjComment = lens _cjComment (\s a -> s {_cjComment = a})

-- | (Optional) If @true@ job executions with status "IN_PROGRESS" and "QUEUED" are canceled, otherwise only job executions with status "QUEUED" are canceled. The default is @false@ . Canceling a job which is "IN_PROGRESS", will cause a device which is executing the job to be unable to update the job execution status. Use caution and ensure that each device executing a job which is canceled is able to recover to a valid state.
cjForce :: Lens' CancelJob (Maybe Bool)
cjForce = lens _cjForce (\s a -> s {_cjForce = a})

-- | The unique identifier you assigned to this job when it was created.
cjJobId :: Lens' CancelJob Text
cjJobId = lens _cjJobId (\s a -> s {_cjJobId = a})

instance AWSRequest CancelJob where
  type Rs CancelJob = CancelJobResponse
  request = putJSON ioT
  response =
    receiveJSON
      ( \s h x ->
          CancelJobResponse'
            <$> (x .?> "jobArn")
            <*> (x .?> "description")
            <*> (x .?> "jobId")
            <*> (pure (fromEnum s))
      )

instance Hashable CancelJob

instance NFData CancelJob

instance ToHeaders CancelJob where
  toHeaders = const mempty

instance ToJSON CancelJob where
  toJSON CancelJob' {..} =
    object
      ( catMaybes
          [ ("reasonCode" .=) <$> _cjReasonCode,
            ("comment" .=) <$> _cjComment
          ]
      )

instance ToPath CancelJob where
  toPath CancelJob' {..} =
    mconcat ["/jobs/", toBS _cjJobId, "/cancel"]

instance ToQuery CancelJob where
  toQuery CancelJob' {..} =
    mconcat ["force" =: _cjForce]

-- | /See:/ 'cancelJobResponse' smart constructor.
data CancelJobResponse = CancelJobResponse'
  { _cjrrsJobARN ::
      !(Maybe Text),
    _cjrrsDescription :: !(Maybe Text),
    _cjrrsJobId :: !(Maybe Text),
    _cjrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CancelJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cjrrsJobARN' - The job ARN.
--
-- * 'cjrrsDescription' - A short text description of the job.
--
-- * 'cjrrsJobId' - The unique identifier you assigned to this job when it was created.
--
-- * 'cjrrsResponseStatus' - -- | The response status code.
cancelJobResponse ::
  -- | 'cjrrsResponseStatus'
  Int ->
  CancelJobResponse
cancelJobResponse pResponseStatus_ =
  CancelJobResponse'
    { _cjrrsJobARN = Nothing,
      _cjrrsDescription = Nothing,
      _cjrrsJobId = Nothing,
      _cjrrsResponseStatus = pResponseStatus_
    }

-- | The job ARN.
cjrrsJobARN :: Lens' CancelJobResponse (Maybe Text)
cjrrsJobARN = lens _cjrrsJobARN (\s a -> s {_cjrrsJobARN = a})

-- | A short text description of the job.
cjrrsDescription :: Lens' CancelJobResponse (Maybe Text)
cjrrsDescription = lens _cjrrsDescription (\s a -> s {_cjrrsDescription = a})

-- | The unique identifier you assigned to this job when it was created.
cjrrsJobId :: Lens' CancelJobResponse (Maybe Text)
cjrrsJobId = lens _cjrrsJobId (\s a -> s {_cjrrsJobId = a})

-- | -- | The response status code.
cjrrsResponseStatus :: Lens' CancelJobResponse Int
cjrrsResponseStatus = lens _cjrrsResponseStatus (\s a -> s {_cjrrsResponseStatus = a})

instance NFData CancelJobResponse
