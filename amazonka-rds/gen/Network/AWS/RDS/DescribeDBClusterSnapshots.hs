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
-- Module      : Network.AWS.RDS.DescribeDBClusterSnapshots
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about DB cluster snapshots. This API action supports pagination.
--
--
-- For more information on Amazon Aurora, see <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html What Is Amazon Aurora?> in the /Amazon Aurora User Guide./
--
--
-- This operation returns paginated results.
module Network.AWS.RDS.DescribeDBClusterSnapshots
  ( -- * Creating a Request
    describeDBClusterSnapshots,
    DescribeDBClusterSnapshots,

    -- * Request Lenses
    ddcsIncludeShared,
    ddcsDBClusterIdentifier,
    ddcsSnapshotType,
    ddcsFilters,
    ddcsDBClusterSnapshotIdentifier,
    ddcsIncludePublic,
    ddcsMarker,
    ddcsMaxRecords,

    -- * Destructuring the Response
    describeDBClusterSnapshotsResponse,
    DescribeDBClusterSnapshotsResponse,

    -- * Response Lenses
    ddcsrrsDBClusterSnapshots,
    ddcsrrsMarker,
    ddcsrrsResponseStatus,
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
-- /See:/ 'describeDBClusterSnapshots' smart constructor.
data DescribeDBClusterSnapshots = DescribeDBClusterSnapshots'
  { _ddcsIncludeShared ::
      !(Maybe Bool),
    _ddcsDBClusterIdentifier ::
      !(Maybe Text),
    _ddcsSnapshotType ::
      !(Maybe Text),
    _ddcsFilters ::
      !(Maybe [Filter]),
    _ddcsDBClusterSnapshotIdentifier ::
      !(Maybe Text),
    _ddcsIncludePublic ::
      !(Maybe Bool),
    _ddcsMarker ::
      !(Maybe Text),
    _ddcsMaxRecords ::
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

-- | Creates a value of 'DescribeDBClusterSnapshots' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddcsIncludeShared' - A value that indicates whether to include shared manual DB cluster snapshots from other AWS accounts that this AWS account has been given permission to copy or restore. By default, these snapshots are not included. You can give an AWS account permission to restore a manual DB cluster snapshot from another AWS account by the @ModifyDBClusterSnapshotAttribute@ API action.
--
-- * 'ddcsDBClusterIdentifier' - The ID of the DB cluster to retrieve the list of DB cluster snapshots for. This parameter can't be used in conjunction with the @DBClusterSnapshotIdentifier@ parameter. This parameter isn't case-sensitive.  Constraints:     * If supplied, must match the identifier of an existing DBCluster.
--
-- * 'ddcsSnapshotType' - The type of DB cluster snapshots to be returned. You can specify one of the following values:     * @automated@ - Return all DB cluster snapshots that have been automatically taken by Amazon RDS for my AWS account.     * @manual@ - Return all DB cluster snapshots that have been taken by my AWS account.     * @shared@ - Return all manual DB cluster snapshots that have been shared to my AWS account.     * @public@ - Return all DB cluster snapshots that have been marked as public. If you don't specify a @SnapshotType@ value, then both automated and manual DB cluster snapshots are returned. You can include shared DB cluster snapshots with these results by enabling the @IncludeShared@ parameter. You can include public DB cluster snapshots with these results by enabling the @IncludePublic@ parameter. The @IncludeShared@ and @IncludePublic@ parameters don't apply for @SnapshotType@ values of @manual@ or @automated@ . The @IncludePublic@ parameter doesn't apply when @SnapshotType@ is set to @shared@ . The @IncludeShared@ parameter doesn't apply when @SnapshotType@ is set to @public@ .
--
-- * 'ddcsFilters' - A filter that specifies one or more DB cluster snapshots to describe. Supported filters:     * @db-cluster-id@ - Accepts DB cluster identifiers and DB cluster Amazon Resource Names (ARNs).     * @db-cluster-snapshot-id@ - Accepts DB cluster snapshot identifiers.     * @snapshot-type@ - Accepts types of DB cluster snapshots.     * @engine@ - Accepts names of database engines.
--
-- * 'ddcsDBClusterSnapshotIdentifier' - A specific DB cluster snapshot identifier to describe. This parameter can't be used in conjunction with the @DBClusterIdentifier@ parameter. This value is stored as a lowercase string.  Constraints:     * If supplied, must match the identifier of an existing DBClusterSnapshot.     * If this identifier is for an automated snapshot, the @SnapshotType@ parameter must also be specified.
--
-- * 'ddcsIncludePublic' - A value that indicates whether to include manual DB cluster snapshots that are public and can be copied or restored by any AWS account. By default, the public snapshots are not included. You can share a manual DB cluster snapshot as public by using the 'ModifyDBClusterSnapshotAttribute' API action.
--
-- * 'ddcsMarker' - An optional pagination token provided by a previous @DescribeDBClusterSnapshots@ request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'ddcsMaxRecords' - The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so you can retrieve the remaining results.  Default: 100 Constraints: Minimum 20, maximum 100.
describeDBClusterSnapshots ::
  DescribeDBClusterSnapshots
describeDBClusterSnapshots =
  DescribeDBClusterSnapshots'
    { _ddcsIncludeShared =
        Nothing,
      _ddcsDBClusterIdentifier = Nothing,
      _ddcsSnapshotType = Nothing,
      _ddcsFilters = Nothing,
      _ddcsDBClusterSnapshotIdentifier = Nothing,
      _ddcsIncludePublic = Nothing,
      _ddcsMarker = Nothing,
      _ddcsMaxRecords = Nothing
    }

-- | A value that indicates whether to include shared manual DB cluster snapshots from other AWS accounts that this AWS account has been given permission to copy or restore. By default, these snapshots are not included. You can give an AWS account permission to restore a manual DB cluster snapshot from another AWS account by the @ModifyDBClusterSnapshotAttribute@ API action.
ddcsIncludeShared :: Lens' DescribeDBClusterSnapshots (Maybe Bool)
ddcsIncludeShared = lens _ddcsIncludeShared (\s a -> s {_ddcsIncludeShared = a})

-- | The ID of the DB cluster to retrieve the list of DB cluster snapshots for. This parameter can't be used in conjunction with the @DBClusterSnapshotIdentifier@ parameter. This parameter isn't case-sensitive.  Constraints:     * If supplied, must match the identifier of an existing DBCluster.
ddcsDBClusterIdentifier :: Lens' DescribeDBClusterSnapshots (Maybe Text)
ddcsDBClusterIdentifier = lens _ddcsDBClusterIdentifier (\s a -> s {_ddcsDBClusterIdentifier = a})

-- | The type of DB cluster snapshots to be returned. You can specify one of the following values:     * @automated@ - Return all DB cluster snapshots that have been automatically taken by Amazon RDS for my AWS account.     * @manual@ - Return all DB cluster snapshots that have been taken by my AWS account.     * @shared@ - Return all manual DB cluster snapshots that have been shared to my AWS account.     * @public@ - Return all DB cluster snapshots that have been marked as public. If you don't specify a @SnapshotType@ value, then both automated and manual DB cluster snapshots are returned. You can include shared DB cluster snapshots with these results by enabling the @IncludeShared@ parameter. You can include public DB cluster snapshots with these results by enabling the @IncludePublic@ parameter. The @IncludeShared@ and @IncludePublic@ parameters don't apply for @SnapshotType@ values of @manual@ or @automated@ . The @IncludePublic@ parameter doesn't apply when @SnapshotType@ is set to @shared@ . The @IncludeShared@ parameter doesn't apply when @SnapshotType@ is set to @public@ .
ddcsSnapshotType :: Lens' DescribeDBClusterSnapshots (Maybe Text)
ddcsSnapshotType = lens _ddcsSnapshotType (\s a -> s {_ddcsSnapshotType = a})

-- | A filter that specifies one or more DB cluster snapshots to describe. Supported filters:     * @db-cluster-id@ - Accepts DB cluster identifiers and DB cluster Amazon Resource Names (ARNs).     * @db-cluster-snapshot-id@ - Accepts DB cluster snapshot identifiers.     * @snapshot-type@ - Accepts types of DB cluster snapshots.     * @engine@ - Accepts names of database engines.
ddcsFilters :: Lens' DescribeDBClusterSnapshots [Filter]
ddcsFilters = lens _ddcsFilters (\s a -> s {_ddcsFilters = a}) . _Default . _Coerce

-- | A specific DB cluster snapshot identifier to describe. This parameter can't be used in conjunction with the @DBClusterIdentifier@ parameter. This value is stored as a lowercase string.  Constraints:     * If supplied, must match the identifier of an existing DBClusterSnapshot.     * If this identifier is for an automated snapshot, the @SnapshotType@ parameter must also be specified.
ddcsDBClusterSnapshotIdentifier :: Lens' DescribeDBClusterSnapshots (Maybe Text)
ddcsDBClusterSnapshotIdentifier = lens _ddcsDBClusterSnapshotIdentifier (\s a -> s {_ddcsDBClusterSnapshotIdentifier = a})

-- | A value that indicates whether to include manual DB cluster snapshots that are public and can be copied or restored by any AWS account. By default, the public snapshots are not included. You can share a manual DB cluster snapshot as public by using the 'ModifyDBClusterSnapshotAttribute' API action.
ddcsIncludePublic :: Lens' DescribeDBClusterSnapshots (Maybe Bool)
ddcsIncludePublic = lens _ddcsIncludePublic (\s a -> s {_ddcsIncludePublic = a})

-- | An optional pagination token provided by a previous @DescribeDBClusterSnapshots@ request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
ddcsMarker :: Lens' DescribeDBClusterSnapshots (Maybe Text)
ddcsMarker = lens _ddcsMarker (\s a -> s {_ddcsMarker = a})

-- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so you can retrieve the remaining results.  Default: 100 Constraints: Minimum 20, maximum 100.
ddcsMaxRecords :: Lens' DescribeDBClusterSnapshots (Maybe Int)
ddcsMaxRecords = lens _ddcsMaxRecords (\s a -> s {_ddcsMaxRecords = a})

instance AWSPager DescribeDBClusterSnapshots where
  page rq rs
    | stop (rs ^. ddcsrrsMarker) = Nothing
    | stop (rs ^. ddcsrrsDBClusterSnapshots) = Nothing
    | otherwise =
      Just $ rq & ddcsMarker .~ rs ^. ddcsrrsMarker

instance AWSRequest DescribeDBClusterSnapshots where
  type
    Rs DescribeDBClusterSnapshots =
      DescribeDBClusterSnapshotsResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "DescribeDBClusterSnapshotsResult"
      ( \s h x ->
          DescribeDBClusterSnapshotsResponse'
            <$> ( x .@? "DBClusterSnapshots" .!@ mempty
                    >>= may (parseXMLList "DBClusterSnapshot")
                )
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeDBClusterSnapshots

instance NFData DescribeDBClusterSnapshots

instance ToHeaders DescribeDBClusterSnapshots where
  toHeaders = const mempty

instance ToPath DescribeDBClusterSnapshots where
  toPath = const "/"

instance ToQuery DescribeDBClusterSnapshots where
  toQuery DescribeDBClusterSnapshots' {..} =
    mconcat
      [ "Action"
          =: ("DescribeDBClusterSnapshots" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "IncludeShared" =: _ddcsIncludeShared,
        "DBClusterIdentifier" =: _ddcsDBClusterIdentifier,
        "SnapshotType" =: _ddcsSnapshotType,
        "Filters"
          =: toQuery (toQueryList "Filter" <$> _ddcsFilters),
        "DBClusterSnapshotIdentifier"
          =: _ddcsDBClusterSnapshotIdentifier,
        "IncludePublic" =: _ddcsIncludePublic,
        "Marker" =: _ddcsMarker,
        "MaxRecords" =: _ddcsMaxRecords
      ]

-- | Provides a list of DB cluster snapshots for the user as the result of a call to the @DescribeDBClusterSnapshots@ action.
--
--
--
-- /See:/ 'describeDBClusterSnapshotsResponse' smart constructor.
data DescribeDBClusterSnapshotsResponse = DescribeDBClusterSnapshotsResponse'
  { _ddcsrrsDBClusterSnapshots ::
      !( Maybe
           [DBClusterSnapshot]
       ),
    _ddcsrrsMarker ::
      !( Maybe
           Text
       ),
    _ddcsrrsResponseStatus ::
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

-- | Creates a value of 'DescribeDBClusterSnapshotsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddcsrrsDBClusterSnapshots' - Provides a list of DB cluster snapshots for the user.
--
-- * 'ddcsrrsMarker' - An optional pagination token provided by a previous @DescribeDBClusterSnapshots@ request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'ddcsrrsResponseStatus' - -- | The response status code.
describeDBClusterSnapshotsResponse ::
  -- | 'ddcsrrsResponseStatus'
  Int ->
  DescribeDBClusterSnapshotsResponse
describeDBClusterSnapshotsResponse pResponseStatus_ =
  DescribeDBClusterSnapshotsResponse'
    { _ddcsrrsDBClusterSnapshots =
        Nothing,
      _ddcsrrsMarker = Nothing,
      _ddcsrrsResponseStatus =
        pResponseStatus_
    }

-- | Provides a list of DB cluster snapshots for the user.
ddcsrrsDBClusterSnapshots :: Lens' DescribeDBClusterSnapshotsResponse [DBClusterSnapshot]
ddcsrrsDBClusterSnapshots = lens _ddcsrrsDBClusterSnapshots (\s a -> s {_ddcsrrsDBClusterSnapshots = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous @DescribeDBClusterSnapshots@ request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
ddcsrrsMarker :: Lens' DescribeDBClusterSnapshotsResponse (Maybe Text)
ddcsrrsMarker = lens _ddcsrrsMarker (\s a -> s {_ddcsrrsMarker = a})

-- | -- | The response status code.
ddcsrrsResponseStatus :: Lens' DescribeDBClusterSnapshotsResponse Int
ddcsrrsResponseStatus = lens _ddcsrrsResponseStatus (\s a -> s {_ddcsrrsResponseStatus = a})

instance NFData DescribeDBClusterSnapshotsResponse
