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
-- Module      : Network.AWS.DeviceFarm.ListDeviceInstances
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the private device instances associated with one or more AWS accounts.
--
--
--
-- This operation returns paginated results.
module Network.AWS.DeviceFarm.ListDeviceInstances
  ( -- * Creating a Request
    listDeviceInstances,
    ListDeviceInstances,

    -- * Request Lenses
    ldiNextToken,
    ldiMaxResults,

    -- * Destructuring the Response
    listDeviceInstancesResponse,
    ListDeviceInstancesResponse,

    -- * Response Lenses
    ldirrsNextToken,
    ldirrsDeviceInstances,
    ldirrsResponseStatus,
  )
where

import Network.AWS.DeviceFarm.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listDeviceInstances' smart constructor.
data ListDeviceInstances = ListDeviceInstances'
  { _ldiNextToken ::
      !(Maybe Text),
    _ldiMaxResults :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListDeviceInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldiNextToken' - An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
--
-- * 'ldiMaxResults' - An integer that specifies the maximum number of items you want to return in the API response.
listDeviceInstances ::
  ListDeviceInstances
listDeviceInstances =
  ListDeviceInstances'
    { _ldiNextToken = Nothing,
      _ldiMaxResults = Nothing
    }

-- | An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
ldiNextToken :: Lens' ListDeviceInstances (Maybe Text)
ldiNextToken = lens _ldiNextToken (\s a -> s {_ldiNextToken = a})

-- | An integer that specifies the maximum number of items you want to return in the API response.
ldiMaxResults :: Lens' ListDeviceInstances (Maybe Int)
ldiMaxResults = lens _ldiMaxResults (\s a -> s {_ldiMaxResults = a})

instance AWSPager ListDeviceInstances where
  page rq rs
    | stop (rs ^. ldirrsNextToken) = Nothing
    | stop (rs ^. ldirrsDeviceInstances) = Nothing
    | otherwise =
      Just $ rq & ldiNextToken .~ rs ^. ldirrsNextToken

instance AWSRequest ListDeviceInstances where
  type
    Rs ListDeviceInstances =
      ListDeviceInstancesResponse
  request = postJSON deviceFarm
  response =
    receiveJSON
      ( \s h x ->
          ListDeviceInstancesResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "deviceInstances" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListDeviceInstances

instance NFData ListDeviceInstances

instance ToHeaders ListDeviceInstances where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DeviceFarm_20150623.ListDeviceInstances" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListDeviceInstances where
  toJSON ListDeviceInstances' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _ldiNextToken,
            ("maxResults" .=) <$> _ldiMaxResults
          ]
      )

instance ToPath ListDeviceInstances where
  toPath = const "/"

instance ToQuery ListDeviceInstances where
  toQuery = const mempty

-- | /See:/ 'listDeviceInstancesResponse' smart constructor.
data ListDeviceInstancesResponse = ListDeviceInstancesResponse'
  { _ldirrsNextToken ::
      !(Maybe Text),
    _ldirrsDeviceInstances ::
      !( Maybe
           [DeviceInstance]
       ),
    _ldirrsResponseStatus ::
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

-- | Creates a value of 'ListDeviceInstancesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldirrsNextToken' - An identifier that can be used in the next call to this operation to return the next set of items in the list.
--
-- * 'ldirrsDeviceInstances' - An object that contains information about your device instances.
--
-- * 'ldirrsResponseStatus' - -- | The response status code.
listDeviceInstancesResponse ::
  -- | 'ldirrsResponseStatus'
  Int ->
  ListDeviceInstancesResponse
listDeviceInstancesResponse pResponseStatus_ =
  ListDeviceInstancesResponse'
    { _ldirrsNextToken =
        Nothing,
      _ldirrsDeviceInstances = Nothing,
      _ldirrsResponseStatus = pResponseStatus_
    }

-- | An identifier that can be used in the next call to this operation to return the next set of items in the list.
ldirrsNextToken :: Lens' ListDeviceInstancesResponse (Maybe Text)
ldirrsNextToken = lens _ldirrsNextToken (\s a -> s {_ldirrsNextToken = a})

-- | An object that contains information about your device instances.
ldirrsDeviceInstances :: Lens' ListDeviceInstancesResponse [DeviceInstance]
ldirrsDeviceInstances = lens _ldirrsDeviceInstances (\s a -> s {_ldirrsDeviceInstances = a}) . _Default . _Coerce

-- | -- | The response status code.
ldirrsResponseStatus :: Lens' ListDeviceInstancesResponse Int
ldirrsResponseStatus = lens _ldirrsResponseStatus (\s a -> s {_ldirrsResponseStatus = a})

instance NFData ListDeviceInstancesResponse
