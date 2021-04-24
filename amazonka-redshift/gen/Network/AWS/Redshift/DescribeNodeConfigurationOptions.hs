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
-- Module      : Network.AWS.Redshift.DescribeNodeConfigurationOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns properties of possible node configurations such as node type, number of nodes, and disk usage for the specified action type.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Redshift.DescribeNodeConfigurationOptions
  ( -- * Creating a Request
    describeNodeConfigurationOptions,
    DescribeNodeConfigurationOptions,

    -- * Request Lenses
    dncoSnapshotIdentifier,
    dncoClusterIdentifier,
    dncoFilters,
    dncoOwnerAccount,
    dncoMarker,
    dncoMaxRecords,
    dncoActionType,

    -- * Destructuring the Response
    describeNodeConfigurationOptionsResponse,
    DescribeNodeConfigurationOptionsResponse,

    -- * Response Lenses
    dncorrsNodeConfigurationOptionList,
    dncorrsMarker,
    dncorrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Redshift.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeNodeConfigurationOptions' smart constructor.
data DescribeNodeConfigurationOptions = DescribeNodeConfigurationOptions'
  { _dncoSnapshotIdentifier ::
      !( Maybe
           Text
       ),
    _dncoClusterIdentifier ::
      !( Maybe
           Text
       ),
    _dncoFilters ::
      !( Maybe
           [NodeConfigurationOptionsFilter]
       ),
    _dncoOwnerAccount ::
      !( Maybe
           Text
       ),
    _dncoMarker ::
      !( Maybe
           Text
       ),
    _dncoMaxRecords ::
      !( Maybe
           Int
       ),
    _dncoActionType ::
      !ActionType
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeNodeConfigurationOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dncoSnapshotIdentifier' - The identifier of the snapshot to evaluate for possible node configurations.
--
-- * 'dncoClusterIdentifier' - The identifier of the cluster to evaluate for possible node configurations.
--
-- * 'dncoFilters' - A set of name, operator, and value items to filter the results.
--
-- * 'dncoOwnerAccount' - The AWS customer account used to create or copy the snapshot. Required if you are restoring a snapshot you do not own, optional if you own the snapshot.
--
-- * 'dncoMarker' - An optional parameter that specifies the starting point to return a set of response records. When the results of a 'DescribeNodeConfigurationOptions' request exceed the value specified in @MaxRecords@ , AWS returns a value in the @Marker@ field of the response. You can retrieve the next set of response records by providing the returned marker value in the @Marker@ parameter and retrying the request.
--
-- * 'dncoMaxRecords' - The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified @MaxRecords@ value, a value is returned in a @marker@ field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.  Default: @500@  Constraints: minimum 100, maximum 500.
--
-- * 'dncoActionType' - The action type to evaluate for possible node configurations. Specify "restore-cluster" to get configuration combinations based on an existing snapshot. Specify "recommend-node-config" to get configuration recommendations based on an existing cluster or snapshot. Specify "resize-cluster" to get configuration combinations for elastic resize based on an existing cluster.
describeNodeConfigurationOptions ::
  -- | 'dncoActionType'
  ActionType ->
  DescribeNodeConfigurationOptions
describeNodeConfigurationOptions pActionType_ =
  DescribeNodeConfigurationOptions'
    { _dncoSnapshotIdentifier =
        Nothing,
      _dncoClusterIdentifier = Nothing,
      _dncoFilters = Nothing,
      _dncoOwnerAccount = Nothing,
      _dncoMarker = Nothing,
      _dncoMaxRecords = Nothing,
      _dncoActionType = pActionType_
    }

-- | The identifier of the snapshot to evaluate for possible node configurations.
dncoSnapshotIdentifier :: Lens' DescribeNodeConfigurationOptions (Maybe Text)
dncoSnapshotIdentifier = lens _dncoSnapshotIdentifier (\s a -> s {_dncoSnapshotIdentifier = a})

-- | The identifier of the cluster to evaluate for possible node configurations.
dncoClusterIdentifier :: Lens' DescribeNodeConfigurationOptions (Maybe Text)
dncoClusterIdentifier = lens _dncoClusterIdentifier (\s a -> s {_dncoClusterIdentifier = a})

-- | A set of name, operator, and value items to filter the results.
dncoFilters :: Lens' DescribeNodeConfigurationOptions [NodeConfigurationOptionsFilter]
dncoFilters = lens _dncoFilters (\s a -> s {_dncoFilters = a}) . _Default . _Coerce

-- | The AWS customer account used to create or copy the snapshot. Required if you are restoring a snapshot you do not own, optional if you own the snapshot.
dncoOwnerAccount :: Lens' DescribeNodeConfigurationOptions (Maybe Text)
dncoOwnerAccount = lens _dncoOwnerAccount (\s a -> s {_dncoOwnerAccount = a})

-- | An optional parameter that specifies the starting point to return a set of response records. When the results of a 'DescribeNodeConfigurationOptions' request exceed the value specified in @MaxRecords@ , AWS returns a value in the @Marker@ field of the response. You can retrieve the next set of response records by providing the returned marker value in the @Marker@ parameter and retrying the request.
dncoMarker :: Lens' DescribeNodeConfigurationOptions (Maybe Text)
dncoMarker = lens _dncoMarker (\s a -> s {_dncoMarker = a})

-- | The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified @MaxRecords@ value, a value is returned in a @marker@ field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.  Default: @500@  Constraints: minimum 100, maximum 500.
dncoMaxRecords :: Lens' DescribeNodeConfigurationOptions (Maybe Int)
dncoMaxRecords = lens _dncoMaxRecords (\s a -> s {_dncoMaxRecords = a})

-- | The action type to evaluate for possible node configurations. Specify "restore-cluster" to get configuration combinations based on an existing snapshot. Specify "recommend-node-config" to get configuration recommendations based on an existing cluster or snapshot. Specify "resize-cluster" to get configuration combinations for elastic resize based on an existing cluster.
dncoActionType :: Lens' DescribeNodeConfigurationOptions ActionType
dncoActionType = lens _dncoActionType (\s a -> s {_dncoActionType = a})

instance AWSPager DescribeNodeConfigurationOptions where
  page rq rs
    | stop (rs ^. dncorrsMarker) = Nothing
    | stop (rs ^. dncorrsNodeConfigurationOptionList) =
      Nothing
    | otherwise =
      Just $ rq & dncoMarker .~ rs ^. dncorrsMarker

instance AWSRequest DescribeNodeConfigurationOptions where
  type
    Rs DescribeNodeConfigurationOptions =
      DescribeNodeConfigurationOptionsResponse
  request = postQuery redshift
  response =
    receiveXMLWrapper
      "DescribeNodeConfigurationOptionsResult"
      ( \s h x ->
          DescribeNodeConfigurationOptionsResponse'
            <$> ( x .@? "NodeConfigurationOptionList" .!@ mempty
                    >>= may (parseXMLList "NodeConfigurationOption")
                )
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeNodeConfigurationOptions

instance NFData DescribeNodeConfigurationOptions

instance ToHeaders DescribeNodeConfigurationOptions where
  toHeaders = const mempty

instance ToPath DescribeNodeConfigurationOptions where
  toPath = const "/"

instance ToQuery DescribeNodeConfigurationOptions where
  toQuery DescribeNodeConfigurationOptions' {..} =
    mconcat
      [ "Action"
          =: ("DescribeNodeConfigurationOptions" :: ByteString),
        "Version" =: ("2012-12-01" :: ByteString),
        "SnapshotIdentifier" =: _dncoSnapshotIdentifier,
        "ClusterIdentifier" =: _dncoClusterIdentifier,
        "Filter"
          =: toQuery
            ( toQueryList "NodeConfigurationOptionsFilter"
                <$> _dncoFilters
            ),
        "OwnerAccount" =: _dncoOwnerAccount,
        "Marker" =: _dncoMarker,
        "MaxRecords" =: _dncoMaxRecords,
        "ActionType" =: _dncoActionType
      ]

-- | /See:/ 'describeNodeConfigurationOptionsResponse' smart constructor.
data DescribeNodeConfigurationOptionsResponse = DescribeNodeConfigurationOptionsResponse'
  { _dncorrsNodeConfigurationOptionList ::
      !( Maybe
           [NodeConfigurationOption]
       ),
    _dncorrsMarker ::
      !( Maybe
           Text
       ),
    _dncorrsResponseStatus ::
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

-- | Creates a value of 'DescribeNodeConfigurationOptionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dncorrsNodeConfigurationOptionList' - A list of valid node configurations.
--
-- * 'dncorrsMarker' - A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the @Marker@ parameter and retrying the command. If the @Marker@ field is empty, all response records have been retrieved for the request.
--
-- * 'dncorrsResponseStatus' - -- | The response status code.
describeNodeConfigurationOptionsResponse ::
  -- | 'dncorrsResponseStatus'
  Int ->
  DescribeNodeConfigurationOptionsResponse
describeNodeConfigurationOptionsResponse
  pResponseStatus_ =
    DescribeNodeConfigurationOptionsResponse'
      { _dncorrsNodeConfigurationOptionList =
          Nothing,
        _dncorrsMarker = Nothing,
        _dncorrsResponseStatus =
          pResponseStatus_
      }

-- | A list of valid node configurations.
dncorrsNodeConfigurationOptionList :: Lens' DescribeNodeConfigurationOptionsResponse [NodeConfigurationOption]
dncorrsNodeConfigurationOptionList = lens _dncorrsNodeConfigurationOptionList (\s a -> s {_dncorrsNodeConfigurationOptionList = a}) . _Default . _Coerce

-- | A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the @Marker@ parameter and retrying the command. If the @Marker@ field is empty, all response records have been retrieved for the request.
dncorrsMarker :: Lens' DescribeNodeConfigurationOptionsResponse (Maybe Text)
dncorrsMarker = lens _dncorrsMarker (\s a -> s {_dncorrsMarker = a})

-- | -- | The response status code.
dncorrsResponseStatus :: Lens' DescribeNodeConfigurationOptionsResponse Int
dncorrsResponseStatus = lens _dncorrsResponseStatus (\s a -> s {_dncorrsResponseStatus = a})

instance
  NFData
    DescribeNodeConfigurationOptionsResponse
