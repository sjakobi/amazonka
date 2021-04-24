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
-- Module      : Network.AWS.AutoScaling.DescribeInstanceRefreshes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes one or more instance refreshes.
--
--
-- You can determine the status of a request by looking at the @Status@ parameter. The following are the possible statuses:
--
--     * @Pending@ - The request was created, but the operation has not started.
--
--     * @InProgress@ - The operation is in progress.
--
--     * @Successful@ - The operation completed successfully.
--
--     * @Failed@ - The operation failed to complete. You can troubleshoot using the status reason and the scaling activities.
--
--     * @Cancelling@ - An ongoing operation is being cancelled. Cancellation does not roll back any replacements that have already been completed, but it prevents new replacements from being started.
--
--     * @Cancelled@ - The operation is cancelled.
--
--
--
-- For more information, see <https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-refresh.html Replacing Auto Scaling Instances Based on an Instance Refresh> .
module Network.AWS.AutoScaling.DescribeInstanceRefreshes
  ( -- * Creating a Request
    describeInstanceRefreshes,
    DescribeInstanceRefreshes,

    -- * Request Lenses
    dirNextToken,
    dirInstanceRefreshIds,
    dirMaxRecords,
    dirAutoScalingGroupName,

    -- * Destructuring the Response
    describeInstanceRefreshesResponse,
    DescribeInstanceRefreshesResponse,

    -- * Response Lenses
    dirrrsNextToken,
    dirrrsInstanceRefreshes,
    dirrrsResponseStatus,
  )
where

import Network.AWS.AutoScaling.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeInstanceRefreshes' smart constructor.
data DescribeInstanceRefreshes = DescribeInstanceRefreshes'
  { _dirNextToken ::
      !(Maybe Text),
    _dirInstanceRefreshIds ::
      !(Maybe [Text]),
    _dirMaxRecords ::
      !(Maybe Int),
    _dirAutoScalingGroupName ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeInstanceRefreshes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dirNextToken' - The token for the next set of items to return. (You received this token from a previous call.)
--
-- * 'dirInstanceRefreshIds' - One or more instance refresh IDs.
--
-- * 'dirMaxRecords' - The maximum number of items to return with this call. The default value is @50@ and the maximum value is @100@ .
--
-- * 'dirAutoScalingGroupName' - The name of the Auto Scaling group.
describeInstanceRefreshes ::
  -- | 'dirAutoScalingGroupName'
  Text ->
  DescribeInstanceRefreshes
describeInstanceRefreshes pAutoScalingGroupName_ =
  DescribeInstanceRefreshes'
    { _dirNextToken = Nothing,
      _dirInstanceRefreshIds = Nothing,
      _dirMaxRecords = Nothing,
      _dirAutoScalingGroupName =
        pAutoScalingGroupName_
    }

-- | The token for the next set of items to return. (You received this token from a previous call.)
dirNextToken :: Lens' DescribeInstanceRefreshes (Maybe Text)
dirNextToken = lens _dirNextToken (\s a -> s {_dirNextToken = a})

-- | One or more instance refresh IDs.
dirInstanceRefreshIds :: Lens' DescribeInstanceRefreshes [Text]
dirInstanceRefreshIds = lens _dirInstanceRefreshIds (\s a -> s {_dirInstanceRefreshIds = a}) . _Default . _Coerce

-- | The maximum number of items to return with this call. The default value is @50@ and the maximum value is @100@ .
dirMaxRecords :: Lens' DescribeInstanceRefreshes (Maybe Int)
dirMaxRecords = lens _dirMaxRecords (\s a -> s {_dirMaxRecords = a})

-- | The name of the Auto Scaling group.
dirAutoScalingGroupName :: Lens' DescribeInstanceRefreshes Text
dirAutoScalingGroupName = lens _dirAutoScalingGroupName (\s a -> s {_dirAutoScalingGroupName = a})

instance AWSRequest DescribeInstanceRefreshes where
  type
    Rs DescribeInstanceRefreshes =
      DescribeInstanceRefreshesResponse
  request = postQuery autoScaling
  response =
    receiveXMLWrapper
      "DescribeInstanceRefreshesResult"
      ( \s h x ->
          DescribeInstanceRefreshesResponse'
            <$> (x .@? "NextToken")
            <*> ( x .@? "InstanceRefreshes" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeInstanceRefreshes

instance NFData DescribeInstanceRefreshes

instance ToHeaders DescribeInstanceRefreshes where
  toHeaders = const mempty

instance ToPath DescribeInstanceRefreshes where
  toPath = const "/"

instance ToQuery DescribeInstanceRefreshes where
  toQuery DescribeInstanceRefreshes' {..} =
    mconcat
      [ "Action"
          =: ("DescribeInstanceRefreshes" :: ByteString),
        "Version" =: ("2011-01-01" :: ByteString),
        "NextToken" =: _dirNextToken,
        "InstanceRefreshIds"
          =: toQuery
            (toQueryList "member" <$> _dirInstanceRefreshIds),
        "MaxRecords" =: _dirMaxRecords,
        "AutoScalingGroupName" =: _dirAutoScalingGroupName
      ]

-- | /See:/ 'describeInstanceRefreshesResponse' smart constructor.
data DescribeInstanceRefreshesResponse = DescribeInstanceRefreshesResponse'
  { _dirrrsNextToken ::
      !( Maybe
           Text
       ),
    _dirrrsInstanceRefreshes ::
      !( Maybe
           [InstanceRefresh]
       ),
    _dirrrsResponseStatus ::
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

-- | Creates a value of 'DescribeInstanceRefreshesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dirrrsNextToken' - A string that indicates that the response contains more items than can be returned in a single response. To receive additional items, specify this string for the @NextToken@ value when requesting the next set of items. This value is null when there are no more items to return.
--
-- * 'dirrrsInstanceRefreshes' - The instance refreshes for the specified group.
--
-- * 'dirrrsResponseStatus' - -- | The response status code.
describeInstanceRefreshesResponse ::
  -- | 'dirrrsResponseStatus'
  Int ->
  DescribeInstanceRefreshesResponse
describeInstanceRefreshesResponse pResponseStatus_ =
  DescribeInstanceRefreshesResponse'
    { _dirrrsNextToken =
        Nothing,
      _dirrrsInstanceRefreshes = Nothing,
      _dirrrsResponseStatus = pResponseStatus_
    }

-- | A string that indicates that the response contains more items than can be returned in a single response. To receive additional items, specify this string for the @NextToken@ value when requesting the next set of items. This value is null when there are no more items to return.
dirrrsNextToken :: Lens' DescribeInstanceRefreshesResponse (Maybe Text)
dirrrsNextToken = lens _dirrrsNextToken (\s a -> s {_dirrrsNextToken = a})

-- | The instance refreshes for the specified group.
dirrrsInstanceRefreshes :: Lens' DescribeInstanceRefreshesResponse [InstanceRefresh]
dirrrsInstanceRefreshes = lens _dirrrsInstanceRefreshes (\s a -> s {_dirrrsInstanceRefreshes = a}) . _Default . _Coerce

-- | -- | The response status code.
dirrrsResponseStatus :: Lens' DescribeInstanceRefreshesResponse Int
dirrrsResponseStatus = lens _dirrrsResponseStatus (\s a -> s {_dirrrsResponseStatus = a})

instance NFData DescribeInstanceRefreshesResponse
