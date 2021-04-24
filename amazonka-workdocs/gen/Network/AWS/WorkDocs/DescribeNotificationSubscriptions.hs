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
-- Module      : Network.AWS.WorkDocs.DescribeNotificationSubscriptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the specified notification subscriptions.
--
--
--
-- This operation returns paginated results.
module Network.AWS.WorkDocs.DescribeNotificationSubscriptions
  ( -- * Creating a Request
    describeNotificationSubscriptions,
    DescribeNotificationSubscriptions,

    -- * Request Lenses
    dnssLimit,
    dnssMarker,
    dnssOrganizationId,

    -- * Destructuring the Response
    describeNotificationSubscriptionsResponse,
    DescribeNotificationSubscriptionsResponse,

    -- * Response Lenses
    dnsrrsSubscriptions,
    dnsrrsMarker,
    dnsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkDocs.Types

-- | /See:/ 'describeNotificationSubscriptions' smart constructor.
data DescribeNotificationSubscriptions = DescribeNotificationSubscriptions'
  { _dnssLimit ::
      !( Maybe
           Nat
       ),
    _dnssMarker ::
      !( Maybe
           Text
       ),
    _dnssOrganizationId ::
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

-- | Creates a value of 'DescribeNotificationSubscriptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dnssLimit' - The maximum number of items to return with this call.
--
-- * 'dnssMarker' - The marker for the next set of results. (You received this marker from a previous call.)
--
-- * 'dnssOrganizationId' - The ID of the organization.
describeNotificationSubscriptions ::
  -- | 'dnssOrganizationId'
  Text ->
  DescribeNotificationSubscriptions
describeNotificationSubscriptions pOrganizationId_ =
  DescribeNotificationSubscriptions'
    { _dnssLimit =
        Nothing,
      _dnssMarker = Nothing,
      _dnssOrganizationId = pOrganizationId_
    }

-- | The maximum number of items to return with this call.
dnssLimit :: Lens' DescribeNotificationSubscriptions (Maybe Natural)
dnssLimit = lens _dnssLimit (\s a -> s {_dnssLimit = a}) . mapping _Nat

-- | The marker for the next set of results. (You received this marker from a previous call.)
dnssMarker :: Lens' DescribeNotificationSubscriptions (Maybe Text)
dnssMarker = lens _dnssMarker (\s a -> s {_dnssMarker = a})

-- | The ID of the organization.
dnssOrganizationId :: Lens' DescribeNotificationSubscriptions Text
dnssOrganizationId = lens _dnssOrganizationId (\s a -> s {_dnssOrganizationId = a})

instance AWSPager DescribeNotificationSubscriptions where
  page rq rs
    | stop (rs ^. dnsrrsMarker) = Nothing
    | stop (rs ^. dnsrrsSubscriptions) = Nothing
    | otherwise =
      Just $ rq & dnssMarker .~ rs ^. dnsrrsMarker

instance AWSRequest DescribeNotificationSubscriptions where
  type
    Rs DescribeNotificationSubscriptions =
      DescribeNotificationSubscriptionsResponse
  request = get workDocs
  response =
    receiveJSON
      ( \s h x ->
          DescribeNotificationSubscriptionsResponse'
            <$> (x .?> "Subscriptions" .!@ mempty)
            <*> (x .?> "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeNotificationSubscriptions

instance NFData DescribeNotificationSubscriptions

instance ToHeaders DescribeNotificationSubscriptions where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DescribeNotificationSubscriptions where
  toPath DescribeNotificationSubscriptions' {..} =
    mconcat
      [ "/api/v1/organizations/",
        toBS _dnssOrganizationId,
        "/subscriptions"
      ]

instance ToQuery DescribeNotificationSubscriptions where
  toQuery DescribeNotificationSubscriptions' {..} =
    mconcat
      ["limit" =: _dnssLimit, "marker" =: _dnssMarker]

-- | /See:/ 'describeNotificationSubscriptionsResponse' smart constructor.
data DescribeNotificationSubscriptionsResponse = DescribeNotificationSubscriptionsResponse'
  { _dnsrrsSubscriptions ::
      !( Maybe
           [Subscription]
       ),
    _dnsrrsMarker ::
      !( Maybe
           Text
       ),
    _dnsrrsResponseStatus ::
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

-- | Creates a value of 'DescribeNotificationSubscriptionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dnsrrsSubscriptions' - The subscriptions.
--
-- * 'dnsrrsMarker' - The marker to use when requesting the next set of results. If there are no additional results, the string is empty.
--
-- * 'dnsrrsResponseStatus' - -- | The response status code.
describeNotificationSubscriptionsResponse ::
  -- | 'dnsrrsResponseStatus'
  Int ->
  DescribeNotificationSubscriptionsResponse
describeNotificationSubscriptionsResponse
  pResponseStatus_ =
    DescribeNotificationSubscriptionsResponse'
      { _dnsrrsSubscriptions =
          Nothing,
        _dnsrrsMarker = Nothing,
        _dnsrrsResponseStatus =
          pResponseStatus_
      }

-- | The subscriptions.
dnsrrsSubscriptions :: Lens' DescribeNotificationSubscriptionsResponse [Subscription]
dnsrrsSubscriptions = lens _dnsrrsSubscriptions (\s a -> s {_dnsrrsSubscriptions = a}) . _Default . _Coerce

-- | The marker to use when requesting the next set of results. If there are no additional results, the string is empty.
dnsrrsMarker :: Lens' DescribeNotificationSubscriptionsResponse (Maybe Text)
dnsrrsMarker = lens _dnsrrsMarker (\s a -> s {_dnsrrsMarker = a})

-- | -- | The response status code.
dnsrrsResponseStatus :: Lens' DescribeNotificationSubscriptionsResponse Int
dnsrrsResponseStatus = lens _dnsrrsResponseStatus (\s a -> s {_dnsrrsResponseStatus = a})

instance
  NFData
    DescribeNotificationSubscriptionsResponse
