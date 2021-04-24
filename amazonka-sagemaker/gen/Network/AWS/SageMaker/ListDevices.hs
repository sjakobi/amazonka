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
-- Module      : Network.AWS.SageMaker.ListDevices
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- A list of devices.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListDevices
  ( -- * Creating a Request
    listDevices,
    ListDevices,

    -- * Request Lenses
    lLatestHeartbeatAfter,
    lNextToken,
    lDeviceFleetName,
    lMaxResults,
    lModelName,

    -- * Destructuring the Response
    listDevicesResponse,
    ListDevicesResponse,

    -- * Response Lenses
    lisrsNextToken,
    lisrsResponseStatus,
    lisrsDeviceSummaries,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'listDevices' smart constructor.
data ListDevices = ListDevices'
  { _lLatestHeartbeatAfter ::
      !(Maybe POSIX),
    _lNextToken :: !(Maybe Text),
    _lDeviceFleetName :: !(Maybe Text),
    _lMaxResults :: !(Maybe Int),
    _lModelName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListDevices' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lLatestHeartbeatAfter' - Select fleets where the job was updated after X
--
-- * 'lNextToken' - The response from the last list when returning a list large enough to need tokening.
--
-- * 'lDeviceFleetName' - Filter for fleets containing this name in their device fleet name.
--
-- * 'lMaxResults' - Maximum number of results to select.
--
-- * 'lModelName' - A filter that searches devices that contains this name in any of their models.
listDevices ::
  ListDevices
listDevices =
  ListDevices'
    { _lLatestHeartbeatAfter = Nothing,
      _lNextToken = Nothing,
      _lDeviceFleetName = Nothing,
      _lMaxResults = Nothing,
      _lModelName = Nothing
    }

-- | Select fleets where the job was updated after X
lLatestHeartbeatAfter :: Lens' ListDevices (Maybe UTCTime)
lLatestHeartbeatAfter = lens _lLatestHeartbeatAfter (\s a -> s {_lLatestHeartbeatAfter = a}) . mapping _Time

-- | The response from the last list when returning a list large enough to need tokening.
lNextToken :: Lens' ListDevices (Maybe Text)
lNextToken = lens _lNextToken (\s a -> s {_lNextToken = a})

-- | Filter for fleets containing this name in their device fleet name.
lDeviceFleetName :: Lens' ListDevices (Maybe Text)
lDeviceFleetName = lens _lDeviceFleetName (\s a -> s {_lDeviceFleetName = a})

-- | Maximum number of results to select.
lMaxResults :: Lens' ListDevices (Maybe Int)
lMaxResults = lens _lMaxResults (\s a -> s {_lMaxResults = a})

-- | A filter that searches devices that contains this name in any of their models.
lModelName :: Lens' ListDevices (Maybe Text)
lModelName = lens _lModelName (\s a -> s {_lModelName = a})

instance AWSPager ListDevices where
  page rq rs
    | stop (rs ^. lisrsNextToken) = Nothing
    | stop (rs ^. lisrsDeviceSummaries) = Nothing
    | otherwise =
      Just $ rq & lNextToken .~ rs ^. lisrsNextToken

instance AWSRequest ListDevices where
  type Rs ListDevices = ListDevicesResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          ListDevicesResponse'
            <$> (x .?> "NextToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "DeviceSummaries" .!@ mempty)
      )

instance Hashable ListDevices

instance NFData ListDevices

instance ToHeaders ListDevices where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.ListDevices" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListDevices where
  toJSON ListDevices' {..} =
    object
      ( catMaybes
          [ ("LatestHeartbeatAfter" .=)
              <$> _lLatestHeartbeatAfter,
            ("NextToken" .=) <$> _lNextToken,
            ("DeviceFleetName" .=) <$> _lDeviceFleetName,
            ("MaxResults" .=) <$> _lMaxResults,
            ("ModelName" .=) <$> _lModelName
          ]
      )

instance ToPath ListDevices where
  toPath = const "/"

instance ToQuery ListDevices where
  toQuery = const mempty

-- | /See:/ 'listDevicesResponse' smart constructor.
data ListDevicesResponse = ListDevicesResponse'
  { _lisrsNextToken ::
      !(Maybe Text),
    _lisrsResponseStatus :: !Int,
    _lisrsDeviceSummaries ::
      ![DeviceSummary]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListDevicesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lisrsNextToken' - The response from the last list when returning a list large enough to need tokening.
--
-- * 'lisrsResponseStatus' - -- | The response status code.
--
-- * 'lisrsDeviceSummaries' - Summary of devices.
listDevicesResponse ::
  -- | 'lisrsResponseStatus'
  Int ->
  ListDevicesResponse
listDevicesResponse pResponseStatus_ =
  ListDevicesResponse'
    { _lisrsNextToken = Nothing,
      _lisrsResponseStatus = pResponseStatus_,
      _lisrsDeviceSummaries = mempty
    }

-- | The response from the last list when returning a list large enough to need tokening.
lisrsNextToken :: Lens' ListDevicesResponse (Maybe Text)
lisrsNextToken = lens _lisrsNextToken (\s a -> s {_lisrsNextToken = a})

-- | -- | The response status code.
lisrsResponseStatus :: Lens' ListDevicesResponse Int
lisrsResponseStatus = lens _lisrsResponseStatus (\s a -> s {_lisrsResponseStatus = a})

-- | Summary of devices.
lisrsDeviceSummaries :: Lens' ListDevicesResponse [DeviceSummary]
lisrsDeviceSummaries = lens _lisrsDeviceSummaries (\s a -> s {_lisrsDeviceSummaries = a}) . _Coerce

instance NFData ListDevicesResponse
