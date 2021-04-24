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
-- Module      : Network.AWS.Snowball.GetSnowballUsage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the Snow Family service limit for your account, and also the number of Snow devices your account has in use.
--
--
-- The default service limit for the number of Snow devices that you can have at one time is 1. If you want to increase your service limit, contact AWS Support.
module Network.AWS.Snowball.GetSnowballUsage
  ( -- * Creating a Request
    getSnowballUsage,
    GetSnowballUsage,

    -- * Destructuring the Response
    getSnowballUsageResponse,
    GetSnowballUsageResponse,

    -- * Response Lenses
    gsurrsSnowballsInUse,
    gsurrsSnowballLimit,
    gsurrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Snowball.Types

-- | /See:/ 'getSnowballUsage' smart constructor.
data GetSnowballUsage = GetSnowballUsage'
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetSnowballUsage' with the minimum fields required to make a request.
getSnowballUsage ::
  GetSnowballUsage
getSnowballUsage = GetSnowballUsage'

instance AWSRequest GetSnowballUsage where
  type Rs GetSnowballUsage = GetSnowballUsageResponse
  request = postJSON snowball
  response =
    receiveJSON
      ( \s h x ->
          GetSnowballUsageResponse'
            <$> (x .?> "SnowballsInUse")
            <*> (x .?> "SnowballLimit")
            <*> (pure (fromEnum s))
      )

instance Hashable GetSnowballUsage

instance NFData GetSnowballUsage

instance ToHeaders GetSnowballUsage where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSIESnowballJobManagementService.GetSnowballUsage" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetSnowballUsage where
  toJSON = const (Object mempty)

instance ToPath GetSnowballUsage where
  toPath = const "/"

instance ToQuery GetSnowballUsage where
  toQuery = const mempty

-- | /See:/ 'getSnowballUsageResponse' smart constructor.
data GetSnowballUsageResponse = GetSnowballUsageResponse'
  { _gsurrsSnowballsInUse ::
      !(Maybe Int),
    _gsurrsSnowballLimit ::
      !(Maybe Int),
    _gsurrsResponseStatus ::
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

-- | Creates a value of 'GetSnowballUsageResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsurrsSnowballsInUse' - The number of Snow devices that this account is currently using.
--
-- * 'gsurrsSnowballLimit' - The service limit for number of Snow devices this account can have at once. The default service limit is 1 (one).
--
-- * 'gsurrsResponseStatus' - -- | The response status code.
getSnowballUsageResponse ::
  -- | 'gsurrsResponseStatus'
  Int ->
  GetSnowballUsageResponse
getSnowballUsageResponse pResponseStatus_ =
  GetSnowballUsageResponse'
    { _gsurrsSnowballsInUse =
        Nothing,
      _gsurrsSnowballLimit = Nothing,
      _gsurrsResponseStatus = pResponseStatus_
    }

-- | The number of Snow devices that this account is currently using.
gsurrsSnowballsInUse :: Lens' GetSnowballUsageResponse (Maybe Int)
gsurrsSnowballsInUse = lens _gsurrsSnowballsInUse (\s a -> s {_gsurrsSnowballsInUse = a})

-- | The service limit for number of Snow devices this account can have at once. The default service limit is 1 (one).
gsurrsSnowballLimit :: Lens' GetSnowballUsageResponse (Maybe Int)
gsurrsSnowballLimit = lens _gsurrsSnowballLimit (\s a -> s {_gsurrsSnowballLimit = a})

-- | -- | The response status code.
gsurrsResponseStatus :: Lens' GetSnowballUsageResponse Int
gsurrsResponseStatus = lens _gsurrsResponseStatus (\s a -> s {_gsurrsResponseStatus = a})

instance NFData GetSnowballUsageResponse
