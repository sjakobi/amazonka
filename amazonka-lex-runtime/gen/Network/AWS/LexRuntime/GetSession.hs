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
-- Module      : Network.AWS.LexRuntime.GetSession
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns session information for a specified bot, alias, and user ID.
module Network.AWS.LexRuntime.GetSession
  ( -- * Creating a Request
    getSession,
    GetSession,

    -- * Request Lenses
    gsCheckpointLabelFilter,
    gsBotName,
    gsBotAlias,
    gsUserId,

    -- * Destructuring the Response
    getSessionResponse,
    GetSessionResponse,

    -- * Response Lenses
    gsrrsSessionAttributes,
    gsrrsDialogAction,
    gsrrsSessionId,
    gsrrsRecentIntentSummaryView,
    gsrrsActiveContexts,
    gsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.LexRuntime.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getSession' smart constructor.
data GetSession = GetSession'
  { _gsCheckpointLabelFilter ::
      !(Maybe Text),
    _gsBotName :: !Text,
    _gsBotAlias :: !Text,
    _gsUserId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetSession' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsCheckpointLabelFilter' - A string used to filter the intents returned in the @recentIntentSummaryView@ structure.  When you specify a filter, only intents with their @checkpointLabel@ field set to that string are returned.
--
-- * 'gsBotName' - The name of the bot that contains the session data.
--
-- * 'gsBotAlias' - The alias in use for the bot that contains the session data.
--
-- * 'gsUserId' - The ID of the client application user. Amazon Lex uses this to identify a user's conversation with your bot.
getSession ::
  -- | 'gsBotName'
  Text ->
  -- | 'gsBotAlias'
  Text ->
  -- | 'gsUserId'
  Text ->
  GetSession
getSession pBotName_ pBotAlias_ pUserId_ =
  GetSession'
    { _gsCheckpointLabelFilter = Nothing,
      _gsBotName = pBotName_,
      _gsBotAlias = pBotAlias_,
      _gsUserId = pUserId_
    }

-- | A string used to filter the intents returned in the @recentIntentSummaryView@ structure.  When you specify a filter, only intents with their @checkpointLabel@ field set to that string are returned.
gsCheckpointLabelFilter :: Lens' GetSession (Maybe Text)
gsCheckpointLabelFilter = lens _gsCheckpointLabelFilter (\s a -> s {_gsCheckpointLabelFilter = a})

-- | The name of the bot that contains the session data.
gsBotName :: Lens' GetSession Text
gsBotName = lens _gsBotName (\s a -> s {_gsBotName = a})

-- | The alias in use for the bot that contains the session data.
gsBotAlias :: Lens' GetSession Text
gsBotAlias = lens _gsBotAlias (\s a -> s {_gsBotAlias = a})

-- | The ID of the client application user. Amazon Lex uses this to identify a user's conversation with your bot.
gsUserId :: Lens' GetSession Text
gsUserId = lens _gsUserId (\s a -> s {_gsUserId = a})

instance AWSRequest GetSession where
  type Rs GetSession = GetSessionResponse
  request = get lexRuntime
  response =
    receiveJSON
      ( \s h x ->
          GetSessionResponse'
            <$> (x .?> "sessionAttributes" .!@ mempty)
            <*> (x .?> "dialogAction")
            <*> (x .?> "sessionId")
            <*> (x .?> "recentIntentSummaryView" .!@ mempty)
            <*> (x .?> "activeContexts" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetSession

instance NFData GetSession

instance ToHeaders GetSession where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetSession where
  toPath GetSession' {..} =
    mconcat
      [ "/bot/",
        toBS _gsBotName,
        "/alias/",
        toBS _gsBotAlias,
        "/user/",
        toBS _gsUserId,
        "/session/"
      ]

instance ToQuery GetSession where
  toQuery GetSession' {..} =
    mconcat
      ["checkpointLabelFilter" =: _gsCheckpointLabelFilter]

-- | /See:/ 'getSessionResponse' smart constructor.
data GetSessionResponse = GetSessionResponse'
  { _gsrrsSessionAttributes ::
      !( Maybe
           (Sensitive (Map Text Text))
       ),
    _gsrrsDialogAction ::
      !(Maybe DialogAction),
    _gsrrsSessionId :: !(Maybe Text),
    _gsrrsRecentIntentSummaryView ::
      !(Maybe [IntentSummary]),
    _gsrrsActiveContexts ::
      !( Maybe
           (Sensitive [ActiveContext])
       ),
    _gsrrsResponseStatus :: !Int
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetSessionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsrrsSessionAttributes' - Map of key/value pairs representing the session-specific context information. It contains application information passed between Amazon Lex and a client application.
--
-- * 'gsrrsDialogAction' - Describes the current state of the bot.
--
-- * 'gsrrsSessionId' - A unique identifier for the session.
--
-- * 'gsrrsRecentIntentSummaryView' - An array of information about the intents used in the session. The array can contain a maximum of three summaries. If more than three intents are used in the session, the @recentIntentSummaryView@ operation contains information about the last three intents used. If you set the @checkpointLabelFilter@ parameter in the request, the array contains only the intents with the specified label.
--
-- * 'gsrrsActiveContexts' - A list of active contexts for the session. A context can be set when an intent is fulfilled or by calling the @PostContent@ , @PostText@ , or @PutSession@ operation. You can use a context to control the intents that can follow up an intent, or to modify the operation of your application.
--
-- * 'gsrrsResponseStatus' - -- | The response status code.
getSessionResponse ::
  -- | 'gsrrsResponseStatus'
  Int ->
  GetSessionResponse
getSessionResponse pResponseStatus_ =
  GetSessionResponse'
    { _gsrrsSessionAttributes =
        Nothing,
      _gsrrsDialogAction = Nothing,
      _gsrrsSessionId = Nothing,
      _gsrrsRecentIntentSummaryView = Nothing,
      _gsrrsActiveContexts = Nothing,
      _gsrrsResponseStatus = pResponseStatus_
    }

-- | Map of key/value pairs representing the session-specific context information. It contains application information passed between Amazon Lex and a client application.
gsrrsSessionAttributes :: Lens' GetSessionResponse (Maybe (HashMap Text Text))
gsrrsSessionAttributes = lens _gsrrsSessionAttributes (\s a -> s {_gsrrsSessionAttributes = a}) . mapping (_Sensitive . _Map)

-- | Describes the current state of the bot.
gsrrsDialogAction :: Lens' GetSessionResponse (Maybe DialogAction)
gsrrsDialogAction = lens _gsrrsDialogAction (\s a -> s {_gsrrsDialogAction = a})

-- | A unique identifier for the session.
gsrrsSessionId :: Lens' GetSessionResponse (Maybe Text)
gsrrsSessionId = lens _gsrrsSessionId (\s a -> s {_gsrrsSessionId = a})

-- | An array of information about the intents used in the session. The array can contain a maximum of three summaries. If more than three intents are used in the session, the @recentIntentSummaryView@ operation contains information about the last three intents used. If you set the @checkpointLabelFilter@ parameter in the request, the array contains only the intents with the specified label.
gsrrsRecentIntentSummaryView :: Lens' GetSessionResponse [IntentSummary]
gsrrsRecentIntentSummaryView = lens _gsrrsRecentIntentSummaryView (\s a -> s {_gsrrsRecentIntentSummaryView = a}) . _Default . _Coerce

-- | A list of active contexts for the session. A context can be set when an intent is fulfilled or by calling the @PostContent@ , @PostText@ , or @PutSession@ operation. You can use a context to control the intents that can follow up an intent, or to modify the operation of your application.
gsrrsActiveContexts :: Lens' GetSessionResponse (Maybe [ActiveContext])
gsrrsActiveContexts = lens _gsrrsActiveContexts (\s a -> s {_gsrrsActiveContexts = a}) . mapping (_Sensitive . _Coerce)

-- | -- | The response status code.
gsrrsResponseStatus :: Lens' GetSessionResponse Int
gsrrsResponseStatus = lens _gsrrsResponseStatus (\s a -> s {_gsrrsResponseStatus = a})

instance NFData GetSessionResponse
