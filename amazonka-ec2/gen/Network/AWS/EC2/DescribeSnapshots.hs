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
-- Module      : Network.AWS.EC2.DescribeSnapshots
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified EBS snapshots available to you or all of the EBS snapshots available to you.
--
--
-- The snapshots available to you include public snapshots, private snapshots that you own, and private snapshots owned by other AWS accounts for which you have explicit create volume permissions.
--
-- The create volume permissions fall into the following categories:
--
--     * /public/ : The owner of the snapshot granted create volume permissions for the snapshot to the @all@ group. All AWS accounts have create volume permissions for these snapshots.
--
--     * /explicit/ : The owner of the snapshot granted create volume permissions to a specific AWS account.
--
--     * /implicit/ : An AWS account has implicit create volume permissions for all snapshots it owns.
--
--
--
-- The list of snapshots returned can be filtered by specifying snapshot IDs, snapshot owners, or AWS accounts with create volume permissions. If no options are specified, Amazon EC2 returns all snapshots for which you have create volume permissions.
--
-- If you specify one or more snapshot IDs, only snapshots that have the specified IDs are returned. If you specify an invalid snapshot ID, an error is returned. If you specify a snapshot ID for which you do not have access, it is not included in the returned results.
--
-- If you specify one or more snapshot owners using the @OwnerIds@ option, only snapshots from the specified owners and for which you have access are returned. The results can include the AWS account IDs of the specified owners, @amazon@ for snapshots owned by Amazon, or @self@ for snapshots that you own.
--
-- If you specify a list of restorable users, only snapshots with create snapshot permissions for those users are returned. You can specify AWS account IDs (if you own the snapshots), @self@ for snapshots for which you own or have explicit permissions, or @all@ for public snapshots.
--
-- If you are describing a long list of snapshots, we recommend that you paginate the output to make the list more manageable. The @MaxResults@ parameter sets the maximum number of results returned in a single page. If the list of results exceeds your @MaxResults@ value, then that number of results is returned along with a @NextToken@ value that can be passed to a subsequent @DescribeSnapshots@ request to retrieve the remaining results.
--
-- To get the state of fast snapshot restores for a snapshot, use 'DescribeFastSnapshotRestores' .
--
-- For more information about EBS snapshots, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSSnapshots.html Amazon EBS snapshots> in the /Amazon Elastic Compute Cloud User Guide/ .
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeSnapshots
  ( -- * Creating a Request
    describeSnapshots,
    DescribeSnapshots,

    -- * Request Lenses
    deseOwnerIds,
    deseNextToken,
    deseDryRun,
    deseMaxResults,
    deseRestorableByUserIds,
    deseSnapshotIds,
    deseFilters,

    -- * Destructuring the Response
    describeSnapshotsResponse,
    DescribeSnapshotsResponse,

    -- * Response Lenses
    dsrrsSnapshots,
    dsrrsNextToken,
    dsrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeSnapshots' smart constructor.
data DescribeSnapshots = DescribeSnapshots'
  { _deseOwnerIds ::
      !(Maybe [Text]),
    _deseNextToken :: !(Maybe Text),
    _deseDryRun :: !(Maybe Bool),
    _deseMaxResults :: !(Maybe Int),
    _deseRestorableByUserIds ::
      !(Maybe [Text]),
    _deseSnapshotIds :: !(Maybe [Text]),
    _deseFilters :: !(Maybe [Filter])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeSnapshots' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'deseOwnerIds' - Scopes the results to snapshots with the specified owners. You can specify a combination of AWS account IDs, @self@ , and @amazon@ .
--
-- * 'deseNextToken' - The @NextToken@ value returned from a previous paginated @DescribeSnapshots@ request where @MaxResults@ was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the @NextToken@ value. This value is @null@ when there are no more results to return.
--
-- * 'deseDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'deseMaxResults' - The maximum number of snapshot results returned by @DescribeSnapshots@ in paginated output. When this parameter is used, @DescribeSnapshots@ only returns @MaxResults@ results in a single page along with a @NextToken@ response element. The remaining results of the initial request can be seen by sending another @DescribeSnapshots@ request with the returned @NextToken@ value. This value can be between 5 and 1,000; if @MaxResults@ is given a value larger than 1,000, only 1,000 results are returned. If this parameter is not used, then @DescribeSnapshots@ returns all results. You cannot specify this parameter and the snapshot IDs parameter in the same request.
--
-- * 'deseRestorableByUserIds' - The IDs of the AWS accounts that can create volumes from the snapshot.
--
-- * 'deseSnapshotIds' - The snapshot IDs. Default: Describes the snapshots for which you have create volume permissions.
--
-- * 'deseFilters' - The filters.     * @description@ - A description of the snapshot.     * @encrypted@ - Indicates whether the snapshot is encrypted (@true@ | @false@ )     * @owner-alias@ - The owner alias, from an Amazon-maintained list (@amazon@ ). This is not the user-configured AWS account alias set using the IAM console. We recommend that you use the related parameter instead of this filter.     * @owner-id@ - The AWS account ID of the owner. We recommend that you use the related parameter instead of this filter.     * @progress@ - The progress of the snapshot, as a percentage (for example, 80%).     * @snapshot-id@ - The snapshot ID.     * @start-time@ - The time stamp when the snapshot was initiated.     * @status@ - The status of the snapshot (@pending@ | @completed@ | @error@ ).     * @tag@ :<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key @Owner@ and the value @TeamA@ , specify @tag:Owner@ for the filter name and @TeamA@ for the filter value.     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.     * @volume-id@ - The ID of the volume the snapshot is for.     * @volume-size@ - The size of the volume, in GiB.
describeSnapshots ::
  DescribeSnapshots
describeSnapshots =
  DescribeSnapshots'
    { _deseOwnerIds = Nothing,
      _deseNextToken = Nothing,
      _deseDryRun = Nothing,
      _deseMaxResults = Nothing,
      _deseRestorableByUserIds = Nothing,
      _deseSnapshotIds = Nothing,
      _deseFilters = Nothing
    }

-- | Scopes the results to snapshots with the specified owners. You can specify a combination of AWS account IDs, @self@ , and @amazon@ .
deseOwnerIds :: Lens' DescribeSnapshots [Text]
deseOwnerIds = lens _deseOwnerIds (\s a -> s {_deseOwnerIds = a}) . _Default . _Coerce

-- | The @NextToken@ value returned from a previous paginated @DescribeSnapshots@ request where @MaxResults@ was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the @NextToken@ value. This value is @null@ when there are no more results to return.
deseNextToken :: Lens' DescribeSnapshots (Maybe Text)
deseNextToken = lens _deseNextToken (\s a -> s {_deseNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
deseDryRun :: Lens' DescribeSnapshots (Maybe Bool)
deseDryRun = lens _deseDryRun (\s a -> s {_deseDryRun = a})

-- | The maximum number of snapshot results returned by @DescribeSnapshots@ in paginated output. When this parameter is used, @DescribeSnapshots@ only returns @MaxResults@ results in a single page along with a @NextToken@ response element. The remaining results of the initial request can be seen by sending another @DescribeSnapshots@ request with the returned @NextToken@ value. This value can be between 5 and 1,000; if @MaxResults@ is given a value larger than 1,000, only 1,000 results are returned. If this parameter is not used, then @DescribeSnapshots@ returns all results. You cannot specify this parameter and the snapshot IDs parameter in the same request.
deseMaxResults :: Lens' DescribeSnapshots (Maybe Int)
deseMaxResults = lens _deseMaxResults (\s a -> s {_deseMaxResults = a})

-- | The IDs of the AWS accounts that can create volumes from the snapshot.
deseRestorableByUserIds :: Lens' DescribeSnapshots [Text]
deseRestorableByUserIds = lens _deseRestorableByUserIds (\s a -> s {_deseRestorableByUserIds = a}) . _Default . _Coerce

-- | The snapshot IDs. Default: Describes the snapshots for which you have create volume permissions.
deseSnapshotIds :: Lens' DescribeSnapshots [Text]
deseSnapshotIds = lens _deseSnapshotIds (\s a -> s {_deseSnapshotIds = a}) . _Default . _Coerce

-- | The filters.     * @description@ - A description of the snapshot.     * @encrypted@ - Indicates whether the snapshot is encrypted (@true@ | @false@ )     * @owner-alias@ - The owner alias, from an Amazon-maintained list (@amazon@ ). This is not the user-configured AWS account alias set using the IAM console. We recommend that you use the related parameter instead of this filter.     * @owner-id@ - The AWS account ID of the owner. We recommend that you use the related parameter instead of this filter.     * @progress@ - The progress of the snapshot, as a percentage (for example, 80%).     * @snapshot-id@ - The snapshot ID.     * @start-time@ - The time stamp when the snapshot was initiated.     * @status@ - The status of the snapshot (@pending@ | @completed@ | @error@ ).     * @tag@ :<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key @Owner@ and the value @TeamA@ , specify @tag:Owner@ for the filter name and @TeamA@ for the filter value.     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.     * @volume-id@ - The ID of the volume the snapshot is for.     * @volume-size@ - The size of the volume, in GiB.
deseFilters :: Lens' DescribeSnapshots [Filter]
deseFilters = lens _deseFilters (\s a -> s {_deseFilters = a}) . _Default . _Coerce

instance AWSPager DescribeSnapshots where
  page rq rs
    | stop (rs ^. dsrrsNextToken) = Nothing
    | stop (rs ^. dsrrsSnapshots) = Nothing
    | otherwise =
      Just $ rq & deseNextToken .~ rs ^. dsrrsNextToken

instance AWSRequest DescribeSnapshots where
  type Rs DescribeSnapshots = DescribeSnapshotsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeSnapshotsResponse'
            <$> ( x .@? "snapshotSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (x .@? "nextToken")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeSnapshots

instance NFData DescribeSnapshots

instance ToHeaders DescribeSnapshots where
  toHeaders = const mempty

instance ToPath DescribeSnapshots where
  toPath = const "/"

instance ToQuery DescribeSnapshots where
  toQuery DescribeSnapshots' {..} =
    mconcat
      [ "Action" =: ("DescribeSnapshots" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        toQuery (toQueryList "Owner" <$> _deseOwnerIds),
        "NextToken" =: _deseNextToken,
        "DryRun" =: _deseDryRun,
        "MaxResults" =: _deseMaxResults,
        toQuery
          ( toQueryList "RestorableBy"
              <$> _deseRestorableByUserIds
          ),
        toQuery
          (toQueryList "SnapshotId" <$> _deseSnapshotIds),
        toQuery (toQueryList "Filter" <$> _deseFilters)
      ]

-- | /See:/ 'describeSnapshotsResponse' smart constructor.
data DescribeSnapshotsResponse = DescribeSnapshotsResponse'
  { _dsrrsSnapshots ::
      !(Maybe [Snapshot]),
    _dsrrsNextToken ::
      !(Maybe Text),
    _dsrrsResponseStatus ::
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

-- | Creates a value of 'DescribeSnapshotsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsrrsSnapshots' - Information about the snapshots.
--
-- * 'dsrrsNextToken' - The @NextToken@ value to include in a future @DescribeSnapshots@ request. When the results of a @DescribeSnapshots@ request exceed @MaxResults@ , this value can be used to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'dsrrsResponseStatus' - -- | The response status code.
describeSnapshotsResponse ::
  -- | 'dsrrsResponseStatus'
  Int ->
  DescribeSnapshotsResponse
describeSnapshotsResponse pResponseStatus_ =
  DescribeSnapshotsResponse'
    { _dsrrsSnapshots =
        Nothing,
      _dsrrsNextToken = Nothing,
      _dsrrsResponseStatus = pResponseStatus_
    }

-- | Information about the snapshots.
dsrrsSnapshots :: Lens' DescribeSnapshotsResponse [Snapshot]
dsrrsSnapshots = lens _dsrrsSnapshots (\s a -> s {_dsrrsSnapshots = a}) . _Default . _Coerce

-- | The @NextToken@ value to include in a future @DescribeSnapshots@ request. When the results of a @DescribeSnapshots@ request exceed @MaxResults@ , this value can be used to retrieve the next page of results. This value is @null@ when there are no more results to return.
dsrrsNextToken :: Lens' DescribeSnapshotsResponse (Maybe Text)
dsrrsNextToken = lens _dsrrsNextToken (\s a -> s {_dsrrsNextToken = a})

-- | -- | The response status code.
dsrrsResponseStatus :: Lens' DescribeSnapshotsResponse Int
dsrrsResponseStatus = lens _dsrrsResponseStatus (\s a -> s {_dsrrsResponseStatus = a})

instance NFData DescribeSnapshotsResponse
