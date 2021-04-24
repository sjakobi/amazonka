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
-- Module      : Network.AWS.LexModels.GetIntents
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns intent information as follows:
--
--
--     * If you specify the @nameContains@ field, returns the @> LATEST@ version of all intents that contain the specified string.
--
--     * If you don't specify the @nameContains@ field, returns information about the @> LATEST@ version of all intents.
--
--
--
-- The operation requires permission for the @lex:GetIntents@ action.
--
--
-- This operation returns paginated results.
module Network.AWS.LexModels.GetIntents
  ( -- * Creating a Request
    getIntents,
    GetIntents,

    -- * Request Lenses
    giNextToken,
    giNameContains,
    giMaxResults,

    -- * Destructuring the Response
    getIntentsResponse,
    GetIntentsResponse,

    -- * Response Lenses
    ggrsNextToken,
    ggrsIntents,
    ggrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.LexModels.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getIntents' smart constructor.
data GetIntents = GetIntents'
  { _giNextToken ::
      !(Maybe Text),
    _giNameContains :: !(Maybe Text),
    _giMaxResults :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetIntents' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giNextToken' - A pagination token that fetches the next page of intents. If the response to this API call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of intents, specify the pagination token in the next request.
--
-- * 'giNameContains' - Substring to match in intent names. An intent will be returned if any part of its name matches the substring. For example, "xyz" matches both "xyzabc" and "abcxyz."
--
-- * 'giMaxResults' - The maximum number of intents to return in the response. The default is 10.
getIntents ::
  GetIntents
getIntents =
  GetIntents'
    { _giNextToken = Nothing,
      _giNameContains = Nothing,
      _giMaxResults = Nothing
    }

-- | A pagination token that fetches the next page of intents. If the response to this API call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of intents, specify the pagination token in the next request.
giNextToken :: Lens' GetIntents (Maybe Text)
giNextToken = lens _giNextToken (\s a -> s {_giNextToken = a})

-- | Substring to match in intent names. An intent will be returned if any part of its name matches the substring. For example, "xyz" matches both "xyzabc" and "abcxyz."
giNameContains :: Lens' GetIntents (Maybe Text)
giNameContains = lens _giNameContains (\s a -> s {_giNameContains = a})

-- | The maximum number of intents to return in the response. The default is 10.
giMaxResults :: Lens' GetIntents (Maybe Natural)
giMaxResults = lens _giMaxResults (\s a -> s {_giMaxResults = a}) . mapping _Nat

instance AWSPager GetIntents where
  page rq rs
    | stop (rs ^. ggrsNextToken) = Nothing
    | stop (rs ^. ggrsIntents) = Nothing
    | otherwise =
      Just $ rq & giNextToken .~ rs ^. ggrsNextToken

instance AWSRequest GetIntents where
  type Rs GetIntents = GetIntentsResponse
  request = get lexModels
  response =
    receiveJSON
      ( \s h x ->
          GetIntentsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "intents" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetIntents

instance NFData GetIntents

instance ToHeaders GetIntents where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetIntents where
  toPath = const "/intents/"

instance ToQuery GetIntents where
  toQuery GetIntents' {..} =
    mconcat
      [ "nextToken" =: _giNextToken,
        "nameContains" =: _giNameContains,
        "maxResults" =: _giMaxResults
      ]

-- | /See:/ 'getIntentsResponse' smart constructor.
data GetIntentsResponse = GetIntentsResponse'
  { _ggrsNextToken ::
      !(Maybe Text),
    _ggrsIntents ::
      !(Maybe [IntentMetadata]),
    _ggrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetIntentsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggrsNextToken' - If the response is truncated, the response includes a pagination token that you can specify in your next request to fetch the next page of intents.
--
-- * 'ggrsIntents' - An array of @Intent@ objects. For more information, see 'PutBot' .
--
-- * 'ggrsResponseStatus' - -- | The response status code.
getIntentsResponse ::
  -- | 'ggrsResponseStatus'
  Int ->
  GetIntentsResponse
getIntentsResponse pResponseStatus_ =
  GetIntentsResponse'
    { _ggrsNextToken = Nothing,
      _ggrsIntents = Nothing,
      _ggrsResponseStatus = pResponseStatus_
    }

-- | If the response is truncated, the response includes a pagination token that you can specify in your next request to fetch the next page of intents.
ggrsNextToken :: Lens' GetIntentsResponse (Maybe Text)
ggrsNextToken = lens _ggrsNextToken (\s a -> s {_ggrsNextToken = a})

-- | An array of @Intent@ objects. For more information, see 'PutBot' .
ggrsIntents :: Lens' GetIntentsResponse [IntentMetadata]
ggrsIntents = lens _ggrsIntents (\s a -> s {_ggrsIntents = a}) . _Default . _Coerce

-- | -- | The response status code.
ggrsResponseStatus :: Lens' GetIntentsResponse Int
ggrsResponseStatus = lens _ggrsResponseStatus (\s a -> s {_ggrsResponseStatus = a})

instance NFData GetIntentsResponse
