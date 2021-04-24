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
-- Module      : Network.AWS.EC2.DescribeFastSnapshotRestores
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the state of fast snapshot restores for your snapshots.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeFastSnapshotRestores
  ( -- * Creating a Request
    describeFastSnapshotRestores,
    DescribeFastSnapshotRestores,

    -- * Request Lenses
    dfsrsNextToken,
    dfsrsDryRun,
    dfsrsMaxResults,
    dfsrsFilters,

    -- * Destructuring the Response
    describeFastSnapshotRestoresResponse,
    DescribeFastSnapshotRestoresResponse,

    -- * Response Lenses
    dfsrrfrsFastSnapshotRestores,
    dfsrrfrsNextToken,
    dfsrrfrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeFastSnapshotRestores' smart constructor.
data DescribeFastSnapshotRestores = DescribeFastSnapshotRestores'
  { _dfsrsNextToken ::
      !(Maybe Text),
    _dfsrsDryRun ::
      !(Maybe Bool),
    _dfsrsMaxResults ::
      !(Maybe Nat),
    _dfsrsFilters ::
      !( Maybe
           [Filter]
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

-- | Creates a value of 'DescribeFastSnapshotRestores' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfsrsNextToken' - The token for the next page of results.
--
-- * 'dfsrsDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dfsrsMaxResults' - The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
--
-- * 'dfsrsFilters' - The filters. The possible values are:     * @availability-zone@ : The Availability Zone of the snapshot.     * @owner-id@ : The ID of the AWS account that enabled fast snapshot restore on the snapshot.     * @snapshot-id@ : The ID of the snapshot.     * @state@ : The state of fast snapshot restores for the snapshot (@enabling@ | @optimizing@ | @enabled@ | @disabling@ | @disabled@ ).
describeFastSnapshotRestores ::
  DescribeFastSnapshotRestores
describeFastSnapshotRestores =
  DescribeFastSnapshotRestores'
    { _dfsrsNextToken =
        Nothing,
      _dfsrsDryRun = Nothing,
      _dfsrsMaxResults = Nothing,
      _dfsrsFilters = Nothing
    }

-- | The token for the next page of results.
dfsrsNextToken :: Lens' DescribeFastSnapshotRestores (Maybe Text)
dfsrsNextToken = lens _dfsrsNextToken (\s a -> s {_dfsrsNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dfsrsDryRun :: Lens' DescribeFastSnapshotRestores (Maybe Bool)
dfsrsDryRun = lens _dfsrsDryRun (\s a -> s {_dfsrsDryRun = a})

-- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
dfsrsMaxResults :: Lens' DescribeFastSnapshotRestores (Maybe Natural)
dfsrsMaxResults = lens _dfsrsMaxResults (\s a -> s {_dfsrsMaxResults = a}) . mapping _Nat

-- | The filters. The possible values are:     * @availability-zone@ : The Availability Zone of the snapshot.     * @owner-id@ : The ID of the AWS account that enabled fast snapshot restore on the snapshot.     * @snapshot-id@ : The ID of the snapshot.     * @state@ : The state of fast snapshot restores for the snapshot (@enabling@ | @optimizing@ | @enabled@ | @disabling@ | @disabled@ ).
dfsrsFilters :: Lens' DescribeFastSnapshotRestores [Filter]
dfsrsFilters = lens _dfsrsFilters (\s a -> s {_dfsrsFilters = a}) . _Default . _Coerce

instance AWSPager DescribeFastSnapshotRestores where
  page rq rs
    | stop (rs ^. dfsrrfrsNextToken) = Nothing
    | stop (rs ^. dfsrrfrsFastSnapshotRestores) = Nothing
    | otherwise =
      Just $ rq & dfsrsNextToken .~ rs ^. dfsrrfrsNextToken

instance AWSRequest DescribeFastSnapshotRestores where
  type
    Rs DescribeFastSnapshotRestores =
      DescribeFastSnapshotRestoresResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeFastSnapshotRestoresResponse'
            <$> ( x .@? "fastSnapshotRestoreSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (x .@? "nextToken")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeFastSnapshotRestores

instance NFData DescribeFastSnapshotRestores

instance ToHeaders DescribeFastSnapshotRestores where
  toHeaders = const mempty

instance ToPath DescribeFastSnapshotRestores where
  toPath = const "/"

instance ToQuery DescribeFastSnapshotRestores where
  toQuery DescribeFastSnapshotRestores' {..} =
    mconcat
      [ "Action"
          =: ("DescribeFastSnapshotRestores" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _dfsrsNextToken,
        "DryRun" =: _dfsrsDryRun,
        "MaxResults" =: _dfsrsMaxResults,
        toQuery (toQueryList "Filter" <$> _dfsrsFilters)
      ]

-- | /See:/ 'describeFastSnapshotRestoresResponse' smart constructor.
data DescribeFastSnapshotRestoresResponse = DescribeFastSnapshotRestoresResponse'
  { _dfsrrfrsFastSnapshotRestores ::
      !( Maybe
           [DescribeFastSnapshotRestoreSuccessItem]
       ),
    _dfsrrfrsNextToken ::
      !( Maybe
           Text
       ),
    _dfsrrfrsResponseStatus ::
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

-- | Creates a value of 'DescribeFastSnapshotRestoresResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfsrrfrsFastSnapshotRestores' - Information about the state of fast snapshot restores.
--
-- * 'dfsrrfrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'dfsrrfrsResponseStatus' - -- | The response status code.
describeFastSnapshotRestoresResponse ::
  -- | 'dfsrrfrsResponseStatus'
  Int ->
  DescribeFastSnapshotRestoresResponse
describeFastSnapshotRestoresResponse pResponseStatus_ =
  DescribeFastSnapshotRestoresResponse'
    { _dfsrrfrsFastSnapshotRestores =
        Nothing,
      _dfsrrfrsNextToken = Nothing,
      _dfsrrfrsResponseStatus =
        pResponseStatus_
    }

-- | Information about the state of fast snapshot restores.
dfsrrfrsFastSnapshotRestores :: Lens' DescribeFastSnapshotRestoresResponse [DescribeFastSnapshotRestoreSuccessItem]
dfsrrfrsFastSnapshotRestores = lens _dfsrrfrsFastSnapshotRestores (\s a -> s {_dfsrrfrsFastSnapshotRestores = a}) . _Default . _Coerce

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
dfsrrfrsNextToken :: Lens' DescribeFastSnapshotRestoresResponse (Maybe Text)
dfsrrfrsNextToken = lens _dfsrrfrsNextToken (\s a -> s {_dfsrrfrsNextToken = a})

-- | -- | The response status code.
dfsrrfrsResponseStatus :: Lens' DescribeFastSnapshotRestoresResponse Int
dfsrrfrsResponseStatus = lens _dfsrrfrsResponseStatus (\s a -> s {_dfsrrfrsResponseStatus = a})

instance NFData DescribeFastSnapshotRestoresResponse
