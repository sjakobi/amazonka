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
-- Module      : Network.AWS.Redshift.DescribeSnapshotCopyGrants
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of snapshot copy grants owned by the AWS account in the destination region.
--
--
-- For more information about managing snapshot copy grants, go to <https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-db-encryption.html Amazon Redshift Database Encryption> in the /Amazon Redshift Cluster Management Guide/ .
--
--
-- This operation returns paginated results.
module Network.AWS.Redshift.DescribeSnapshotCopyGrants
  ( -- * Creating a Request
    describeSnapshotCopyGrants,
    DescribeSnapshotCopyGrants,

    -- * Request Lenses
    dscgTagKeys,
    dscgSnapshotCopyGrantName,
    dscgTagValues,
    dscgMarker,
    dscgMaxRecords,

    -- * Destructuring the Response
    describeSnapshotCopyGrantsResponse,
    DescribeSnapshotCopyGrantsResponse,

    -- * Response Lenses
    dscgrrsSnapshotCopyGrants,
    dscgrrsMarker,
    dscgrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Redshift.Types
import Network.AWS.Request
import Network.AWS.Response

-- | The result of the @DescribeSnapshotCopyGrants@ action.
--
--
--
-- /See:/ 'describeSnapshotCopyGrants' smart constructor.
data DescribeSnapshotCopyGrants = DescribeSnapshotCopyGrants'
  { _dscgTagKeys ::
      !(Maybe [Text]),
    _dscgSnapshotCopyGrantName ::
      !(Maybe Text),
    _dscgTagValues ::
      !(Maybe [Text]),
    _dscgMarker ::
      !(Maybe Text),
    _dscgMaxRecords ::
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

-- | Creates a value of 'DescribeSnapshotCopyGrants' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dscgTagKeys' - A tag key or keys for which you want to return all matching resources that are associated with the specified key or keys. For example, suppose that you have resources tagged with keys called @owner@ and @environment@ . If you specify both of these tag keys in the request, Amazon Redshift returns a response with all resources that have either or both of these tag keys associated with them.
--
-- * 'dscgSnapshotCopyGrantName' - The name of the snapshot copy grant.
--
-- * 'dscgTagValues' - A tag value or values for which you want to return all matching resources that are associated with the specified value or values. For example, suppose that you have resources tagged with values called @admin@ and @test@ . If you specify both of these tag values in the request, Amazon Redshift returns a response with all resources that have either or both of these tag values associated with them.
--
-- * 'dscgMarker' - An optional parameter that specifies the starting point to return a set of response records. When the results of a @DescribeSnapshotCopyGrant@ request exceed the value specified in @MaxRecords@ , AWS returns a value in the @Marker@ field of the response. You can retrieve the next set of response records by providing the returned marker value in the @Marker@ parameter and retrying the request.  Constraints: You can specify either the __SnapshotCopyGrantName__ parameter or the __Marker__ parameter, but not both.
--
-- * 'dscgMaxRecords' - The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified @MaxRecords@ value, a value is returned in a @marker@ field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.  Default: @100@  Constraints: minimum 20, maximum 100.
describeSnapshotCopyGrants ::
  DescribeSnapshotCopyGrants
describeSnapshotCopyGrants =
  DescribeSnapshotCopyGrants'
    { _dscgTagKeys = Nothing,
      _dscgSnapshotCopyGrantName = Nothing,
      _dscgTagValues = Nothing,
      _dscgMarker = Nothing,
      _dscgMaxRecords = Nothing
    }

-- | A tag key or keys for which you want to return all matching resources that are associated with the specified key or keys. For example, suppose that you have resources tagged with keys called @owner@ and @environment@ . If you specify both of these tag keys in the request, Amazon Redshift returns a response with all resources that have either or both of these tag keys associated with them.
dscgTagKeys :: Lens' DescribeSnapshotCopyGrants [Text]
dscgTagKeys = lens _dscgTagKeys (\s a -> s {_dscgTagKeys = a}) . _Default . _Coerce

-- | The name of the snapshot copy grant.
dscgSnapshotCopyGrantName :: Lens' DescribeSnapshotCopyGrants (Maybe Text)
dscgSnapshotCopyGrantName = lens _dscgSnapshotCopyGrantName (\s a -> s {_dscgSnapshotCopyGrantName = a})

-- | A tag value or values for which you want to return all matching resources that are associated with the specified value or values. For example, suppose that you have resources tagged with values called @admin@ and @test@ . If you specify both of these tag values in the request, Amazon Redshift returns a response with all resources that have either or both of these tag values associated with them.
dscgTagValues :: Lens' DescribeSnapshotCopyGrants [Text]
dscgTagValues = lens _dscgTagValues (\s a -> s {_dscgTagValues = a}) . _Default . _Coerce

-- | An optional parameter that specifies the starting point to return a set of response records. When the results of a @DescribeSnapshotCopyGrant@ request exceed the value specified in @MaxRecords@ , AWS returns a value in the @Marker@ field of the response. You can retrieve the next set of response records by providing the returned marker value in the @Marker@ parameter and retrying the request.  Constraints: You can specify either the __SnapshotCopyGrantName__ parameter or the __Marker__ parameter, but not both.
dscgMarker :: Lens' DescribeSnapshotCopyGrants (Maybe Text)
dscgMarker = lens _dscgMarker (\s a -> s {_dscgMarker = a})

-- | The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified @MaxRecords@ value, a value is returned in a @marker@ field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.  Default: @100@  Constraints: minimum 20, maximum 100.
dscgMaxRecords :: Lens' DescribeSnapshotCopyGrants (Maybe Int)
dscgMaxRecords = lens _dscgMaxRecords (\s a -> s {_dscgMaxRecords = a})

instance AWSPager DescribeSnapshotCopyGrants where
  page rq rs
    | stop (rs ^. dscgrrsMarker) = Nothing
    | stop (rs ^. dscgrrsSnapshotCopyGrants) = Nothing
    | otherwise =
      Just $ rq & dscgMarker .~ rs ^. dscgrrsMarker

instance AWSRequest DescribeSnapshotCopyGrants where
  type
    Rs DescribeSnapshotCopyGrants =
      DescribeSnapshotCopyGrantsResponse
  request = postQuery redshift
  response =
    receiveXMLWrapper
      "DescribeSnapshotCopyGrantsResult"
      ( \s h x ->
          DescribeSnapshotCopyGrantsResponse'
            <$> ( x .@? "SnapshotCopyGrants" .!@ mempty
                    >>= may (parseXMLList "SnapshotCopyGrant")
                )
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeSnapshotCopyGrants

instance NFData DescribeSnapshotCopyGrants

instance ToHeaders DescribeSnapshotCopyGrants where
  toHeaders = const mempty

instance ToPath DescribeSnapshotCopyGrants where
  toPath = const "/"

instance ToQuery DescribeSnapshotCopyGrants where
  toQuery DescribeSnapshotCopyGrants' {..} =
    mconcat
      [ "Action"
          =: ("DescribeSnapshotCopyGrants" :: ByteString),
        "Version" =: ("2012-12-01" :: ByteString),
        "TagKeys"
          =: toQuery (toQueryList "TagKey" <$> _dscgTagKeys),
        "SnapshotCopyGrantName"
          =: _dscgSnapshotCopyGrantName,
        "TagValues"
          =: toQuery (toQueryList "TagValue" <$> _dscgTagValues),
        "Marker" =: _dscgMarker,
        "MaxRecords" =: _dscgMaxRecords
      ]

-- |
--
--
--
-- /See:/ 'describeSnapshotCopyGrantsResponse' smart constructor.
data DescribeSnapshotCopyGrantsResponse = DescribeSnapshotCopyGrantsResponse'
  { _dscgrrsSnapshotCopyGrants ::
      !( Maybe
           [SnapshotCopyGrant]
       ),
    _dscgrrsMarker ::
      !( Maybe
           Text
       ),
    _dscgrrsResponseStatus ::
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

-- | Creates a value of 'DescribeSnapshotCopyGrantsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dscgrrsSnapshotCopyGrants' - The list of @SnapshotCopyGrant@ objects.
--
-- * 'dscgrrsMarker' - An optional parameter that specifies the starting point to return a set of response records. When the results of a @DescribeSnapshotCopyGrant@ request exceed the value specified in @MaxRecords@ , AWS returns a value in the @Marker@ field of the response. You can retrieve the next set of response records by providing the returned marker value in the @Marker@ parameter and retrying the request.  Constraints: You can specify either the __SnapshotCopyGrantName__ parameter or the __Marker__ parameter, but not both.
--
-- * 'dscgrrsResponseStatus' - -- | The response status code.
describeSnapshotCopyGrantsResponse ::
  -- | 'dscgrrsResponseStatus'
  Int ->
  DescribeSnapshotCopyGrantsResponse
describeSnapshotCopyGrantsResponse pResponseStatus_ =
  DescribeSnapshotCopyGrantsResponse'
    { _dscgrrsSnapshotCopyGrants =
        Nothing,
      _dscgrrsMarker = Nothing,
      _dscgrrsResponseStatus =
        pResponseStatus_
    }

-- | The list of @SnapshotCopyGrant@ objects.
dscgrrsSnapshotCopyGrants :: Lens' DescribeSnapshotCopyGrantsResponse [SnapshotCopyGrant]
dscgrrsSnapshotCopyGrants = lens _dscgrrsSnapshotCopyGrants (\s a -> s {_dscgrrsSnapshotCopyGrants = a}) . _Default . _Coerce

-- | An optional parameter that specifies the starting point to return a set of response records. When the results of a @DescribeSnapshotCopyGrant@ request exceed the value specified in @MaxRecords@ , AWS returns a value in the @Marker@ field of the response. You can retrieve the next set of response records by providing the returned marker value in the @Marker@ parameter and retrying the request.  Constraints: You can specify either the __SnapshotCopyGrantName__ parameter or the __Marker__ parameter, but not both.
dscgrrsMarker :: Lens' DescribeSnapshotCopyGrantsResponse (Maybe Text)
dscgrrsMarker = lens _dscgrrsMarker (\s a -> s {_dscgrrsMarker = a})

-- | -- | The response status code.
dscgrrsResponseStatus :: Lens' DescribeSnapshotCopyGrantsResponse Int
dscgrrsResponseStatus = lens _dscgrrsResponseStatus (\s a -> s {_dscgrrsResponseStatus = a})

instance NFData DescribeSnapshotCopyGrantsResponse
