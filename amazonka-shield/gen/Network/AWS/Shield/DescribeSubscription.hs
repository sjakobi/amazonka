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
-- Module      : Network.AWS.Shield.DescribeSubscription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides details about the AWS Shield Advanced subscription for an account.
module Network.AWS.Shield.DescribeSubscription
  ( -- * Creating a Request
    describeSubscription,
    DescribeSubscription,

    -- * Destructuring the Response
    describeSubscriptionResponse,
    DescribeSubscriptionResponse,

    -- * Response Lenses
    dsrrsSubscription,
    dsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Shield.Types

-- | /See:/ 'describeSubscription' smart constructor.
data DescribeSubscription = DescribeSubscription'
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeSubscription' with the minimum fields required to make a request.
describeSubscription ::
  DescribeSubscription
describeSubscription = DescribeSubscription'

instance AWSRequest DescribeSubscription where
  type
    Rs DescribeSubscription =
      DescribeSubscriptionResponse
  request = postJSON shield
  response =
    receiveJSON
      ( \s h x ->
          DescribeSubscriptionResponse'
            <$> (x .?> "Subscription") <*> (pure (fromEnum s))
      )

instance Hashable DescribeSubscription

instance NFData DescribeSubscription

instance ToHeaders DescribeSubscription where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSShield_20160616.DescribeSubscription" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeSubscription where
  toJSON = const (Object mempty)

instance ToPath DescribeSubscription where
  toPath = const "/"

instance ToQuery DescribeSubscription where
  toQuery = const mempty

-- | /See:/ 'describeSubscriptionResponse' smart constructor.
data DescribeSubscriptionResponse = DescribeSubscriptionResponse'
  { _dsrrsSubscription ::
      !( Maybe
           Subscription
       ),
    _dsrrsResponseStatus ::
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

-- | Creates a value of 'DescribeSubscriptionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsrrsSubscription' - The AWS Shield Advanced subscription details for an account.
--
-- * 'dsrrsResponseStatus' - -- | The response status code.
describeSubscriptionResponse ::
  -- | 'dsrrsResponseStatus'
  Int ->
  DescribeSubscriptionResponse
describeSubscriptionResponse pResponseStatus_ =
  DescribeSubscriptionResponse'
    { _dsrrsSubscription =
        Nothing,
      _dsrrsResponseStatus = pResponseStatus_
    }

-- | The AWS Shield Advanced subscription details for an account.
dsrrsSubscription :: Lens' DescribeSubscriptionResponse (Maybe Subscription)
dsrrsSubscription = lens _dsrrsSubscription (\s a -> s {_dsrrsSubscription = a})

-- | -- | The response status code.
dsrrsResponseStatus :: Lens' DescribeSubscriptionResponse Int
dsrrsResponseStatus = lens _dsrrsResponseStatus (\s a -> s {_dsrrsResponseStatus = a})

instance NFData DescribeSubscriptionResponse
