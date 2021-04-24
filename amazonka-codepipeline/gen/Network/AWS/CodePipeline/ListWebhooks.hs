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
-- Module      : Network.AWS.CodePipeline.ListWebhooks
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a listing of all the webhooks in this AWS Region for this account. The output lists all webhooks and includes the webhook URL and ARN and the configuration for each webhook.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CodePipeline.ListWebhooks
  ( -- * Creating a Request
    listWebhooks,
    ListWebhooks,

    -- * Request Lenses
    lwNextToken,
    lwMaxResults,

    -- * Destructuring the Response
    listWebhooksResponse,
    ListWebhooksResponse,

    -- * Response Lenses
    lwrrsNextToken,
    lwrrsWebhooks,
    lwrrsResponseStatus,
  )
where

import Network.AWS.CodePipeline.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listWebhooks' smart constructor.
data ListWebhooks = ListWebhooks'
  { _lwNextToken ::
      !(Maybe Text),
    _lwMaxResults :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListWebhooks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lwNextToken' - The token that was returned from the previous ListWebhooks call, which can be used to return the next set of webhooks in the list.
--
-- * 'lwMaxResults' - The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned nextToken value.
listWebhooks ::
  ListWebhooks
listWebhooks =
  ListWebhooks'
    { _lwNextToken = Nothing,
      _lwMaxResults = Nothing
    }

-- | The token that was returned from the previous ListWebhooks call, which can be used to return the next set of webhooks in the list.
lwNextToken :: Lens' ListWebhooks (Maybe Text)
lwNextToken = lens _lwNextToken (\s a -> s {_lwNextToken = a})

-- | The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned nextToken value.
lwMaxResults :: Lens' ListWebhooks (Maybe Natural)
lwMaxResults = lens _lwMaxResults (\s a -> s {_lwMaxResults = a}) . mapping _Nat

instance AWSPager ListWebhooks where
  page rq rs
    | stop (rs ^. lwrrsNextToken) = Nothing
    | stop (rs ^. lwrrsWebhooks) = Nothing
    | otherwise =
      Just $ rq & lwNextToken .~ rs ^. lwrrsNextToken

instance AWSRequest ListWebhooks where
  type Rs ListWebhooks = ListWebhooksResponse
  request = postJSON codePipeline
  response =
    receiveJSON
      ( \s h x ->
          ListWebhooksResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "webhooks" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListWebhooks

instance NFData ListWebhooks

instance ToHeaders ListWebhooks where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("CodePipeline_20150709.ListWebhooks" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListWebhooks where
  toJSON ListWebhooks' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lwNextToken,
            ("MaxResults" .=) <$> _lwMaxResults
          ]
      )

instance ToPath ListWebhooks where
  toPath = const "/"

instance ToQuery ListWebhooks where
  toQuery = const mempty

-- | /See:/ 'listWebhooksResponse' smart constructor.
data ListWebhooksResponse = ListWebhooksResponse'
  { _lwrrsNextToken ::
      !(Maybe Text),
    _lwrrsWebhooks ::
      !(Maybe [ListWebhookItem]),
    _lwrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListWebhooksResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lwrrsNextToken' - If the amount of returned information is significantly large, an identifier is also returned and can be used in a subsequent ListWebhooks call to return the next set of webhooks in the list.
--
-- * 'lwrrsWebhooks' - The JSON detail returned for each webhook in the list output for the ListWebhooks call.
--
-- * 'lwrrsResponseStatus' - -- | The response status code.
listWebhooksResponse ::
  -- | 'lwrrsResponseStatus'
  Int ->
  ListWebhooksResponse
listWebhooksResponse pResponseStatus_ =
  ListWebhooksResponse'
    { _lwrrsNextToken = Nothing,
      _lwrrsWebhooks = Nothing,
      _lwrrsResponseStatus = pResponseStatus_
    }

-- | If the amount of returned information is significantly large, an identifier is also returned and can be used in a subsequent ListWebhooks call to return the next set of webhooks in the list.
lwrrsNextToken :: Lens' ListWebhooksResponse (Maybe Text)
lwrrsNextToken = lens _lwrrsNextToken (\s a -> s {_lwrrsNextToken = a})

-- | The JSON detail returned for each webhook in the list output for the ListWebhooks call.
lwrrsWebhooks :: Lens' ListWebhooksResponse [ListWebhookItem]
lwrrsWebhooks = lens _lwrrsWebhooks (\s a -> s {_lwrrsWebhooks = a}) . _Default . _Coerce

-- | -- | The response status code.
lwrrsResponseStatus :: Lens' ListWebhooksResponse Int
lwrrsResponseStatus = lens _lwrrsResponseStatus (\s a -> s {_lwrrsResponseStatus = a})

instance NFData ListWebhooksResponse
