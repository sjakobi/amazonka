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
-- Module      : Network.AWS.LexModels.GetBotChannelAssociations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of all of the channels associated with the specified bot.
--
--
-- The @GetBotChannelAssociations@ operation requires permissions for the @lex:GetBotChannelAssociations@ action.
--
--
-- This operation returns paginated results.
module Network.AWS.LexModels.GetBotChannelAssociations
  ( -- * Creating a Request
    getBotChannelAssociations,
    GetBotChannelAssociations,

    -- * Request Lenses
    gbcaNextToken,
    gbcaNameContains,
    gbcaMaxResults,
    gbcaBotName,
    gbcaBotAlias,

    -- * Destructuring the Response
    getBotChannelAssociationsResponse,
    GetBotChannelAssociationsResponse,

    -- * Response Lenses
    gbcarbrsNextToken,
    gbcarbrsBotChannelAssociations,
    gbcarbrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.LexModels.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getBotChannelAssociations' smart constructor.
data GetBotChannelAssociations = GetBotChannelAssociations'
  { _gbcaNextToken ::
      !(Maybe Text),
    _gbcaNameContains ::
      !(Maybe Text),
    _gbcaMaxResults ::
      !(Maybe Nat),
    _gbcaBotName ::
      !Text,
    _gbcaBotAlias ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetBotChannelAssociations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gbcaNextToken' - A pagination token for fetching the next page of associations. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of associations, specify the pagination token in the next request.
--
-- * 'gbcaNameContains' - Substring to match in channel association names. An association will be returned if any part of its name matches the substring. For example, "xyz" matches both "xyzabc" and "abcxyz." To return all bot channel associations, use a hyphen ("-") as the @nameContains@ parameter.
--
-- * 'gbcaMaxResults' - The maximum number of associations to return in the response. The default is 50.
--
-- * 'gbcaBotName' - The name of the Amazon Lex bot in the association.
--
-- * 'gbcaBotAlias' - An alias pointing to the specific version of the Amazon Lex bot to which this association is being made.
getBotChannelAssociations ::
  -- | 'gbcaBotName'
  Text ->
  -- | 'gbcaBotAlias'
  Text ->
  GetBotChannelAssociations
getBotChannelAssociations pBotName_ pBotAlias_ =
  GetBotChannelAssociations'
    { _gbcaNextToken =
        Nothing,
      _gbcaNameContains = Nothing,
      _gbcaMaxResults = Nothing,
      _gbcaBotName = pBotName_,
      _gbcaBotAlias = pBotAlias_
    }

-- | A pagination token for fetching the next page of associations. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of associations, specify the pagination token in the next request.
gbcaNextToken :: Lens' GetBotChannelAssociations (Maybe Text)
gbcaNextToken = lens _gbcaNextToken (\s a -> s {_gbcaNextToken = a})

-- | Substring to match in channel association names. An association will be returned if any part of its name matches the substring. For example, "xyz" matches both "xyzabc" and "abcxyz." To return all bot channel associations, use a hyphen ("-") as the @nameContains@ parameter.
gbcaNameContains :: Lens' GetBotChannelAssociations (Maybe Text)
gbcaNameContains = lens _gbcaNameContains (\s a -> s {_gbcaNameContains = a})

-- | The maximum number of associations to return in the response. The default is 50.
gbcaMaxResults :: Lens' GetBotChannelAssociations (Maybe Natural)
gbcaMaxResults = lens _gbcaMaxResults (\s a -> s {_gbcaMaxResults = a}) . mapping _Nat

-- | The name of the Amazon Lex bot in the association.
gbcaBotName :: Lens' GetBotChannelAssociations Text
gbcaBotName = lens _gbcaBotName (\s a -> s {_gbcaBotName = a})

-- | An alias pointing to the specific version of the Amazon Lex bot to which this association is being made.
gbcaBotAlias :: Lens' GetBotChannelAssociations Text
gbcaBotAlias = lens _gbcaBotAlias (\s a -> s {_gbcaBotAlias = a})

instance AWSPager GetBotChannelAssociations where
  page rq rs
    | stop (rs ^. gbcarbrsNextToken) = Nothing
    | stop (rs ^. gbcarbrsBotChannelAssociations) =
      Nothing
    | otherwise =
      Just $ rq & gbcaNextToken .~ rs ^. gbcarbrsNextToken

instance AWSRequest GetBotChannelAssociations where
  type
    Rs GetBotChannelAssociations =
      GetBotChannelAssociationsResponse
  request = get lexModels
  response =
    receiveJSON
      ( \s h x ->
          GetBotChannelAssociationsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "botChannelAssociations" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetBotChannelAssociations

instance NFData GetBotChannelAssociations

instance ToHeaders GetBotChannelAssociations where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetBotChannelAssociations where
  toPath GetBotChannelAssociations' {..} =
    mconcat
      [ "/bots/",
        toBS _gbcaBotName,
        "/aliases/",
        toBS _gbcaBotAlias,
        "/channels/"
      ]

instance ToQuery GetBotChannelAssociations where
  toQuery GetBotChannelAssociations' {..} =
    mconcat
      [ "nextToken" =: _gbcaNextToken,
        "nameContains" =: _gbcaNameContains,
        "maxResults" =: _gbcaMaxResults
      ]

-- | /See:/ 'getBotChannelAssociationsResponse' smart constructor.
data GetBotChannelAssociationsResponse = GetBotChannelAssociationsResponse'
  { _gbcarbrsNextToken ::
      !( Maybe
           Text
       ),
    _gbcarbrsBotChannelAssociations ::
      !( Maybe
           [BotChannelAssociation]
       ),
    _gbcarbrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetBotChannelAssociationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gbcarbrsNextToken' - A pagination token that fetches the next page of associations. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of associations, specify the pagination token in the next request.
--
-- * 'gbcarbrsBotChannelAssociations' - An array of objects, one for each association, that provides information about the Amazon Lex bot and its association with the channel.
--
-- * 'gbcarbrsResponseStatus' - -- | The response status code.
getBotChannelAssociationsResponse ::
  -- | 'gbcarbrsResponseStatus'
  Int ->
  GetBotChannelAssociationsResponse
getBotChannelAssociationsResponse pResponseStatus_ =
  GetBotChannelAssociationsResponse'
    { _gbcarbrsNextToken =
        Nothing,
      _gbcarbrsBotChannelAssociations =
        Nothing,
      _gbcarbrsResponseStatus =
        pResponseStatus_
    }

-- | A pagination token that fetches the next page of associations. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of associations, specify the pagination token in the next request.
gbcarbrsNextToken :: Lens' GetBotChannelAssociationsResponse (Maybe Text)
gbcarbrsNextToken = lens _gbcarbrsNextToken (\s a -> s {_gbcarbrsNextToken = a})

-- | An array of objects, one for each association, that provides information about the Amazon Lex bot and its association with the channel.
gbcarbrsBotChannelAssociations :: Lens' GetBotChannelAssociationsResponse [BotChannelAssociation]
gbcarbrsBotChannelAssociations = lens _gbcarbrsBotChannelAssociations (\s a -> s {_gbcarbrsBotChannelAssociations = a}) . _Default . _Coerce

-- | -- | The response status code.
gbcarbrsResponseStatus :: Lens' GetBotChannelAssociationsResponse Int
gbcarbrsResponseStatus = lens _gbcarbrsResponseStatus (\s a -> s {_gbcarbrsResponseStatus = a})

instance NFData GetBotChannelAssociationsResponse
