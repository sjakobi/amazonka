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
-- Module      : Network.AWS.DMS.DescribeEndpoints
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the endpoints for your account in the current region.
--
--
--
-- This operation returns paginated results.
module Network.AWS.DMS.DescribeEndpoints
  ( -- * Creating a Request
    describeEndpoints,
    DescribeEndpoints,

    -- * Request Lenses
    deeFilters,
    deeMarker,
    deeMaxRecords,

    -- * Destructuring the Response
    describeEndpointsResponse,
    DescribeEndpointsResponse,

    -- * Response Lenses
    derersEndpoints,
    derersMarker,
    derersResponseStatus,
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
-- /See:/ 'describeEndpoints' smart constructor.
data DescribeEndpoints = DescribeEndpoints'
  { _deeFilters ::
      !(Maybe [Filter]),
    _deeMarker :: !(Maybe Text),
    _deeMaxRecords :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeEndpoints' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'deeFilters' - Filters applied to the endpoints. Valid filter names: endpoint-arn | endpoint-type | endpoint-id | engine-name
--
-- * 'deeMarker' - An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'deeMaxRecords' - The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.  Default: 100 Constraints: Minimum 20, maximum 100.
describeEndpoints ::
  DescribeEndpoints
describeEndpoints =
  DescribeEndpoints'
    { _deeFilters = Nothing,
      _deeMarker = Nothing,
      _deeMaxRecords = Nothing
    }

-- | Filters applied to the endpoints. Valid filter names: endpoint-arn | endpoint-type | endpoint-id | engine-name
deeFilters :: Lens' DescribeEndpoints [Filter]
deeFilters = lens _deeFilters (\s a -> s {_deeFilters = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
deeMarker :: Lens' DescribeEndpoints (Maybe Text)
deeMarker = lens _deeMarker (\s a -> s {_deeMarker = a})

-- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.  Default: 100 Constraints: Minimum 20, maximum 100.
deeMaxRecords :: Lens' DescribeEndpoints (Maybe Int)
deeMaxRecords = lens _deeMaxRecords (\s a -> s {_deeMaxRecords = a})

instance AWSPager DescribeEndpoints where
  page rq rs
    | stop (rs ^. derersMarker) = Nothing
    | stop (rs ^. derersEndpoints) = Nothing
    | otherwise =
      Just $ rq & deeMarker .~ rs ^. derersMarker

instance AWSRequest DescribeEndpoints where
  type Rs DescribeEndpoints = DescribeEndpointsResponse
  request = postJSON dms
  response =
    receiveJSON
      ( \s h x ->
          DescribeEndpointsResponse'
            <$> (x .?> "Endpoints" .!@ mempty)
            <*> (x .?> "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeEndpoints

instance NFData DescribeEndpoints

instance ToHeaders DescribeEndpoints where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonDMSv20160101.DescribeEndpoints" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeEndpoints where
  toJSON DescribeEndpoints' {..} =
    object
      ( catMaybes
          [ ("Filters" .=) <$> _deeFilters,
            ("Marker" .=) <$> _deeMarker,
            ("MaxRecords" .=) <$> _deeMaxRecords
          ]
      )

instance ToPath DescribeEndpoints where
  toPath = const "/"

instance ToQuery DescribeEndpoints where
  toQuery = const mempty

-- |
--
--
--
-- /See:/ 'describeEndpointsResponse' smart constructor.
data DescribeEndpointsResponse = DescribeEndpointsResponse'
  { _derersEndpoints ::
      !(Maybe [Endpoint]),
    _derersMarker ::
      !(Maybe Text),
    _derersResponseStatus ::
      !Int
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeEndpointsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'derersEndpoints' - Endpoint description.
--
-- * 'derersMarker' - An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'derersResponseStatus' - -- | The response status code.
describeEndpointsResponse ::
  -- | 'derersResponseStatus'
  Int ->
  DescribeEndpointsResponse
describeEndpointsResponse pResponseStatus_ =
  DescribeEndpointsResponse'
    { _derersEndpoints =
        Nothing,
      _derersMarker = Nothing,
      _derersResponseStatus = pResponseStatus_
    }

-- | Endpoint description.
derersEndpoints :: Lens' DescribeEndpointsResponse [Endpoint]
derersEndpoints = lens _derersEndpoints (\s a -> s {_derersEndpoints = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
derersMarker :: Lens' DescribeEndpointsResponse (Maybe Text)
derersMarker = lens _derersMarker (\s a -> s {_derersMarker = a})

-- | -- | The response status code.
derersResponseStatus :: Lens' DescribeEndpointsResponse Int
derersResponseStatus = lens _derersResponseStatus (\s a -> s {_derersResponseStatus = a})

instance NFData DescribeEndpointsResponse
