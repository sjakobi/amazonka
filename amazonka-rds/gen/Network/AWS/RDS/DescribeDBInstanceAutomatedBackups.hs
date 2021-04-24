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
-- Module      : Network.AWS.RDS.DescribeDBInstanceAutomatedBackups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Displays backups for both current and deleted instances. For example, use this operation to find details about automated backups for previously deleted instances. Current instances with retention periods greater than zero (0) are returned for both the @DescribeDBInstanceAutomatedBackups@ and @DescribeDBInstances@ operations.
--
--
-- All parameters are optional.
--
--
-- This operation returns paginated results.
module Network.AWS.RDS.DescribeDBInstanceAutomatedBackups
  ( -- * Creating a Request
    describeDBInstanceAutomatedBackups,
    DescribeDBInstanceAutomatedBackups,

    -- * Request Lenses
    ddiabDBInstanceAutomatedBackupsARN,
    ddiabDBiResourceId,
    ddiabDBInstanceIdentifier,
    ddiabFilters,
    ddiabMarker,
    ddiabMaxRecords,

    -- * Destructuring the Response
    describeDBInstanceAutomatedBackupsResponse,
    DescribeDBInstanceAutomatedBackupsResponse,

    -- * Response Lenses
    ddiabrrsDBInstanceAutomatedBackups,
    ddiabrrsMarker,
    ddiabrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.RDS.Types
import Network.AWS.Request
import Network.AWS.Response

-- | Parameter input for DescribeDBInstanceAutomatedBackups.
--
--
--
-- /See:/ 'describeDBInstanceAutomatedBackups' smart constructor.
data DescribeDBInstanceAutomatedBackups = DescribeDBInstanceAutomatedBackups'
  { _ddiabDBInstanceAutomatedBackupsARN ::
      !( Maybe
           Text
       ),
    _ddiabDBiResourceId ::
      !( Maybe
           Text
       ),
    _ddiabDBInstanceIdentifier ::
      !( Maybe
           Text
       ),
    _ddiabFilters ::
      !( Maybe
           [Filter]
       ),
    _ddiabMarker ::
      !( Maybe
           Text
       ),
    _ddiabMaxRecords ::
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

-- | Creates a value of 'DescribeDBInstanceAutomatedBackups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddiabDBInstanceAutomatedBackupsARN' - The Amazon Resource Name (ARN) of the replicated automated backups, for example, @arn:aws:rds:us-east-1:123456789012:auto-backup:ab-L2IJCEXJP7XQ7HOJ4SIEXAMPLE@ .
--
-- * 'ddiabDBiResourceId' - The resource ID of the DB instance that is the source of the automated backup. This parameter isn't case-sensitive.
--
-- * 'ddiabDBInstanceIdentifier' - (Optional) The user-supplied instance identifier. If this parameter is specified, it must match the identifier of an existing DB instance. It returns information from the specific DB instance' automated backup. This parameter isn't case-sensitive.
--
-- * 'ddiabFilters' - A filter that specifies which resources to return based on status. Supported filters are the following:     * @status@      * @active@ - automated backups for current instances     * @retained@ - automated backups for deleted instances and after backup replication is stopped     * @creating@ - automated backups that are waiting for the first automated snapshot to be available     * @db-instance-id@ - Accepts DB instance identifiers and Amazon Resource Names (ARNs). The results list includes only information about the DB instance automated backups identified by these ARNs.     * @dbi-resource-id@ - Accepts DB resource identifiers and Amazon Resource Names (ARNs). The results list includes only information about the DB instance resources identified by these ARNs. Returns all resources by default. The status for each resource is specified in the response.
--
-- * 'ddiabMarker' - The pagination token provided in the previous request. If this parameter is specified the response includes only records beyond the marker, up to @MaxRecords@ .
--
-- * 'ddiabMaxRecords' - The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that you can retrieve the remaining results.
describeDBInstanceAutomatedBackups ::
  DescribeDBInstanceAutomatedBackups
describeDBInstanceAutomatedBackups =
  DescribeDBInstanceAutomatedBackups'
    { _ddiabDBInstanceAutomatedBackupsARN =
        Nothing,
      _ddiabDBiResourceId = Nothing,
      _ddiabDBInstanceIdentifier = Nothing,
      _ddiabFilters = Nothing,
      _ddiabMarker = Nothing,
      _ddiabMaxRecords = Nothing
    }

-- | The Amazon Resource Name (ARN) of the replicated automated backups, for example, @arn:aws:rds:us-east-1:123456789012:auto-backup:ab-L2IJCEXJP7XQ7HOJ4SIEXAMPLE@ .
ddiabDBInstanceAutomatedBackupsARN :: Lens' DescribeDBInstanceAutomatedBackups (Maybe Text)
ddiabDBInstanceAutomatedBackupsARN = lens _ddiabDBInstanceAutomatedBackupsARN (\s a -> s {_ddiabDBInstanceAutomatedBackupsARN = a})

-- | The resource ID of the DB instance that is the source of the automated backup. This parameter isn't case-sensitive.
ddiabDBiResourceId :: Lens' DescribeDBInstanceAutomatedBackups (Maybe Text)
ddiabDBiResourceId = lens _ddiabDBiResourceId (\s a -> s {_ddiabDBiResourceId = a})

-- | (Optional) The user-supplied instance identifier. If this parameter is specified, it must match the identifier of an existing DB instance. It returns information from the specific DB instance' automated backup. This parameter isn't case-sensitive.
ddiabDBInstanceIdentifier :: Lens' DescribeDBInstanceAutomatedBackups (Maybe Text)
ddiabDBInstanceIdentifier = lens _ddiabDBInstanceIdentifier (\s a -> s {_ddiabDBInstanceIdentifier = a})

-- | A filter that specifies which resources to return based on status. Supported filters are the following:     * @status@      * @active@ - automated backups for current instances     * @retained@ - automated backups for deleted instances and after backup replication is stopped     * @creating@ - automated backups that are waiting for the first automated snapshot to be available     * @db-instance-id@ - Accepts DB instance identifiers and Amazon Resource Names (ARNs). The results list includes only information about the DB instance automated backups identified by these ARNs.     * @dbi-resource-id@ - Accepts DB resource identifiers and Amazon Resource Names (ARNs). The results list includes only information about the DB instance resources identified by these ARNs. Returns all resources by default. The status for each resource is specified in the response.
ddiabFilters :: Lens' DescribeDBInstanceAutomatedBackups [Filter]
ddiabFilters = lens _ddiabFilters (\s a -> s {_ddiabFilters = a}) . _Default . _Coerce

-- | The pagination token provided in the previous request. If this parameter is specified the response includes only records beyond the marker, up to @MaxRecords@ .
ddiabMarker :: Lens' DescribeDBInstanceAutomatedBackups (Maybe Text)
ddiabMarker = lens _ddiabMarker (\s a -> s {_ddiabMarker = a})

-- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that you can retrieve the remaining results.
ddiabMaxRecords :: Lens' DescribeDBInstanceAutomatedBackups (Maybe Int)
ddiabMaxRecords = lens _ddiabMaxRecords (\s a -> s {_ddiabMaxRecords = a})

instance AWSPager DescribeDBInstanceAutomatedBackups where
  page rq rs
    | stop (rs ^. ddiabrrsMarker) = Nothing
    | stop (rs ^. ddiabrrsDBInstanceAutomatedBackups) =
      Nothing
    | otherwise =
      Just $ rq & ddiabMarker .~ rs ^. ddiabrrsMarker

instance
  AWSRequest
    DescribeDBInstanceAutomatedBackups
  where
  type
    Rs DescribeDBInstanceAutomatedBackups =
      DescribeDBInstanceAutomatedBackupsResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "DescribeDBInstanceAutomatedBackupsResult"
      ( \s h x ->
          DescribeDBInstanceAutomatedBackupsResponse'
            <$> ( x .@? "DBInstanceAutomatedBackups" .!@ mempty
                    >>= may (parseXMLList "DBInstanceAutomatedBackup")
                )
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeDBInstanceAutomatedBackups

instance NFData DescribeDBInstanceAutomatedBackups

instance ToHeaders DescribeDBInstanceAutomatedBackups where
  toHeaders = const mempty

instance ToPath DescribeDBInstanceAutomatedBackups where
  toPath = const "/"

instance ToQuery DescribeDBInstanceAutomatedBackups where
  toQuery DescribeDBInstanceAutomatedBackups' {..} =
    mconcat
      [ "Action"
          =: ("DescribeDBInstanceAutomatedBackups" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "DBInstanceAutomatedBackupsArn"
          =: _ddiabDBInstanceAutomatedBackupsARN,
        "DbiResourceId" =: _ddiabDBiResourceId,
        "DBInstanceIdentifier" =: _ddiabDBInstanceIdentifier,
        "Filters"
          =: toQuery (toQueryList "Filter" <$> _ddiabFilters),
        "Marker" =: _ddiabMarker,
        "MaxRecords" =: _ddiabMaxRecords
      ]

-- | Contains the result of a successful invocation of the @DescribeDBInstanceAutomatedBackups@ action.
--
--
--
-- /See:/ 'describeDBInstanceAutomatedBackupsResponse' smart constructor.
data DescribeDBInstanceAutomatedBackupsResponse = DescribeDBInstanceAutomatedBackupsResponse'
  { _ddiabrrsDBInstanceAutomatedBackups ::
      !( Maybe
           [DBInstanceAutomatedBackup]
       ),
    _ddiabrrsMarker ::
      !( Maybe
           Text
       ),
    _ddiabrrsResponseStatus ::
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

-- | Creates a value of 'DescribeDBInstanceAutomatedBackupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddiabrrsDBInstanceAutomatedBackups' - A list of @DBInstanceAutomatedBackup@ instances.
--
-- * 'ddiabrrsMarker' - An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'ddiabrrsResponseStatus' - -- | The response status code.
describeDBInstanceAutomatedBackupsResponse ::
  -- | 'ddiabrrsResponseStatus'
  Int ->
  DescribeDBInstanceAutomatedBackupsResponse
describeDBInstanceAutomatedBackupsResponse
  pResponseStatus_ =
    DescribeDBInstanceAutomatedBackupsResponse'
      { _ddiabrrsDBInstanceAutomatedBackups =
          Nothing,
        _ddiabrrsMarker = Nothing,
        _ddiabrrsResponseStatus =
          pResponseStatus_
      }

-- | A list of @DBInstanceAutomatedBackup@ instances.
ddiabrrsDBInstanceAutomatedBackups :: Lens' DescribeDBInstanceAutomatedBackupsResponse [DBInstanceAutomatedBackup]
ddiabrrsDBInstanceAutomatedBackups = lens _ddiabrrsDBInstanceAutomatedBackups (\s a -> s {_ddiabrrsDBInstanceAutomatedBackups = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
ddiabrrsMarker :: Lens' DescribeDBInstanceAutomatedBackupsResponse (Maybe Text)
ddiabrrsMarker = lens _ddiabrrsMarker (\s a -> s {_ddiabrrsMarker = a})

-- | -- | The response status code.
ddiabrrsResponseStatus :: Lens' DescribeDBInstanceAutomatedBackupsResponse Int
ddiabrrsResponseStatus = lens _ddiabrrsResponseStatus (\s a -> s {_ddiabrrsResponseStatus = a})

instance
  NFData
    DescribeDBInstanceAutomatedBackupsResponse
