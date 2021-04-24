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
-- Module      : Network.AWS.Redshift.DescribeTableRestoreStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the status of one or more table restore requests made using the 'RestoreTableFromClusterSnapshot' API action. If you don't specify a value for the @TableRestoreRequestId@ parameter, then @DescribeTableRestoreStatus@ returns the status of all table restore requests ordered by the date and time of the request in ascending order. Otherwise @DescribeTableRestoreStatus@ returns the status of the table specified by @TableRestoreRequestId@ .
--
--
--
-- This operation returns paginated results.
module Network.AWS.Redshift.DescribeTableRestoreStatus
  ( -- * Creating a Request
    describeTableRestoreStatus,
    DescribeTableRestoreStatus,

    -- * Request Lenses
    dtrsClusterIdentifier,
    dtrsMarker,
    dtrsTableRestoreRequestId,
    dtrsMaxRecords,

    -- * Destructuring the Response
    describeTableRestoreStatusResponse,
    DescribeTableRestoreStatusResponse,

    -- * Response Lenses
    dtrsrrsTableRestoreStatusDetails,
    dtrsrrsMarker,
    dtrsrrsResponseStatus,
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
-- /See:/ 'describeTableRestoreStatus' smart constructor.
data DescribeTableRestoreStatus = DescribeTableRestoreStatus'
  { _dtrsClusterIdentifier ::
      !(Maybe Text),
    _dtrsMarker ::
      !(Maybe Text),
    _dtrsTableRestoreRequestId ::
      !(Maybe Text),
    _dtrsMaxRecords ::
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

-- | Creates a value of 'DescribeTableRestoreStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtrsClusterIdentifier' - The Amazon Redshift cluster that the table is being restored to.
--
-- * 'dtrsMarker' - An optional pagination token provided by a previous @DescribeTableRestoreStatus@ request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by the @MaxRecords@ parameter.
--
-- * 'dtrsTableRestoreRequestId' - The identifier of the table restore request to return status for. If you don't specify a @TableRestoreRequestId@ value, then @DescribeTableRestoreStatus@ returns the status of all in-progress table restore requests.
--
-- * 'dtrsMaxRecords' - The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.
describeTableRestoreStatus ::
  DescribeTableRestoreStatus
describeTableRestoreStatus =
  DescribeTableRestoreStatus'
    { _dtrsClusterIdentifier =
        Nothing,
      _dtrsMarker = Nothing,
      _dtrsTableRestoreRequestId = Nothing,
      _dtrsMaxRecords = Nothing
    }

-- | The Amazon Redshift cluster that the table is being restored to.
dtrsClusterIdentifier :: Lens' DescribeTableRestoreStatus (Maybe Text)
dtrsClusterIdentifier = lens _dtrsClusterIdentifier (\s a -> s {_dtrsClusterIdentifier = a})

-- | An optional pagination token provided by a previous @DescribeTableRestoreStatus@ request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by the @MaxRecords@ parameter.
dtrsMarker :: Lens' DescribeTableRestoreStatus (Maybe Text)
dtrsMarker = lens _dtrsMarker (\s a -> s {_dtrsMarker = a})

-- | The identifier of the table restore request to return status for. If you don't specify a @TableRestoreRequestId@ value, then @DescribeTableRestoreStatus@ returns the status of all in-progress table restore requests.
dtrsTableRestoreRequestId :: Lens' DescribeTableRestoreStatus (Maybe Text)
dtrsTableRestoreRequestId = lens _dtrsTableRestoreRequestId (\s a -> s {_dtrsTableRestoreRequestId = a})

-- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.
dtrsMaxRecords :: Lens' DescribeTableRestoreStatus (Maybe Int)
dtrsMaxRecords = lens _dtrsMaxRecords (\s a -> s {_dtrsMaxRecords = a})

instance AWSPager DescribeTableRestoreStatus where
  page rq rs
    | stop (rs ^. dtrsrrsMarker) = Nothing
    | stop (rs ^. dtrsrrsTableRestoreStatusDetails) =
      Nothing
    | otherwise =
      Just $ rq & dtrsMarker .~ rs ^. dtrsrrsMarker

instance AWSRequest DescribeTableRestoreStatus where
  type
    Rs DescribeTableRestoreStatus =
      DescribeTableRestoreStatusResponse
  request = postQuery redshift
  response =
    receiveXMLWrapper
      "DescribeTableRestoreStatusResult"
      ( \s h x ->
          DescribeTableRestoreStatusResponse'
            <$> ( x .@? "TableRestoreStatusDetails" .!@ mempty
                    >>= may (parseXMLList "TableRestoreStatus")
                )
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeTableRestoreStatus

instance NFData DescribeTableRestoreStatus

instance ToHeaders DescribeTableRestoreStatus where
  toHeaders = const mempty

instance ToPath DescribeTableRestoreStatus where
  toPath = const "/"

instance ToQuery DescribeTableRestoreStatus where
  toQuery DescribeTableRestoreStatus' {..} =
    mconcat
      [ "Action"
          =: ("DescribeTableRestoreStatus" :: ByteString),
        "Version" =: ("2012-12-01" :: ByteString),
        "ClusterIdentifier" =: _dtrsClusterIdentifier,
        "Marker" =: _dtrsMarker,
        "TableRestoreRequestId"
          =: _dtrsTableRestoreRequestId,
        "MaxRecords" =: _dtrsMaxRecords
      ]

-- |
--
--
--
-- /See:/ 'describeTableRestoreStatusResponse' smart constructor.
data DescribeTableRestoreStatusResponse = DescribeTableRestoreStatusResponse'
  { _dtrsrrsTableRestoreStatusDetails ::
      !( Maybe
           [TableRestoreStatus]
       ),
    _dtrsrrsMarker ::
      !( Maybe
           Text
       ),
    _dtrsrrsResponseStatus ::
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

-- | Creates a value of 'DescribeTableRestoreStatusResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtrsrrsTableRestoreStatusDetails' - A list of status details for one or more table restore requests.
--
-- * 'dtrsrrsMarker' - A pagination token that can be used in a subsequent 'DescribeTableRestoreStatus' request.
--
-- * 'dtrsrrsResponseStatus' - -- | The response status code.
describeTableRestoreStatusResponse ::
  -- | 'dtrsrrsResponseStatus'
  Int ->
  DescribeTableRestoreStatusResponse
describeTableRestoreStatusResponse pResponseStatus_ =
  DescribeTableRestoreStatusResponse'
    { _dtrsrrsTableRestoreStatusDetails =
        Nothing,
      _dtrsrrsMarker = Nothing,
      _dtrsrrsResponseStatus =
        pResponseStatus_
    }

-- | A list of status details for one or more table restore requests.
dtrsrrsTableRestoreStatusDetails :: Lens' DescribeTableRestoreStatusResponse [TableRestoreStatus]
dtrsrrsTableRestoreStatusDetails = lens _dtrsrrsTableRestoreStatusDetails (\s a -> s {_dtrsrrsTableRestoreStatusDetails = a}) . _Default . _Coerce

-- | A pagination token that can be used in a subsequent 'DescribeTableRestoreStatus' request.
dtrsrrsMarker :: Lens' DescribeTableRestoreStatusResponse (Maybe Text)
dtrsrrsMarker = lens _dtrsrrsMarker (\s a -> s {_dtrsrrsMarker = a})

-- | -- | The response status code.
dtrsrrsResponseStatus :: Lens' DescribeTableRestoreStatusResponse Int
dtrsrrsResponseStatus = lens _dtrsrrsResponseStatus (\s a -> s {_dtrsrrsResponseStatus = a})

instance NFData DescribeTableRestoreStatusResponse
