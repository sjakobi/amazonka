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
-- Module      : Network.AWS.DMS.DescribePendingMaintenanceActions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- For internal use only
module Network.AWS.DMS.DescribePendingMaintenanceActions
  ( -- * Creating a Request
    describePendingMaintenanceActions,
    DescribePendingMaintenanceActions,

    -- * Request Lenses
    dpmaFilters,
    dpmaReplicationInstanceARN,
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

import Network.AWS.DMS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- |
--
--
--
-- /See:/ 'describePendingMaintenanceActions' smart constructor.
data DescribePendingMaintenanceActions = DescribePendingMaintenanceActions'
  { _dpmaFilters ::
      !( Maybe
           [Filter]
       ),
    _dpmaReplicationInstanceARN ::
      !( Maybe
           Text
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
-- * 'dpmaFilters' -
--
-- * 'dpmaReplicationInstanceARN' - The Amazon Resource Name (ARN) of the replication instance.
--
-- * 'dpmaMarker' - An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'dpmaMaxRecords' - The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.  Default: 100 Constraints: Minimum 20, maximum 100.
describePendingMaintenanceActions ::
  DescribePendingMaintenanceActions
describePendingMaintenanceActions =
  DescribePendingMaintenanceActions'
    { _dpmaFilters =
        Nothing,
      _dpmaReplicationInstanceARN = Nothing,
      _dpmaMarker = Nothing,
      _dpmaMaxRecords = Nothing
    }

-- |
dpmaFilters :: Lens' DescribePendingMaintenanceActions [Filter]
dpmaFilters = lens _dpmaFilters (\s a -> s {_dpmaFilters = a}) . _Default . _Coerce

-- | The Amazon Resource Name (ARN) of the replication instance.
dpmaReplicationInstanceARN :: Lens' DescribePendingMaintenanceActions (Maybe Text)
dpmaReplicationInstanceARN = lens _dpmaReplicationInstanceARN (\s a -> s {_dpmaReplicationInstanceARN = a})

-- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
dpmaMarker :: Lens' DescribePendingMaintenanceActions (Maybe Text)
dpmaMarker = lens _dpmaMarker (\s a -> s {_dpmaMarker = a})

-- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.  Default: 100 Constraints: Minimum 20, maximum 100.
dpmaMaxRecords :: Lens' DescribePendingMaintenanceActions (Maybe Int)
dpmaMaxRecords = lens _dpmaMaxRecords (\s a -> s {_dpmaMaxRecords = a})

instance AWSRequest DescribePendingMaintenanceActions where
  type
    Rs DescribePendingMaintenanceActions =
      DescribePendingMaintenanceActionsResponse
  request = postJSON dms
  response =
    receiveJSON
      ( \s h x ->
          DescribePendingMaintenanceActionsResponse'
            <$> (x .?> "PendingMaintenanceActions" .!@ mempty)
            <*> (x .?> "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribePendingMaintenanceActions

instance NFData DescribePendingMaintenanceActions

instance ToHeaders DescribePendingMaintenanceActions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonDMSv20160101.DescribePendingMaintenanceActions" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribePendingMaintenanceActions where
  toJSON DescribePendingMaintenanceActions' {..} =
    object
      ( catMaybes
          [ ("Filters" .=) <$> _dpmaFilters,
            ("ReplicationInstanceArn" .=)
              <$> _dpmaReplicationInstanceARN,
            ("Marker" .=) <$> _dpmaMarker,
            ("MaxRecords" .=) <$> _dpmaMaxRecords
          ]
      )

instance ToPath DescribePendingMaintenanceActions where
  toPath = const "/"

instance ToQuery DescribePendingMaintenanceActions where
  toQuery = const mempty

-- |
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
-- * 'dpmarrsPendingMaintenanceActions' - The pending maintenance action.
--
-- * 'dpmarrsMarker' - An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
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

-- | The pending maintenance action.
dpmarrsPendingMaintenanceActions :: Lens' DescribePendingMaintenanceActionsResponse [ResourcePendingMaintenanceActions]
dpmarrsPendingMaintenanceActions = lens _dpmarrsPendingMaintenanceActions (\s a -> s {_dpmarrsPendingMaintenanceActions = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
dpmarrsMarker :: Lens' DescribePendingMaintenanceActionsResponse (Maybe Text)
dpmarrsMarker = lens _dpmarrsMarker (\s a -> s {_dpmarrsMarker = a})

-- | -- | The response status code.
dpmarrsResponseStatus :: Lens' DescribePendingMaintenanceActionsResponse Int
dpmarrsResponseStatus = lens _dpmarrsResponseStatus (\s a -> s {_dpmarrsResponseStatus = a})

instance
  NFData
    DescribePendingMaintenanceActionsResponse
