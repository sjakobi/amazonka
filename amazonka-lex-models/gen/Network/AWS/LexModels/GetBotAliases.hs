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
-- Module      : Network.AWS.LexModels.GetBotAliases
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of aliases for a specified Amazon Lex bot.
--
--
-- This operation requires permissions for the @lex:GetBotAliases@ action.
--
--
-- This operation returns paginated results.
module Network.AWS.LexModels.GetBotAliases
  ( -- * Creating a Request
    getBotAliases,
    GetBotAliases,

    -- * Request Lenses
    gbasNextToken,
    gbasNameContains,
    gbasMaxResults,
    gbasBotName,

    -- * Destructuring the Response
    getBotAliasesResponse,
    GetBotAliasesResponse,

    -- * Response Lenses
    gbarbrsNextToken,
    gbarbrsBotAliases,
    gbarbrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.LexModels.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getBotAliases' smart constructor.
data GetBotAliases = GetBotAliases'
  { _gbasNextToken ::
      !(Maybe Text),
    _gbasNameContains :: !(Maybe Text),
    _gbasMaxResults :: !(Maybe Nat),
    _gbasBotName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetBotAliases' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gbasNextToken' - A pagination token for fetching the next page of aliases. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of aliases, specify the pagination token in the next request.
--
-- * 'gbasNameContains' - Substring to match in bot alias names. An alias will be returned if any part of its name matches the substring. For example, "xyz" matches both "xyzabc" and "abcxyz."
--
-- * 'gbasMaxResults' - The maximum number of aliases to return in the response. The default is 50. .
--
-- * 'gbasBotName' - The name of the bot.
getBotAliases ::
  -- | 'gbasBotName'
  Text ->
  GetBotAliases
getBotAliases pBotName_ =
  GetBotAliases'
    { _gbasNextToken = Nothing,
      _gbasNameContains = Nothing,
      _gbasMaxResults = Nothing,
      _gbasBotName = pBotName_
    }

-- | A pagination token for fetching the next page of aliases. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of aliases, specify the pagination token in the next request.
gbasNextToken :: Lens' GetBotAliases (Maybe Text)
gbasNextToken = lens _gbasNextToken (\s a -> s {_gbasNextToken = a})

-- | Substring to match in bot alias names. An alias will be returned if any part of its name matches the substring. For example, "xyz" matches both "xyzabc" and "abcxyz."
gbasNameContains :: Lens' GetBotAliases (Maybe Text)
gbasNameContains = lens _gbasNameContains (\s a -> s {_gbasNameContains = a})

-- | The maximum number of aliases to return in the response. The default is 50. .
gbasMaxResults :: Lens' GetBotAliases (Maybe Natural)
gbasMaxResults = lens _gbasMaxResults (\s a -> s {_gbasMaxResults = a}) . mapping _Nat

-- | The name of the bot.
gbasBotName :: Lens' GetBotAliases Text
gbasBotName = lens _gbasBotName (\s a -> s {_gbasBotName = a})

instance AWSPager GetBotAliases where
  page rq rs
    | stop (rs ^. gbarbrsNextToken) = Nothing
    | stop (rs ^. gbarbrsBotAliases) = Nothing
    | otherwise =
      Just $ rq & gbasNextToken .~ rs ^. gbarbrsNextToken

instance AWSRequest GetBotAliases where
  type Rs GetBotAliases = GetBotAliasesResponse
  request = get lexModels
  response =
    receiveJSON
      ( \s h x ->
          GetBotAliasesResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "BotAliases" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetBotAliases

instance NFData GetBotAliases

instance ToHeaders GetBotAliases where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetBotAliases where
  toPath GetBotAliases' {..} =
    mconcat ["/bots/", toBS _gbasBotName, "/aliases/"]

instance ToQuery GetBotAliases where
  toQuery GetBotAliases' {..} =
    mconcat
      [ "nextToken" =: _gbasNextToken,
        "nameContains" =: _gbasNameContains,
        "maxResults" =: _gbasMaxResults
      ]

-- | /See:/ 'getBotAliasesResponse' smart constructor.
data GetBotAliasesResponse = GetBotAliasesResponse'
  { _gbarbrsNextToken ::
      !(Maybe Text),
    _gbarbrsBotAliases ::
      !(Maybe [BotAliasMetadata]),
    _gbarbrsResponseStatus ::
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

-- | Creates a value of 'GetBotAliasesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gbarbrsNextToken' - A pagination token for fetching next page of aliases. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of aliases, specify the pagination token in the next request.
--
-- * 'gbarbrsBotAliases' - An array of @BotAliasMetadata@ objects, each describing a bot alias.
--
-- * 'gbarbrsResponseStatus' - -- | The response status code.
getBotAliasesResponse ::
  -- | 'gbarbrsResponseStatus'
  Int ->
  GetBotAliasesResponse
getBotAliasesResponse pResponseStatus_ =
  GetBotAliasesResponse'
    { _gbarbrsNextToken = Nothing,
      _gbarbrsBotAliases = Nothing,
      _gbarbrsResponseStatus = pResponseStatus_
    }

-- | A pagination token for fetching next page of aliases. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of aliases, specify the pagination token in the next request.
gbarbrsNextToken :: Lens' GetBotAliasesResponse (Maybe Text)
gbarbrsNextToken = lens _gbarbrsNextToken (\s a -> s {_gbarbrsNextToken = a})

-- | An array of @BotAliasMetadata@ objects, each describing a bot alias.
gbarbrsBotAliases :: Lens' GetBotAliasesResponse [BotAliasMetadata]
gbarbrsBotAliases = lens _gbarbrsBotAliases (\s a -> s {_gbarbrsBotAliases = a}) . _Default . _Coerce

-- | -- | The response status code.
gbarbrsResponseStatus :: Lens' GetBotAliasesResponse Int
gbarbrsResponseStatus = lens _gbarbrsResponseStatus (\s a -> s {_gbarbrsResponseStatus = a})

instance NFData GetBotAliasesResponse
