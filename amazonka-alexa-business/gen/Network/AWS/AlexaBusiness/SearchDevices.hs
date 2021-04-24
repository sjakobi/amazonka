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
-- Module      : Network.AWS.AlexaBusiness.SearchDevices
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches devices and lists the ones that meet a set of filter criteria.
--
--
--
-- This operation returns paginated results.
module Network.AWS.AlexaBusiness.SearchDevices
  ( -- * Creating a Request
    searchDevices,
    SearchDevices,

    -- * Request Lenses
    sdNextToken,
    sdSortCriteria,
    sdMaxResults,
    sdFilters,

    -- * Destructuring the Response
    searchDevicesResponse,
    SearchDevicesResponse,

    -- * Response Lenses
    sdrrsNextToken,
    sdrrsDevices,
    sdrrsTotalCount,
    sdrrsResponseStatus,
  )
where

import Network.AWS.AlexaBusiness.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'searchDevices' smart constructor.
data SearchDevices = SearchDevices'
  { _sdNextToken ::
      !(Maybe Text),
    _sdSortCriteria :: !(Maybe [Sort]),
    _sdMaxResults :: !(Maybe Nat),
    _sdFilters :: !(Maybe [Filter])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SearchDevices' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdNextToken' - An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by @MaxResults@ .
--
-- * 'sdSortCriteria' - The sort order to use in listing the specified set of devices. Supported sort keys are DeviceName, DeviceStatus, RoomName, DeviceType, DeviceSerialNumber, ConnectionStatus, NetworkProfileName, NetworkProfileArn, Feature, and FailureCode.
--
-- * 'sdMaxResults' - The maximum number of results to include in the response. If more results exist than the specified @MaxResults@ value, a token is included in the response so that the remaining results can be retrieved.
--
-- * 'sdFilters' - The filters to use to list a specified set of devices. Supported filter keys are DeviceName, DeviceStatus, DeviceStatusDetailCode, RoomName, DeviceType, DeviceSerialNumber, UnassociatedOnly, ConnectionStatus (ONLINE and OFFLINE), NetworkProfileName, NetworkProfileArn, Feature, and FailureCode.
searchDevices ::
  SearchDevices
searchDevices =
  SearchDevices'
    { _sdNextToken = Nothing,
      _sdSortCriteria = Nothing,
      _sdMaxResults = Nothing,
      _sdFilters = Nothing
    }

-- | An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by @MaxResults@ .
sdNextToken :: Lens' SearchDevices (Maybe Text)
sdNextToken = lens _sdNextToken (\s a -> s {_sdNextToken = a})

-- | The sort order to use in listing the specified set of devices. Supported sort keys are DeviceName, DeviceStatus, RoomName, DeviceType, DeviceSerialNumber, ConnectionStatus, NetworkProfileName, NetworkProfileArn, Feature, and FailureCode.
sdSortCriteria :: Lens' SearchDevices [Sort]
sdSortCriteria = lens _sdSortCriteria (\s a -> s {_sdSortCriteria = a}) . _Default . _Coerce

-- | The maximum number of results to include in the response. If more results exist than the specified @MaxResults@ value, a token is included in the response so that the remaining results can be retrieved.
sdMaxResults :: Lens' SearchDevices (Maybe Natural)
sdMaxResults = lens _sdMaxResults (\s a -> s {_sdMaxResults = a}) . mapping _Nat

-- | The filters to use to list a specified set of devices. Supported filter keys are DeviceName, DeviceStatus, DeviceStatusDetailCode, RoomName, DeviceType, DeviceSerialNumber, UnassociatedOnly, ConnectionStatus (ONLINE and OFFLINE), NetworkProfileName, NetworkProfileArn, Feature, and FailureCode.
sdFilters :: Lens' SearchDevices [Filter]
sdFilters = lens _sdFilters (\s a -> s {_sdFilters = a}) . _Default . _Coerce

instance AWSPager SearchDevices where
  page rq rs
    | stop (rs ^. sdrrsNextToken) = Nothing
    | stop (rs ^. sdrrsDevices) = Nothing
    | otherwise =
      Just $ rq & sdNextToken .~ rs ^. sdrrsNextToken

instance AWSRequest SearchDevices where
  type Rs SearchDevices = SearchDevicesResponse
  request = postJSON alexaBusiness
  response =
    receiveJSON
      ( \s h x ->
          SearchDevicesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Devices" .!@ mempty)
            <*> (x .?> "TotalCount")
            <*> (pure (fromEnum s))
      )

instance Hashable SearchDevices

instance NFData SearchDevices

instance ToHeaders SearchDevices where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AlexaForBusiness.SearchDevices" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON SearchDevices where
  toJSON SearchDevices' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _sdNextToken,
            ("SortCriteria" .=) <$> _sdSortCriteria,
            ("MaxResults" .=) <$> _sdMaxResults,
            ("Filters" .=) <$> _sdFilters
          ]
      )

instance ToPath SearchDevices where
  toPath = const "/"

instance ToQuery SearchDevices where
  toQuery = const mempty

-- | /See:/ 'searchDevicesResponse' smart constructor.
data SearchDevicesResponse = SearchDevicesResponse'
  { _sdrrsNextToken ::
      !(Maybe Text),
    _sdrrsDevices ::
      !(Maybe [DeviceData]),
    _sdrrsTotalCount ::
      !(Maybe Int),
    _sdrrsResponseStatus ::
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

-- | Creates a value of 'SearchDevicesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdrrsNextToken' - The token returned to indicate that there is more data available.
--
-- * 'sdrrsDevices' - The devices that meet the specified set of filter criteria, in sort order.
--
-- * 'sdrrsTotalCount' - The total number of devices returned.
--
-- * 'sdrrsResponseStatus' - -- | The response status code.
searchDevicesResponse ::
  -- | 'sdrrsResponseStatus'
  Int ->
  SearchDevicesResponse
searchDevicesResponse pResponseStatus_ =
  SearchDevicesResponse'
    { _sdrrsNextToken = Nothing,
      _sdrrsDevices = Nothing,
      _sdrrsTotalCount = Nothing,
      _sdrrsResponseStatus = pResponseStatus_
    }

-- | The token returned to indicate that there is more data available.
sdrrsNextToken :: Lens' SearchDevicesResponse (Maybe Text)
sdrrsNextToken = lens _sdrrsNextToken (\s a -> s {_sdrrsNextToken = a})

-- | The devices that meet the specified set of filter criteria, in sort order.
sdrrsDevices :: Lens' SearchDevicesResponse [DeviceData]
sdrrsDevices = lens _sdrrsDevices (\s a -> s {_sdrrsDevices = a}) . _Default . _Coerce

-- | The total number of devices returned.
sdrrsTotalCount :: Lens' SearchDevicesResponse (Maybe Int)
sdrrsTotalCount = lens _sdrrsTotalCount (\s a -> s {_sdrrsTotalCount = a})

-- | -- | The response status code.
sdrrsResponseStatus :: Lens' SearchDevicesResponse Int
sdrrsResponseStatus = lens _sdrrsResponseStatus (\s a -> s {_sdrrsResponseStatus = a})

instance NFData SearchDevicesResponse
