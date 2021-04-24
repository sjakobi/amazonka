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
-- Module      : Network.AWS.LexModels.GetBuiltinIntents
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of built-in intents that meet the specified criteria.
--
--
-- This operation requires permission for the @lex:GetBuiltinIntents@ action.
--
--
-- This operation returns paginated results.
module Network.AWS.LexModels.GetBuiltinIntents
  ( -- * Creating a Request
    getBuiltinIntents,
    GetBuiltinIntents,

    -- * Request Lenses
    gbiSignatureContains,
    gbiNextToken,
    gbiMaxResults,
    gbiLocale,

    -- * Destructuring the Response
    getBuiltinIntentsResponse,
    GetBuiltinIntentsResponse,

    -- * Response Lenses
    gbirbrsNextToken,
    gbirbrsIntents,
    gbirbrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.LexModels.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getBuiltinIntents' smart constructor.
data GetBuiltinIntents = GetBuiltinIntents'
  { _gbiSignatureContains ::
      !(Maybe Text),
    _gbiNextToken :: !(Maybe Text),
    _gbiMaxResults :: !(Maybe Nat),
    _gbiLocale :: !(Maybe Locale)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetBuiltinIntents' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gbiSignatureContains' - Substring to match in built-in intent signatures. An intent will be returned if any part of its signature matches the substring. For example, "xyz" matches both "xyzabc" and "abcxyz." To find the signature for an intent, see <https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents Standard Built-in Intents> in the /Alexa Skills Kit/ .
--
-- * 'gbiNextToken' - A pagination token that fetches the next page of intents. If this API call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of intents, use the pagination token in the next request.
--
-- * 'gbiMaxResults' - The maximum number of intents to return in the response. The default is 10.
--
-- * 'gbiLocale' - A list of locales that the intent supports.
getBuiltinIntents ::
  GetBuiltinIntents
getBuiltinIntents =
  GetBuiltinIntents'
    { _gbiSignatureContains = Nothing,
      _gbiNextToken = Nothing,
      _gbiMaxResults = Nothing,
      _gbiLocale = Nothing
    }

-- | Substring to match in built-in intent signatures. An intent will be returned if any part of its signature matches the substring. For example, "xyz" matches both "xyzabc" and "abcxyz." To find the signature for an intent, see <https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents Standard Built-in Intents> in the /Alexa Skills Kit/ .
gbiSignatureContains :: Lens' GetBuiltinIntents (Maybe Text)
gbiSignatureContains = lens _gbiSignatureContains (\s a -> s {_gbiSignatureContains = a})

-- | A pagination token that fetches the next page of intents. If this API call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of intents, use the pagination token in the next request.
gbiNextToken :: Lens' GetBuiltinIntents (Maybe Text)
gbiNextToken = lens _gbiNextToken (\s a -> s {_gbiNextToken = a})

-- | The maximum number of intents to return in the response. The default is 10.
gbiMaxResults :: Lens' GetBuiltinIntents (Maybe Natural)
gbiMaxResults = lens _gbiMaxResults (\s a -> s {_gbiMaxResults = a}) . mapping _Nat

-- | A list of locales that the intent supports.
gbiLocale :: Lens' GetBuiltinIntents (Maybe Locale)
gbiLocale = lens _gbiLocale (\s a -> s {_gbiLocale = a})

instance AWSPager GetBuiltinIntents where
  page rq rs
    | stop (rs ^. gbirbrsNextToken) = Nothing
    | stop (rs ^. gbirbrsIntents) = Nothing
    | otherwise =
      Just $ rq & gbiNextToken .~ rs ^. gbirbrsNextToken

instance AWSRequest GetBuiltinIntents where
  type Rs GetBuiltinIntents = GetBuiltinIntentsResponse
  request = get lexModels
  response =
    receiveJSON
      ( \s h x ->
          GetBuiltinIntentsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "intents" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetBuiltinIntents

instance NFData GetBuiltinIntents

instance ToHeaders GetBuiltinIntents where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetBuiltinIntents where
  toPath = const "/builtins/intents/"

instance ToQuery GetBuiltinIntents where
  toQuery GetBuiltinIntents' {..} =
    mconcat
      [ "signatureContains" =: _gbiSignatureContains,
        "nextToken" =: _gbiNextToken,
        "maxResults" =: _gbiMaxResults,
        "locale" =: _gbiLocale
      ]

-- | /See:/ 'getBuiltinIntentsResponse' smart constructor.
data GetBuiltinIntentsResponse = GetBuiltinIntentsResponse'
  { _gbirbrsNextToken ::
      !(Maybe Text),
    _gbirbrsIntents ::
      !( Maybe
           [BuiltinIntentMetadata]
       ),
    _gbirbrsResponseStatus ::
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

-- | Creates a value of 'GetBuiltinIntentsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gbirbrsNextToken' - A pagination token that fetches the next page of intents. If the response to this API call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of intents, specify the pagination token in the next request.
--
-- * 'gbirbrsIntents' - An array of @builtinIntentMetadata@ objects, one for each intent in the response.
--
-- * 'gbirbrsResponseStatus' - -- | The response status code.
getBuiltinIntentsResponse ::
  -- | 'gbirbrsResponseStatus'
  Int ->
  GetBuiltinIntentsResponse
getBuiltinIntentsResponse pResponseStatus_ =
  GetBuiltinIntentsResponse'
    { _gbirbrsNextToken =
        Nothing,
      _gbirbrsIntents = Nothing,
      _gbirbrsResponseStatus = pResponseStatus_
    }

-- | A pagination token that fetches the next page of intents. If the response to this API call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of intents, specify the pagination token in the next request.
gbirbrsNextToken :: Lens' GetBuiltinIntentsResponse (Maybe Text)
gbirbrsNextToken = lens _gbirbrsNextToken (\s a -> s {_gbirbrsNextToken = a})

-- | An array of @builtinIntentMetadata@ objects, one for each intent in the response.
gbirbrsIntents :: Lens' GetBuiltinIntentsResponse [BuiltinIntentMetadata]
gbirbrsIntents = lens _gbirbrsIntents (\s a -> s {_gbirbrsIntents = a}) . _Default . _Coerce

-- | -- | The response status code.
gbirbrsResponseStatus :: Lens' GetBuiltinIntentsResponse Int
gbirbrsResponseStatus = lens _gbirbrsResponseStatus (\s a -> s {_gbirbrsResponseStatus = a})

instance NFData GetBuiltinIntentsResponse
