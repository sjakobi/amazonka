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
-- Module      : Network.AWS.LexRuntime.PutSession
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new session or modifies an existing session with an Amazon Lex bot. Use this operation to enable your application to set the state of the bot.
--
--
-- For more information, see <https://docs.aws.amazon.com/lex/latest/dg/how-session-api.html Managing Sessions> .
module Network.AWS.LexRuntime.PutSession
  ( -- * Creating a Request
    putSession,
    PutSession,

    -- * Request Lenses
    psSessionAttributes,
    psDialogAction,
    psAccept,
    psRecentIntentSummaryView,
    psActiveContexts,
    psBotName,
    psBotAlias,
    psUserId,

    -- * Destructuring the Response
    putSessionResponse,
    PutSessionResponse,

    -- * Response Lenses
    psrrsDialogState,
    psrrsSessionAttributes,
    psrrsContentType,
    psrrsMessage,
    psrrsSessionId,
    psrrsIntentName,
    psrrsMessageFormat,
    psrrsSlots,
    psrrsSlotToElicit,
    psrrsActiveContexts,
    psrrsResponseStatus,
    psrrsAudioStream,
  )
where

import Network.AWS.Lens
import Network.AWS.LexRuntime.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'putSession' smart constructor.
data PutSession = PutSession'
  { _psSessionAttributes ::
      !(Maybe (Sensitive (Map Text Text))),
    _psDialogAction :: !(Maybe DialogAction),
    _psAccept :: !(Maybe Text),
    _psRecentIntentSummaryView ::
      !(Maybe [IntentSummary]),
    _psActiveContexts ::
      !(Maybe (Sensitive [ActiveContext])),
    _psBotName :: !Text,
    _psBotAlias :: !Text,
    _psUserId :: !Text
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'PutSession' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psSessionAttributes' - Map of key/value pairs representing the session-specific context information. It contains application information passed between Amazon Lex and a client application.
--
-- * 'psDialogAction' - Sets the next action that the bot should take to fulfill the conversation.
--
-- * 'psAccept' - The message that Amazon Lex returns in the response can be either text or speech based depending on the value of this field.     * If the value is @text/plain; charset=utf-8@ , Amazon Lex returns text in the response.     * If the value begins with @audio/@ , Amazon Lex returns speech in the response. Amazon Lex uses Amazon Polly to generate the speech in the configuration that you specify. For example, if you specify @audio/mpeg@ as the value, Amazon Lex returns speech in the MPEG format.     * If the value is @audio/pcm@ , the speech is returned as @audio/pcm@ in 16-bit, little endian format.     * The following are the accepted values:     * @audio/mpeg@      * @audio/ogg@      * @audio/pcm@      * @audio/*@ (defaults to mpeg)     * @text/plain; charset=utf-8@
--
-- * 'psRecentIntentSummaryView' - A summary of the recent intents for the bot. You can use the intent summary view to set a checkpoint label on an intent and modify attributes of intents. You can also use it to remove or add intent summary objects to the list. An intent that you modify or add to the list must make sense for the bot. For example, the intent name must be valid for the bot. You must provide valid values for:     * @intentName@      * slot names     * @slotToElict@  If you send the @recentIntentSummaryView@ parameter in a @PutSession@ request, the contents of the new summary view replaces the old summary view. For example, if a @GetSession@ request returns three intents in the summary view and you call @PutSession@ with one intent in the summary view, the next call to @GetSession@ will only return one intent.
--
-- * 'psActiveContexts' - A list of contexts active for the request. A context can be activated when a previous intent is fulfilled, or by including the context in the request, If you don't specify a list of contexts, Amazon Lex will use the current list of contexts for the session. If you specify an empty list, all contexts for the session are cleared.
--
-- * 'psBotName' - The name of the bot that contains the session data.
--
-- * 'psBotAlias' - The alias in use for the bot that contains the session data.
--
-- * 'psUserId' - The ID of the client application user. Amazon Lex uses this to identify a user's conversation with your bot.
putSession ::
  -- | 'psBotName'
  Text ->
  -- | 'psBotAlias'
  Text ->
  -- | 'psUserId'
  Text ->
  PutSession
putSession pBotName_ pBotAlias_ pUserId_ =
  PutSession'
    { _psSessionAttributes = Nothing,
      _psDialogAction = Nothing,
      _psAccept = Nothing,
      _psRecentIntentSummaryView = Nothing,
      _psActiveContexts = Nothing,
      _psBotName = pBotName_,
      _psBotAlias = pBotAlias_,
      _psUserId = pUserId_
    }

-- | Map of key/value pairs representing the session-specific context information. It contains application information passed between Amazon Lex and a client application.
psSessionAttributes :: Lens' PutSession (Maybe (HashMap Text Text))
psSessionAttributes = lens _psSessionAttributes (\s a -> s {_psSessionAttributes = a}) . mapping (_Sensitive . _Map)

-- | Sets the next action that the bot should take to fulfill the conversation.
psDialogAction :: Lens' PutSession (Maybe DialogAction)
psDialogAction = lens _psDialogAction (\s a -> s {_psDialogAction = a})

-- | The message that Amazon Lex returns in the response can be either text or speech based depending on the value of this field.     * If the value is @text/plain; charset=utf-8@ , Amazon Lex returns text in the response.     * If the value begins with @audio/@ , Amazon Lex returns speech in the response. Amazon Lex uses Amazon Polly to generate the speech in the configuration that you specify. For example, if you specify @audio/mpeg@ as the value, Amazon Lex returns speech in the MPEG format.     * If the value is @audio/pcm@ , the speech is returned as @audio/pcm@ in 16-bit, little endian format.     * The following are the accepted values:     * @audio/mpeg@      * @audio/ogg@      * @audio/pcm@      * @audio/*@ (defaults to mpeg)     * @text/plain; charset=utf-8@
psAccept :: Lens' PutSession (Maybe Text)
psAccept = lens _psAccept (\s a -> s {_psAccept = a})

-- | A summary of the recent intents for the bot. You can use the intent summary view to set a checkpoint label on an intent and modify attributes of intents. You can also use it to remove or add intent summary objects to the list. An intent that you modify or add to the list must make sense for the bot. For example, the intent name must be valid for the bot. You must provide valid values for:     * @intentName@      * slot names     * @slotToElict@  If you send the @recentIntentSummaryView@ parameter in a @PutSession@ request, the contents of the new summary view replaces the old summary view. For example, if a @GetSession@ request returns three intents in the summary view and you call @PutSession@ with one intent in the summary view, the next call to @GetSession@ will only return one intent.
psRecentIntentSummaryView :: Lens' PutSession [IntentSummary]
psRecentIntentSummaryView = lens _psRecentIntentSummaryView (\s a -> s {_psRecentIntentSummaryView = a}) . _Default . _Coerce

-- | A list of contexts active for the request. A context can be activated when a previous intent is fulfilled, or by including the context in the request, If you don't specify a list of contexts, Amazon Lex will use the current list of contexts for the session. If you specify an empty list, all contexts for the session are cleared.
psActiveContexts :: Lens' PutSession (Maybe [ActiveContext])
psActiveContexts = lens _psActiveContexts (\s a -> s {_psActiveContexts = a}) . mapping (_Sensitive . _Coerce)

-- | The name of the bot that contains the session data.
psBotName :: Lens' PutSession Text
psBotName = lens _psBotName (\s a -> s {_psBotName = a})

-- | The alias in use for the bot that contains the session data.
psBotAlias :: Lens' PutSession Text
psBotAlias = lens _psBotAlias (\s a -> s {_psBotAlias = a})

-- | The ID of the client application user. Amazon Lex uses this to identify a user's conversation with your bot.
psUserId :: Lens' PutSession Text
psUserId = lens _psUserId (\s a -> s {_psUserId = a})

instance AWSRequest PutSession where
  type Rs PutSession = PutSessionResponse
  request = postJSON lexRuntime
  response =
    receiveBody
      ( \s h x ->
          PutSessionResponse'
            <$> (h .#? "x-amz-lex-dialog-state")
            <*> (h .#? "x-amz-lex-session-attributes")
            <*> (h .#? "Content-Type")
            <*> (h .#? "x-amz-lex-message")
            <*> (h .#? "x-amz-lex-session-id")
            <*> (h .#? "x-amz-lex-intent-name")
            <*> (h .#? "x-amz-lex-message-format")
            <*> (h .#? "x-amz-lex-slots")
            <*> (h .#? "x-amz-lex-slot-to-elicit")
            <*> (h .#? "x-amz-lex-active-contexts")
            <*> (pure (fromEnum s))
            <*> (pure x)
      )

instance Hashable PutSession

instance NFData PutSession

instance ToHeaders PutSession where
  toHeaders PutSession' {..} =
    mconcat
      [ "Accept" =# _psAccept,
        "Content-Type"
          =# ("application/x-amz-json-1.1" :: ByteString)
      ]

instance ToJSON PutSession where
  toJSON PutSession' {..} =
    object
      ( catMaybes
          [ ("sessionAttributes" .=) <$> _psSessionAttributes,
            ("dialogAction" .=) <$> _psDialogAction,
            ("recentIntentSummaryView" .=)
              <$> _psRecentIntentSummaryView,
            ("activeContexts" .=) <$> _psActiveContexts
          ]
      )

instance ToPath PutSession where
  toPath PutSession' {..} =
    mconcat
      [ "/bot/",
        toBS _psBotName,
        "/alias/",
        toBS _psBotAlias,
        "/user/",
        toBS _psUserId,
        "/session"
      ]

instance ToQuery PutSession where
  toQuery = const mempty

-- | /See:/ 'putSessionResponse' smart constructor.
data PutSessionResponse = PutSessionResponse'
  { _psrrsDialogState ::
      !(Maybe DialogState),
    _psrrsSessionAttributes ::
      !(Maybe Text),
    _psrrsContentType ::
      !(Maybe Text),
    _psrrsMessage ::
      !(Maybe (Sensitive Text)),
    _psrrsSessionId :: !(Maybe Text),
    _psrrsIntentName :: !(Maybe Text),
    _psrrsMessageFormat ::
      !(Maybe MessageFormatType),
    _psrrsSlots :: !(Maybe Text),
    _psrrsSlotToElicit ::
      !(Maybe Text),
    _psrrsActiveContexts ::
      !(Maybe (Sensitive Text)),
    _psrrsResponseStatus :: !Int,
    _psrrsAudioStream :: !RsBody
  }
  deriving (Show, Generic)

-- | Creates a value of 'PutSessionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psrrsDialogState' -      * @ConfirmIntent@ - Amazon Lex is expecting a "yes" or "no" response to confirm the intent before fulfilling an intent.     * @ElicitIntent@ - Amazon Lex wants to elicit the user's intent.     * @ElicitSlot@ - Amazon Lex is expecting the value of a slot for the current intent.     * @Failed@ - Conveys that the conversation with the user has failed. This can happen for various reasons, including the user does not provide an appropriate response to prompts from the service, or if the Lambda function fails to fulfill the intent.     * @Fulfilled@ - Conveys that the Lambda function has sucessfully fulfilled the intent.     * @ReadyForFulfillment@ - Conveys that the client has to fulfill the intent.
--
-- * 'psrrsSessionAttributes' - Map of key/value pairs representing session-specific context information.
--
-- * 'psrrsContentType' - Content type as specified in the @Accept@ HTTP header in the request.
--
-- * 'psrrsMessage' - The next message that should be presented to the user.
--
-- * 'psrrsSessionId' - A unique identifier for the session.
--
-- * 'psrrsIntentName' - The name of the current intent.
--
-- * 'psrrsMessageFormat' - The format of the response message. One of the following values:     * @PlainText@ - The message contains plain UTF-8 text.     * @CustomPayload@ - The message is a custom format for the client.     * @SSML@ - The message contains text formatted for voice output.     * @Composite@ - The message contains an escaped JSON object containing one or more messages from the groups that messages were assigned to when the intent was created.
--
-- * 'psrrsSlots' - Map of zero or more intent slots Amazon Lex detected from the user input during the conversation. Amazon Lex creates a resolution list containing likely values for a slot. The value that it returns is determined by the @valueSelectionStrategy@ selected when the slot type was created or updated. If @valueSelectionStrategy@ is set to @ORIGINAL_VALUE@ , the value provided by the user is returned, if the user value is similar to the slot values. If @valueSelectionStrategy@ is set to @TOP_RESOLUTION@ Amazon Lex returns the first value in the resolution list or, if there is no resolution list, null. If you don't specify a @valueSelectionStrategy@ the default is @ORIGINAL_VALUE@ .
--
-- * 'psrrsSlotToElicit' - If the @dialogState@ is @ElicitSlot@ , returns the name of the slot for which Amazon Lex is eliciting a value.
--
-- * 'psrrsActiveContexts' - A list of active contexts for the session.
--
-- * 'psrrsResponseStatus' - -- | The response status code.
--
-- * 'psrrsAudioStream' - The audio version of the message to convey to the user.
putSessionResponse ::
  -- | 'psrrsResponseStatus'
  Int ->
  -- | 'psrrsAudioStream'
  RsBody ->
  PutSessionResponse
putSessionResponse pResponseStatus_ pAudioStream_ =
  PutSessionResponse'
    { _psrrsDialogState = Nothing,
      _psrrsSessionAttributes = Nothing,
      _psrrsContentType = Nothing,
      _psrrsMessage = Nothing,
      _psrrsSessionId = Nothing,
      _psrrsIntentName = Nothing,
      _psrrsMessageFormat = Nothing,
      _psrrsSlots = Nothing,
      _psrrsSlotToElicit = Nothing,
      _psrrsActiveContexts = Nothing,
      _psrrsResponseStatus = pResponseStatus_,
      _psrrsAudioStream = pAudioStream_
    }

-- |      * @ConfirmIntent@ - Amazon Lex is expecting a "yes" or "no" response to confirm the intent before fulfilling an intent.     * @ElicitIntent@ - Amazon Lex wants to elicit the user's intent.     * @ElicitSlot@ - Amazon Lex is expecting the value of a slot for the current intent.     * @Failed@ - Conveys that the conversation with the user has failed. This can happen for various reasons, including the user does not provide an appropriate response to prompts from the service, or if the Lambda function fails to fulfill the intent.     * @Fulfilled@ - Conveys that the Lambda function has sucessfully fulfilled the intent.     * @ReadyForFulfillment@ - Conveys that the client has to fulfill the intent.
psrrsDialogState :: Lens' PutSessionResponse (Maybe DialogState)
psrrsDialogState = lens _psrrsDialogState (\s a -> s {_psrrsDialogState = a})

-- | Map of key/value pairs representing session-specific context information.
psrrsSessionAttributes :: Lens' PutSessionResponse (Maybe Text)
psrrsSessionAttributes = lens _psrrsSessionAttributes (\s a -> s {_psrrsSessionAttributes = a})

-- | Content type as specified in the @Accept@ HTTP header in the request.
psrrsContentType :: Lens' PutSessionResponse (Maybe Text)
psrrsContentType = lens _psrrsContentType (\s a -> s {_psrrsContentType = a})

-- | The next message that should be presented to the user.
psrrsMessage :: Lens' PutSessionResponse (Maybe Text)
psrrsMessage = lens _psrrsMessage (\s a -> s {_psrrsMessage = a}) . mapping _Sensitive

-- | A unique identifier for the session.
psrrsSessionId :: Lens' PutSessionResponse (Maybe Text)
psrrsSessionId = lens _psrrsSessionId (\s a -> s {_psrrsSessionId = a})

-- | The name of the current intent.
psrrsIntentName :: Lens' PutSessionResponse (Maybe Text)
psrrsIntentName = lens _psrrsIntentName (\s a -> s {_psrrsIntentName = a})

-- | The format of the response message. One of the following values:     * @PlainText@ - The message contains plain UTF-8 text.     * @CustomPayload@ - The message is a custom format for the client.     * @SSML@ - The message contains text formatted for voice output.     * @Composite@ - The message contains an escaped JSON object containing one or more messages from the groups that messages were assigned to when the intent was created.
psrrsMessageFormat :: Lens' PutSessionResponse (Maybe MessageFormatType)
psrrsMessageFormat = lens _psrrsMessageFormat (\s a -> s {_psrrsMessageFormat = a})

-- | Map of zero or more intent slots Amazon Lex detected from the user input during the conversation. Amazon Lex creates a resolution list containing likely values for a slot. The value that it returns is determined by the @valueSelectionStrategy@ selected when the slot type was created or updated. If @valueSelectionStrategy@ is set to @ORIGINAL_VALUE@ , the value provided by the user is returned, if the user value is similar to the slot values. If @valueSelectionStrategy@ is set to @TOP_RESOLUTION@ Amazon Lex returns the first value in the resolution list or, if there is no resolution list, null. If you don't specify a @valueSelectionStrategy@ the default is @ORIGINAL_VALUE@ .
psrrsSlots :: Lens' PutSessionResponse (Maybe Text)
psrrsSlots = lens _psrrsSlots (\s a -> s {_psrrsSlots = a})

-- | If the @dialogState@ is @ElicitSlot@ , returns the name of the slot for which Amazon Lex is eliciting a value.
psrrsSlotToElicit :: Lens' PutSessionResponse (Maybe Text)
psrrsSlotToElicit = lens _psrrsSlotToElicit (\s a -> s {_psrrsSlotToElicit = a})

-- | A list of active contexts for the session.
psrrsActiveContexts :: Lens' PutSessionResponse (Maybe Text)
psrrsActiveContexts = lens _psrrsActiveContexts (\s a -> s {_psrrsActiveContexts = a}) . mapping _Sensitive

-- | -- | The response status code.
psrrsResponseStatus :: Lens' PutSessionResponse Int
psrrsResponseStatus = lens _psrrsResponseStatus (\s a -> s {_psrrsResponseStatus = a})

-- | The audio version of the message to convey to the user.
psrrsAudioStream :: Lens' PutSessionResponse RsBody
psrrsAudioStream = lens _psrrsAudioStream (\s a -> s {_psrrsAudioStream = a})
