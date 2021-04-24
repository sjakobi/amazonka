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
-- Module      : Network.AWS.StorageGateway.DescribeBandwidthRateLimitSchedule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the bandwidth rate limit schedule of a gateway. By default, gateways do not have bandwidth rate limit schedules, which means no bandwidth rate limiting is in effect. This operation is supported only in the volume and tape gateway types.
--
--
-- This operation returns information about a gateway's bandwidth rate limit schedule. A bandwidth rate limit schedule consists of one or more bandwidth rate limit intervals. A bandwidth rate limit interval defines a period of time on one or more days of the week, during which bandwidth rate limits are specified for uploading, downloading, or both.
--
-- A bandwidth rate limit interval consists of one or more days of the week, a start hour and minute, an ending hour and minute, and bandwidth rate limits for uploading and downloading
--
-- If no bandwidth rate limit schedule intervals are set for the gateway, this operation returns an empty response. To specify which gateway to describe, use the Amazon Resource Name (ARN) of the gateway in your request.
module Network.AWS.StorageGateway.DescribeBandwidthRateLimitSchedule
  ( -- * Creating a Request
    describeBandwidthRateLimitSchedule,
    DescribeBandwidthRateLimitSchedule,

    -- * Request Lenses
    dbrlsGatewayARN,

    -- * Destructuring the Response
    describeBandwidthRateLimitScheduleResponse,
    DescribeBandwidthRateLimitScheduleResponse,

    -- * Response Lenses
    dbrlsrrsBandwidthRateLimitIntervals,
    dbrlsrrsGatewayARN,
    dbrlsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.StorageGateway.Types

-- | /See:/ 'describeBandwidthRateLimitSchedule' smart constructor.
newtype DescribeBandwidthRateLimitSchedule = DescribeBandwidthRateLimitSchedule'
  { _dbrlsGatewayARN ::
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

-- | Creates a value of 'DescribeBandwidthRateLimitSchedule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dbrlsGatewayARN' - Undocumented member.
describeBandwidthRateLimitSchedule ::
  -- | 'dbrlsGatewayARN'
  Text ->
  DescribeBandwidthRateLimitSchedule
describeBandwidthRateLimitSchedule pGatewayARN_ =
  DescribeBandwidthRateLimitSchedule'
    { _dbrlsGatewayARN =
        pGatewayARN_
    }

-- | Undocumented member.
dbrlsGatewayARN :: Lens' DescribeBandwidthRateLimitSchedule Text
dbrlsGatewayARN = lens _dbrlsGatewayARN (\s a -> s {_dbrlsGatewayARN = a})

instance
  AWSRequest
    DescribeBandwidthRateLimitSchedule
  where
  type
    Rs DescribeBandwidthRateLimitSchedule =
      DescribeBandwidthRateLimitScheduleResponse
  request = postJSON storageGateway
  response =
    receiveJSON
      ( \s h x ->
          DescribeBandwidthRateLimitScheduleResponse'
            <$> (x .?> "BandwidthRateLimitIntervals" .!@ mempty)
            <*> (x .?> "GatewayARN")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeBandwidthRateLimitSchedule

instance NFData DescribeBandwidthRateLimitSchedule

instance ToHeaders DescribeBandwidthRateLimitSchedule where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StorageGateway_20130630.DescribeBandwidthRateLimitSchedule" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeBandwidthRateLimitSchedule where
  toJSON DescribeBandwidthRateLimitSchedule' {..} =
    object
      (catMaybes [Just ("GatewayARN" .= _dbrlsGatewayARN)])

instance ToPath DescribeBandwidthRateLimitSchedule where
  toPath = const "/"

instance ToQuery DescribeBandwidthRateLimitSchedule where
  toQuery = const mempty

-- | /See:/ 'describeBandwidthRateLimitScheduleResponse' smart constructor.
data DescribeBandwidthRateLimitScheduleResponse = DescribeBandwidthRateLimitScheduleResponse'
  { _dbrlsrrsBandwidthRateLimitIntervals ::
      !( Maybe
           [BandwidthRateLimitInterval]
       ),
    _dbrlsrrsGatewayARN ::
      !( Maybe
           Text
       ),
    _dbrlsrrsResponseStatus ::
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

-- | Creates a value of 'DescribeBandwidthRateLimitScheduleResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dbrlsrrsBandwidthRateLimitIntervals' - An array that contains the bandwidth rate limit intervals for a tape or volume gateway.
--
-- * 'dbrlsrrsGatewayARN' - Undocumented member.
--
-- * 'dbrlsrrsResponseStatus' - -- | The response status code.
describeBandwidthRateLimitScheduleResponse ::
  -- | 'dbrlsrrsResponseStatus'
  Int ->
  DescribeBandwidthRateLimitScheduleResponse
describeBandwidthRateLimitScheduleResponse
  pResponseStatus_ =
    DescribeBandwidthRateLimitScheduleResponse'
      { _dbrlsrrsBandwidthRateLimitIntervals =
          Nothing,
        _dbrlsrrsGatewayARN = Nothing,
        _dbrlsrrsResponseStatus =
          pResponseStatus_
      }

-- | An array that contains the bandwidth rate limit intervals for a tape or volume gateway.
dbrlsrrsBandwidthRateLimitIntervals :: Lens' DescribeBandwidthRateLimitScheduleResponse [BandwidthRateLimitInterval]
dbrlsrrsBandwidthRateLimitIntervals = lens _dbrlsrrsBandwidthRateLimitIntervals (\s a -> s {_dbrlsrrsBandwidthRateLimitIntervals = a}) . _Default . _Coerce

-- | Undocumented member.
dbrlsrrsGatewayARN :: Lens' DescribeBandwidthRateLimitScheduleResponse (Maybe Text)
dbrlsrrsGatewayARN = lens _dbrlsrrsGatewayARN (\s a -> s {_dbrlsrrsGatewayARN = a})

-- | -- | The response status code.
dbrlsrrsResponseStatus :: Lens' DescribeBandwidthRateLimitScheduleResponse Int
dbrlsrrsResponseStatus = lens _dbrlsrrsResponseStatus (\s a -> s {_dbrlsrrsResponseStatus = a})

instance
  NFData
    DescribeBandwidthRateLimitScheduleResponse
