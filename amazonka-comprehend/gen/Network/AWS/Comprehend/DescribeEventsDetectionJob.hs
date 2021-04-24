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
-- Module      : Network.AWS.Comprehend.DescribeEventsDetectionJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the status and details of an events detection job.
module Network.AWS.Comprehend.DescribeEventsDetectionJob
  ( -- * Creating a Request
    describeEventsDetectionJob,
    DescribeEventsDetectionJob,

    -- * Request Lenses
    dedjJobId,

    -- * Destructuring the Response
    describeEventsDetectionJobResponse,
    DescribeEventsDetectionJobResponse,

    -- * Response Lenses
    dedjrrsEventsDetectionJobProperties,
    dedjrrsResponseStatus,
  )
where

import Network.AWS.Comprehend.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeEventsDetectionJob' smart constructor.
newtype DescribeEventsDetectionJob = DescribeEventsDetectionJob'
  { _dedjJobId ::
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

-- | Creates a value of 'DescribeEventsDetectionJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dedjJobId' - The identifier of the events detection job.
describeEventsDetectionJob ::
  -- | 'dedjJobId'
  Text ->
  DescribeEventsDetectionJob
describeEventsDetectionJob pJobId_ =
  DescribeEventsDetectionJob' {_dedjJobId = pJobId_}

-- | The identifier of the events detection job.
dedjJobId :: Lens' DescribeEventsDetectionJob Text
dedjJobId = lens _dedjJobId (\s a -> s {_dedjJobId = a})

instance AWSRequest DescribeEventsDetectionJob where
  type
    Rs DescribeEventsDetectionJob =
      DescribeEventsDetectionJobResponse
  request = postJSON comprehend
  response =
    receiveJSON
      ( \s h x ->
          DescribeEventsDetectionJobResponse'
            <$> (x .?> "EventsDetectionJobProperties")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeEventsDetectionJob

instance NFData DescribeEventsDetectionJob

instance ToHeaders DescribeEventsDetectionJob where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Comprehend_20171127.DescribeEventsDetectionJob" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeEventsDetectionJob where
  toJSON DescribeEventsDetectionJob' {..} =
    object (catMaybes [Just ("JobId" .= _dedjJobId)])

instance ToPath DescribeEventsDetectionJob where
  toPath = const "/"

instance ToQuery DescribeEventsDetectionJob where
  toQuery = const mempty

-- | /See:/ 'describeEventsDetectionJobResponse' smart constructor.
data DescribeEventsDetectionJobResponse = DescribeEventsDetectionJobResponse'
  { _dedjrrsEventsDetectionJobProperties ::
      !( Maybe
           EventsDetectionJobProperties
       ),
    _dedjrrsResponseStatus ::
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

-- | Creates a value of 'DescribeEventsDetectionJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dedjrrsEventsDetectionJobProperties' - An object that contains the properties associated with an event detection job.
--
-- * 'dedjrrsResponseStatus' - -- | The response status code.
describeEventsDetectionJobResponse ::
  -- | 'dedjrrsResponseStatus'
  Int ->
  DescribeEventsDetectionJobResponse
describeEventsDetectionJobResponse pResponseStatus_ =
  DescribeEventsDetectionJobResponse'
    { _dedjrrsEventsDetectionJobProperties =
        Nothing,
      _dedjrrsResponseStatus =
        pResponseStatus_
    }

-- | An object that contains the properties associated with an event detection job.
dedjrrsEventsDetectionJobProperties :: Lens' DescribeEventsDetectionJobResponse (Maybe EventsDetectionJobProperties)
dedjrrsEventsDetectionJobProperties = lens _dedjrrsEventsDetectionJobProperties (\s a -> s {_dedjrrsEventsDetectionJobProperties = a})

-- | -- | The response status code.
dedjrrsResponseStatus :: Lens' DescribeEventsDetectionJobResponse Int
dedjrrsResponseStatus = lens _dedjrrsResponseStatus (\s a -> s {_dedjrrsResponseStatus = a})

instance NFData DescribeEventsDetectionJobResponse
