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
-- Module      : Network.AWS.RDS.DescribeDBProxies
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about DB proxies.
--
--
--
-- This operation returns paginated results.
module Network.AWS.RDS.DescribeDBProxies
  ( -- * Creating a Request
    describeDBProxies,
    DescribeDBProxies,

    -- * Request Lenses
    ddpFilters,
    ddpDBProxyName,
    ddpMarker,
    ddpMaxRecords,

    -- * Destructuring the Response
    describeDBProxiesResponse,
    DescribeDBProxiesResponse,

    -- * Response Lenses
    ddbprrsDBProxies,
    ddbprrsMarker,
    ddbprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.RDS.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeDBProxies' smart constructor.
data DescribeDBProxies = DescribeDBProxies'
  { _ddpFilters ::
      !(Maybe [Filter]),
    _ddpDBProxyName :: !(Maybe Text),
    _ddpMarker :: !(Maybe Text),
    _ddpMaxRecords :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeDBProxies' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddpFilters' - This parameter is not currently supported.
--
-- * 'ddpDBProxyName' - The name of the DB proxy.
--
-- * 'ddpMarker' - An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'ddpMaxRecords' - The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.  Default: 100 Constraints: Minimum 20, maximum 100.
describeDBProxies ::
  DescribeDBProxies
describeDBProxies =
  DescribeDBProxies'
    { _ddpFilters = Nothing,
      _ddpDBProxyName = Nothing,
      _ddpMarker = Nothing,
      _ddpMaxRecords = Nothing
    }

-- | This parameter is not currently supported.
ddpFilters :: Lens' DescribeDBProxies [Filter]
ddpFilters = lens _ddpFilters (\s a -> s {_ddpFilters = a}) . _Default . _Coerce

-- | The name of the DB proxy.
ddpDBProxyName :: Lens' DescribeDBProxies (Maybe Text)
ddpDBProxyName = lens _ddpDBProxyName (\s a -> s {_ddpDBProxyName = a})

-- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
ddpMarker :: Lens' DescribeDBProxies (Maybe Text)
ddpMarker = lens _ddpMarker (\s a -> s {_ddpMarker = a})

-- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.  Default: 100 Constraints: Minimum 20, maximum 100.
ddpMaxRecords :: Lens' DescribeDBProxies (Maybe Natural)
ddpMaxRecords = lens _ddpMaxRecords (\s a -> s {_ddpMaxRecords = a}) . mapping _Nat

instance AWSPager DescribeDBProxies where
  page rq rs
    | stop (rs ^. ddbprrsMarker) = Nothing
    | stop (rs ^. ddbprrsDBProxies) = Nothing
    | otherwise =
      Just $ rq & ddpMarker .~ rs ^. ddbprrsMarker

instance AWSRequest DescribeDBProxies where
  type Rs DescribeDBProxies = DescribeDBProxiesResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "DescribeDBProxiesResult"
      ( \s h x ->
          DescribeDBProxiesResponse'
            <$> ( x .@? "DBProxies" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeDBProxies

instance NFData DescribeDBProxies

instance ToHeaders DescribeDBProxies where
  toHeaders = const mempty

instance ToPath DescribeDBProxies where
  toPath = const "/"

instance ToQuery DescribeDBProxies where
  toQuery DescribeDBProxies' {..} =
    mconcat
      [ "Action" =: ("DescribeDBProxies" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "Filters"
          =: toQuery (toQueryList "Filter" <$> _ddpFilters),
        "DBProxyName" =: _ddpDBProxyName,
        "Marker" =: _ddpMarker,
        "MaxRecords" =: _ddpMaxRecords
      ]

-- | /See:/ 'describeDBProxiesResponse' smart constructor.
data DescribeDBProxiesResponse = DescribeDBProxiesResponse'
  { _ddbprrsDBProxies ::
      !(Maybe [DBProxy]),
    _ddbprrsMarker ::
      !(Maybe Text),
    _ddbprrsResponseStatus ::
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

-- | Creates a value of 'DescribeDBProxiesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddbprrsDBProxies' - A return value representing an arbitrary number of @DBProxy@ data structures.
--
-- * 'ddbprrsMarker' - An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'ddbprrsResponseStatus' - -- | The response status code.
describeDBProxiesResponse ::
  -- | 'ddbprrsResponseStatus'
  Int ->
  DescribeDBProxiesResponse
describeDBProxiesResponse pResponseStatus_ =
  DescribeDBProxiesResponse'
    { _ddbprrsDBProxies =
        Nothing,
      _ddbprrsMarker = Nothing,
      _ddbprrsResponseStatus = pResponseStatus_
    }

-- | A return value representing an arbitrary number of @DBProxy@ data structures.
ddbprrsDBProxies :: Lens' DescribeDBProxiesResponse [DBProxy]
ddbprrsDBProxies = lens _ddbprrsDBProxies (\s a -> s {_ddbprrsDBProxies = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
ddbprrsMarker :: Lens' DescribeDBProxiesResponse (Maybe Text)
ddbprrsMarker = lens _ddbprrsMarker (\s a -> s {_ddbprrsMarker = a})

-- | -- | The response status code.
ddbprrsResponseStatus :: Lens' DescribeDBProxiesResponse Int
ddbprrsResponseStatus = lens _ddbprrsResponseStatus (\s a -> s {_ddbprrsResponseStatus = a})

instance NFData DescribeDBProxiesResponse
