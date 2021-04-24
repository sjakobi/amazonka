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
-- Module      : Network.AWS.LexModels.GetBotChannelAssociation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the association between an Amazon Lex bot and a messaging platform.
--
--
-- This operation requires permissions for the @lex:GetBotChannelAssociation@ action.
module Network.AWS.LexModels.GetBotChannelAssociation
  ( -- * Creating a Request
    getBotChannelAssociation,
    GetBotChannelAssociation,

    -- * Request Lenses
    gName,
    gBotName,
    gBotAlias,

    -- * Destructuring the Response
    getBotChannelAssociationResponse,
    GetBotChannelAssociationResponse,

    -- * Response Lenses
    gbcarrsBotAlias,
    gbcarrsCreatedDate,
    gbcarrsStatus,
    gbcarrsBotConfiguration,
    gbcarrsBotName,
    gbcarrsName,
    gbcarrsFailureReason,
    gbcarrsDescription,
    gbcarrsType,
    gbcarrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.LexModels.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getBotChannelAssociation' smart constructor.
data GetBotChannelAssociation = GetBotChannelAssociation'
  { _gName ::
      !Text,
    _gBotName :: !Text,
    _gBotAlias :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetBotChannelAssociation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gName' - The name of the association between the bot and the channel. The name is case sensitive.
--
-- * 'gBotName' - The name of the Amazon Lex bot.
--
-- * 'gBotAlias' - An alias pointing to the specific version of the Amazon Lex bot to which this association is being made.
getBotChannelAssociation ::
  -- | 'gName'
  Text ->
  -- | 'gBotName'
  Text ->
  -- | 'gBotAlias'
  Text ->
  GetBotChannelAssociation
getBotChannelAssociation pName_ pBotName_ pBotAlias_ =
  GetBotChannelAssociation'
    { _gName = pName_,
      _gBotName = pBotName_,
      _gBotAlias = pBotAlias_
    }

-- | The name of the association between the bot and the channel. The name is case sensitive.
gName :: Lens' GetBotChannelAssociation Text
gName = lens _gName (\s a -> s {_gName = a})

-- | The name of the Amazon Lex bot.
gBotName :: Lens' GetBotChannelAssociation Text
gBotName = lens _gBotName (\s a -> s {_gBotName = a})

-- | An alias pointing to the specific version of the Amazon Lex bot to which this association is being made.
gBotAlias :: Lens' GetBotChannelAssociation Text
gBotAlias = lens _gBotAlias (\s a -> s {_gBotAlias = a})

instance AWSRequest GetBotChannelAssociation where
  type
    Rs GetBotChannelAssociation =
      GetBotChannelAssociationResponse
  request = get lexModels
  response =
    receiveJSON
      ( \s h x ->
          GetBotChannelAssociationResponse'
            <$> (x .?> "botAlias")
            <*> (x .?> "createdDate")
            <*> (x .?> "status")
            <*> (x .?> "botConfiguration" .!@ mempty)
            <*> (x .?> "botName")
            <*> (x .?> "name")
            <*> (x .?> "failureReason")
            <*> (x .?> "description")
            <*> (x .?> "type")
            <*> (pure (fromEnum s))
      )

instance Hashable GetBotChannelAssociation

instance NFData GetBotChannelAssociation

instance ToHeaders GetBotChannelAssociation where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetBotChannelAssociation where
  toPath GetBotChannelAssociation' {..} =
    mconcat
      [ "/bots/",
        toBS _gBotName,
        "/aliases/",
        toBS _gBotAlias,
        "/channels/",
        toBS _gName
      ]

instance ToQuery GetBotChannelAssociation where
  toQuery = const mempty

-- | /See:/ 'getBotChannelAssociationResponse' smart constructor.
data GetBotChannelAssociationResponse = GetBotChannelAssociationResponse'
  { _gbcarrsBotAlias ::
      !( Maybe
           Text
       ),
    _gbcarrsCreatedDate ::
      !( Maybe
           POSIX
       ),
    _gbcarrsStatus ::
      !( Maybe
           ChannelStatus
       ),
    _gbcarrsBotConfiguration ::
      !( Maybe
           ( Sensitive
               ( Map
                   Text
                   Text
               )
           )
       ),
    _gbcarrsBotName ::
      !( Maybe
           Text
       ),
    _gbcarrsName ::
      !( Maybe
           Text
       ),
    _gbcarrsFailureReason ::
      !( Maybe
           Text
       ),
    _gbcarrsDescription ::
      !( Maybe
           Text
       ),
    _gbcarrsType ::
      !( Maybe
           ChannelType
       ),
    _gbcarrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetBotChannelAssociationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gbcarrsBotAlias' - An alias pointing to the specific version of the Amazon Lex bot to which this association is being made.
--
-- * 'gbcarrsCreatedDate' - The date that the association between the bot and the channel was created.
--
-- * 'gbcarrsStatus' - The status of the bot channel.      * @CREATED@ - The channel has been created and is ready for use.     * @IN_PROGRESS@ - Channel creation is in progress.     * @FAILED@ - There was an error creating the channel. For information about the reason for the failure, see the @failureReason@ field.
--
-- * 'gbcarrsBotConfiguration' - Provides information that the messaging platform needs to communicate with the Amazon Lex bot.
--
-- * 'gbcarrsBotName' - The name of the Amazon Lex bot.
--
-- * 'gbcarrsName' - The name of the association between the bot and the channel.
--
-- * 'gbcarrsFailureReason' - If @status@ is @FAILED@ , Amazon Lex provides the reason that it failed to create the association.
--
-- * 'gbcarrsDescription' - A description of the association between the bot and the channel.
--
-- * 'gbcarrsType' - The type of the messaging platform.
--
-- * 'gbcarrsResponseStatus' - -- | The response status code.
getBotChannelAssociationResponse ::
  -- | 'gbcarrsResponseStatus'
  Int ->
  GetBotChannelAssociationResponse
getBotChannelAssociationResponse pResponseStatus_ =
  GetBotChannelAssociationResponse'
    { _gbcarrsBotAlias =
        Nothing,
      _gbcarrsCreatedDate = Nothing,
      _gbcarrsStatus = Nothing,
      _gbcarrsBotConfiguration = Nothing,
      _gbcarrsBotName = Nothing,
      _gbcarrsName = Nothing,
      _gbcarrsFailureReason = Nothing,
      _gbcarrsDescription = Nothing,
      _gbcarrsType = Nothing,
      _gbcarrsResponseStatus = pResponseStatus_
    }

-- | An alias pointing to the specific version of the Amazon Lex bot to which this association is being made.
gbcarrsBotAlias :: Lens' GetBotChannelAssociationResponse (Maybe Text)
gbcarrsBotAlias = lens _gbcarrsBotAlias (\s a -> s {_gbcarrsBotAlias = a})

-- | The date that the association between the bot and the channel was created.
gbcarrsCreatedDate :: Lens' GetBotChannelAssociationResponse (Maybe UTCTime)
gbcarrsCreatedDate = lens _gbcarrsCreatedDate (\s a -> s {_gbcarrsCreatedDate = a}) . mapping _Time

-- | The status of the bot channel.      * @CREATED@ - The channel has been created and is ready for use.     * @IN_PROGRESS@ - Channel creation is in progress.     * @FAILED@ - There was an error creating the channel. For information about the reason for the failure, see the @failureReason@ field.
gbcarrsStatus :: Lens' GetBotChannelAssociationResponse (Maybe ChannelStatus)
gbcarrsStatus = lens _gbcarrsStatus (\s a -> s {_gbcarrsStatus = a})

-- | Provides information that the messaging platform needs to communicate with the Amazon Lex bot.
gbcarrsBotConfiguration :: Lens' GetBotChannelAssociationResponse (Maybe (HashMap Text Text))
gbcarrsBotConfiguration = lens _gbcarrsBotConfiguration (\s a -> s {_gbcarrsBotConfiguration = a}) . mapping (_Sensitive . _Map)

-- | The name of the Amazon Lex bot.
gbcarrsBotName :: Lens' GetBotChannelAssociationResponse (Maybe Text)
gbcarrsBotName = lens _gbcarrsBotName (\s a -> s {_gbcarrsBotName = a})

-- | The name of the association between the bot and the channel.
gbcarrsName :: Lens' GetBotChannelAssociationResponse (Maybe Text)
gbcarrsName = lens _gbcarrsName (\s a -> s {_gbcarrsName = a})

-- | If @status@ is @FAILED@ , Amazon Lex provides the reason that it failed to create the association.
gbcarrsFailureReason :: Lens' GetBotChannelAssociationResponse (Maybe Text)
gbcarrsFailureReason = lens _gbcarrsFailureReason (\s a -> s {_gbcarrsFailureReason = a})

-- | A description of the association between the bot and the channel.
gbcarrsDescription :: Lens' GetBotChannelAssociationResponse (Maybe Text)
gbcarrsDescription = lens _gbcarrsDescription (\s a -> s {_gbcarrsDescription = a})

-- | The type of the messaging platform.
gbcarrsType :: Lens' GetBotChannelAssociationResponse (Maybe ChannelType)
gbcarrsType = lens _gbcarrsType (\s a -> s {_gbcarrsType = a})

-- | -- | The response status code.
gbcarrsResponseStatus :: Lens' GetBotChannelAssociationResponse Int
gbcarrsResponseStatus = lens _gbcarrsResponseStatus (\s a -> s {_gbcarrsResponseStatus = a})

instance NFData GetBotChannelAssociationResponse
