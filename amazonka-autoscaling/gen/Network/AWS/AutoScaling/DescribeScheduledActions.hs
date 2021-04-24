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
-- Module      : Network.AWS.AutoScaling.DescribeScheduledActions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the actions scheduled for your Auto Scaling group that haven't run or that have not reached their end time. To describe the actions that have already run, call the 'DescribeScalingActivities' API.
--
--
--
-- This operation returns paginated results.
module Network.AWS.AutoScaling.DescribeScheduledActions
  ( -- * Creating a Request
    describeScheduledActions,
    DescribeScheduledActions,

    -- * Request Lenses
    dsaNextToken,
    dsaStartTime,
    dsaEndTime,
    dsaScheduledActionNames,
    dsaAutoScalingGroupName,
    dsaMaxRecords,

    -- * Destructuring the Response
    describeScheduledActionsResponse,
    DescribeScheduledActionsResponse,

    -- * Response Lenses
    desrsNextToken,
    desrsScheduledUpdateGroupActions,
    desrsResponseStatus,
  )
where

import Network.AWS.AutoScaling.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeScheduledActions' smart constructor.
data DescribeScheduledActions = DescribeScheduledActions'
  { _dsaNextToken ::
      !(Maybe Text),
    _dsaStartTime ::
      !(Maybe ISO8601),
    _dsaEndTime ::
      !(Maybe ISO8601),
    _dsaScheduledActionNames ::
      !(Maybe [Text]),
    _dsaAutoScalingGroupName ::
      !(Maybe Text),
    _dsaMaxRecords ::
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

-- | Creates a value of 'DescribeScheduledActions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsaNextToken' - The token for the next set of items to return. (You received this token from a previous call.)
--
-- * 'dsaStartTime' - The earliest scheduled start time to return. If scheduled action names are provided, this parameter is ignored.
--
-- * 'dsaEndTime' - The latest scheduled start time to return. If scheduled action names are provided, this parameter is ignored.
--
-- * 'dsaScheduledActionNames' - The names of one or more scheduled actions. You can specify up to 50 actions. If you omit this parameter, all scheduled actions are described. If you specify an unknown scheduled action, it is ignored with no error.
--
-- * 'dsaAutoScalingGroupName' - The name of the Auto Scaling group.
--
-- * 'dsaMaxRecords' - The maximum number of items to return with this call. The default value is @50@ and the maximum value is @100@ .
describeScheduledActions ::
  DescribeScheduledActions
describeScheduledActions =
  DescribeScheduledActions'
    { _dsaNextToken = Nothing,
      _dsaStartTime = Nothing,
      _dsaEndTime = Nothing,
      _dsaScheduledActionNames = Nothing,
      _dsaAutoScalingGroupName = Nothing,
      _dsaMaxRecords = Nothing
    }

-- | The token for the next set of items to return. (You received this token from a previous call.)
dsaNextToken :: Lens' DescribeScheduledActions (Maybe Text)
dsaNextToken = lens _dsaNextToken (\s a -> s {_dsaNextToken = a})

-- | The earliest scheduled start time to return. If scheduled action names are provided, this parameter is ignored.
dsaStartTime :: Lens' DescribeScheduledActions (Maybe UTCTime)
dsaStartTime = lens _dsaStartTime (\s a -> s {_dsaStartTime = a}) . mapping _Time

-- | The latest scheduled start time to return. If scheduled action names are provided, this parameter is ignored.
dsaEndTime :: Lens' DescribeScheduledActions (Maybe UTCTime)
dsaEndTime = lens _dsaEndTime (\s a -> s {_dsaEndTime = a}) . mapping _Time

-- | The names of one or more scheduled actions. You can specify up to 50 actions. If you omit this parameter, all scheduled actions are described. If you specify an unknown scheduled action, it is ignored with no error.
dsaScheduledActionNames :: Lens' DescribeScheduledActions [Text]
dsaScheduledActionNames = lens _dsaScheduledActionNames (\s a -> s {_dsaScheduledActionNames = a}) . _Default . _Coerce

-- | The name of the Auto Scaling group.
dsaAutoScalingGroupName :: Lens' DescribeScheduledActions (Maybe Text)
dsaAutoScalingGroupName = lens _dsaAutoScalingGroupName (\s a -> s {_dsaAutoScalingGroupName = a})

-- | The maximum number of items to return with this call. The default value is @50@ and the maximum value is @100@ .
dsaMaxRecords :: Lens' DescribeScheduledActions (Maybe Int)
dsaMaxRecords = lens _dsaMaxRecords (\s a -> s {_dsaMaxRecords = a})

instance AWSPager DescribeScheduledActions where
  page rq rs
    | stop (rs ^. desrsNextToken) = Nothing
    | stop (rs ^. desrsScheduledUpdateGroupActions) =
      Nothing
    | otherwise =
      Just $ rq & dsaNextToken .~ rs ^. desrsNextToken

instance AWSRequest DescribeScheduledActions where
  type
    Rs DescribeScheduledActions =
      DescribeScheduledActionsResponse
  request = postQuery autoScaling
  response =
    receiveXMLWrapper
      "DescribeScheduledActionsResult"
      ( \s h x ->
          DescribeScheduledActionsResponse'
            <$> (x .@? "NextToken")
            <*> ( x .@? "ScheduledUpdateGroupActions" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeScheduledActions

instance NFData DescribeScheduledActions

instance ToHeaders DescribeScheduledActions where
  toHeaders = const mempty

instance ToPath DescribeScheduledActions where
  toPath = const "/"

instance ToQuery DescribeScheduledActions where
  toQuery DescribeScheduledActions' {..} =
    mconcat
      [ "Action"
          =: ("DescribeScheduledActions" :: ByteString),
        "Version" =: ("2011-01-01" :: ByteString),
        "NextToken" =: _dsaNextToken,
        "StartTime" =: _dsaStartTime,
        "EndTime" =: _dsaEndTime,
        "ScheduledActionNames"
          =: toQuery
            (toQueryList "member" <$> _dsaScheduledActionNames),
        "AutoScalingGroupName" =: _dsaAutoScalingGroupName,
        "MaxRecords" =: _dsaMaxRecords
      ]

-- | /See:/ 'describeScheduledActionsResponse' smart constructor.
data DescribeScheduledActionsResponse = DescribeScheduledActionsResponse'
  { _desrsNextToken ::
      !( Maybe
           Text
       ),
    _desrsScheduledUpdateGroupActions ::
      !( Maybe
           [ScheduledUpdateGroupAction]
       ),
    _desrsResponseStatus ::
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

-- | Creates a value of 'DescribeScheduledActionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desrsNextToken' - A string that indicates that the response contains more items than can be returned in a single response. To receive additional items, specify this string for the @NextToken@ value when requesting the next set of items. This value is null when there are no more items to return.
--
-- * 'desrsScheduledUpdateGroupActions' - The scheduled actions.
--
-- * 'desrsResponseStatus' - -- | The response status code.
describeScheduledActionsResponse ::
  -- | 'desrsResponseStatus'
  Int ->
  DescribeScheduledActionsResponse
describeScheduledActionsResponse pResponseStatus_ =
  DescribeScheduledActionsResponse'
    { _desrsNextToken =
        Nothing,
      _desrsScheduledUpdateGroupActions =
        Nothing,
      _desrsResponseStatus = pResponseStatus_
    }

-- | A string that indicates that the response contains more items than can be returned in a single response. To receive additional items, specify this string for the @NextToken@ value when requesting the next set of items. This value is null when there are no more items to return.
desrsNextToken :: Lens' DescribeScheduledActionsResponse (Maybe Text)
desrsNextToken = lens _desrsNextToken (\s a -> s {_desrsNextToken = a})

-- | The scheduled actions.
desrsScheduledUpdateGroupActions :: Lens' DescribeScheduledActionsResponse [ScheduledUpdateGroupAction]
desrsScheduledUpdateGroupActions = lens _desrsScheduledUpdateGroupActions (\s a -> s {_desrsScheduledUpdateGroupActions = a}) . _Default . _Coerce

-- | -- | The response status code.
desrsResponseStatus :: Lens' DescribeScheduledActionsResponse Int
desrsResponseStatus = lens _desrsResponseStatus (\s a -> s {_desrsResponseStatus = a})

instance NFData DescribeScheduledActionsResponse
