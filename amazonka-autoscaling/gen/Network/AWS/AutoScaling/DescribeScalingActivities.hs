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
-- Module      : Network.AWS.AutoScaling.DescribeScalingActivities
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes one or more scaling activities for the specified Auto Scaling group.
--
--
-- To view the scaling activities from the Amazon EC2 Auto Scaling console, choose the __Activity__ tab of the Auto Scaling group. When scaling events occur, you see scaling activity messages in the __Activity history__ . For more information, see <https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-verify-scaling-activity.html Verifying a scaling activity for an Auto Scaling group> in the /Amazon EC2 Auto Scaling User Guide/ .
--
--
-- This operation returns paginated results.
module Network.AWS.AutoScaling.DescribeScalingActivities
  ( -- * Creating a Request
    describeScalingActivities,
    DescribeScalingActivities,

    -- * Request Lenses
    dsasNextToken,
    dsasActivityIds,
    dsasIncludeDeletedGroups,
    dsasAutoScalingGroupName,
    dsasMaxRecords,

    -- * Destructuring the Response
    describeScalingActivitiesResponse,
    DescribeScalingActivitiesResponse,

    -- * Response Lenses
    dsarrsNextToken,
    dsarrsResponseStatus,
    dsarrsActivities,
  )
where

import Network.AWS.AutoScaling.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeScalingActivities' smart constructor.
data DescribeScalingActivities = DescribeScalingActivities'
  { _dsasNextToken ::
      !(Maybe Text),
    _dsasActivityIds ::
      !(Maybe [Text]),
    _dsasIncludeDeletedGroups ::
      !(Maybe Bool),
    _dsasAutoScalingGroupName ::
      !(Maybe Text),
    _dsasMaxRecords ::
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

-- | Creates a value of 'DescribeScalingActivities' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsasNextToken' - The token for the next set of items to return. (You received this token from a previous call.)
--
-- * 'dsasActivityIds' - The activity IDs of the desired scaling activities. You can specify up to 50 IDs. If you omit this parameter, all activities for the past six weeks are described. If unknown activities are requested, they are ignored with no error. If you specify an Auto Scaling group, the results are limited to that group.
--
-- * 'dsasIncludeDeletedGroups' - Indicates whether to include scaling activity from deleted Auto Scaling groups.
--
-- * 'dsasAutoScalingGroupName' - The name of the Auto Scaling group.
--
-- * 'dsasMaxRecords' - The maximum number of items to return with this call. The default value is @100@ and the maximum value is @100@ .
describeScalingActivities ::
  DescribeScalingActivities
describeScalingActivities =
  DescribeScalingActivities'
    { _dsasNextToken =
        Nothing,
      _dsasActivityIds = Nothing,
      _dsasIncludeDeletedGroups = Nothing,
      _dsasAutoScalingGroupName = Nothing,
      _dsasMaxRecords = Nothing
    }

-- | The token for the next set of items to return. (You received this token from a previous call.)
dsasNextToken :: Lens' DescribeScalingActivities (Maybe Text)
dsasNextToken = lens _dsasNextToken (\s a -> s {_dsasNextToken = a})

-- | The activity IDs of the desired scaling activities. You can specify up to 50 IDs. If you omit this parameter, all activities for the past six weeks are described. If unknown activities are requested, they are ignored with no error. If you specify an Auto Scaling group, the results are limited to that group.
dsasActivityIds :: Lens' DescribeScalingActivities [Text]
dsasActivityIds = lens _dsasActivityIds (\s a -> s {_dsasActivityIds = a}) . _Default . _Coerce

-- | Indicates whether to include scaling activity from deleted Auto Scaling groups.
dsasIncludeDeletedGroups :: Lens' DescribeScalingActivities (Maybe Bool)
dsasIncludeDeletedGroups = lens _dsasIncludeDeletedGroups (\s a -> s {_dsasIncludeDeletedGroups = a})

-- | The name of the Auto Scaling group.
dsasAutoScalingGroupName :: Lens' DescribeScalingActivities (Maybe Text)
dsasAutoScalingGroupName = lens _dsasAutoScalingGroupName (\s a -> s {_dsasAutoScalingGroupName = a})

-- | The maximum number of items to return with this call. The default value is @100@ and the maximum value is @100@ .
dsasMaxRecords :: Lens' DescribeScalingActivities (Maybe Int)
dsasMaxRecords = lens _dsasMaxRecords (\s a -> s {_dsasMaxRecords = a})

instance AWSPager DescribeScalingActivities where
  page rq rs
    | stop (rs ^. dsarrsNextToken) = Nothing
    | stop (rs ^. dsarrsActivities) = Nothing
    | otherwise =
      Just $ rq & dsasNextToken .~ rs ^. dsarrsNextToken

instance AWSRequest DescribeScalingActivities where
  type
    Rs DescribeScalingActivities =
      DescribeScalingActivitiesResponse
  request = postQuery autoScaling
  response =
    receiveXMLWrapper
      "DescribeScalingActivitiesResult"
      ( \s h x ->
          DescribeScalingActivitiesResponse'
            <$> (x .@? "NextToken")
            <*> (pure (fromEnum s))
            <*> ( x .@? "Activities" .!@ mempty
                    >>= parseXMLList "member"
                )
      )

instance Hashable DescribeScalingActivities

instance NFData DescribeScalingActivities

instance ToHeaders DescribeScalingActivities where
  toHeaders = const mempty

instance ToPath DescribeScalingActivities where
  toPath = const "/"

instance ToQuery DescribeScalingActivities where
  toQuery DescribeScalingActivities' {..} =
    mconcat
      [ "Action"
          =: ("DescribeScalingActivities" :: ByteString),
        "Version" =: ("2011-01-01" :: ByteString),
        "NextToken" =: _dsasNextToken,
        "ActivityIds"
          =: toQuery (toQueryList "member" <$> _dsasActivityIds),
        "IncludeDeletedGroups" =: _dsasIncludeDeletedGroups,
        "AutoScalingGroupName" =: _dsasAutoScalingGroupName,
        "MaxRecords" =: _dsasMaxRecords
      ]

-- | /See:/ 'describeScalingActivitiesResponse' smart constructor.
data DescribeScalingActivitiesResponse = DescribeScalingActivitiesResponse'
  { _dsarrsNextToken ::
      !( Maybe
           Text
       ),
    _dsarrsResponseStatus ::
      !Int,
    _dsarrsActivities ::
      ![Activity]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeScalingActivitiesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsarrsNextToken' - A string that indicates that the response contains more items than can be returned in a single response. To receive additional items, specify this string for the @NextToken@ value when requesting the next set of items. This value is null when there are no more items to return.
--
-- * 'dsarrsResponseStatus' - -- | The response status code.
--
-- * 'dsarrsActivities' - The scaling activities. Activities are sorted by start time. Activities still in progress are described first.
describeScalingActivitiesResponse ::
  -- | 'dsarrsResponseStatus'
  Int ->
  DescribeScalingActivitiesResponse
describeScalingActivitiesResponse pResponseStatus_ =
  DescribeScalingActivitiesResponse'
    { _dsarrsNextToken =
        Nothing,
      _dsarrsResponseStatus = pResponseStatus_,
      _dsarrsActivities = mempty
    }

-- | A string that indicates that the response contains more items than can be returned in a single response. To receive additional items, specify this string for the @NextToken@ value when requesting the next set of items. This value is null when there are no more items to return.
dsarrsNextToken :: Lens' DescribeScalingActivitiesResponse (Maybe Text)
dsarrsNextToken = lens _dsarrsNextToken (\s a -> s {_dsarrsNextToken = a})

-- | -- | The response status code.
dsarrsResponseStatus :: Lens' DescribeScalingActivitiesResponse Int
dsarrsResponseStatus = lens _dsarrsResponseStatus (\s a -> s {_dsarrsResponseStatus = a})

-- | The scaling activities. Activities are sorted by start time. Activities still in progress are described first.
dsarrsActivities :: Lens' DescribeScalingActivitiesResponse [Activity]
dsarrsActivities = lens _dsarrsActivities (\s a -> s {_dsarrsActivities = a}) . _Coerce

instance NFData DescribeScalingActivitiesResponse
