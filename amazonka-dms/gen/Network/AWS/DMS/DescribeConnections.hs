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
-- Module      : Network.AWS.DMS.DescribeConnections
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the status of the connections that have been made between the replication instance and an endpoint. Connections are created when you test an endpoint.
--
--
--
-- This operation returns paginated results.
module Network.AWS.DMS.DescribeConnections
  ( -- * Creating a Request
    describeConnections,
    DescribeConnections,

    -- * Request Lenses
    dcsFilters,
    dcsMarker,
    dcsMaxRecords,

    -- * Destructuring the Response
    describeConnectionsResponse,
    DescribeConnectionsResponse,

    -- * Response Lenses
    desersConnections,
    desersMarker,
    desersResponseStatus,
  )
where

import Network.AWS.DMS.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- |
--
--
--
-- /See:/ 'describeConnections' smart constructor.
data DescribeConnections = DescribeConnections'
  { _dcsFilters ::
      !(Maybe [Filter]),
    _dcsMarker :: !(Maybe Text),
    _dcsMaxRecords :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeConnections' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcsFilters' - The filters applied to the connection. Valid filter names: endpoint-arn | replication-instance-arn
--
-- * 'dcsMarker' - An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'dcsMaxRecords' - The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.  Default: 100 Constraints: Minimum 20, maximum 100.
describeConnections ::
  DescribeConnections
describeConnections =
  DescribeConnections'
    { _dcsFilters = Nothing,
      _dcsMarker = Nothing,
      _dcsMaxRecords = Nothing
    }

-- | The filters applied to the connection. Valid filter names: endpoint-arn | replication-instance-arn
dcsFilters :: Lens' DescribeConnections [Filter]
dcsFilters = lens _dcsFilters (\s a -> s {_dcsFilters = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
dcsMarker :: Lens' DescribeConnections (Maybe Text)
dcsMarker = lens _dcsMarker (\s a -> s {_dcsMarker = a})

-- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.  Default: 100 Constraints: Minimum 20, maximum 100.
dcsMaxRecords :: Lens' DescribeConnections (Maybe Int)
dcsMaxRecords = lens _dcsMaxRecords (\s a -> s {_dcsMaxRecords = a})

instance AWSPager DescribeConnections where
  page rq rs
    | stop (rs ^. desersMarker) = Nothing
    | stop (rs ^. desersConnections) = Nothing
    | otherwise =
      Just $ rq & dcsMarker .~ rs ^. desersMarker

instance AWSRequest DescribeConnections where
  type
    Rs DescribeConnections =
      DescribeConnectionsResponse
  request = postJSON dms
  response =
    receiveJSON
      ( \s h x ->
          DescribeConnectionsResponse'
            <$> (x .?> "Connections" .!@ mempty)
            <*> (x .?> "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeConnections

instance NFData DescribeConnections

instance ToHeaders DescribeConnections where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonDMSv20160101.DescribeConnections" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeConnections where
  toJSON DescribeConnections' {..} =
    object
      ( catMaybes
          [ ("Filters" .=) <$> _dcsFilters,
            ("Marker" .=) <$> _dcsMarker,
            ("MaxRecords" .=) <$> _dcsMaxRecords
          ]
      )

instance ToPath DescribeConnections where
  toPath = const "/"

instance ToQuery DescribeConnections where
  toQuery = const mempty

-- |
--
--
--
-- /See:/ 'describeConnectionsResponse' smart constructor.
data DescribeConnectionsResponse = DescribeConnectionsResponse'
  { _desersConnections ::
      !( Maybe
           [Connection]
       ),
    _desersMarker ::
      !(Maybe Text),
    _desersResponseStatus ::
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

-- | Creates a value of 'DescribeConnectionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desersConnections' - A description of the connections.
--
-- * 'desersMarker' - An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'desersResponseStatus' - -- | The response status code.
describeConnectionsResponse ::
  -- | 'desersResponseStatus'
  Int ->
  DescribeConnectionsResponse
describeConnectionsResponse pResponseStatus_ =
  DescribeConnectionsResponse'
    { _desersConnections =
        Nothing,
      _desersMarker = Nothing,
      _desersResponseStatus = pResponseStatus_
    }

-- | A description of the connections.
desersConnections :: Lens' DescribeConnectionsResponse [Connection]
desersConnections = lens _desersConnections (\s a -> s {_desersConnections = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
desersMarker :: Lens' DescribeConnectionsResponse (Maybe Text)
desersMarker = lens _desersMarker (\s a -> s {_desersMarker = a})

-- | -- | The response status code.
desersResponseStatus :: Lens' DescribeConnectionsResponse Int
desersResponseStatus = lens _desersResponseStatus (\s a -> s {_desersResponseStatus = a})

instance NFData DescribeConnectionsResponse
