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
-- Module      : Network.AWS.ElastiCache.DescribeServiceUpdates
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns details of the service updates
--
--
--
-- This operation returns paginated results.
module Network.AWS.ElastiCache.DescribeServiceUpdates
  ( -- * Creating a Request
    describeServiceUpdates,
    DescribeServiceUpdates,

    -- * Request Lenses
    dsuServiceUpdateStatus,
    dsuServiceUpdateName,
    dsuMarker,
    dsuMaxRecords,

    -- * Destructuring the Response
    describeServiceUpdatesResponse,
    DescribeServiceUpdatesResponse,

    -- * Response Lenses
    dsurrsServiceUpdates,
    dsurrsMarker,
    dsurrsResponseStatus,
  )
where

import Network.AWS.ElastiCache.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeServiceUpdates' smart constructor.
data DescribeServiceUpdates = DescribeServiceUpdates'
  { _dsuServiceUpdateStatus ::
      !( Maybe
           [ServiceUpdateStatus]
       ),
    _dsuServiceUpdateName ::
      !(Maybe Text),
    _dsuMarker ::
      !(Maybe Text),
    _dsuMaxRecords ::
      !(Maybe Int)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeServiceUpdates' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsuServiceUpdateStatus' - The status of the service update
--
-- * 'dsuServiceUpdateName' - The unique ID of the service update
--
-- * 'dsuMarker' - An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'dsuMaxRecords' - The maximum number of records to include in the response
describeServiceUpdates ::
  DescribeServiceUpdates
describeServiceUpdates =
  DescribeServiceUpdates'
    { _dsuServiceUpdateStatus =
        Nothing,
      _dsuServiceUpdateName = Nothing,
      _dsuMarker = Nothing,
      _dsuMaxRecords = Nothing
    }

-- | The status of the service update
dsuServiceUpdateStatus :: Lens' DescribeServiceUpdates [ServiceUpdateStatus]
dsuServiceUpdateStatus = lens _dsuServiceUpdateStatus (\s a -> s {_dsuServiceUpdateStatus = a}) . _Default . _Coerce

-- | The unique ID of the service update
dsuServiceUpdateName :: Lens' DescribeServiceUpdates (Maybe Text)
dsuServiceUpdateName = lens _dsuServiceUpdateName (\s a -> s {_dsuServiceUpdateName = a})

-- | An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
dsuMarker :: Lens' DescribeServiceUpdates (Maybe Text)
dsuMarker = lens _dsuMarker (\s a -> s {_dsuMarker = a})

-- | The maximum number of records to include in the response
dsuMaxRecords :: Lens' DescribeServiceUpdates (Maybe Int)
dsuMaxRecords = lens _dsuMaxRecords (\s a -> s {_dsuMaxRecords = a})

instance AWSPager DescribeServiceUpdates where
  page rq rs
    | stop (rs ^. dsurrsMarker) = Nothing
    | stop (rs ^. dsurrsServiceUpdates) = Nothing
    | otherwise =
      Just $ rq & dsuMarker .~ rs ^. dsurrsMarker

instance AWSRequest DescribeServiceUpdates where
  type
    Rs DescribeServiceUpdates =
      DescribeServiceUpdatesResponse
  request = postQuery elastiCache
  response =
    receiveXMLWrapper
      "DescribeServiceUpdatesResult"
      ( \s h x ->
          DescribeServiceUpdatesResponse'
            <$> ( x .@? "ServiceUpdates" .!@ mempty
                    >>= may (parseXMLList "ServiceUpdate")
                )
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeServiceUpdates

instance NFData DescribeServiceUpdates

instance ToHeaders DescribeServiceUpdates where
  toHeaders = const mempty

instance ToPath DescribeServiceUpdates where
  toPath = const "/"

instance ToQuery DescribeServiceUpdates where
  toQuery DescribeServiceUpdates' {..} =
    mconcat
      [ "Action"
          =: ("DescribeServiceUpdates" :: ByteString),
        "Version" =: ("2015-02-02" :: ByteString),
        "ServiceUpdateStatus"
          =: toQuery
            (toQueryList "member" <$> _dsuServiceUpdateStatus),
        "ServiceUpdateName" =: _dsuServiceUpdateName,
        "Marker" =: _dsuMarker,
        "MaxRecords" =: _dsuMaxRecords
      ]

-- | /See:/ 'describeServiceUpdatesResponse' smart constructor.
data DescribeServiceUpdatesResponse = DescribeServiceUpdatesResponse'
  { _dsurrsServiceUpdates ::
      !( Maybe
           [ServiceUpdate]
       ),
    _dsurrsMarker ::
      !( Maybe
           Text
       ),
    _dsurrsResponseStatus ::
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

-- | Creates a value of 'DescribeServiceUpdatesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsurrsServiceUpdates' - A list of service updates
--
-- * 'dsurrsMarker' - An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'dsurrsResponseStatus' - -- | The response status code.
describeServiceUpdatesResponse ::
  -- | 'dsurrsResponseStatus'
  Int ->
  DescribeServiceUpdatesResponse
describeServiceUpdatesResponse pResponseStatus_ =
  DescribeServiceUpdatesResponse'
    { _dsurrsServiceUpdates =
        Nothing,
      _dsurrsMarker = Nothing,
      _dsurrsResponseStatus = pResponseStatus_
    }

-- | A list of service updates
dsurrsServiceUpdates :: Lens' DescribeServiceUpdatesResponse [ServiceUpdate]
dsurrsServiceUpdates = lens _dsurrsServiceUpdates (\s a -> s {_dsurrsServiceUpdates = a}) . _Default . _Coerce

-- | An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
dsurrsMarker :: Lens' DescribeServiceUpdatesResponse (Maybe Text)
dsurrsMarker = lens _dsurrsMarker (\s a -> s {_dsurrsMarker = a})

-- | -- | The response status code.
dsurrsResponseStatus :: Lens' DescribeServiceUpdatesResponse Int
dsurrsResponseStatus = lens _dsurrsResponseStatus (\s a -> s {_dsurrsResponseStatus = a})

instance NFData DescribeServiceUpdatesResponse
