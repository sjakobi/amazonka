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
-- Module      : Network.AWS.RDS.DescribeDBSnapshots
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about DB snapshots. This API action supports pagination.
--
--
--
-- This operation returns paginated results.
module Network.AWS.RDS.DescribeDBSnapshots
  ( -- * Creating a Request
    describeDBSnapshots,
    DescribeDBSnapshots,

    -- * Request Lenses
    ddsDBSnapshotIdentifier,
    ddsDBiResourceId,
    ddsIncludeShared,
    ddsSnapshotType,
    ddsDBInstanceIdentifier,
    ddsFilters,
    ddsIncludePublic,
    ddsMarker,
    ddsMaxRecords,

    -- * Destructuring the Response
    describeDBSnapshotsResponse,
    DescribeDBSnapshotsResponse,

    -- * Response Lenses
    ddsrrsDBSnapshots,
    ddsrrsMarker,
    ddsrrsResponseStatus,
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
-- /See:/ 'describeDBSnapshots' smart constructor.
data DescribeDBSnapshots = DescribeDBSnapshots'
  { _ddsDBSnapshotIdentifier ::
      !(Maybe Text),
    _ddsDBiResourceId ::
      !(Maybe Text),
    _ddsIncludeShared ::
      !(Maybe Bool),
    _ddsSnapshotType ::
      !(Maybe Text),
    _ddsDBInstanceIdentifier ::
      !(Maybe Text),
    _ddsFilters ::
      !(Maybe [Filter]),
    _ddsIncludePublic ::
      !(Maybe Bool),
    _ddsMarker :: !(Maybe Text),
    _ddsMaxRecords :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeDBSnapshots' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddsDBSnapshotIdentifier' - A specific DB snapshot identifier to describe. This parameter can't be used in conjunction with @DBInstanceIdentifier@ . This value is stored as a lowercase string.  Constraints:     * If supplied, must match the identifier of an existing DBSnapshot.     * If this identifier is for an automated snapshot, the @SnapshotType@ parameter must also be specified.
--
-- * 'ddsDBiResourceId' - A specific DB resource ID to describe.
--
-- * 'ddsIncludeShared' - A value that indicates whether to include shared manual DB cluster snapshots from other AWS accounts that this AWS account has been given permission to copy or restore. By default, these snapshots are not included. You can give an AWS account permission to restore a manual DB snapshot from another AWS account by using the @ModifyDBSnapshotAttribute@ API action.
--
-- * 'ddsSnapshotType' - The type of snapshots to be returned. You can specify one of the following values:     * @automated@ - Return all DB snapshots that have been automatically taken by Amazon RDS for my AWS account.     * @manual@ - Return all DB snapshots that have been taken by my AWS account.     * @shared@ - Return all manual DB snapshots that have been shared to my AWS account.     * @public@ - Return all DB snapshots that have been marked as public.     * @awsbackup@ - Return the DB snapshots managed by the AWS Backup service. For information about AWS Backup, see the <https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html /AWS Backup Developer Guide./ >  The @awsbackup@ type does not apply to Aurora. If you don't specify a @SnapshotType@ value, then both automated and manual snapshots are returned. Shared and public DB snapshots are not included in the returned results by default. You can include shared snapshots with these results by enabling the @IncludeShared@ parameter. You can include public snapshots with these results by enabling the @IncludePublic@ parameter. The @IncludeShared@ and @IncludePublic@ parameters don't apply for @SnapshotType@ values of @manual@ or @automated@ . The @IncludePublic@ parameter doesn't apply when @SnapshotType@ is set to @shared@ . The @IncludeShared@ parameter doesn't apply when @SnapshotType@ is set to @public@ .
--
-- * 'ddsDBInstanceIdentifier' - The ID of the DB instance to retrieve the list of DB snapshots for. This parameter can't be used in conjunction with @DBSnapshotIdentifier@ . This parameter isn't case-sensitive.  Constraints:     * If supplied, must match the identifier of an existing DBInstance.
--
-- * 'ddsFilters' - A filter that specifies one or more DB snapshots to describe. Supported filters:     * @db-instance-id@ - Accepts DB instance identifiers and DB instance Amazon Resource Names (ARNs).     * @db-snapshot-id@ - Accepts DB snapshot identifiers.     * @dbi-resource-id@ - Accepts identifiers of source DB instances.     * @snapshot-type@ - Accepts types of DB snapshots.     * @engine@ - Accepts names of database engines.
--
-- * 'ddsIncludePublic' - A value that indicates whether to include manual DB cluster snapshots that are public and can be copied or restored by any AWS account. By default, the public snapshots are not included. You can share a manual DB snapshot as public by using the 'ModifyDBSnapshotAttribute' API.
--
-- * 'ddsMarker' - An optional pagination token provided by a previous @DescribeDBSnapshots@ request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'ddsMaxRecords' - The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that you can retrieve the remaining results.  Default: 100 Constraints: Minimum 20, maximum 100.
describeDBSnapshots ::
  DescribeDBSnapshots
describeDBSnapshots =
  DescribeDBSnapshots'
    { _ddsDBSnapshotIdentifier =
        Nothing,
      _ddsDBiResourceId = Nothing,
      _ddsIncludeShared = Nothing,
      _ddsSnapshotType = Nothing,
      _ddsDBInstanceIdentifier = Nothing,
      _ddsFilters = Nothing,
      _ddsIncludePublic = Nothing,
      _ddsMarker = Nothing,
      _ddsMaxRecords = Nothing
    }

-- | A specific DB snapshot identifier to describe. This parameter can't be used in conjunction with @DBInstanceIdentifier@ . This value is stored as a lowercase string.  Constraints:     * If supplied, must match the identifier of an existing DBSnapshot.     * If this identifier is for an automated snapshot, the @SnapshotType@ parameter must also be specified.
ddsDBSnapshotIdentifier :: Lens' DescribeDBSnapshots (Maybe Text)
ddsDBSnapshotIdentifier = lens _ddsDBSnapshotIdentifier (\s a -> s {_ddsDBSnapshotIdentifier = a})

-- | A specific DB resource ID to describe.
ddsDBiResourceId :: Lens' DescribeDBSnapshots (Maybe Text)
ddsDBiResourceId = lens _ddsDBiResourceId (\s a -> s {_ddsDBiResourceId = a})

-- | A value that indicates whether to include shared manual DB cluster snapshots from other AWS accounts that this AWS account has been given permission to copy or restore. By default, these snapshots are not included. You can give an AWS account permission to restore a manual DB snapshot from another AWS account by using the @ModifyDBSnapshotAttribute@ API action.
ddsIncludeShared :: Lens' DescribeDBSnapshots (Maybe Bool)
ddsIncludeShared = lens _ddsIncludeShared (\s a -> s {_ddsIncludeShared = a})

-- | The type of snapshots to be returned. You can specify one of the following values:     * @automated@ - Return all DB snapshots that have been automatically taken by Amazon RDS for my AWS account.     * @manual@ - Return all DB snapshots that have been taken by my AWS account.     * @shared@ - Return all manual DB snapshots that have been shared to my AWS account.     * @public@ - Return all DB snapshots that have been marked as public.     * @awsbackup@ - Return the DB snapshots managed by the AWS Backup service. For information about AWS Backup, see the <https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html /AWS Backup Developer Guide./ >  The @awsbackup@ type does not apply to Aurora. If you don't specify a @SnapshotType@ value, then both automated and manual snapshots are returned. Shared and public DB snapshots are not included in the returned results by default. You can include shared snapshots with these results by enabling the @IncludeShared@ parameter. You can include public snapshots with these results by enabling the @IncludePublic@ parameter. The @IncludeShared@ and @IncludePublic@ parameters don't apply for @SnapshotType@ values of @manual@ or @automated@ . The @IncludePublic@ parameter doesn't apply when @SnapshotType@ is set to @shared@ . The @IncludeShared@ parameter doesn't apply when @SnapshotType@ is set to @public@ .
ddsSnapshotType :: Lens' DescribeDBSnapshots (Maybe Text)
ddsSnapshotType = lens _ddsSnapshotType (\s a -> s {_ddsSnapshotType = a})

-- | The ID of the DB instance to retrieve the list of DB snapshots for. This parameter can't be used in conjunction with @DBSnapshotIdentifier@ . This parameter isn't case-sensitive.  Constraints:     * If supplied, must match the identifier of an existing DBInstance.
ddsDBInstanceIdentifier :: Lens' DescribeDBSnapshots (Maybe Text)
ddsDBInstanceIdentifier = lens _ddsDBInstanceIdentifier (\s a -> s {_ddsDBInstanceIdentifier = a})

-- | A filter that specifies one or more DB snapshots to describe. Supported filters:     * @db-instance-id@ - Accepts DB instance identifiers and DB instance Amazon Resource Names (ARNs).     * @db-snapshot-id@ - Accepts DB snapshot identifiers.     * @dbi-resource-id@ - Accepts identifiers of source DB instances.     * @snapshot-type@ - Accepts types of DB snapshots.     * @engine@ - Accepts names of database engines.
ddsFilters :: Lens' DescribeDBSnapshots [Filter]
ddsFilters = lens _ddsFilters (\s a -> s {_ddsFilters = a}) . _Default . _Coerce

-- | A value that indicates whether to include manual DB cluster snapshots that are public and can be copied or restored by any AWS account. By default, the public snapshots are not included. You can share a manual DB snapshot as public by using the 'ModifyDBSnapshotAttribute' API.
ddsIncludePublic :: Lens' DescribeDBSnapshots (Maybe Bool)
ddsIncludePublic = lens _ddsIncludePublic (\s a -> s {_ddsIncludePublic = a})

-- | An optional pagination token provided by a previous @DescribeDBSnapshots@ request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
ddsMarker :: Lens' DescribeDBSnapshots (Maybe Text)
ddsMarker = lens _ddsMarker (\s a -> s {_ddsMarker = a})

-- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that you can retrieve the remaining results.  Default: 100 Constraints: Minimum 20, maximum 100.
ddsMaxRecords :: Lens' DescribeDBSnapshots (Maybe Int)
ddsMaxRecords = lens _ddsMaxRecords (\s a -> s {_ddsMaxRecords = a})

instance AWSPager DescribeDBSnapshots where
  page rq rs
    | stop (rs ^. ddsrrsMarker) = Nothing
    | stop (rs ^. ddsrrsDBSnapshots) = Nothing
    | otherwise =
      Just $ rq & ddsMarker .~ rs ^. ddsrrsMarker

instance AWSRequest DescribeDBSnapshots where
  type
    Rs DescribeDBSnapshots =
      DescribeDBSnapshotsResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "DescribeDBSnapshotsResult"
      ( \s h x ->
          DescribeDBSnapshotsResponse'
            <$> ( x .@? "DBSnapshots" .!@ mempty
                    >>= may (parseXMLList "DBSnapshot")
                )
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeDBSnapshots

instance NFData DescribeDBSnapshots

instance ToHeaders DescribeDBSnapshots where
  toHeaders = const mempty

instance ToPath DescribeDBSnapshots where
  toPath = const "/"

instance ToQuery DescribeDBSnapshots where
  toQuery DescribeDBSnapshots' {..} =
    mconcat
      [ "Action" =: ("DescribeDBSnapshots" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "DBSnapshotIdentifier" =: _ddsDBSnapshotIdentifier,
        "DbiResourceId" =: _ddsDBiResourceId,
        "IncludeShared" =: _ddsIncludeShared,
        "SnapshotType" =: _ddsSnapshotType,
        "DBInstanceIdentifier" =: _ddsDBInstanceIdentifier,
        "Filters"
          =: toQuery (toQueryList "Filter" <$> _ddsFilters),
        "IncludePublic" =: _ddsIncludePublic,
        "Marker" =: _ddsMarker,
        "MaxRecords" =: _ddsMaxRecords
      ]

-- | Contains the result of a successful invocation of the @DescribeDBSnapshots@ action.
--
--
--
-- /See:/ 'describeDBSnapshotsResponse' smart constructor.
data DescribeDBSnapshotsResponse = DescribeDBSnapshotsResponse'
  { _ddsrrsDBSnapshots ::
      !( Maybe
           [DBSnapshot]
       ),
    _ddsrrsMarker ::
      !(Maybe Text),
    _ddsrrsResponseStatus ::
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

-- | Creates a value of 'DescribeDBSnapshotsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddsrrsDBSnapshots' - A list of @DBSnapshot@ instances.
--
-- * 'ddsrrsMarker' - An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'ddsrrsResponseStatus' - -- | The response status code.
describeDBSnapshotsResponse ::
  -- | 'ddsrrsResponseStatus'
  Int ->
  DescribeDBSnapshotsResponse
describeDBSnapshotsResponse pResponseStatus_ =
  DescribeDBSnapshotsResponse'
    { _ddsrrsDBSnapshots =
        Nothing,
      _ddsrrsMarker = Nothing,
      _ddsrrsResponseStatus = pResponseStatus_
    }

-- | A list of @DBSnapshot@ instances.
ddsrrsDBSnapshots :: Lens' DescribeDBSnapshotsResponse [DBSnapshot]
ddsrrsDBSnapshots = lens _ddsrrsDBSnapshots (\s a -> s {_ddsrrsDBSnapshots = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
ddsrrsMarker :: Lens' DescribeDBSnapshotsResponse (Maybe Text)
ddsrrsMarker = lens _ddsrrsMarker (\s a -> s {_ddsrrsMarker = a})

-- | -- | The response status code.
ddsrrsResponseStatus :: Lens' DescribeDBSnapshotsResponse Int
ddsrrsResponseStatus = lens _ddsrrsResponseStatus (\s a -> s {_ddsrrsResponseStatus = a})

instance NFData DescribeDBSnapshotsResponse
