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
-- Module      : Network.AWS.SNS.ListSubscriptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of the requester's subscriptions. Each call returns a limited list of subscriptions, up to 100. If there are more subscriptions, a @NextToken@ is also returned. Use the @NextToken@ parameter in a new @ListSubscriptions@ call to get further results.
--
--
-- This action is throttled at 30 transactions per second (TPS).
--
--
-- This operation returns paginated results.
module Network.AWS.SNS.ListSubscriptions
  ( -- * Creating a Request
    listSubscriptions,
    ListSubscriptions,

    -- * Request Lenses
    lsNextToken,

    -- * Destructuring the Response
    listSubscriptionsResponse,
    ListSubscriptionsResponse,

    -- * Response Lenses
    lsrrsNextToken,
    lsrrsSubscriptions,
    lsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SNS.Types

-- | Input for ListSubscriptions action.
--
--
--
-- /See:/ 'listSubscriptions' smart constructor.
newtype ListSubscriptions = ListSubscriptions'
  { _lsNextToken ::
      Maybe Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListSubscriptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsNextToken' - Token returned by the previous @ListSubscriptions@ request.
listSubscriptions ::
  ListSubscriptions
listSubscriptions =
  ListSubscriptions' {_lsNextToken = Nothing}

-- | Token returned by the previous @ListSubscriptions@ request.
lsNextToken :: Lens' ListSubscriptions (Maybe Text)
lsNextToken = lens _lsNextToken (\s a -> s {_lsNextToken = a})

instance AWSPager ListSubscriptions where
  page rq rs
    | stop (rs ^. lsrrsNextToken) = Nothing
    | stop (rs ^. lsrrsSubscriptions) = Nothing
    | otherwise =
      Just $ rq & lsNextToken .~ rs ^. lsrrsNextToken

instance AWSRequest ListSubscriptions where
  type Rs ListSubscriptions = ListSubscriptionsResponse
  request = postQuery sns
  response =
    receiveXMLWrapper
      "ListSubscriptionsResult"
      ( \s h x ->
          ListSubscriptionsResponse'
            <$> (x .@? "NextToken")
            <*> ( x .@? "Subscriptions" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable ListSubscriptions

instance NFData ListSubscriptions

instance ToHeaders ListSubscriptions where
  toHeaders = const mempty

instance ToPath ListSubscriptions where
  toPath = const "/"

instance ToQuery ListSubscriptions where
  toQuery ListSubscriptions' {..} =
    mconcat
      [ "Action" =: ("ListSubscriptions" :: ByteString),
        "Version" =: ("2010-03-31" :: ByteString),
        "NextToken" =: _lsNextToken
      ]

-- | Response for ListSubscriptions action
--
--
--
-- /See:/ 'listSubscriptionsResponse' smart constructor.
data ListSubscriptionsResponse = ListSubscriptionsResponse'
  { _lsrrsNextToken ::
      !(Maybe Text),
    _lsrrsSubscriptions ::
      !( Maybe
           [Subscription]
       ),
    _lsrrsResponseStatus ::
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

-- | Creates a value of 'ListSubscriptionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsrrsNextToken' - Token to pass along to the next @ListSubscriptions@ request. This element is returned if there are more subscriptions to retrieve.
--
-- * 'lsrrsSubscriptions' - A list of subscriptions.
--
-- * 'lsrrsResponseStatus' - -- | The response status code.
listSubscriptionsResponse ::
  -- | 'lsrrsResponseStatus'
  Int ->
  ListSubscriptionsResponse
listSubscriptionsResponse pResponseStatus_ =
  ListSubscriptionsResponse'
    { _lsrrsNextToken =
        Nothing,
      _lsrrsSubscriptions = Nothing,
      _lsrrsResponseStatus = pResponseStatus_
    }

-- | Token to pass along to the next @ListSubscriptions@ request. This element is returned if there are more subscriptions to retrieve.
lsrrsNextToken :: Lens' ListSubscriptionsResponse (Maybe Text)
lsrrsNextToken = lens _lsrrsNextToken (\s a -> s {_lsrrsNextToken = a})

-- | A list of subscriptions.
lsrrsSubscriptions :: Lens' ListSubscriptionsResponse [Subscription]
lsrrsSubscriptions = lens _lsrrsSubscriptions (\s a -> s {_lsrrsSubscriptions = a}) . _Default . _Coerce

-- | -- | The response status code.
lsrrsResponseStatus :: Lens' ListSubscriptionsResponse Int
lsrrsResponseStatus = lens _lsrrsResponseStatus (\s a -> s {_lsrrsResponseStatus = a})

instance NFData ListSubscriptionsResponse
