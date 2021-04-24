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
-- Module      : Network.AWS.SageMaker.ListDeviceFleets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of devices in the fleet.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListDeviceFleets
  ( -- * Creating a Request
    listDeviceFleets,
    ListDeviceFleets,

    -- * Request Lenses
    ldfLastModifiedTimeBefore,
    ldfSortOrder,
    ldfNextToken,
    ldfNameContains,
    ldfMaxResults,
    ldfCreationTimeBefore,
    ldfLastModifiedTimeAfter,
    ldfSortBy,
    ldfCreationTimeAfter,

    -- * Destructuring the Response
    listDeviceFleetsResponse,
    ListDeviceFleetsResponse,

    -- * Response Lenses
    ldfrrsNextToken,
    ldfrrsResponseStatus,
    ldfrrsDeviceFleetSummaries,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'listDeviceFleets' smart constructor.
data ListDeviceFleets = ListDeviceFleets'
  { _ldfLastModifiedTimeBefore ::
      !(Maybe POSIX),
    _ldfSortOrder :: !(Maybe SortOrder),
    _ldfNextToken :: !(Maybe Text),
    _ldfNameContains :: !(Maybe Text),
    _ldfMaxResults :: !(Maybe Int),
    _ldfCreationTimeBefore ::
      !(Maybe POSIX),
    _ldfLastModifiedTimeAfter ::
      !(Maybe POSIX),
    _ldfSortBy ::
      !(Maybe ListDeviceFleetsSortBy),
    _ldfCreationTimeAfter ::
      !(Maybe POSIX)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListDeviceFleets' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldfLastModifiedTimeBefore' - Select fleets where the job was updated before X
--
-- * 'ldfSortOrder' - What direction to sort in.
--
-- * 'ldfNextToken' - The response from the last list when returning a list large enough to need tokening.
--
-- * 'ldfNameContains' - Filter for fleets containing this name in their fleet device name.
--
-- * 'ldfMaxResults' - The maximum number of results to select.
--
-- * 'ldfCreationTimeBefore' - Filter fleets where the edge packaging job was created before specified time.
--
-- * 'ldfLastModifiedTimeAfter' - Select fleets where the job was updated after X
--
-- * 'ldfSortBy' - The column to sort by.
--
-- * 'ldfCreationTimeAfter' - Filter fleets where packaging job was created after specified time.
listDeviceFleets ::
  ListDeviceFleets
listDeviceFleets =
  ListDeviceFleets'
    { _ldfLastModifiedTimeBefore =
        Nothing,
      _ldfSortOrder = Nothing,
      _ldfNextToken = Nothing,
      _ldfNameContains = Nothing,
      _ldfMaxResults = Nothing,
      _ldfCreationTimeBefore = Nothing,
      _ldfLastModifiedTimeAfter = Nothing,
      _ldfSortBy = Nothing,
      _ldfCreationTimeAfter = Nothing
    }

-- | Select fleets where the job was updated before X
ldfLastModifiedTimeBefore :: Lens' ListDeviceFleets (Maybe UTCTime)
ldfLastModifiedTimeBefore = lens _ldfLastModifiedTimeBefore (\s a -> s {_ldfLastModifiedTimeBefore = a}) . mapping _Time

-- | What direction to sort in.
ldfSortOrder :: Lens' ListDeviceFleets (Maybe SortOrder)
ldfSortOrder = lens _ldfSortOrder (\s a -> s {_ldfSortOrder = a})

-- | The response from the last list when returning a list large enough to need tokening.
ldfNextToken :: Lens' ListDeviceFleets (Maybe Text)
ldfNextToken = lens _ldfNextToken (\s a -> s {_ldfNextToken = a})

-- | Filter for fleets containing this name in their fleet device name.
ldfNameContains :: Lens' ListDeviceFleets (Maybe Text)
ldfNameContains = lens _ldfNameContains (\s a -> s {_ldfNameContains = a})

-- | The maximum number of results to select.
ldfMaxResults :: Lens' ListDeviceFleets (Maybe Int)
ldfMaxResults = lens _ldfMaxResults (\s a -> s {_ldfMaxResults = a})

-- | Filter fleets where the edge packaging job was created before specified time.
ldfCreationTimeBefore :: Lens' ListDeviceFleets (Maybe UTCTime)
ldfCreationTimeBefore = lens _ldfCreationTimeBefore (\s a -> s {_ldfCreationTimeBefore = a}) . mapping _Time

-- | Select fleets where the job was updated after X
ldfLastModifiedTimeAfter :: Lens' ListDeviceFleets (Maybe UTCTime)
ldfLastModifiedTimeAfter = lens _ldfLastModifiedTimeAfter (\s a -> s {_ldfLastModifiedTimeAfter = a}) . mapping _Time

-- | The column to sort by.
ldfSortBy :: Lens' ListDeviceFleets (Maybe ListDeviceFleetsSortBy)
ldfSortBy = lens _ldfSortBy (\s a -> s {_ldfSortBy = a})

-- | Filter fleets where packaging job was created after specified time.
ldfCreationTimeAfter :: Lens' ListDeviceFleets (Maybe UTCTime)
ldfCreationTimeAfter = lens _ldfCreationTimeAfter (\s a -> s {_ldfCreationTimeAfter = a}) . mapping _Time

instance AWSPager ListDeviceFleets where
  page rq rs
    | stop (rs ^. ldfrrsNextToken) = Nothing
    | stop (rs ^. ldfrrsDeviceFleetSummaries) = Nothing
    | otherwise =
      Just $ rq & ldfNextToken .~ rs ^. ldfrrsNextToken

instance AWSRequest ListDeviceFleets where
  type Rs ListDeviceFleets = ListDeviceFleetsResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          ListDeviceFleetsResponse'
            <$> (x .?> "NextToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "DeviceFleetSummaries" .!@ mempty)
      )

instance Hashable ListDeviceFleets

instance NFData ListDeviceFleets

instance ToHeaders ListDeviceFleets where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.ListDeviceFleets" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListDeviceFleets where
  toJSON ListDeviceFleets' {..} =
    object
      ( catMaybes
          [ ("LastModifiedTimeBefore" .=)
              <$> _ldfLastModifiedTimeBefore,
            ("SortOrder" .=) <$> _ldfSortOrder,
            ("NextToken" .=) <$> _ldfNextToken,
            ("NameContains" .=) <$> _ldfNameContains,
            ("MaxResults" .=) <$> _ldfMaxResults,
            ("CreationTimeBefore" .=) <$> _ldfCreationTimeBefore,
            ("LastModifiedTimeAfter" .=)
              <$> _ldfLastModifiedTimeAfter,
            ("SortBy" .=) <$> _ldfSortBy,
            ("CreationTimeAfter" .=) <$> _ldfCreationTimeAfter
          ]
      )

instance ToPath ListDeviceFleets where
  toPath = const "/"

instance ToQuery ListDeviceFleets where
  toQuery = const mempty

-- | /See:/ 'listDeviceFleetsResponse' smart constructor.
data ListDeviceFleetsResponse = ListDeviceFleetsResponse'
  { _ldfrrsNextToken ::
      !(Maybe Text),
    _ldfrrsResponseStatus ::
      !Int,
    _ldfrrsDeviceFleetSummaries ::
      ![DeviceFleetSummary]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListDeviceFleetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldfrrsNextToken' - The response from the last list when returning a list large enough to need tokening.
--
-- * 'ldfrrsResponseStatus' - -- | The response status code.
--
-- * 'ldfrrsDeviceFleetSummaries' - Summary of the device fleet.
listDeviceFleetsResponse ::
  -- | 'ldfrrsResponseStatus'
  Int ->
  ListDeviceFleetsResponse
listDeviceFleetsResponse pResponseStatus_ =
  ListDeviceFleetsResponse'
    { _ldfrrsNextToken =
        Nothing,
      _ldfrrsResponseStatus = pResponseStatus_,
      _ldfrrsDeviceFleetSummaries = mempty
    }

-- | The response from the last list when returning a list large enough to need tokening.
ldfrrsNextToken :: Lens' ListDeviceFleetsResponse (Maybe Text)
ldfrrsNextToken = lens _ldfrrsNextToken (\s a -> s {_ldfrrsNextToken = a})

-- | -- | The response status code.
ldfrrsResponseStatus :: Lens' ListDeviceFleetsResponse Int
ldfrrsResponseStatus = lens _ldfrrsResponseStatus (\s a -> s {_ldfrrsResponseStatus = a})

-- | Summary of the device fleet.
ldfrrsDeviceFleetSummaries :: Lens' ListDeviceFleetsResponse [DeviceFleetSummary]
ldfrrsDeviceFleetSummaries = lens _ldfrrsDeviceFleetSummaries (\s a -> s {_ldfrrsDeviceFleetSummaries = a}) . _Coerce

instance NFData ListDeviceFleetsResponse
