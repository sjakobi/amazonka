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
-- Module      : Network.AWS.LexModels.PutBotAlias
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an alias for the specified version of the bot or replaces an alias for the specified bot. To change the version of the bot that the alias points to, replace the alias. For more information about aliases, see 'versioning-aliases' .
--
--
-- This operation requires permissions for the @lex:PutBotAlias@ action.
module Network.AWS.LexModels.PutBotAlias
  ( -- * Creating a Request
    putBotAlias,
    PutBotAlias,

    -- * Request Lenses
    pbaTags,
    pbaDescription,
    pbaChecksum,
    pbaConversationLogs,
    pbaName,
    pbaBotVersion,
    pbaBotName,

    -- * Destructuring the Response
    putBotAliasResponse,
    PutBotAliasResponse,

    -- * Response Lenses
    pbarrsCreatedDate,
    pbarrsBotName,
    pbarrsLastUpdatedDate,
    pbarrsBotVersion,
    pbarrsName,
    pbarrsTags,
    pbarrsDescription,
    pbarrsChecksum,
    pbarrsConversationLogs,
    pbarrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.LexModels.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'putBotAlias' smart constructor.
data PutBotAlias = PutBotAlias'
  { _pbaTags ::
      !(Maybe [Tag]),
    _pbaDescription :: !(Maybe Text),
    _pbaChecksum :: !(Maybe Text),
    _pbaConversationLogs ::
      !(Maybe ConversationLogsRequest),
    _pbaName :: !Text,
    _pbaBotVersion :: !Text,
    _pbaBotName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PutBotAlias' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pbaTags' - A list of tags to add to the bot alias. You can only add tags when you create an alias, you can't use the @PutBotAlias@ operation to update the tags on a bot alias. To update tags, use the @TagResource@ operation.
--
-- * 'pbaDescription' - A description of the alias.
--
-- * 'pbaChecksum' - Identifies a specific revision of the @> LATEST@ version. When you create a new bot alias, leave the @checksum@ field blank. If you specify a checksum you get a @BadRequestException@ exception. When you want to update a bot alias, set the @checksum@ field to the checksum of the most recent revision of the @> LATEST@ version. If you don't specify the @checksum@ field, or if the checksum does not match the @> LATEST@ version, you get a @PreconditionFailedException@ exception.
--
-- * 'pbaConversationLogs' - Settings for conversation logs for the alias.
--
-- * 'pbaName' - The name of the alias. The name is /not/ case sensitive.
--
-- * 'pbaBotVersion' - The version of the bot.
--
-- * 'pbaBotName' - The name of the bot.
putBotAlias ::
  -- | 'pbaName'
  Text ->
  -- | 'pbaBotVersion'
  Text ->
  -- | 'pbaBotName'
  Text ->
  PutBotAlias
putBotAlias pName_ pBotVersion_ pBotName_ =
  PutBotAlias'
    { _pbaTags = Nothing,
      _pbaDescription = Nothing,
      _pbaChecksum = Nothing,
      _pbaConversationLogs = Nothing,
      _pbaName = pName_,
      _pbaBotVersion = pBotVersion_,
      _pbaBotName = pBotName_
    }

-- | A list of tags to add to the bot alias. You can only add tags when you create an alias, you can't use the @PutBotAlias@ operation to update the tags on a bot alias. To update tags, use the @TagResource@ operation.
pbaTags :: Lens' PutBotAlias [Tag]
pbaTags = lens _pbaTags (\s a -> s {_pbaTags = a}) . _Default . _Coerce

-- | A description of the alias.
pbaDescription :: Lens' PutBotAlias (Maybe Text)
pbaDescription = lens _pbaDescription (\s a -> s {_pbaDescription = a})

-- | Identifies a specific revision of the @> LATEST@ version. When you create a new bot alias, leave the @checksum@ field blank. If you specify a checksum you get a @BadRequestException@ exception. When you want to update a bot alias, set the @checksum@ field to the checksum of the most recent revision of the @> LATEST@ version. If you don't specify the @checksum@ field, or if the checksum does not match the @> LATEST@ version, you get a @PreconditionFailedException@ exception.
pbaChecksum :: Lens' PutBotAlias (Maybe Text)
pbaChecksum = lens _pbaChecksum (\s a -> s {_pbaChecksum = a})

-- | Settings for conversation logs for the alias.
pbaConversationLogs :: Lens' PutBotAlias (Maybe ConversationLogsRequest)
pbaConversationLogs = lens _pbaConversationLogs (\s a -> s {_pbaConversationLogs = a})

-- | The name of the alias. The name is /not/ case sensitive.
pbaName :: Lens' PutBotAlias Text
pbaName = lens _pbaName (\s a -> s {_pbaName = a})

-- | The version of the bot.
pbaBotVersion :: Lens' PutBotAlias Text
pbaBotVersion = lens _pbaBotVersion (\s a -> s {_pbaBotVersion = a})

-- | The name of the bot.
pbaBotName :: Lens' PutBotAlias Text
pbaBotName = lens _pbaBotName (\s a -> s {_pbaBotName = a})

instance AWSRequest PutBotAlias where
  type Rs PutBotAlias = PutBotAliasResponse
  request = putJSON lexModels
  response =
    receiveJSON
      ( \s h x ->
          PutBotAliasResponse'
            <$> (x .?> "createdDate")
            <*> (x .?> "botName")
            <*> (x .?> "lastUpdatedDate")
            <*> (x .?> "botVersion")
            <*> (x .?> "name")
            <*> (x .?> "tags" .!@ mempty)
            <*> (x .?> "description")
            <*> (x .?> "checksum")
            <*> (x .?> "conversationLogs")
            <*> (pure (fromEnum s))
      )

instance Hashable PutBotAlias

instance NFData PutBotAlias

instance ToHeaders PutBotAlias where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON PutBotAlias where
  toJSON PutBotAlias' {..} =
    object
      ( catMaybes
          [ ("tags" .=) <$> _pbaTags,
            ("description" .=) <$> _pbaDescription,
            ("checksum" .=) <$> _pbaChecksum,
            ("conversationLogs" .=) <$> _pbaConversationLogs,
            Just ("botVersion" .= _pbaBotVersion)
          ]
      )

instance ToPath PutBotAlias where
  toPath PutBotAlias' {..} =
    mconcat
      [ "/bots/",
        toBS _pbaBotName,
        "/aliases/",
        toBS _pbaName
      ]

instance ToQuery PutBotAlias where
  toQuery = const mempty

-- | /See:/ 'putBotAliasResponse' smart constructor.
data PutBotAliasResponse = PutBotAliasResponse'
  { _pbarrsCreatedDate ::
      !(Maybe POSIX),
    _pbarrsBotName :: !(Maybe Text),
    _pbarrsLastUpdatedDate ::
      !(Maybe POSIX),
    _pbarrsBotVersion ::
      !(Maybe Text),
    _pbarrsName :: !(Maybe Text),
    _pbarrsTags :: !(Maybe [Tag]),
    _pbarrsDescription ::
      !(Maybe Text),
    _pbarrsChecksum ::
      !(Maybe Text),
    _pbarrsConversationLogs ::
      !( Maybe
           ConversationLogsResponse
       ),
    _pbarrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PutBotAliasResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pbarrsCreatedDate' - The date that the bot alias was created.
--
-- * 'pbarrsBotName' - The name of the bot that the alias points to.
--
-- * 'pbarrsLastUpdatedDate' - The date that the bot alias was updated. When you create a resource, the creation date and the last updated date are the same.
--
-- * 'pbarrsBotVersion' - The version of the bot that the alias points to.
--
-- * 'pbarrsName' - The name of the alias.
--
-- * 'pbarrsTags' - A list of tags associated with a bot.
--
-- * 'pbarrsDescription' - A description of the alias.
--
-- * 'pbarrsChecksum' - The checksum for the current version of the alias.
--
-- * 'pbarrsConversationLogs' - The settings that determine how Amazon Lex uses conversation logs for the alias.
--
-- * 'pbarrsResponseStatus' - -- | The response status code.
putBotAliasResponse ::
  -- | 'pbarrsResponseStatus'
  Int ->
  PutBotAliasResponse
putBotAliasResponse pResponseStatus_ =
  PutBotAliasResponse'
    { _pbarrsCreatedDate = Nothing,
      _pbarrsBotName = Nothing,
      _pbarrsLastUpdatedDate = Nothing,
      _pbarrsBotVersion = Nothing,
      _pbarrsName = Nothing,
      _pbarrsTags = Nothing,
      _pbarrsDescription = Nothing,
      _pbarrsChecksum = Nothing,
      _pbarrsConversationLogs = Nothing,
      _pbarrsResponseStatus = pResponseStatus_
    }

-- | The date that the bot alias was created.
pbarrsCreatedDate :: Lens' PutBotAliasResponse (Maybe UTCTime)
pbarrsCreatedDate = lens _pbarrsCreatedDate (\s a -> s {_pbarrsCreatedDate = a}) . mapping _Time

-- | The name of the bot that the alias points to.
pbarrsBotName :: Lens' PutBotAliasResponse (Maybe Text)
pbarrsBotName = lens _pbarrsBotName (\s a -> s {_pbarrsBotName = a})

-- | The date that the bot alias was updated. When you create a resource, the creation date and the last updated date are the same.
pbarrsLastUpdatedDate :: Lens' PutBotAliasResponse (Maybe UTCTime)
pbarrsLastUpdatedDate = lens _pbarrsLastUpdatedDate (\s a -> s {_pbarrsLastUpdatedDate = a}) . mapping _Time

-- | The version of the bot that the alias points to.
pbarrsBotVersion :: Lens' PutBotAliasResponse (Maybe Text)
pbarrsBotVersion = lens _pbarrsBotVersion (\s a -> s {_pbarrsBotVersion = a})

-- | The name of the alias.
pbarrsName :: Lens' PutBotAliasResponse (Maybe Text)
pbarrsName = lens _pbarrsName (\s a -> s {_pbarrsName = a})

-- | A list of tags associated with a bot.
pbarrsTags :: Lens' PutBotAliasResponse [Tag]
pbarrsTags = lens _pbarrsTags (\s a -> s {_pbarrsTags = a}) . _Default . _Coerce

-- | A description of the alias.
pbarrsDescription :: Lens' PutBotAliasResponse (Maybe Text)
pbarrsDescription = lens _pbarrsDescription (\s a -> s {_pbarrsDescription = a})

-- | The checksum for the current version of the alias.
pbarrsChecksum :: Lens' PutBotAliasResponse (Maybe Text)
pbarrsChecksum = lens _pbarrsChecksum (\s a -> s {_pbarrsChecksum = a})

-- | The settings that determine how Amazon Lex uses conversation logs for the alias.
pbarrsConversationLogs :: Lens' PutBotAliasResponse (Maybe ConversationLogsResponse)
pbarrsConversationLogs = lens _pbarrsConversationLogs (\s a -> s {_pbarrsConversationLogs = a})

-- | -- | The response status code.
pbarrsResponseStatus :: Lens' PutBotAliasResponse Int
pbarrsResponseStatus = lens _pbarrsResponseStatus (\s a -> s {_pbarrsResponseStatus = a})

instance NFData PutBotAliasResponse
