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
-- Module      : Network.AWS.AutoScaling.DescribeAutoScalingGroups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes one or more Auto Scaling groups.
--
--
--
-- This operation returns paginated results.
module Network.AWS.AutoScaling.DescribeAutoScalingGroups
  ( -- * Creating a Request
    describeAutoScalingGroups,
    DescribeAutoScalingGroups,

    -- * Request Lenses
    dasgNextToken,
    dasgAutoScalingGroupNames,
    dasgMaxRecords,

    -- * Destructuring the Response
    describeAutoScalingGroupsResponse,
    DescribeAutoScalingGroupsResponse,

    -- * Response Lenses
    dasgrrsNextToken,
    dasgrrsResponseStatus,
    dasgrrsAutoScalingGroups,
  )
where

import Network.AWS.AutoScaling.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeAutoScalingGroups' smart constructor.
data DescribeAutoScalingGroups = DescribeAutoScalingGroups'
  { _dasgNextToken ::
      !(Maybe Text),
    _dasgAutoScalingGroupNames ::
      !(Maybe [Text]),
    _dasgMaxRecords ::
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

-- | Creates a value of 'DescribeAutoScalingGroups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dasgNextToken' - The token for the next set of items to return. (You received this token from a previous call.)
--
-- * 'dasgAutoScalingGroupNames' - The names of the Auto Scaling groups. By default, you can only specify up to 50 names. You can optionally increase this limit using the @MaxRecords@ parameter. If you omit this parameter, all Auto Scaling groups are described.
--
-- * 'dasgMaxRecords' - The maximum number of items to return with this call. The default value is @50@ and the maximum value is @100@ .
describeAutoScalingGroups ::
  DescribeAutoScalingGroups
describeAutoScalingGroups =
  DescribeAutoScalingGroups'
    { _dasgNextToken =
        Nothing,
      _dasgAutoScalingGroupNames = Nothing,
      _dasgMaxRecords = Nothing
    }

-- | The token for the next set of items to return. (You received this token from a previous call.)
dasgNextToken :: Lens' DescribeAutoScalingGroups (Maybe Text)
dasgNextToken = lens _dasgNextToken (\s a -> s {_dasgNextToken = a})

-- | The names of the Auto Scaling groups. By default, you can only specify up to 50 names. You can optionally increase this limit using the @MaxRecords@ parameter. If you omit this parameter, all Auto Scaling groups are described.
dasgAutoScalingGroupNames :: Lens' DescribeAutoScalingGroups [Text]
dasgAutoScalingGroupNames = lens _dasgAutoScalingGroupNames (\s a -> s {_dasgAutoScalingGroupNames = a}) . _Default . _Coerce

-- | The maximum number of items to return with this call. The default value is @50@ and the maximum value is @100@ .
dasgMaxRecords :: Lens' DescribeAutoScalingGroups (Maybe Int)
dasgMaxRecords = lens _dasgMaxRecords (\s a -> s {_dasgMaxRecords = a})

instance AWSPager DescribeAutoScalingGroups where
  page rq rs
    | stop (rs ^. dasgrrsNextToken) = Nothing
    | stop (rs ^. dasgrrsAutoScalingGroups) = Nothing
    | otherwise =
      Just $ rq & dasgNextToken .~ rs ^. dasgrrsNextToken

instance AWSRequest DescribeAutoScalingGroups where
  type
    Rs DescribeAutoScalingGroups =
      DescribeAutoScalingGroupsResponse
  request = postQuery autoScaling
  response =
    receiveXMLWrapper
      "DescribeAutoScalingGroupsResult"
      ( \s h x ->
          DescribeAutoScalingGroupsResponse'
            <$> (x .@? "NextToken")
            <*> (pure (fromEnum s))
            <*> ( x .@? "AutoScalingGroups" .!@ mempty
                    >>= parseXMLList "member"
                )
      )

instance Hashable DescribeAutoScalingGroups

instance NFData DescribeAutoScalingGroups

instance ToHeaders DescribeAutoScalingGroups where
  toHeaders = const mempty

instance ToPath DescribeAutoScalingGroups where
  toPath = const "/"

instance ToQuery DescribeAutoScalingGroups where
  toQuery DescribeAutoScalingGroups' {..} =
    mconcat
      [ "Action"
          =: ("DescribeAutoScalingGroups" :: ByteString),
        "Version" =: ("2011-01-01" :: ByteString),
        "NextToken" =: _dasgNextToken,
        "AutoScalingGroupNames"
          =: toQuery
            ( toQueryList "member"
                <$> _dasgAutoScalingGroupNames
            ),
        "MaxRecords" =: _dasgMaxRecords
      ]

-- | /See:/ 'describeAutoScalingGroupsResponse' smart constructor.
data DescribeAutoScalingGroupsResponse = DescribeAutoScalingGroupsResponse'
  { _dasgrrsNextToken ::
      !( Maybe
           Text
       ),
    _dasgrrsResponseStatus ::
      !Int,
    _dasgrrsAutoScalingGroups ::
      ![AutoScalingGroup]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeAutoScalingGroupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dasgrrsNextToken' - A string that indicates that the response contains more items than can be returned in a single response. To receive additional items, specify this string for the @NextToken@ value when requesting the next set of items. This value is null when there are no more items to return.
--
-- * 'dasgrrsResponseStatus' - -- | The response status code.
--
-- * 'dasgrrsAutoScalingGroups' - The groups.
describeAutoScalingGroupsResponse ::
  -- | 'dasgrrsResponseStatus'
  Int ->
  DescribeAutoScalingGroupsResponse
describeAutoScalingGroupsResponse pResponseStatus_ =
  DescribeAutoScalingGroupsResponse'
    { _dasgrrsNextToken =
        Nothing,
      _dasgrrsResponseStatus =
        pResponseStatus_,
      _dasgrrsAutoScalingGroups = mempty
    }

-- | A string that indicates that the response contains more items than can be returned in a single response. To receive additional items, specify this string for the @NextToken@ value when requesting the next set of items. This value is null when there are no more items to return.
dasgrrsNextToken :: Lens' DescribeAutoScalingGroupsResponse (Maybe Text)
dasgrrsNextToken = lens _dasgrrsNextToken (\s a -> s {_dasgrrsNextToken = a})

-- | -- | The response status code.
dasgrrsResponseStatus :: Lens' DescribeAutoScalingGroupsResponse Int
dasgrrsResponseStatus = lens _dasgrrsResponseStatus (\s a -> s {_dasgrrsResponseStatus = a})

-- | The groups.
dasgrrsAutoScalingGroups :: Lens' DescribeAutoScalingGroupsResponse [AutoScalingGroup]
dasgrrsAutoScalingGroups = lens _dasgrrsAutoScalingGroups (\s a -> s {_dasgrrsAutoScalingGroups = a}) . _Coerce

instance NFData DescribeAutoScalingGroupsResponse
