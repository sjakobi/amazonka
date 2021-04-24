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
-- Module      : Network.AWS.Inspector.ListEventSubscriptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the event subscriptions for the assessment template that is specified by the ARN of the assessment template. For more information, see 'SubscribeToEvent' and 'UnsubscribeFromEvent' .
--
--
--
-- This operation returns paginated results.
module Network.AWS.Inspector.ListEventSubscriptions
  ( -- * Creating a Request
    listEventSubscriptions,
    ListEventSubscriptions,

    -- * Request Lenses
    lesResourceARN,
    lesNextToken,
    lesMaxResults,

    -- * Destructuring the Response
    listEventSubscriptionsResponse,
    ListEventSubscriptionsResponse,

    -- * Response Lenses
    lesrrsNextToken,
    lesrrsResponseStatus,
    lesrrsSubscriptions,
  )
where

import Network.AWS.Inspector.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listEventSubscriptions' smart constructor.
data ListEventSubscriptions = ListEventSubscriptions'
  { _lesResourceARN ::
      !(Maybe Text),
    _lesNextToken ::
      !(Maybe Text),
    _lesMaxResults ::
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

-- | Creates a value of 'ListEventSubscriptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lesResourceARN' - The ARN of the assessment template for which you want to list the existing event subscriptions.
--
-- * 'lesNextToken' - You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the __ListEventSubscriptions__ action. Subsequent calls to the action fill __nextToken__ in the request with the value of __NextToken__ from the previous response to continue listing data.
--
-- * 'lesMaxResults' - You can use this parameter to indicate the maximum number of items you want in the response. The default value is 10. The maximum value is 500.
listEventSubscriptions ::
  ListEventSubscriptions
listEventSubscriptions =
  ListEventSubscriptions'
    { _lesResourceARN = Nothing,
      _lesNextToken = Nothing,
      _lesMaxResults = Nothing
    }

-- | The ARN of the assessment template for which you want to list the existing event subscriptions.
lesResourceARN :: Lens' ListEventSubscriptions (Maybe Text)
lesResourceARN = lens _lesResourceARN (\s a -> s {_lesResourceARN = a})

-- | You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the __ListEventSubscriptions__ action. Subsequent calls to the action fill __nextToken__ in the request with the value of __NextToken__ from the previous response to continue listing data.
lesNextToken :: Lens' ListEventSubscriptions (Maybe Text)
lesNextToken = lens _lesNextToken (\s a -> s {_lesNextToken = a})

-- | You can use this parameter to indicate the maximum number of items you want in the response. The default value is 10. The maximum value is 500.
lesMaxResults :: Lens' ListEventSubscriptions (Maybe Int)
lesMaxResults = lens _lesMaxResults (\s a -> s {_lesMaxResults = a})

instance AWSPager ListEventSubscriptions where
  page rq rs
    | stop (rs ^. lesrrsNextToken) = Nothing
    | stop (rs ^. lesrrsSubscriptions) = Nothing
    | otherwise =
      Just $ rq & lesNextToken .~ rs ^. lesrrsNextToken

instance AWSRequest ListEventSubscriptions where
  type
    Rs ListEventSubscriptions =
      ListEventSubscriptionsResponse
  request = postJSON inspector
  response =
    receiveJSON
      ( \s h x ->
          ListEventSubscriptionsResponse'
            <$> (x .?> "nextToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "subscriptions" .!@ mempty)
      )

instance Hashable ListEventSubscriptions

instance NFData ListEventSubscriptions

instance ToHeaders ListEventSubscriptions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "InspectorService.ListEventSubscriptions" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListEventSubscriptions where
  toJSON ListEventSubscriptions' {..} =
    object
      ( catMaybes
          [ ("resourceArn" .=) <$> _lesResourceARN,
            ("nextToken" .=) <$> _lesNextToken,
            ("maxResults" .=) <$> _lesMaxResults
          ]
      )

instance ToPath ListEventSubscriptions where
  toPath = const "/"

instance ToQuery ListEventSubscriptions where
  toQuery = const mempty

-- | /See:/ 'listEventSubscriptionsResponse' smart constructor.
data ListEventSubscriptionsResponse = ListEventSubscriptionsResponse'
  { _lesrrsNextToken ::
      !( Maybe
           Text
       ),
    _lesrrsResponseStatus ::
      !Int,
    _lesrrsSubscriptions ::
      ![Subscription]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListEventSubscriptionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lesrrsNextToken' - When a response is generated, if there is more data to be listed, this parameter is present in the response and contains the value to use for the __nextToken__ parameter in a subsequent pagination request. If there is no more data to be listed, this parameter is set to null.
--
-- * 'lesrrsResponseStatus' - -- | The response status code.
--
-- * 'lesrrsSubscriptions' - Details of the returned event subscriptions.
listEventSubscriptionsResponse ::
  -- | 'lesrrsResponseStatus'
  Int ->
  ListEventSubscriptionsResponse
listEventSubscriptionsResponse pResponseStatus_ =
  ListEventSubscriptionsResponse'
    { _lesrrsNextToken =
        Nothing,
      _lesrrsResponseStatus = pResponseStatus_,
      _lesrrsSubscriptions = mempty
    }

-- | When a response is generated, if there is more data to be listed, this parameter is present in the response and contains the value to use for the __nextToken__ parameter in a subsequent pagination request. If there is no more data to be listed, this parameter is set to null.
lesrrsNextToken :: Lens' ListEventSubscriptionsResponse (Maybe Text)
lesrrsNextToken = lens _lesrrsNextToken (\s a -> s {_lesrrsNextToken = a})

-- | -- | The response status code.
lesrrsResponseStatus :: Lens' ListEventSubscriptionsResponse Int
lesrrsResponseStatus = lens _lesrrsResponseStatus (\s a -> s {_lesrrsResponseStatus = a})

-- | Details of the returned event subscriptions.
lesrrsSubscriptions :: Lens' ListEventSubscriptionsResponse [Subscription]
lesrrsSubscriptions = lens _lesrrsSubscriptions (\s a -> s {_lesrrsSubscriptions = a}) . _Coerce

instance NFData ListEventSubscriptionsResponse
