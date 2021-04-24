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
-- Module      : Network.AWS.StorageGateway.DescribeAvailabilityMonitorTest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the most recent High Availability monitoring test that was performed on the host in a cluster. If a test isn't performed, the status and start time in the response would be null.
module Network.AWS.StorageGateway.DescribeAvailabilityMonitorTest
  ( -- * Creating a Request
    describeAvailabilityMonitorTest,
    DescribeAvailabilityMonitorTest,

    -- * Request Lenses
    damtGatewayARN,

    -- * Destructuring the Response
    describeAvailabilityMonitorTestResponse,
    DescribeAvailabilityMonitorTestResponse,

    -- * Response Lenses
    damtrrsStatus,
    damtrrsStartTime,
    damtrrsGatewayARN,
    damtrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.StorageGateway.Types

-- | /See:/ 'describeAvailabilityMonitorTest' smart constructor.
newtype DescribeAvailabilityMonitorTest = DescribeAvailabilityMonitorTest'
  { _damtGatewayARN ::
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

-- | Creates a value of 'DescribeAvailabilityMonitorTest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'damtGatewayARN' - Undocumented member.
describeAvailabilityMonitorTest ::
  -- | 'damtGatewayARN'
  Text ->
  DescribeAvailabilityMonitorTest
describeAvailabilityMonitorTest pGatewayARN_ =
  DescribeAvailabilityMonitorTest'
    { _damtGatewayARN =
        pGatewayARN_
    }

-- | Undocumented member.
damtGatewayARN :: Lens' DescribeAvailabilityMonitorTest Text
damtGatewayARN = lens _damtGatewayARN (\s a -> s {_damtGatewayARN = a})

instance AWSRequest DescribeAvailabilityMonitorTest where
  type
    Rs DescribeAvailabilityMonitorTest =
      DescribeAvailabilityMonitorTestResponse
  request = postJSON storageGateway
  response =
    receiveJSON
      ( \s h x ->
          DescribeAvailabilityMonitorTestResponse'
            <$> (x .?> "Status")
            <*> (x .?> "StartTime")
            <*> (x .?> "GatewayARN")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeAvailabilityMonitorTest

instance NFData DescribeAvailabilityMonitorTest

instance ToHeaders DescribeAvailabilityMonitorTest where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StorageGateway_20130630.DescribeAvailabilityMonitorTest" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeAvailabilityMonitorTest where
  toJSON DescribeAvailabilityMonitorTest' {..} =
    object
      (catMaybes [Just ("GatewayARN" .= _damtGatewayARN)])

instance ToPath DescribeAvailabilityMonitorTest where
  toPath = const "/"

instance ToQuery DescribeAvailabilityMonitorTest where
  toQuery = const mempty

-- | /See:/ 'describeAvailabilityMonitorTestResponse' smart constructor.
data DescribeAvailabilityMonitorTestResponse = DescribeAvailabilityMonitorTestResponse'
  { _damtrrsStatus ::
      !( Maybe
           AvailabilityMonitorTestStatus
       ),
    _damtrrsStartTime ::
      !( Maybe
           POSIX
       ),
    _damtrrsGatewayARN ::
      !( Maybe
           Text
       ),
    _damtrrsResponseStatus ::
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

-- | Creates a value of 'DescribeAvailabilityMonitorTestResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'damtrrsStatus' - The status of the High Availability monitoring test. If a test hasn't been performed, the value of this field is null.
--
-- * 'damtrrsStartTime' - The time the High Availability monitoring test was started. If a test hasn't been performed, the value of this field is null.
--
-- * 'damtrrsGatewayARN' - Undocumented member.
--
-- * 'damtrrsResponseStatus' - -- | The response status code.
describeAvailabilityMonitorTestResponse ::
  -- | 'damtrrsResponseStatus'
  Int ->
  DescribeAvailabilityMonitorTestResponse
describeAvailabilityMonitorTestResponse
  pResponseStatus_ =
    DescribeAvailabilityMonitorTestResponse'
      { _damtrrsStatus =
          Nothing,
        _damtrrsStartTime = Nothing,
        _damtrrsGatewayARN = Nothing,
        _damtrrsResponseStatus =
          pResponseStatus_
      }

-- | The status of the High Availability monitoring test. If a test hasn't been performed, the value of this field is null.
damtrrsStatus :: Lens' DescribeAvailabilityMonitorTestResponse (Maybe AvailabilityMonitorTestStatus)
damtrrsStatus = lens _damtrrsStatus (\s a -> s {_damtrrsStatus = a})

-- | The time the High Availability monitoring test was started. If a test hasn't been performed, the value of this field is null.
damtrrsStartTime :: Lens' DescribeAvailabilityMonitorTestResponse (Maybe UTCTime)
damtrrsStartTime = lens _damtrrsStartTime (\s a -> s {_damtrrsStartTime = a}) . mapping _Time

-- | Undocumented member.
damtrrsGatewayARN :: Lens' DescribeAvailabilityMonitorTestResponse (Maybe Text)
damtrrsGatewayARN = lens _damtrrsGatewayARN (\s a -> s {_damtrrsGatewayARN = a})

-- | -- | The response status code.
damtrrsResponseStatus :: Lens' DescribeAvailabilityMonitorTestResponse Int
damtrrsResponseStatus = lens _damtrrsResponseStatus (\s a -> s {_damtrrsResponseStatus = a})

instance
  NFData
    DescribeAvailabilityMonitorTestResponse
