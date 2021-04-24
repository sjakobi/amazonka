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
-- Module      : Network.AWS.Lightsail.GetDistributionLatestCacheReset
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the timestamp and status of the last cache reset of a specific Amazon Lightsail content delivery network (CDN) distribution.
module Network.AWS.Lightsail.GetDistributionLatestCacheReset
  ( -- * Creating a Request
    getDistributionLatestCacheReset,
    GetDistributionLatestCacheReset,

    -- * Request Lenses
    gdlcrDistributionName,

    -- * Destructuring the Response
    getDistributionLatestCacheResetResponse,
    GetDistributionLatestCacheResetResponse,

    -- * Response Lenses
    gdlcrrrsStatus,
    gdlcrrrsCreateTime,
    gdlcrrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getDistributionLatestCacheReset' smart constructor.
newtype GetDistributionLatestCacheReset = GetDistributionLatestCacheReset'
  { _gdlcrDistributionName ::
      Maybe
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

-- | Creates a value of 'GetDistributionLatestCacheReset' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdlcrDistributionName' - The name of the distribution for which to return the timestamp of the last cache reset. Use the @GetDistributions@ action to get a list of distribution names that you can specify. When omitted, the response includes the latest cache reset timestamp of all your distributions.
getDistributionLatestCacheReset ::
  GetDistributionLatestCacheReset
getDistributionLatestCacheReset =
  GetDistributionLatestCacheReset'
    { _gdlcrDistributionName =
        Nothing
    }

-- | The name of the distribution for which to return the timestamp of the last cache reset. Use the @GetDistributions@ action to get a list of distribution names that you can specify. When omitted, the response includes the latest cache reset timestamp of all your distributions.
gdlcrDistributionName :: Lens' GetDistributionLatestCacheReset (Maybe Text)
gdlcrDistributionName = lens _gdlcrDistributionName (\s a -> s {_gdlcrDistributionName = a})

instance AWSRequest GetDistributionLatestCacheReset where
  type
    Rs GetDistributionLatestCacheReset =
      GetDistributionLatestCacheResetResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          GetDistributionLatestCacheResetResponse'
            <$> (x .?> "status")
            <*> (x .?> "createTime")
            <*> (pure (fromEnum s))
      )

instance Hashable GetDistributionLatestCacheReset

instance NFData GetDistributionLatestCacheReset

instance ToHeaders GetDistributionLatestCacheReset where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Lightsail_20161128.GetDistributionLatestCacheReset" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetDistributionLatestCacheReset where
  toJSON GetDistributionLatestCacheReset' {..} =
    object
      ( catMaybes
          [("distributionName" .=) <$> _gdlcrDistributionName]
      )

instance ToPath GetDistributionLatestCacheReset where
  toPath = const "/"

instance ToQuery GetDistributionLatestCacheReset where
  toQuery = const mempty

-- | /See:/ 'getDistributionLatestCacheResetResponse' smart constructor.
data GetDistributionLatestCacheResetResponse = GetDistributionLatestCacheResetResponse'
  { _gdlcrrrsStatus ::
      !( Maybe
           Text
       ),
    _gdlcrrrsCreateTime ::
      !( Maybe
           POSIX
       ),
    _gdlcrrrsResponseStatus ::
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

-- | Creates a value of 'GetDistributionLatestCacheResetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdlcrrrsStatus' - The status of the last cache reset.
--
-- * 'gdlcrrrsCreateTime' - The timestamp of the last cache reset (e.g., @1479734909.17@ ) in Unix time format.
--
-- * 'gdlcrrrsResponseStatus' - -- | The response status code.
getDistributionLatestCacheResetResponse ::
  -- | 'gdlcrrrsResponseStatus'
  Int ->
  GetDistributionLatestCacheResetResponse
getDistributionLatestCacheResetResponse
  pResponseStatus_ =
    GetDistributionLatestCacheResetResponse'
      { _gdlcrrrsStatus =
          Nothing,
        _gdlcrrrsCreateTime = Nothing,
        _gdlcrrrsResponseStatus =
          pResponseStatus_
      }

-- | The status of the last cache reset.
gdlcrrrsStatus :: Lens' GetDistributionLatestCacheResetResponse (Maybe Text)
gdlcrrrsStatus = lens _gdlcrrrsStatus (\s a -> s {_gdlcrrrsStatus = a})

-- | The timestamp of the last cache reset (e.g., @1479734909.17@ ) in Unix time format.
gdlcrrrsCreateTime :: Lens' GetDistributionLatestCacheResetResponse (Maybe UTCTime)
gdlcrrrsCreateTime = lens _gdlcrrrsCreateTime (\s a -> s {_gdlcrrrsCreateTime = a}) . mapping _Time

-- | -- | The response status code.
gdlcrrrsResponseStatus :: Lens' GetDistributionLatestCacheResetResponse Int
gdlcrrrsResponseStatus = lens _gdlcrrrsResponseStatus (\s a -> s {_gdlcrrrsResponseStatus = a})

instance
  NFData
    GetDistributionLatestCacheResetResponse
