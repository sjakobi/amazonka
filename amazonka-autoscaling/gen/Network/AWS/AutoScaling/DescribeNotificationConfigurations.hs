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
-- Module      : Network.AWS.AutoScaling.DescribeNotificationConfigurations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the notification actions associated with the specified Auto Scaling group.
--
--
--
-- This operation returns paginated results.
module Network.AWS.AutoScaling.DescribeNotificationConfigurations
  ( -- * Creating a Request
    describeNotificationConfigurations,
    DescribeNotificationConfigurations,

    -- * Request Lenses
    dncNextToken,
    dncAutoScalingGroupNames,
    dncMaxRecords,

    -- * Destructuring the Response
    describeNotificationConfigurationsResponse,
    DescribeNotificationConfigurationsResponse,

    -- * Response Lenses
    dncrrsNextToken,
    dncrrsResponseStatus,
    dncrrsNotificationConfigurations,
  )
where

import Network.AWS.AutoScaling.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeNotificationConfigurations' smart constructor.
data DescribeNotificationConfigurations = DescribeNotificationConfigurations'
  { _dncNextToken ::
      !( Maybe
           Text
       ),
    _dncAutoScalingGroupNames ::
      !( Maybe
           [Text]
       ),
    _dncMaxRecords ::
      !( Maybe
           Int
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

-- | Creates a value of 'DescribeNotificationConfigurations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dncNextToken' - The token for the next set of items to return. (You received this token from a previous call.)
--
-- * 'dncAutoScalingGroupNames' - The name of the Auto Scaling group.
--
-- * 'dncMaxRecords' - The maximum number of items to return with this call. The default value is @50@ and the maximum value is @100@ .
describeNotificationConfigurations ::
  DescribeNotificationConfigurations
describeNotificationConfigurations =
  DescribeNotificationConfigurations'
    { _dncNextToken =
        Nothing,
      _dncAutoScalingGroupNames = Nothing,
      _dncMaxRecords = Nothing
    }

-- | The token for the next set of items to return. (You received this token from a previous call.)
dncNextToken :: Lens' DescribeNotificationConfigurations (Maybe Text)
dncNextToken = lens _dncNextToken (\s a -> s {_dncNextToken = a})

-- | The name of the Auto Scaling group.
dncAutoScalingGroupNames :: Lens' DescribeNotificationConfigurations [Text]
dncAutoScalingGroupNames = lens _dncAutoScalingGroupNames (\s a -> s {_dncAutoScalingGroupNames = a}) . _Default . _Coerce

-- | The maximum number of items to return with this call. The default value is @50@ and the maximum value is @100@ .
dncMaxRecords :: Lens' DescribeNotificationConfigurations (Maybe Int)
dncMaxRecords = lens _dncMaxRecords (\s a -> s {_dncMaxRecords = a})

instance AWSPager DescribeNotificationConfigurations where
  page rq rs
    | stop (rs ^. dncrrsNextToken) = Nothing
    | stop (rs ^. dncrrsNotificationConfigurations) =
      Nothing
    | otherwise =
      Just $ rq & dncNextToken .~ rs ^. dncrrsNextToken

instance
  AWSRequest
    DescribeNotificationConfigurations
  where
  type
    Rs DescribeNotificationConfigurations =
      DescribeNotificationConfigurationsResponse
  request = postQuery autoScaling
  response =
    receiveXMLWrapper
      "DescribeNotificationConfigurationsResult"
      ( \s h x ->
          DescribeNotificationConfigurationsResponse'
            <$> (x .@? "NextToken")
            <*> (pure (fromEnum s))
            <*> ( x .@? "NotificationConfigurations" .!@ mempty
                    >>= parseXMLList "member"
                )
      )

instance Hashable DescribeNotificationConfigurations

instance NFData DescribeNotificationConfigurations

instance ToHeaders DescribeNotificationConfigurations where
  toHeaders = const mempty

instance ToPath DescribeNotificationConfigurations where
  toPath = const "/"

instance ToQuery DescribeNotificationConfigurations where
  toQuery DescribeNotificationConfigurations' {..} =
    mconcat
      [ "Action"
          =: ("DescribeNotificationConfigurations" :: ByteString),
        "Version" =: ("2011-01-01" :: ByteString),
        "NextToken" =: _dncNextToken,
        "AutoScalingGroupNames"
          =: toQuery
            (toQueryList "member" <$> _dncAutoScalingGroupNames),
        "MaxRecords" =: _dncMaxRecords
      ]

-- | /See:/ 'describeNotificationConfigurationsResponse' smart constructor.
data DescribeNotificationConfigurationsResponse = DescribeNotificationConfigurationsResponse'
  { _dncrrsNextToken ::
      !( Maybe
           Text
       ),
    _dncrrsResponseStatus ::
      !Int,
    _dncrrsNotificationConfigurations ::
      ![NotificationConfiguration]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeNotificationConfigurationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dncrrsNextToken' - A string that indicates that the response contains more items than can be returned in a single response. To receive additional items, specify this string for the @NextToken@ value when requesting the next set of items. This value is null when there are no more items to return.
--
-- * 'dncrrsResponseStatus' - -- | The response status code.
--
-- * 'dncrrsNotificationConfigurations' - The notification configurations.
describeNotificationConfigurationsResponse ::
  -- | 'dncrrsResponseStatus'
  Int ->
  DescribeNotificationConfigurationsResponse
describeNotificationConfigurationsResponse
  pResponseStatus_ =
    DescribeNotificationConfigurationsResponse'
      { _dncrrsNextToken =
          Nothing,
        _dncrrsResponseStatus =
          pResponseStatus_,
        _dncrrsNotificationConfigurations =
          mempty
      }

-- | A string that indicates that the response contains more items than can be returned in a single response. To receive additional items, specify this string for the @NextToken@ value when requesting the next set of items. This value is null when there are no more items to return.
dncrrsNextToken :: Lens' DescribeNotificationConfigurationsResponse (Maybe Text)
dncrrsNextToken = lens _dncrrsNextToken (\s a -> s {_dncrrsNextToken = a})

-- | -- | The response status code.
dncrrsResponseStatus :: Lens' DescribeNotificationConfigurationsResponse Int
dncrrsResponseStatus = lens _dncrrsResponseStatus (\s a -> s {_dncrrsResponseStatus = a})

-- | The notification configurations.
dncrrsNotificationConfigurations :: Lens' DescribeNotificationConfigurationsResponse [NotificationConfiguration]
dncrrsNotificationConfigurations = lens _dncrrsNotificationConfigurations (\s a -> s {_dncrrsNotificationConfigurations = a}) . _Coerce

instance
  NFData
    DescribeNotificationConfigurationsResponse
