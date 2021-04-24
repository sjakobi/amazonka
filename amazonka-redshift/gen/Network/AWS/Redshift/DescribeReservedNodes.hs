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
-- Module      : Network.AWS.Redshift.DescribeReservedNodes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the descriptions of the reserved nodes.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Redshift.DescribeReservedNodes
  ( -- * Creating a Request
    describeReservedNodes,
    DescribeReservedNodes,

    -- * Request Lenses
    drnReservedNodeId,
    drnMarker,
    drnMaxRecords,

    -- * Destructuring the Response
    describeReservedNodesResponse,
    DescribeReservedNodesResponse,

    -- * Response Lenses
    drnrrsReservedNodes,
    drnrrsMarker,
    drnrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Redshift.Types
import Network.AWS.Request
import Network.AWS.Response

-- |
--
--
--
-- /See:/ 'describeReservedNodes' smart constructor.
data DescribeReservedNodes = DescribeReservedNodes'
  { _drnReservedNodeId ::
      !(Maybe Text),
    _drnMarker :: !(Maybe Text),
    _drnMaxRecords ::
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

-- | Creates a value of 'DescribeReservedNodes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drnReservedNodeId' - Identifier for the node reservation.
--
-- * 'drnMarker' - An optional parameter that specifies the starting point to return a set of response records. When the results of a 'DescribeReservedNodes' request exceed the value specified in @MaxRecords@ , AWS returns a value in the @Marker@ field of the response. You can retrieve the next set of response records by providing the returned marker value in the @Marker@ parameter and retrying the request.
--
-- * 'drnMaxRecords' - The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified @MaxRecords@ value, a value is returned in a @marker@ field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.  Default: @100@  Constraints: minimum 20, maximum 100.
describeReservedNodes ::
  DescribeReservedNodes
describeReservedNodes =
  DescribeReservedNodes'
    { _drnReservedNodeId =
        Nothing,
      _drnMarker = Nothing,
      _drnMaxRecords = Nothing
    }

-- | Identifier for the node reservation.
drnReservedNodeId :: Lens' DescribeReservedNodes (Maybe Text)
drnReservedNodeId = lens _drnReservedNodeId (\s a -> s {_drnReservedNodeId = a})

-- | An optional parameter that specifies the starting point to return a set of response records. When the results of a 'DescribeReservedNodes' request exceed the value specified in @MaxRecords@ , AWS returns a value in the @Marker@ field of the response. You can retrieve the next set of response records by providing the returned marker value in the @Marker@ parameter and retrying the request.
drnMarker :: Lens' DescribeReservedNodes (Maybe Text)
drnMarker = lens _drnMarker (\s a -> s {_drnMarker = a})

-- | The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified @MaxRecords@ value, a value is returned in a @marker@ field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.  Default: @100@  Constraints: minimum 20, maximum 100.
drnMaxRecords :: Lens' DescribeReservedNodes (Maybe Int)
drnMaxRecords = lens _drnMaxRecords (\s a -> s {_drnMaxRecords = a})

instance AWSPager DescribeReservedNodes where
  page rq rs
    | stop (rs ^. drnrrsMarker) = Nothing
    | stop (rs ^. drnrrsReservedNodes) = Nothing
    | otherwise =
      Just $ rq & drnMarker .~ rs ^. drnrrsMarker

instance AWSRequest DescribeReservedNodes where
  type
    Rs DescribeReservedNodes =
      DescribeReservedNodesResponse
  request = postQuery redshift
  response =
    receiveXMLWrapper
      "DescribeReservedNodesResult"
      ( \s h x ->
          DescribeReservedNodesResponse'
            <$> ( x .@? "ReservedNodes" .!@ mempty
                    >>= may (parseXMLList "ReservedNode")
                )
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeReservedNodes

instance NFData DescribeReservedNodes

instance ToHeaders DescribeReservedNodes where
  toHeaders = const mempty

instance ToPath DescribeReservedNodes where
  toPath = const "/"

instance ToQuery DescribeReservedNodes where
  toQuery DescribeReservedNodes' {..} =
    mconcat
      [ "Action" =: ("DescribeReservedNodes" :: ByteString),
        "Version" =: ("2012-12-01" :: ByteString),
        "ReservedNodeId" =: _drnReservedNodeId,
        "Marker" =: _drnMarker,
        "MaxRecords" =: _drnMaxRecords
      ]

-- |
--
--
--
-- /See:/ 'describeReservedNodesResponse' smart constructor.
data DescribeReservedNodesResponse = DescribeReservedNodesResponse'
  { _drnrrsReservedNodes ::
      !( Maybe
           [ReservedNode]
       ),
    _drnrrsMarker ::
      !( Maybe
           Text
       ),
    _drnrrsResponseStatus ::
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

-- | Creates a value of 'DescribeReservedNodesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drnrrsReservedNodes' - The list of @ReservedNode@ objects.
--
-- * 'drnrrsMarker' - A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the @Marker@ parameter and retrying the command. If the @Marker@ field is empty, all response records have been retrieved for the request.
--
-- * 'drnrrsResponseStatus' - -- | The response status code.
describeReservedNodesResponse ::
  -- | 'drnrrsResponseStatus'
  Int ->
  DescribeReservedNodesResponse
describeReservedNodesResponse pResponseStatus_ =
  DescribeReservedNodesResponse'
    { _drnrrsReservedNodes =
        Nothing,
      _drnrrsMarker = Nothing,
      _drnrrsResponseStatus = pResponseStatus_
    }

-- | The list of @ReservedNode@ objects.
drnrrsReservedNodes :: Lens' DescribeReservedNodesResponse [ReservedNode]
drnrrsReservedNodes = lens _drnrrsReservedNodes (\s a -> s {_drnrrsReservedNodes = a}) . _Default . _Coerce

-- | A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the @Marker@ parameter and retrying the command. If the @Marker@ field is empty, all response records have been retrieved for the request.
drnrrsMarker :: Lens' DescribeReservedNodesResponse (Maybe Text)
drnrrsMarker = lens _drnrrsMarker (\s a -> s {_drnrrsMarker = a})

-- | -- | The response status code.
drnrrsResponseStatus :: Lens' DescribeReservedNodesResponse Int
drnrrsResponseStatus = lens _drnrrsResponseStatus (\s a -> s {_drnrrsResponseStatus = a})

instance NFData DescribeReservedNodesResponse
