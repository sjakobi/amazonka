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
-- Module      : Network.AWS.MediaLive.ListInputDevices
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List input devices
--
-- This operation returns paginated results.
module Network.AWS.MediaLive.ListInputDevices
  ( -- * Creating a Request
    listInputDevices,
    ListInputDevices,

    -- * Request Lenses
    lidNextToken,
    lidMaxResults,

    -- * Destructuring the Response
    listInputDevicesResponse,
    ListInputDevicesResponse,

    -- * Response Lenses
    lidrrsNextToken,
    lidrrsInputDevices,
    lidrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Placeholder documentation for ListInputDevicesRequest
--
-- /See:/ 'listInputDevices' smart constructor.
data ListInputDevices = ListInputDevices'
  { _lidNextToken ::
      !(Maybe Text),
    _lidMaxResults :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListInputDevices' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lidNextToken' - Undocumented member.
--
-- * 'lidMaxResults' - Undocumented member.
listInputDevices ::
  ListInputDevices
listInputDevices =
  ListInputDevices'
    { _lidNextToken = Nothing,
      _lidMaxResults = Nothing
    }

-- | Undocumented member.
lidNextToken :: Lens' ListInputDevices (Maybe Text)
lidNextToken = lens _lidNextToken (\s a -> s {_lidNextToken = a})

-- | Undocumented member.
lidMaxResults :: Lens' ListInputDevices (Maybe Natural)
lidMaxResults = lens _lidMaxResults (\s a -> s {_lidMaxResults = a}) . mapping _Nat

instance AWSPager ListInputDevices where
  page rq rs
    | stop (rs ^. lidrrsNextToken) = Nothing
    | stop (rs ^. lidrrsInputDevices) = Nothing
    | otherwise =
      Just $ rq & lidNextToken .~ rs ^. lidrrsNextToken

instance AWSRequest ListInputDevices where
  type Rs ListInputDevices = ListInputDevicesResponse
  request = get mediaLive
  response =
    receiveJSON
      ( \s h x ->
          ListInputDevicesResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "inputDevices" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListInputDevices

instance NFData ListInputDevices

instance ToHeaders ListInputDevices where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListInputDevices where
  toPath = const "/prod/inputDevices"

instance ToQuery ListInputDevices where
  toQuery ListInputDevices' {..} =
    mconcat
      [ "nextToken" =: _lidNextToken,
        "maxResults" =: _lidMaxResults
      ]

-- | Placeholder documentation for ListInputDevicesResponse
--
-- /See:/ 'listInputDevicesResponse' smart constructor.
data ListInputDevicesResponse = ListInputDevicesResponse'
  { _lidrrsNextToken ::
      !(Maybe Text),
    _lidrrsInputDevices ::
      !( Maybe
           [InputDeviceSummary]
       ),
    _lidrrsResponseStatus ::
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

-- | Creates a value of 'ListInputDevicesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lidrrsNextToken' - A token to get additional list results.
--
-- * 'lidrrsInputDevices' - The list of input devices.
--
-- * 'lidrrsResponseStatus' - -- | The response status code.
listInputDevicesResponse ::
  -- | 'lidrrsResponseStatus'
  Int ->
  ListInputDevicesResponse
listInputDevicesResponse pResponseStatus_ =
  ListInputDevicesResponse'
    { _lidrrsNextToken =
        Nothing,
      _lidrrsInputDevices = Nothing,
      _lidrrsResponseStatus = pResponseStatus_
    }

-- | A token to get additional list results.
lidrrsNextToken :: Lens' ListInputDevicesResponse (Maybe Text)
lidrrsNextToken = lens _lidrrsNextToken (\s a -> s {_lidrrsNextToken = a})

-- | The list of input devices.
lidrrsInputDevices :: Lens' ListInputDevicesResponse [InputDeviceSummary]
lidrrsInputDevices = lens _lidrrsInputDevices (\s a -> s {_lidrrsInputDevices = a}) . _Default . _Coerce

-- | -- | The response status code.
lidrrsResponseStatus :: Lens' ListInputDevicesResponse Int
lidrrsResponseStatus = lens _lidrrsResponseStatus (\s a -> s {_lidrrsResponseStatus = a})

instance NFData ListInputDevicesResponse
