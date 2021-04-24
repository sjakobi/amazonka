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
-- Module      : Network.AWS.LexModels.GetBotAlias
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about an Amazon Lex bot alias. For more information about aliases, see 'versioning-aliases' .
--
--
-- This operation requires permissions for the @lex:GetBotAlias@ action.
module Network.AWS.LexModels.GetBotAlias
  ( -- * Creating a Request
    getBotAlias,
    GetBotAlias,

    -- * Request Lenses
    gbaName,
    gbaBotName,

    -- * Destructuring the Response
    getBotAliasResponse,
    GetBotAliasResponse,

    -- * Response Lenses
    gbarrsCreatedDate,
    gbarrsBotName,
    gbarrsLastUpdatedDate,
    gbarrsBotVersion,
    gbarrsName,
    gbarrsDescription,
    gbarrsChecksum,
    gbarrsConversationLogs,
    gbarrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.LexModels.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getBotAlias' smart constructor.
data GetBotAlias = GetBotAlias'
  { _gbaName :: !Text,
    _gbaBotName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetBotAlias' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gbaName' - The name of the bot alias. The name is case sensitive.
--
-- * 'gbaBotName' - The name of the bot.
getBotAlias ::
  -- | 'gbaName'
  Text ->
  -- | 'gbaBotName'
  Text ->
  GetBotAlias
getBotAlias pName_ pBotName_ =
  GetBotAlias'
    { _gbaName = pName_,
      _gbaBotName = pBotName_
    }

-- | The name of the bot alias. The name is case sensitive.
gbaName :: Lens' GetBotAlias Text
gbaName = lens _gbaName (\s a -> s {_gbaName = a})

-- | The name of the bot.
gbaBotName :: Lens' GetBotAlias Text
gbaBotName = lens _gbaBotName (\s a -> s {_gbaBotName = a})

instance AWSRequest GetBotAlias where
  type Rs GetBotAlias = GetBotAliasResponse
  request = get lexModels
  response =
    receiveJSON
      ( \s h x ->
          GetBotAliasResponse'
            <$> (x .?> "createdDate")
            <*> (x .?> "botName")
            <*> (x .?> "lastUpdatedDate")
            <*> (x .?> "botVersion")
            <*> (x .?> "name")
            <*> (x .?> "description")
            <*> (x .?> "checksum")
            <*> (x .?> "conversationLogs")
            <*> (pure (fromEnum s))
      )

instance Hashable GetBotAlias

instance NFData GetBotAlias

instance ToHeaders GetBotAlias where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetBotAlias where
  toPath GetBotAlias' {..} =
    mconcat
      [ "/bots/",
        toBS _gbaBotName,
        "/aliases/",
        toBS _gbaName
      ]

instance ToQuery GetBotAlias where
  toQuery = const mempty

-- | /See:/ 'getBotAliasResponse' smart constructor.
data GetBotAliasResponse = GetBotAliasResponse'
  { _gbarrsCreatedDate ::
      !(Maybe POSIX),
    _gbarrsBotName :: !(Maybe Text),
    _gbarrsLastUpdatedDate ::
      !(Maybe POSIX),
    _gbarrsBotVersion ::
      !(Maybe Text),
    _gbarrsName :: !(Maybe Text),
    _gbarrsDescription ::
      !(Maybe Text),
    _gbarrsChecksum ::
      !(Maybe Text),
    _gbarrsConversationLogs ::
      !( Maybe
           ConversationLogsResponse
       ),
    _gbarrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetBotAliasResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gbarrsCreatedDate' - The date that the bot alias was created.
--
-- * 'gbarrsBotName' - The name of the bot that the alias points to.
--
-- * 'gbarrsLastUpdatedDate' - The date that the bot alias was updated. When you create a resource, the creation date and the last updated date are the same.
--
-- * 'gbarrsBotVersion' - The version of the bot that the alias points to.
--
-- * 'gbarrsName' - The name of the bot alias.
--
-- * 'gbarrsDescription' - A description of the bot alias.
--
-- * 'gbarrsChecksum' - Checksum of the bot alias.
--
-- * 'gbarrsConversationLogs' - The settings that determine how Amazon Lex uses conversation logs for the alias.
--
-- * 'gbarrsResponseStatus' - -- | The response status code.
getBotAliasResponse ::
  -- | 'gbarrsResponseStatus'
  Int ->
  GetBotAliasResponse
getBotAliasResponse pResponseStatus_ =
  GetBotAliasResponse'
    { _gbarrsCreatedDate = Nothing,
      _gbarrsBotName = Nothing,
      _gbarrsLastUpdatedDate = Nothing,
      _gbarrsBotVersion = Nothing,
      _gbarrsName = Nothing,
      _gbarrsDescription = Nothing,
      _gbarrsChecksum = Nothing,
      _gbarrsConversationLogs = Nothing,
      _gbarrsResponseStatus = pResponseStatus_
    }

-- | The date that the bot alias was created.
gbarrsCreatedDate :: Lens' GetBotAliasResponse (Maybe UTCTime)
gbarrsCreatedDate = lens _gbarrsCreatedDate (\s a -> s {_gbarrsCreatedDate = a}) . mapping _Time

-- | The name of the bot that the alias points to.
gbarrsBotName :: Lens' GetBotAliasResponse (Maybe Text)
gbarrsBotName = lens _gbarrsBotName (\s a -> s {_gbarrsBotName = a})

-- | The date that the bot alias was updated. When you create a resource, the creation date and the last updated date are the same.
gbarrsLastUpdatedDate :: Lens' GetBotAliasResponse (Maybe UTCTime)
gbarrsLastUpdatedDate = lens _gbarrsLastUpdatedDate (\s a -> s {_gbarrsLastUpdatedDate = a}) . mapping _Time

-- | The version of the bot that the alias points to.
gbarrsBotVersion :: Lens' GetBotAliasResponse (Maybe Text)
gbarrsBotVersion = lens _gbarrsBotVersion (\s a -> s {_gbarrsBotVersion = a})

-- | The name of the bot alias.
gbarrsName :: Lens' GetBotAliasResponse (Maybe Text)
gbarrsName = lens _gbarrsName (\s a -> s {_gbarrsName = a})

-- | A description of the bot alias.
gbarrsDescription :: Lens' GetBotAliasResponse (Maybe Text)
gbarrsDescription = lens _gbarrsDescription (\s a -> s {_gbarrsDescription = a})

-- | Checksum of the bot alias.
gbarrsChecksum :: Lens' GetBotAliasResponse (Maybe Text)
gbarrsChecksum = lens _gbarrsChecksum (\s a -> s {_gbarrsChecksum = a})

-- | The settings that determine how Amazon Lex uses conversation logs for the alias.
gbarrsConversationLogs :: Lens' GetBotAliasResponse (Maybe ConversationLogsResponse)
gbarrsConversationLogs = lens _gbarrsConversationLogs (\s a -> s {_gbarrsConversationLogs = a})

-- | -- | The response status code.
gbarrsResponseStatus :: Lens' GetBotAliasResponse Int
gbarrsResponseStatus = lens _gbarrsResponseStatus (\s a -> s {_gbarrsResponseStatus = a})

instance NFData GetBotAliasResponse
