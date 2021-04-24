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
-- Module      : Network.AWS.LexModels.GetBots
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns bot information as follows:
--
--
--     * If you provide the @nameContains@ field, the response includes information for the @> LATEST@ version of all bots whose name contains the specified string.
--
--     * If you don't specify the @nameContains@ field, the operation returns information about the @> LATEST@ version of all of your bots.
--
--
--
-- This operation requires permission for the @lex:GetBots@ action.
--
--
-- This operation returns paginated results.
module Network.AWS.LexModels.GetBots
  ( -- * Creating a Request
    getBots,
    GetBots,

    -- * Request Lenses
    gbNextToken,
    gbNameContains,
    gbMaxResults,

    -- * Destructuring the Response
    getBotsResponse,
    GetBotsResponse,

    -- * Response Lenses
    gbrrsNextToken,
    gbrrsBots,
    gbrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.LexModels.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getBots' smart constructor.
data GetBots = GetBots'
  { _gbNextToken ::
      !(Maybe Text),
    _gbNameContains :: !(Maybe Text),
    _gbMaxResults :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetBots' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gbNextToken' - A pagination token that fetches the next page of bots. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of bots, specify the pagination token in the next request.
--
-- * 'gbNameContains' - Substring to match in bot names. A bot will be returned if any part of its name matches the substring. For example, "xyz" matches both "xyzabc" and "abcxyz."
--
-- * 'gbMaxResults' - The maximum number of bots to return in the response that the request will return. The default is 10.
getBots ::
  GetBots
getBots =
  GetBots'
    { _gbNextToken = Nothing,
      _gbNameContains = Nothing,
      _gbMaxResults = Nothing
    }

-- | A pagination token that fetches the next page of bots. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of bots, specify the pagination token in the next request.
gbNextToken :: Lens' GetBots (Maybe Text)
gbNextToken = lens _gbNextToken (\s a -> s {_gbNextToken = a})

-- | Substring to match in bot names. A bot will be returned if any part of its name matches the substring. For example, "xyz" matches both "xyzabc" and "abcxyz."
gbNameContains :: Lens' GetBots (Maybe Text)
gbNameContains = lens _gbNameContains (\s a -> s {_gbNameContains = a})

-- | The maximum number of bots to return in the response that the request will return. The default is 10.
gbMaxResults :: Lens' GetBots (Maybe Natural)
gbMaxResults = lens _gbMaxResults (\s a -> s {_gbMaxResults = a}) . mapping _Nat

instance AWSPager GetBots where
  page rq rs
    | stop (rs ^. gbrrsNextToken) = Nothing
    | stop (rs ^. gbrrsBots) = Nothing
    | otherwise =
      Just $ rq & gbNextToken .~ rs ^. gbrrsNextToken

instance AWSRequest GetBots where
  type Rs GetBots = GetBotsResponse
  request = get lexModels
  response =
    receiveJSON
      ( \s h x ->
          GetBotsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "bots" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetBots

instance NFData GetBots

instance ToHeaders GetBots where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetBots where
  toPath = const "/bots/"

instance ToQuery GetBots where
  toQuery GetBots' {..} =
    mconcat
      [ "nextToken" =: _gbNextToken,
        "nameContains" =: _gbNameContains,
        "maxResults" =: _gbMaxResults
      ]

-- | /See:/ 'getBotsResponse' smart constructor.
data GetBotsResponse = GetBotsResponse'
  { _gbrrsNextToken ::
      !(Maybe Text),
    _gbrrsBots :: !(Maybe [BotMetadata]),
    _gbrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetBotsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gbrrsNextToken' - If the response is truncated, it includes a pagination token that you can specify in your next request to fetch the next page of bots.
--
-- * 'gbrrsBots' - An array of @botMetadata@ objects, with one entry for each bot.
--
-- * 'gbrrsResponseStatus' - -- | The response status code.
getBotsResponse ::
  -- | 'gbrrsResponseStatus'
  Int ->
  GetBotsResponse
getBotsResponse pResponseStatus_ =
  GetBotsResponse'
    { _gbrrsNextToken = Nothing,
      _gbrrsBots = Nothing,
      _gbrrsResponseStatus = pResponseStatus_
    }

-- | If the response is truncated, it includes a pagination token that you can specify in your next request to fetch the next page of bots.
gbrrsNextToken :: Lens' GetBotsResponse (Maybe Text)
gbrrsNextToken = lens _gbrrsNextToken (\s a -> s {_gbrrsNextToken = a})

-- | An array of @botMetadata@ objects, with one entry for each bot.
gbrrsBots :: Lens' GetBotsResponse [BotMetadata]
gbrrsBots = lens _gbrrsBots (\s a -> s {_gbrrsBots = a}) . _Default . _Coerce

-- | -- | The response status code.
gbrrsResponseStatus :: Lens' GetBotsResponse Int
gbrrsResponseStatus = lens _gbrrsResponseStatus (\s a -> s {_gbrrsResponseStatus = a})

instance NFData GetBotsResponse
