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
-- Module      : Network.AWS.Comprehend.DescribeKeyPhrasesDetectionJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the properties associated with a key phrases detection job. Use this operation to get the status of a detection job.
module Network.AWS.Comprehend.DescribeKeyPhrasesDetectionJob
  ( -- * Creating a Request
    describeKeyPhrasesDetectionJob,
    DescribeKeyPhrasesDetectionJob,

    -- * Request Lenses
    dkpdjJobId,

    -- * Destructuring the Response
    describeKeyPhrasesDetectionJobResponse,
    DescribeKeyPhrasesDetectionJobResponse,

    -- * Response Lenses
    dkpdjrrsKeyPhrasesDetectionJobProperties,
    dkpdjrrsResponseStatus,
  )
where

import Network.AWS.Comprehend.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeKeyPhrasesDetectionJob' smart constructor.
newtype DescribeKeyPhrasesDetectionJob = DescribeKeyPhrasesDetectionJob'
  { _dkpdjJobId ::
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

-- | Creates a value of 'DescribeKeyPhrasesDetectionJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dkpdjJobId' - The identifier that Amazon Comprehend generated for the job. The operation returns this identifier in its response.
describeKeyPhrasesDetectionJob ::
  -- | 'dkpdjJobId'
  Text ->
  DescribeKeyPhrasesDetectionJob
describeKeyPhrasesDetectionJob pJobId_ =
  DescribeKeyPhrasesDetectionJob'
    { _dkpdjJobId =
        pJobId_
    }

-- | The identifier that Amazon Comprehend generated for the job. The operation returns this identifier in its response.
dkpdjJobId :: Lens' DescribeKeyPhrasesDetectionJob Text
dkpdjJobId = lens _dkpdjJobId (\s a -> s {_dkpdjJobId = a})

instance AWSRequest DescribeKeyPhrasesDetectionJob where
  type
    Rs DescribeKeyPhrasesDetectionJob =
      DescribeKeyPhrasesDetectionJobResponse
  request = postJSON comprehend
  response =
    receiveJSON
      ( \s h x ->
          DescribeKeyPhrasesDetectionJobResponse'
            <$> (x .?> "KeyPhrasesDetectionJobProperties")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeKeyPhrasesDetectionJob

instance NFData DescribeKeyPhrasesDetectionJob

instance ToHeaders DescribeKeyPhrasesDetectionJob where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Comprehend_20171127.DescribeKeyPhrasesDetectionJob" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeKeyPhrasesDetectionJob where
  toJSON DescribeKeyPhrasesDetectionJob' {..} =
    object (catMaybes [Just ("JobId" .= _dkpdjJobId)])

instance ToPath DescribeKeyPhrasesDetectionJob where
  toPath = const "/"

instance ToQuery DescribeKeyPhrasesDetectionJob where
  toQuery = const mempty

-- | /See:/ 'describeKeyPhrasesDetectionJobResponse' smart constructor.
data DescribeKeyPhrasesDetectionJobResponse = DescribeKeyPhrasesDetectionJobResponse'
  { _dkpdjrrsKeyPhrasesDetectionJobProperties ::
      !( Maybe
           KeyPhrasesDetectionJobProperties
       ),
    _dkpdjrrsResponseStatus ::
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

-- | Creates a value of 'DescribeKeyPhrasesDetectionJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dkpdjrrsKeyPhrasesDetectionJobProperties' - An object that contains the properties associated with a key phrases detection job.
--
-- * 'dkpdjrrsResponseStatus' - -- | The response status code.
describeKeyPhrasesDetectionJobResponse ::
  -- | 'dkpdjrrsResponseStatus'
  Int ->
  DescribeKeyPhrasesDetectionJobResponse
describeKeyPhrasesDetectionJobResponse
  pResponseStatus_ =
    DescribeKeyPhrasesDetectionJobResponse'
      { _dkpdjrrsKeyPhrasesDetectionJobProperties =
          Nothing,
        _dkpdjrrsResponseStatus =
          pResponseStatus_
      }

-- | An object that contains the properties associated with a key phrases detection job.
dkpdjrrsKeyPhrasesDetectionJobProperties :: Lens' DescribeKeyPhrasesDetectionJobResponse (Maybe KeyPhrasesDetectionJobProperties)
dkpdjrrsKeyPhrasesDetectionJobProperties = lens _dkpdjrrsKeyPhrasesDetectionJobProperties (\s a -> s {_dkpdjrrsKeyPhrasesDetectionJobProperties = a})

-- | -- | The response status code.
dkpdjrrsResponseStatus :: Lens' DescribeKeyPhrasesDetectionJobResponse Int
dkpdjrrsResponseStatus = lens _dkpdjrrsResponseStatus (\s a -> s {_dkpdjrrsResponseStatus = a})

instance
  NFData
    DescribeKeyPhrasesDetectionJobResponse
