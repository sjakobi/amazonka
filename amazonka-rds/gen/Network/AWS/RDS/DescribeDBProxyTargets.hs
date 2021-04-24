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
-- Module      : Network.AWS.RDS.DescribeDBProxyTargets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about @DBProxyTarget@ objects. This API supports pagination.
--
--
--
-- This operation returns paginated results.
module Network.AWS.RDS.DescribeDBProxyTargets
  ( -- * Creating a Request
    describeDBProxyTargets,
    DescribeDBProxyTargets,

    -- * Request Lenses
    ddbptTargetGroupName,
    ddbptFilters,
    ddbptMarker,
    ddbptMaxRecords,
    ddbptDBProxyName,

    -- * Destructuring the Response
    describeDBProxyTargetsResponse,
    DescribeDBProxyTargetsResponse,

    -- * Response Lenses
    ddptrrsTargets,
    ddptrrsMarker,
    ddptrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.RDS.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeDBProxyTargets' smart constructor.
data DescribeDBProxyTargets = DescribeDBProxyTargets'
  { _ddbptTargetGroupName ::
      !(Maybe Text),
    _ddbptFilters ::
      !(Maybe [Filter]),
    _ddbptMarker ::
      !(Maybe Text),
    _ddbptMaxRecords ::
      !(Maybe Nat),
    _ddbptDBProxyName ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeDBProxyTargets' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddbptTargetGroupName' - The identifier of the @DBProxyTargetGroup@ to describe.
--
-- * 'ddbptFilters' - This parameter is not currently supported.
--
-- * 'ddbptMarker' - An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'ddbptMaxRecords' - The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.  Default: 100 Constraints: Minimum 20, maximum 100.
--
-- * 'ddbptDBProxyName' - The identifier of the @DBProxyTarget@ to describe.
describeDBProxyTargets ::
  -- | 'ddbptDBProxyName'
  Text ->
  DescribeDBProxyTargets
describeDBProxyTargets pDBProxyName_ =
  DescribeDBProxyTargets'
    { _ddbptTargetGroupName =
        Nothing,
      _ddbptFilters = Nothing,
      _ddbptMarker = Nothing,
      _ddbptMaxRecords = Nothing,
      _ddbptDBProxyName = pDBProxyName_
    }

-- | The identifier of the @DBProxyTargetGroup@ to describe.
ddbptTargetGroupName :: Lens' DescribeDBProxyTargets (Maybe Text)
ddbptTargetGroupName = lens _ddbptTargetGroupName (\s a -> s {_ddbptTargetGroupName = a})

-- | This parameter is not currently supported.
ddbptFilters :: Lens' DescribeDBProxyTargets [Filter]
ddbptFilters = lens _ddbptFilters (\s a -> s {_ddbptFilters = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
ddbptMarker :: Lens' DescribeDBProxyTargets (Maybe Text)
ddbptMarker = lens _ddbptMarker (\s a -> s {_ddbptMarker = a})

-- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.  Default: 100 Constraints: Minimum 20, maximum 100.
ddbptMaxRecords :: Lens' DescribeDBProxyTargets (Maybe Natural)
ddbptMaxRecords = lens _ddbptMaxRecords (\s a -> s {_ddbptMaxRecords = a}) . mapping _Nat

-- | The identifier of the @DBProxyTarget@ to describe.
ddbptDBProxyName :: Lens' DescribeDBProxyTargets Text
ddbptDBProxyName = lens _ddbptDBProxyName (\s a -> s {_ddbptDBProxyName = a})

instance AWSPager DescribeDBProxyTargets where
  page rq rs
    | stop (rs ^. ddptrrsMarker) = Nothing
    | stop (rs ^. ddptrrsTargets) = Nothing
    | otherwise =
      Just $ rq & ddbptMarker .~ rs ^. ddptrrsMarker

instance AWSRequest DescribeDBProxyTargets where
  type
    Rs DescribeDBProxyTargets =
      DescribeDBProxyTargetsResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "DescribeDBProxyTargetsResult"
      ( \s h x ->
          DescribeDBProxyTargetsResponse'
            <$> ( x .@? "Targets" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeDBProxyTargets

instance NFData DescribeDBProxyTargets

instance ToHeaders DescribeDBProxyTargets where
  toHeaders = const mempty

instance ToPath DescribeDBProxyTargets where
  toPath = const "/"

instance ToQuery DescribeDBProxyTargets where
  toQuery DescribeDBProxyTargets' {..} =
    mconcat
      [ "Action"
          =: ("DescribeDBProxyTargets" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "TargetGroupName" =: _ddbptTargetGroupName,
        "Filters"
          =: toQuery (toQueryList "Filter" <$> _ddbptFilters),
        "Marker" =: _ddbptMarker,
        "MaxRecords" =: _ddbptMaxRecords,
        "DBProxyName" =: _ddbptDBProxyName
      ]

-- | /See:/ 'describeDBProxyTargetsResponse' smart constructor.
data DescribeDBProxyTargetsResponse = DescribeDBProxyTargetsResponse'
  { _ddptrrsTargets ::
      !( Maybe
           [DBProxyTarget]
       ),
    _ddptrrsMarker ::
      !( Maybe
           Text
       ),
    _ddptrrsResponseStatus ::
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

-- | Creates a value of 'DescribeDBProxyTargetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddptrrsTargets' - An arbitrary number of @DBProxyTarget@ objects, containing details of the corresponding targets.
--
-- * 'ddptrrsMarker' - An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'ddptrrsResponseStatus' - -- | The response status code.
describeDBProxyTargetsResponse ::
  -- | 'ddptrrsResponseStatus'
  Int ->
  DescribeDBProxyTargetsResponse
describeDBProxyTargetsResponse pResponseStatus_ =
  DescribeDBProxyTargetsResponse'
    { _ddptrrsTargets =
        Nothing,
      _ddptrrsMarker = Nothing,
      _ddptrrsResponseStatus = pResponseStatus_
    }

-- | An arbitrary number of @DBProxyTarget@ objects, containing details of the corresponding targets.
ddptrrsTargets :: Lens' DescribeDBProxyTargetsResponse [DBProxyTarget]
ddptrrsTargets = lens _ddptrrsTargets (\s a -> s {_ddptrrsTargets = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
ddptrrsMarker :: Lens' DescribeDBProxyTargetsResponse (Maybe Text)
ddptrrsMarker = lens _ddptrrsMarker (\s a -> s {_ddptrrsMarker = a})

-- | -- | The response status code.
ddptrrsResponseStatus :: Lens' DescribeDBProxyTargetsResponse Int
ddptrrsResponseStatus = lens _ddptrrsResponseStatus (\s a -> s {_ddptrrsResponseStatus = a})

instance NFData DescribeDBProxyTargetsResponse
