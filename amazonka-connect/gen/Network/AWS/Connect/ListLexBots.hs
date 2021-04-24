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
-- Module      : Network.AWS.Connect.ListLexBots
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This API is in preview release for Amazon Connect and is subject to change.
--
--
-- Returns a paginated list of all the Amazon Lex bots currently associated with the instance.
--
--
-- This operation returns paginated results.
module Network.AWS.Connect.ListLexBots
  ( -- * Creating a Request
    listLexBots,
    ListLexBots,

    -- * Request Lenses
    llbNextToken,
    llbMaxResults,
    llbInstanceId,

    -- * Destructuring the Response
    listLexBotsResponse,
    ListLexBotsResponse,

    -- * Response Lenses
    llbrrsNextToken,
    llbrrsLexBots,
    llbrrsResponseStatus,
  )
where

import Network.AWS.Connect.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listLexBots' smart constructor.
data ListLexBots = ListLexBots'
  { _llbNextToken ::
      !(Maybe Text),
    _llbMaxResults :: !(Maybe Nat),
    _llbInstanceId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListLexBots' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llbNextToken' - The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
--
-- * 'llbMaxResults' - The maximum number of results to return per page.
--
-- * 'llbInstanceId' - The identifier of the Amazon Connect instance.
listLexBots ::
  -- | 'llbInstanceId'
  Text ->
  ListLexBots
listLexBots pInstanceId_ =
  ListLexBots'
    { _llbNextToken = Nothing,
      _llbMaxResults = Nothing,
      _llbInstanceId = pInstanceId_
    }

-- | The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
llbNextToken :: Lens' ListLexBots (Maybe Text)
llbNextToken = lens _llbNextToken (\s a -> s {_llbNextToken = a})

-- | The maximum number of results to return per page.
llbMaxResults :: Lens' ListLexBots (Maybe Natural)
llbMaxResults = lens _llbMaxResults (\s a -> s {_llbMaxResults = a}) . mapping _Nat

-- | The identifier of the Amazon Connect instance.
llbInstanceId :: Lens' ListLexBots Text
llbInstanceId = lens _llbInstanceId (\s a -> s {_llbInstanceId = a})

instance AWSPager ListLexBots where
  page rq rs
    | stop (rs ^. llbrrsNextToken) = Nothing
    | stop (rs ^. llbrrsLexBots) = Nothing
    | otherwise =
      Just $ rq & llbNextToken .~ rs ^. llbrrsNextToken

instance AWSRequest ListLexBots where
  type Rs ListLexBots = ListLexBotsResponse
  request = get connect
  response =
    receiveJSON
      ( \s h x ->
          ListLexBotsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "LexBots" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListLexBots

instance NFData ListLexBots

instance ToHeaders ListLexBots where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListLexBots where
  toPath ListLexBots' {..} =
    mconcat
      ["/instance/", toBS _llbInstanceId, "/lex-bots"]

instance ToQuery ListLexBots where
  toQuery ListLexBots' {..} =
    mconcat
      [ "nextToken" =: _llbNextToken,
        "maxResults" =: _llbMaxResults
      ]

-- | /See:/ 'listLexBotsResponse' smart constructor.
data ListLexBotsResponse = ListLexBotsResponse'
  { _llbrrsNextToken ::
      !(Maybe Text),
    _llbrrsLexBots ::
      !(Maybe [LexBot]),
    _llbrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListLexBotsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llbrrsNextToken' - If there are additional results, this is the token for the next set of results.
--
-- * 'llbrrsLexBots' - The names and Regions of the Amazon Lex bots associated with the specified instance.
--
-- * 'llbrrsResponseStatus' - -- | The response status code.
listLexBotsResponse ::
  -- | 'llbrrsResponseStatus'
  Int ->
  ListLexBotsResponse
listLexBotsResponse pResponseStatus_ =
  ListLexBotsResponse'
    { _llbrrsNextToken = Nothing,
      _llbrrsLexBots = Nothing,
      _llbrrsResponseStatus = pResponseStatus_
    }

-- | If there are additional results, this is the token for the next set of results.
llbrrsNextToken :: Lens' ListLexBotsResponse (Maybe Text)
llbrrsNextToken = lens _llbrrsNextToken (\s a -> s {_llbrrsNextToken = a})

-- | The names and Regions of the Amazon Lex bots associated with the specified instance.
llbrrsLexBots :: Lens' ListLexBotsResponse [LexBot]
llbrrsLexBots = lens _llbrrsLexBots (\s a -> s {_llbrrsLexBots = a}) . _Default . _Coerce

-- | -- | The response status code.
llbrrsResponseStatus :: Lens' ListLexBotsResponse Int
llbrrsResponseStatus = lens _llbrrsResponseStatus (\s a -> s {_llbrrsResponseStatus = a})

instance NFData ListLexBotsResponse
