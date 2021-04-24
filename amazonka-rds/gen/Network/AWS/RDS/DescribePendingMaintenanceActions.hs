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
-- Module      : Network.AWS.RDS.DescribePendingMaintenanceActions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of resources (for example, DB instances) that have at least one pending maintenance action.
--
--
--
-- This operation returns paginated results.
module Network.AWS.RDS.DescribePendingMaintenanceActions
  ( -- * Creating a Request
    describePendingMaintenanceActions,
    DescribePendingMaintenanceActions,

    -- * Request Lenses
    dpmaResourceIdentifier,
    dpmaFilters,
    dpmaMarker,
    dpmaMaxRecords,

    -- * Destructuring the Response
    describePendingMaintenanceActionsResponse,
    DescribePendingMaintenanceActionsResponse,

    -- * Response Lenses
    dpmarrsPendingMaintenanceActions,
    dpmarrsMarker,
    dpmarrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.RDS.Types
import Network.AWS.Request
import Network.AWS.Response

-- |
--
--
--
-- /See:/ 'describePendingMaintenanceActions' smart constructor.
data DescribePendingMaintenanceActions = DescribePendingMaintenanceActions'
  { _dpmaResourceIdentifier ::
      !( Maybe
           Text
       ),
    _dpmaFilters ::
      !( Maybe
           [Filter]
       ),
    _dpmaMarker ::
      !( Maybe
           Text
       ),
    _dpmaMaxRecords ::
      !( Maybe
           Int
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribePendingMaintenanceActions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpmaResourceIdentifier' - The ARN of a resource to return pending maintenance actions for.
--
-- * 'dpmaFilters' - A filter that specifies one or more resources to return pending maintenance actions for. Supported filters:     * @db-cluster-id@ - Accepts DB cluster identifiers and DB cluster Amazon Resource Names (ARNs). The results list will only include pending maintenance actions for the DB clusters identified by these ARNs.     * @db-instance-id@ - Accepts DB instance identifiers and DB instance ARNs. The results list will only include pending maintenance actions for the DB instances identified by these ARNs.
--
-- * 'dpmaMarker' - An optional pagination token provided by a previous @DescribePendingMaintenanceActions@ request. If this parameter is specified, the response includes only records beyond the marker, up to a number of records specified by @MaxRecords@ .
--
-- * 'dpmaMaxRecords' - The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that you can retrieve the remaining results.  Default: 100 Constraints: Minimum 20, maximum 100.
describePendingMaintenanceActions ::
  DescribePendingMaintenanceActions
describePendingMaintenanceActions =
  DescribePendingMaintenanceActions'
    { _dpmaResourceIdentifier =
        Nothing,
      _dpmaFilters = Nothing,
      _dpmaMarker = Nothing,
      _dpmaMaxRecords = Nothing
    }

-- | The ARN of a resource to return pending maintenance actions for.
dpmaResourceIdentifier :: Lens' DescribePendingMaintenanceActions (Maybe Text)
dpmaResourceIdentifier = lens _dpmaResourceIdentifier (\s a -> s {_dpmaResourceIdentifier = a})

-- | A filter that specifies one or more resources to return pending maintenance actions for. Supported filters:     * @db-cluster-id@ - Accepts DB cluster identifiers and DB cluster Amazon Resource Names (ARNs). The results list will only include pending maintenance actions for the DB clusters identified by these ARNs.     * @db-instance-id@ - Accepts DB instance identifiers and DB instance ARNs. The results list will only include pending maintenance actions for the DB instances identified by these ARNs.
dpmaFilters :: Lens' DescribePendingMaintenanceActions [Filter]
dpmaFilters = lens _dpmaFilters (\s a -> s {_dpmaFilters = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous @DescribePendingMaintenanceActions@ request. If this parameter is specified, the response includes only records beyond the marker, up to a number of records specified by @MaxRecords@ .
dpmaMarker :: Lens' DescribePendingMaintenanceActions (Maybe Text)
dpmaMarker = lens _dpmaMarker (\s a -> s {_dpmaMarker = a})

-- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that you can retrieve the remaining results.  Default: 100 Constraints: Minimum 20, maximum 100.
dpmaMaxRecords :: Lens' DescribePendingMaintenanceActions (Maybe Int)
dpmaMaxRecords = lens _dpmaMaxRecords (\s a -> s {_dpmaMaxRecords = a})

instance AWSPager DescribePendingMaintenanceActions where
  page rq rs
    | stop (rs ^. dpmarrsMarker) = Nothing
    | stop (rs ^. dpmarrsPendingMaintenanceActions) =
      Nothing
    | otherwise =
      Just $ rq & dpmaMarker .~ rs ^. dpmarrsMarker

instance AWSRequest DescribePendingMaintenanceActions where
  type
    Rs DescribePendingMaintenanceActions =
      DescribePendingMaintenanceActionsResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "DescribePendingMaintenanceActionsResult"
      ( \s h x ->
          DescribePendingMaintenanceActionsResponse'
            <$> ( x .@? "PendingMaintenanceActions" .!@ mempty
                    >>= may
                      (parseXMLList "ResourcePendingMaintenanceActions")
                )
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribePendingMaintenanceActions

instance NFData DescribePendingMaintenanceActions

instance ToHeaders DescribePendingMaintenanceActions where
  toHeaders = const mempty

instance ToPath DescribePendingMaintenanceActions where
  toPath = const "/"

instance ToQuery DescribePendingMaintenanceActions where
  toQuery DescribePendingMaintenanceActions' {..} =
    mconcat
      [ "Action"
          =: ("DescribePendingMaintenanceActions" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "ResourceIdentifier" =: _dpmaResourceIdentifier,
        "Filters"
          =: toQuery (toQueryList "Filter" <$> _dpmaFilters),
        "Marker" =: _dpmaMarker,
        "MaxRecords" =: _dpmaMaxRecords
      ]

-- | Data returned from the __DescribePendingMaintenanceActions__ action.
--
--
--
-- /See:/ 'describePendingMaintenanceActionsResponse' smart constructor.
data DescribePendingMaintenanceActionsResponse = DescribePendingMaintenanceActionsResponse'
  { _dpmarrsPendingMaintenanceActions ::
      !( Maybe
           [ResourcePendingMaintenanceActions]
       ),
    _dpmarrsMarker ::
      !( Maybe
           Text
       ),
    _dpmarrsResponseStatus ::
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

-- | Creates a value of 'DescribePendingMaintenanceActionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpmarrsPendingMaintenanceActions' - A list of the pending maintenance actions for the resource.
--
-- * 'dpmarrsMarker' - An optional pagination token provided by a previous @DescribePendingMaintenanceActions@ request. If this parameter is specified, the response includes only records beyond the marker, up to a number of records specified by @MaxRecords@ .
--
-- * 'dpmarrsResponseStatus' - -- | The response status code.
describePendingMaintenanceActionsResponse ::
  -- | 'dpmarrsResponseStatus'
  Int ->
  DescribePendingMaintenanceActionsResponse
describePendingMaintenanceActionsResponse
  pResponseStatus_ =
    DescribePendingMaintenanceActionsResponse'
      { _dpmarrsPendingMaintenanceActions =
          Nothing,
        _dpmarrsMarker = Nothing,
        _dpmarrsResponseStatus =
          pResponseStatus_
      }

-- | A list of the pending maintenance actions for the resource.
dpmarrsPendingMaintenanceActions :: Lens' DescribePendingMaintenanceActionsResponse [ResourcePendingMaintenanceActions]
dpmarrsPendingMaintenanceActions = lens _dpmarrsPendingMaintenanceActions (\s a -> s {_dpmarrsPendingMaintenanceActions = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous @DescribePendingMaintenanceActions@ request. If this parameter is specified, the response includes only records beyond the marker, up to a number of records specified by @MaxRecords@ .
dpmarrsMarker :: Lens' DescribePendingMaintenanceActionsResponse (Maybe Text)
dpmarrsMarker = lens _dpmarrsMarker (\s a -> s {_dpmarrsMarker = a})

-- | -- | The response status code.
dpmarrsResponseStatus :: Lens' DescribePendingMaintenanceActionsResponse Int
dpmarrsResponseStatus = lens _dpmarrsResponseStatus (\s a -> s {_dpmarrsResponseStatus = a})

instance
  NFData
    DescribePendingMaintenanceActionsResponse
