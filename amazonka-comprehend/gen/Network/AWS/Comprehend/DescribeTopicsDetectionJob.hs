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
-- Module      : Network.AWS.Comprehend.DescribeTopicsDetectionJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the properties associated with a topic detection job. Use this operation to get the status of a detection job.
module Network.AWS.Comprehend.DescribeTopicsDetectionJob
  ( -- * Creating a Request
    describeTopicsDetectionJob,
    DescribeTopicsDetectionJob,

    -- * Request Lenses
    dtdjJobId,

    -- * Destructuring the Response
    describeTopicsDetectionJobResponse,
    DescribeTopicsDetectionJobResponse,

    -- * Response Lenses
    dtdjrrsTopicsDetectionJobProperties,
    dtdjrrsResponseStatus,
  )
where

import Network.AWS.Comprehend.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeTopicsDetectionJob' smart constructor.
newtype DescribeTopicsDetectionJob = DescribeTopicsDetectionJob'
  { _dtdjJobId ::
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

-- | Creates a value of 'DescribeTopicsDetectionJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtdjJobId' - The identifier assigned by the user to the detection job.
describeTopicsDetectionJob ::
  -- | 'dtdjJobId'
  Text ->
  DescribeTopicsDetectionJob
describeTopicsDetectionJob pJobId_ =
  DescribeTopicsDetectionJob' {_dtdjJobId = pJobId_}

-- | The identifier assigned by the user to the detection job.
dtdjJobId :: Lens' DescribeTopicsDetectionJob Text
dtdjJobId = lens _dtdjJobId (\s a -> s {_dtdjJobId = a})

instance AWSRequest DescribeTopicsDetectionJob where
  type
    Rs DescribeTopicsDetectionJob =
      DescribeTopicsDetectionJobResponse
  request = postJSON comprehend
  response =
    receiveJSON
      ( \s h x ->
          DescribeTopicsDetectionJobResponse'
            <$> (x .?> "TopicsDetectionJobProperties")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeTopicsDetectionJob

instance NFData DescribeTopicsDetectionJob

instance ToHeaders DescribeTopicsDetectionJob where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Comprehend_20171127.DescribeTopicsDetectionJob" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeTopicsDetectionJob where
  toJSON DescribeTopicsDetectionJob' {..} =
    object (catMaybes [Just ("JobId" .= _dtdjJobId)])

instance ToPath DescribeTopicsDetectionJob where
  toPath = const "/"

instance ToQuery DescribeTopicsDetectionJob where
  toQuery = const mempty

-- | /See:/ 'describeTopicsDetectionJobResponse' smart constructor.
data DescribeTopicsDetectionJobResponse = DescribeTopicsDetectionJobResponse'
  { _dtdjrrsTopicsDetectionJobProperties ::
      !( Maybe
           TopicsDetectionJobProperties
       ),
    _dtdjrrsResponseStatus ::
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

-- | Creates a value of 'DescribeTopicsDetectionJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtdjrrsTopicsDetectionJobProperties' - The list of properties for the requested job.
--
-- * 'dtdjrrsResponseStatus' - -- | The response status code.
describeTopicsDetectionJobResponse ::
  -- | 'dtdjrrsResponseStatus'
  Int ->
  DescribeTopicsDetectionJobResponse
describeTopicsDetectionJobResponse pResponseStatus_ =
  DescribeTopicsDetectionJobResponse'
    { _dtdjrrsTopicsDetectionJobProperties =
        Nothing,
      _dtdjrrsResponseStatus =
        pResponseStatus_
    }

-- | The list of properties for the requested job.
dtdjrrsTopicsDetectionJobProperties :: Lens' DescribeTopicsDetectionJobResponse (Maybe TopicsDetectionJobProperties)
dtdjrrsTopicsDetectionJobProperties = lens _dtdjrrsTopicsDetectionJobProperties (\s a -> s {_dtdjrrsTopicsDetectionJobProperties = a})

-- | -- | The response status code.
dtdjrrsResponseStatus :: Lens' DescribeTopicsDetectionJobResponse Int
dtdjrrsResponseStatus = lens _dtdjrrsResponseStatus (\s a -> s {_dtdjrrsResponseStatus = a})

instance NFData DescribeTopicsDetectionJobResponse
