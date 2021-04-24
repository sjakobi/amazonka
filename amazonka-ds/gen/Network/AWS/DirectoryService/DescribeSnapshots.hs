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
-- Module      : Network.AWS.DirectoryService.DescribeSnapshots
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Obtains information about the directory snapshots that belong to this account.
--
--
-- This operation supports pagination with the use of the /NextToken/ request and response parameters. If more results are available, the /DescribeSnapshots.NextToken/ member contains a token that you pass in the next call to 'DescribeSnapshots' to retrieve the next set of items.
--
-- You can also specify a maximum number of return results with the /Limit/ parameter.
--
--
-- This operation returns paginated results.
module Network.AWS.DirectoryService.DescribeSnapshots
  ( -- * Creating a Request
    describeSnapshots,
    DescribeSnapshots,

    -- * Request Lenses
    dsNextToken,
    dsSnapshotIds,
    dsDirectoryId,
    dsLimit,

    -- * Destructuring the Response
    describeSnapshotsResponse,
    DescribeSnapshotsResponse,

    -- * Response Lenses
    dsrrsSnapshots,
    dsrrsNextToken,
    dsrrsResponseStatus,
  )
where

import Network.AWS.DirectoryService.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the inputs for the 'DescribeSnapshots' operation.
--
--
--
-- /See:/ 'describeSnapshots' smart constructor.
data DescribeSnapshots = DescribeSnapshots'
  { _dsNextToken ::
      !(Maybe Text),
    _dsSnapshotIds :: !(Maybe [Text]),
    _dsDirectoryId :: !(Maybe Text),
    _dsLimit :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeSnapshots' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsNextToken' - The /DescribeSnapshotsResult.NextToken/ value from a previous call to 'DescribeSnapshots' . Pass null if this is the first call.
--
-- * 'dsSnapshotIds' - A list of identifiers of the snapshots to obtain the information for. If this member is null or empty, all snapshots are returned using the /Limit/ and /NextToken/ members.
--
-- * 'dsDirectoryId' - The identifier of the directory for which to retrieve snapshot information.
--
-- * 'dsLimit' - The maximum number of objects to return.
describeSnapshots ::
  DescribeSnapshots
describeSnapshots =
  DescribeSnapshots'
    { _dsNextToken = Nothing,
      _dsSnapshotIds = Nothing,
      _dsDirectoryId = Nothing,
      _dsLimit = Nothing
    }

-- | The /DescribeSnapshotsResult.NextToken/ value from a previous call to 'DescribeSnapshots' . Pass null if this is the first call.
dsNextToken :: Lens' DescribeSnapshots (Maybe Text)
dsNextToken = lens _dsNextToken (\s a -> s {_dsNextToken = a})

-- | A list of identifiers of the snapshots to obtain the information for. If this member is null or empty, all snapshots are returned using the /Limit/ and /NextToken/ members.
dsSnapshotIds :: Lens' DescribeSnapshots [Text]
dsSnapshotIds = lens _dsSnapshotIds (\s a -> s {_dsSnapshotIds = a}) . _Default . _Coerce

-- | The identifier of the directory for which to retrieve snapshot information.
dsDirectoryId :: Lens' DescribeSnapshots (Maybe Text)
dsDirectoryId = lens _dsDirectoryId (\s a -> s {_dsDirectoryId = a})

-- | The maximum number of objects to return.
dsLimit :: Lens' DescribeSnapshots (Maybe Natural)
dsLimit = lens _dsLimit (\s a -> s {_dsLimit = a}) . mapping _Nat

instance AWSPager DescribeSnapshots where
  page rq rs
    | stop (rs ^. dsrrsNextToken) = Nothing
    | stop (rs ^. dsrrsSnapshots) = Nothing
    | otherwise =
      Just $ rq & dsNextToken .~ rs ^. dsrrsNextToken

instance AWSRequest DescribeSnapshots where
  type Rs DescribeSnapshots = DescribeSnapshotsResponse
  request = postJSON directoryService
  response =
    receiveJSON
      ( \s h x ->
          DescribeSnapshotsResponse'
            <$> (x .?> "Snapshots" .!@ mempty)
            <*> (x .?> "NextToken")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeSnapshots

instance NFData DescribeSnapshots

instance ToHeaders DescribeSnapshots where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DirectoryService_20150416.DescribeSnapshots" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeSnapshots where
  toJSON DescribeSnapshots' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dsNextToken,
            ("SnapshotIds" .=) <$> _dsSnapshotIds,
            ("DirectoryId" .=) <$> _dsDirectoryId,
            ("Limit" .=) <$> _dsLimit
          ]
      )

instance ToPath DescribeSnapshots where
  toPath = const "/"

instance ToQuery DescribeSnapshots where
  toQuery = const mempty

-- | Contains the results of the 'DescribeSnapshots' operation.
--
--
--
-- /See:/ 'describeSnapshotsResponse' smart constructor.
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
-- * 'dsrrsSnapshots' - The list of 'Snapshot' objects that were retrieved. It is possible that this list contains less than the number of items specified in the /Limit/ member of the request. This occurs if there are less than the requested number of items left to retrieve, or if the limitations of the operation have been exceeded.
--
-- * 'dsrrsNextToken' - If not null, more results are available. Pass this value in the /NextToken/ member of a subsequent call to 'DescribeSnapshots' .
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

-- | The list of 'Snapshot' objects that were retrieved. It is possible that this list contains less than the number of items specified in the /Limit/ member of the request. This occurs if there are less than the requested number of items left to retrieve, or if the limitations of the operation have been exceeded.
dsrrsSnapshots :: Lens' DescribeSnapshotsResponse [Snapshot]
dsrrsSnapshots = lens _dsrrsSnapshots (\s a -> s {_dsrrsSnapshots = a}) . _Default . _Coerce

-- | If not null, more results are available. Pass this value in the /NextToken/ member of a subsequent call to 'DescribeSnapshots' .
dsrrsNextToken :: Lens' DescribeSnapshotsResponse (Maybe Text)
dsrrsNextToken = lens _dsrrsNextToken (\s a -> s {_dsrrsNextToken = a})

-- | -- | The response status code.
dsrrsResponseStatus :: Lens' DescribeSnapshotsResponse Int
dsrrsResponseStatus = lens _dsrrsResponseStatus (\s a -> s {_dsrrsResponseStatus = a})

instance NFData DescribeSnapshotsResponse
