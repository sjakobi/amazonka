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
-- Module      : Network.AWS.SNS.ListTopics
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of the requester's topics. Each call returns a limited list of topics, up to 100. If there are more topics, a @NextToken@ is also returned. Use the @NextToken@ parameter in a new @ListTopics@ call to get further results.
--
--
-- This action is throttled at 30 transactions per second (TPS).
--
--
-- This operation returns paginated results.
module Network.AWS.SNS.ListTopics
  ( -- * Creating a Request
    listTopics,
    ListTopics,

    -- * Request Lenses
    ltNextToken,

    -- * Destructuring the Response
    listTopicsResponse,
    ListTopicsResponse,

    -- * Response Lenses
    ltrrsNextToken,
    ltrrsTopics,
    ltrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SNS.Types

-- | /See:/ 'listTopics' smart constructor.
newtype ListTopics = ListTopics'
  { _ltNextToken ::
      Maybe Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListTopics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltNextToken' - Token returned by the previous @ListTopics@ request.
listTopics ::
  ListTopics
listTopics = ListTopics' {_ltNextToken = Nothing}

-- | Token returned by the previous @ListTopics@ request.
ltNextToken :: Lens' ListTopics (Maybe Text)
ltNextToken = lens _ltNextToken (\s a -> s {_ltNextToken = a})

instance AWSPager ListTopics where
  page rq rs
    | stop (rs ^. ltrrsNextToken) = Nothing
    | stop (rs ^. ltrrsTopics) = Nothing
    | otherwise =
      Just $ rq & ltNextToken .~ rs ^. ltrrsNextToken

instance AWSRequest ListTopics where
  type Rs ListTopics = ListTopicsResponse
  request = postQuery sns
  response =
    receiveXMLWrapper
      "ListTopicsResult"
      ( \s h x ->
          ListTopicsResponse'
            <$> (x .@? "NextToken")
            <*> ( x .@? "Topics" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable ListTopics

instance NFData ListTopics

instance ToHeaders ListTopics where
  toHeaders = const mempty

instance ToPath ListTopics where
  toPath = const "/"

instance ToQuery ListTopics where
  toQuery ListTopics' {..} =
    mconcat
      [ "Action" =: ("ListTopics" :: ByteString),
        "Version" =: ("2010-03-31" :: ByteString),
        "NextToken" =: _ltNextToken
      ]

-- | Response for ListTopics action.
--
--
--
-- /See:/ 'listTopicsResponse' smart constructor.
data ListTopicsResponse = ListTopicsResponse'
  { _ltrrsNextToken ::
      !(Maybe Text),
    _ltrrsTopics :: !(Maybe [Topic]),
    _ltrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListTopicsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltrrsNextToken' - Token to pass along to the next @ListTopics@ request. This element is returned if there are additional topics to retrieve.
--
-- * 'ltrrsTopics' - A list of topic ARNs.
--
-- * 'ltrrsResponseStatus' - -- | The response status code.
listTopicsResponse ::
  -- | 'ltrrsResponseStatus'
  Int ->
  ListTopicsResponse
listTopicsResponse pResponseStatus_ =
  ListTopicsResponse'
    { _ltrrsNextToken = Nothing,
      _ltrrsTopics = Nothing,
      _ltrrsResponseStatus = pResponseStatus_
    }

-- | Token to pass along to the next @ListTopics@ request. This element is returned if there are additional topics to retrieve.
ltrrsNextToken :: Lens' ListTopicsResponse (Maybe Text)
ltrrsNextToken = lens _ltrrsNextToken (\s a -> s {_ltrrsNextToken = a})

-- | A list of topic ARNs.
ltrrsTopics :: Lens' ListTopicsResponse [Topic]
ltrrsTopics = lens _ltrrsTopics (\s a -> s {_ltrrsTopics = a}) . _Default . _Coerce

-- | -- | The response status code.
ltrrsResponseStatus :: Lens' ListTopicsResponse Int
ltrrsResponseStatus = lens _ltrrsResponseStatus (\s a -> s {_ltrrsResponseStatus = a})

instance NFData ListTopicsResponse
