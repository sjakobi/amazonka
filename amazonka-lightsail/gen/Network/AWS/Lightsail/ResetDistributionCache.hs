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
-- Module      : Network.AWS.Lightsail.ResetDistributionCache
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes currently cached content from your Amazon Lightsail content delivery network (CDN) distribution.
--
--
-- After resetting the cache, the next time a content request is made, your distribution pulls, serves, and caches it from the origin.
module Network.AWS.Lightsail.ResetDistributionCache
  ( -- * Creating a Request
    resetDistributionCache,
    ResetDistributionCache,

    -- * Request Lenses
    rdcDistributionName,

    -- * Destructuring the Response
    resetDistributionCacheResponse,
    ResetDistributionCacheResponse,

    -- * Response Lenses
    rdcrrsStatus,
    rdcrrsOperation,
    rdcrrsCreateTime,
    rdcrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'resetDistributionCache' smart constructor.
newtype ResetDistributionCache = ResetDistributionCache'
  { _rdcDistributionName ::
      Maybe Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ResetDistributionCache' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdcDistributionName' - The name of the distribution for which to reset cache. Use the @GetDistributions@ action to get a list of distribution names that you can specify.
resetDistributionCache ::
  ResetDistributionCache
resetDistributionCache =
  ResetDistributionCache'
    { _rdcDistributionName =
        Nothing
    }

-- | The name of the distribution for which to reset cache. Use the @GetDistributions@ action to get a list of distribution names that you can specify.
rdcDistributionName :: Lens' ResetDistributionCache (Maybe Text)
rdcDistributionName = lens _rdcDistributionName (\s a -> s {_rdcDistributionName = a})

instance AWSRequest ResetDistributionCache where
  type
    Rs ResetDistributionCache =
      ResetDistributionCacheResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          ResetDistributionCacheResponse'
            <$> (x .?> "status")
            <*> (x .?> "operation")
            <*> (x .?> "createTime")
            <*> (pure (fromEnum s))
      )

instance Hashable ResetDistributionCache

instance NFData ResetDistributionCache

instance ToHeaders ResetDistributionCache where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Lightsail_20161128.ResetDistributionCache" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ResetDistributionCache where
  toJSON ResetDistributionCache' {..} =
    object
      ( catMaybes
          [("distributionName" .=) <$> _rdcDistributionName]
      )

instance ToPath ResetDistributionCache where
  toPath = const "/"

instance ToQuery ResetDistributionCache where
  toQuery = const mempty

-- | /See:/ 'resetDistributionCacheResponse' smart constructor.
data ResetDistributionCacheResponse = ResetDistributionCacheResponse'
  { _rdcrrsStatus ::
      !( Maybe
           Text
       ),
    _rdcrrsOperation ::
      !( Maybe
           Operation
       ),
    _rdcrrsCreateTime ::
      !( Maybe
           POSIX
       ),
    _rdcrrsResponseStatus ::
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

-- | Creates a value of 'ResetDistributionCacheResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdcrrsStatus' - The status of the reset cache request.
--
-- * 'rdcrrsOperation' - An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
--
-- * 'rdcrrsCreateTime' - The timestamp of the reset cache request (e.g., @1479734909.17@ ) in Unix time format.
--
-- * 'rdcrrsResponseStatus' - -- | The response status code.
resetDistributionCacheResponse ::
  -- | 'rdcrrsResponseStatus'
  Int ->
  ResetDistributionCacheResponse
resetDistributionCacheResponse pResponseStatus_ =
  ResetDistributionCacheResponse'
    { _rdcrrsStatus =
        Nothing,
      _rdcrrsOperation = Nothing,
      _rdcrrsCreateTime = Nothing,
      _rdcrrsResponseStatus = pResponseStatus_
    }

-- | The status of the reset cache request.
rdcrrsStatus :: Lens' ResetDistributionCacheResponse (Maybe Text)
rdcrrsStatus = lens _rdcrrsStatus (\s a -> s {_rdcrrsStatus = a})

-- | An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
rdcrrsOperation :: Lens' ResetDistributionCacheResponse (Maybe Operation)
rdcrrsOperation = lens _rdcrrsOperation (\s a -> s {_rdcrrsOperation = a})

-- | The timestamp of the reset cache request (e.g., @1479734909.17@ ) in Unix time format.
rdcrrsCreateTime :: Lens' ResetDistributionCacheResponse (Maybe UTCTime)
rdcrrsCreateTime = lens _rdcrrsCreateTime (\s a -> s {_rdcrrsCreateTime = a}) . mapping _Time

-- | -- | The response status code.
rdcrrsResponseStatus :: Lens' ResetDistributionCacheResponse Int
rdcrrsResponseStatus = lens _rdcrrsResponseStatus (\s a -> s {_rdcrrsResponseStatus = a})

instance NFData ResetDistributionCacheResponse
