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
-- Module      : Network.AWS.StorageGateway.DescribeBandwidthRateLimit
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the bandwidth rate limits of a gateway. By default, these limits are not set, which means no bandwidth rate limiting is in effect. This operation is supported for the stored volume, cached volume, and tape gateway types.
--
--
-- This operation only returns a value for a bandwidth rate limit only if the limit is set. If no limits are set for the gateway, then this operation returns only the gateway ARN in the response body. To specify which gateway to describe, use the Amazon Resource Name (ARN) of the gateway in your request.
module Network.AWS.StorageGateway.DescribeBandwidthRateLimit
  ( -- * Creating a Request
    describeBandwidthRateLimit,
    DescribeBandwidthRateLimit,

    -- * Request Lenses
    dbrlGatewayARN,

    -- * Destructuring the Response
    describeBandwidthRateLimitResponse,
    DescribeBandwidthRateLimitResponse,

    -- * Response Lenses
    dbrlrrsAverageUploadRateLimitInBitsPerSec,
    dbrlrrsAverageDownloadRateLimitInBitsPerSec,
    dbrlrrsGatewayARN,
    dbrlrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.StorageGateway.Types

-- | A JSON object containing the Amazon Resource Name (ARN) of the gateway.
--
--
--
-- /See:/ 'describeBandwidthRateLimit' smart constructor.
newtype DescribeBandwidthRateLimit = DescribeBandwidthRateLimit'
  { _dbrlGatewayARN ::
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

-- | Creates a value of 'DescribeBandwidthRateLimit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dbrlGatewayARN' - Undocumented member.
describeBandwidthRateLimit ::
  -- | 'dbrlGatewayARN'
  Text ->
  DescribeBandwidthRateLimit
describeBandwidthRateLimit pGatewayARN_ =
  DescribeBandwidthRateLimit'
    { _dbrlGatewayARN =
        pGatewayARN_
    }

-- | Undocumented member.
dbrlGatewayARN :: Lens' DescribeBandwidthRateLimit Text
dbrlGatewayARN = lens _dbrlGatewayARN (\s a -> s {_dbrlGatewayARN = a})

instance AWSRequest DescribeBandwidthRateLimit where
  type
    Rs DescribeBandwidthRateLimit =
      DescribeBandwidthRateLimitResponse
  request = postJSON storageGateway
  response =
    receiveJSON
      ( \s h x ->
          DescribeBandwidthRateLimitResponse'
            <$> (x .?> "AverageUploadRateLimitInBitsPerSec")
            <*> (x .?> "AverageDownloadRateLimitInBitsPerSec")
            <*> (x .?> "GatewayARN")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeBandwidthRateLimit

instance NFData DescribeBandwidthRateLimit

instance ToHeaders DescribeBandwidthRateLimit where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StorageGateway_20130630.DescribeBandwidthRateLimit" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeBandwidthRateLimit where
  toJSON DescribeBandwidthRateLimit' {..} =
    object
      (catMaybes [Just ("GatewayARN" .= _dbrlGatewayARN)])

instance ToPath DescribeBandwidthRateLimit where
  toPath = const "/"

instance ToQuery DescribeBandwidthRateLimit where
  toQuery = const mempty

-- | A JSON object containing the following fields:
--
--
--
-- /See:/ 'describeBandwidthRateLimitResponse' smart constructor.
data DescribeBandwidthRateLimitResponse = DescribeBandwidthRateLimitResponse'
  { _dbrlrrsAverageUploadRateLimitInBitsPerSec ::
      !( Maybe
           Nat
       ),
    _dbrlrrsAverageDownloadRateLimitInBitsPerSec ::
      !( Maybe
           Nat
       ),
    _dbrlrrsGatewayARN ::
      !( Maybe
           Text
       ),
    _dbrlrrsResponseStatus ::
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

-- | Creates a value of 'DescribeBandwidthRateLimitResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dbrlrrsAverageUploadRateLimitInBitsPerSec' - The average upload bandwidth rate limit in bits per second. This field does not appear in the response if the upload rate limit is not set.
--
-- * 'dbrlrrsAverageDownloadRateLimitInBitsPerSec' - The average download bandwidth rate limit in bits per second. This field does not appear in the response if the download rate limit is not set.
--
-- * 'dbrlrrsGatewayARN' - Undocumented member.
--
-- * 'dbrlrrsResponseStatus' - -- | The response status code.
describeBandwidthRateLimitResponse ::
  -- | 'dbrlrrsResponseStatus'
  Int ->
  DescribeBandwidthRateLimitResponse
describeBandwidthRateLimitResponse pResponseStatus_ =
  DescribeBandwidthRateLimitResponse'
    { _dbrlrrsAverageUploadRateLimitInBitsPerSec =
        Nothing,
      _dbrlrrsAverageDownloadRateLimitInBitsPerSec =
        Nothing,
      _dbrlrrsGatewayARN = Nothing,
      _dbrlrrsResponseStatus =
        pResponseStatus_
    }

-- | The average upload bandwidth rate limit in bits per second. This field does not appear in the response if the upload rate limit is not set.
dbrlrrsAverageUploadRateLimitInBitsPerSec :: Lens' DescribeBandwidthRateLimitResponse (Maybe Natural)
dbrlrrsAverageUploadRateLimitInBitsPerSec = lens _dbrlrrsAverageUploadRateLimitInBitsPerSec (\s a -> s {_dbrlrrsAverageUploadRateLimitInBitsPerSec = a}) . mapping _Nat

-- | The average download bandwidth rate limit in bits per second. This field does not appear in the response if the download rate limit is not set.
dbrlrrsAverageDownloadRateLimitInBitsPerSec :: Lens' DescribeBandwidthRateLimitResponse (Maybe Natural)
dbrlrrsAverageDownloadRateLimitInBitsPerSec = lens _dbrlrrsAverageDownloadRateLimitInBitsPerSec (\s a -> s {_dbrlrrsAverageDownloadRateLimitInBitsPerSec = a}) . mapping _Nat

-- | Undocumented member.
dbrlrrsGatewayARN :: Lens' DescribeBandwidthRateLimitResponse (Maybe Text)
dbrlrrsGatewayARN = lens _dbrlrrsGatewayARN (\s a -> s {_dbrlrrsGatewayARN = a})

-- | -- | The response status code.
dbrlrrsResponseStatus :: Lens' DescribeBandwidthRateLimitResponse Int
dbrlrrsResponseStatus = lens _dbrlrrsResponseStatus (\s a -> s {_dbrlrrsResponseStatus = a})

instance NFData DescribeBandwidthRateLimitResponse
