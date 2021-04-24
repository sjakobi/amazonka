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
-- Module      : Network.AWS.LexModels.GetIntent
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about an intent. In addition to the intent name, you must specify the intent version.
--
--
-- This operation requires permissions to perform the @lex:GetIntent@ action.
module Network.AWS.LexModels.GetIntent
  ( -- * Creating a Request
    getIntent,
    GetIntent,

    -- * Request Lenses
    giName,
    giVersion,

    -- * Destructuring the Response
    getIntentResponse,
    GetIntentResponse,

    -- * Response Lenses
    girrsKendraConfiguration,
    girrsCreatedDate,
    girrsParentIntentSignature,
    girrsDialogCodeHook,
    girrsConclusionStatement,
    girrsLastUpdatedDate,
    girrsInputContexts,
    girrsVersion,
    girrsRejectionStatement,
    girrsName,
    girrsSlots,
    girrsFulfillmentActivity,
    girrsSampleUtterances,
    girrsDescription,
    girrsConfirmationPrompt,
    girrsOutputContexts,
    girrsFollowUpPrompt,
    girrsChecksum,
    girrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.LexModels.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getIntent' smart constructor.
data GetIntent = GetIntent'
  { _giName :: !Text,
    _giVersion :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetIntent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giName' - The name of the intent. The name is case sensitive.
--
-- * 'giVersion' - The version of the intent.
getIntent ::
  -- | 'giName'
  Text ->
  -- | 'giVersion'
  Text ->
  GetIntent
getIntent pName_ pVersion_ =
  GetIntent'
    { _giName = pName_,
      _giVersion = pVersion_
    }

-- | The name of the intent. The name is case sensitive.
giName :: Lens' GetIntent Text
giName = lens _giName (\s a -> s {_giName = a})

-- | The version of the intent.
giVersion :: Lens' GetIntent Text
giVersion = lens _giVersion (\s a -> s {_giVersion = a})

instance AWSRequest GetIntent where
  type Rs GetIntent = GetIntentResponse
  request = get lexModels
  response =
    receiveJSON
      ( \s h x ->
          GetIntentResponse'
            <$> (x .?> "kendraConfiguration")
            <*> (x .?> "createdDate")
            <*> (x .?> "parentIntentSignature")
            <*> (x .?> "dialogCodeHook")
            <*> (x .?> "conclusionStatement")
            <*> (x .?> "lastUpdatedDate")
            <*> (x .?> "inputContexts" .!@ mempty)
            <*> (x .?> "version")
            <*> (x .?> "rejectionStatement")
            <*> (x .?> "name")
            <*> (x .?> "slots" .!@ mempty)
            <*> (x .?> "fulfillmentActivity")
            <*> (x .?> "sampleUtterances" .!@ mempty)
            <*> (x .?> "description")
            <*> (x .?> "confirmationPrompt")
            <*> (x .?> "outputContexts" .!@ mempty)
            <*> (x .?> "followUpPrompt")
            <*> (x .?> "checksum")
            <*> (pure (fromEnum s))
      )

instance Hashable GetIntent

instance NFData GetIntent

instance ToHeaders GetIntent where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetIntent where
  toPath GetIntent' {..} =
    mconcat
      [ "/intents/",
        toBS _giName,
        "/versions/",
        toBS _giVersion
      ]

instance ToQuery GetIntent where
  toQuery = const mempty

-- | /See:/ 'getIntentResponse' smart constructor.
data GetIntentResponse = GetIntentResponse'
  { _girrsKendraConfiguration ::
      !(Maybe KendraConfiguration),
    _girrsCreatedDate :: !(Maybe POSIX),
    _girrsParentIntentSignature ::
      !(Maybe Text),
    _girrsDialogCodeHook ::
      !(Maybe CodeHook),
    _girrsConclusionStatement ::
      !(Maybe Statement),
    _girrsLastUpdatedDate ::
      !(Maybe POSIX),
    _girrsInputContexts ::
      !(Maybe [InputContext]),
    _girrsVersion :: !(Maybe Text),
    _girrsRejectionStatement ::
      !(Maybe Statement),
    _girrsName :: !(Maybe Text),
    _girrsSlots :: !(Maybe [Slot]),
    _girrsFulfillmentActivity ::
      !(Maybe FulfillmentActivity),
    _girrsSampleUtterances ::
      !(Maybe [Text]),
    _girrsDescription :: !(Maybe Text),
    _girrsConfirmationPrompt ::
      !(Maybe Prompt),
    _girrsOutputContexts ::
      !(Maybe [OutputContext]),
    _girrsFollowUpPrompt ::
      !(Maybe FollowUpPrompt),
    _girrsChecksum :: !(Maybe Text),
    _girrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetIntentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'girrsKendraConfiguration' - Configuration information, if any, to connect to an Amazon Kendra index with the @AMAZON.KendraSearchIntent@ intent.
--
-- * 'girrsCreatedDate' - The date that the intent was created.
--
-- * 'girrsParentIntentSignature' - A unique identifier for a built-in intent.
--
-- * 'girrsDialogCodeHook' - If defined in the bot, Amazon Amazon Lex invokes this Lambda function for each user input. For more information, see 'PutIntent' .
--
-- * 'girrsConclusionStatement' - After the Lambda function specified in the @fulfillmentActivity@ element fulfills the intent, Amazon Lex conveys this statement to the user.
--
-- * 'girrsLastUpdatedDate' - The date that the intent was updated. When you create a resource, the creation date and the last updated date are the same.
--
-- * 'girrsInputContexts' - An array of @InputContext@ objects that lists the contexts that must be active for Amazon Lex to choose the intent in a conversation with the user.
--
-- * 'girrsVersion' - The version of the intent.
--
-- * 'girrsRejectionStatement' - If the user answers "no" to the question defined in @confirmationPrompt@ , Amazon Lex responds with this statement to acknowledge that the intent was canceled.
--
-- * 'girrsName' - The name of the intent.
--
-- * 'girrsSlots' - An array of intent slots configured for the intent.
--
-- * 'girrsFulfillmentActivity' - Describes how the intent is fulfilled. For more information, see 'PutIntent' .
--
-- * 'girrsSampleUtterances' - An array of sample utterances configured for the intent.
--
-- * 'girrsDescription' - A description of the intent.
--
-- * 'girrsConfirmationPrompt' - If defined in the bot, Amazon Lex uses prompt to confirm the intent before fulfilling the user's request. For more information, see 'PutIntent' .
--
-- * 'girrsOutputContexts' - An array of @OutputContext@ objects that lists the contexts that the intent activates when the intent is fulfilled.
--
-- * 'girrsFollowUpPrompt' - If defined in the bot, Amazon Lex uses this prompt to solicit additional user activity after the intent is fulfilled. For more information, see 'PutIntent' .
--
-- * 'girrsChecksum' - Checksum of the intent.
--
-- * 'girrsResponseStatus' - -- | The response status code.
getIntentResponse ::
  -- | 'girrsResponseStatus'
  Int ->
  GetIntentResponse
getIntentResponse pResponseStatus_ =
  GetIntentResponse'
    { _girrsKendraConfiguration =
        Nothing,
      _girrsCreatedDate = Nothing,
      _girrsParentIntentSignature = Nothing,
      _girrsDialogCodeHook = Nothing,
      _girrsConclusionStatement = Nothing,
      _girrsLastUpdatedDate = Nothing,
      _girrsInputContexts = Nothing,
      _girrsVersion = Nothing,
      _girrsRejectionStatement = Nothing,
      _girrsName = Nothing,
      _girrsSlots = Nothing,
      _girrsFulfillmentActivity = Nothing,
      _girrsSampleUtterances = Nothing,
      _girrsDescription = Nothing,
      _girrsConfirmationPrompt = Nothing,
      _girrsOutputContexts = Nothing,
      _girrsFollowUpPrompt = Nothing,
      _girrsChecksum = Nothing,
      _girrsResponseStatus = pResponseStatus_
    }

-- | Configuration information, if any, to connect to an Amazon Kendra index with the @AMAZON.KendraSearchIntent@ intent.
girrsKendraConfiguration :: Lens' GetIntentResponse (Maybe KendraConfiguration)
girrsKendraConfiguration = lens _girrsKendraConfiguration (\s a -> s {_girrsKendraConfiguration = a})

-- | The date that the intent was created.
girrsCreatedDate :: Lens' GetIntentResponse (Maybe UTCTime)
girrsCreatedDate = lens _girrsCreatedDate (\s a -> s {_girrsCreatedDate = a}) . mapping _Time

-- | A unique identifier for a built-in intent.
girrsParentIntentSignature :: Lens' GetIntentResponse (Maybe Text)
girrsParentIntentSignature = lens _girrsParentIntentSignature (\s a -> s {_girrsParentIntentSignature = a})

-- | If defined in the bot, Amazon Amazon Lex invokes this Lambda function for each user input. For more information, see 'PutIntent' .
girrsDialogCodeHook :: Lens' GetIntentResponse (Maybe CodeHook)
girrsDialogCodeHook = lens _girrsDialogCodeHook (\s a -> s {_girrsDialogCodeHook = a})

-- | After the Lambda function specified in the @fulfillmentActivity@ element fulfills the intent, Amazon Lex conveys this statement to the user.
girrsConclusionStatement :: Lens' GetIntentResponse (Maybe Statement)
girrsConclusionStatement = lens _girrsConclusionStatement (\s a -> s {_girrsConclusionStatement = a})

-- | The date that the intent was updated. When you create a resource, the creation date and the last updated date are the same.
girrsLastUpdatedDate :: Lens' GetIntentResponse (Maybe UTCTime)
girrsLastUpdatedDate = lens _girrsLastUpdatedDate (\s a -> s {_girrsLastUpdatedDate = a}) . mapping _Time

-- | An array of @InputContext@ objects that lists the contexts that must be active for Amazon Lex to choose the intent in a conversation with the user.
girrsInputContexts :: Lens' GetIntentResponse [InputContext]
girrsInputContexts = lens _girrsInputContexts (\s a -> s {_girrsInputContexts = a}) . _Default . _Coerce

-- | The version of the intent.
girrsVersion :: Lens' GetIntentResponse (Maybe Text)
girrsVersion = lens _girrsVersion (\s a -> s {_girrsVersion = a})

-- | If the user answers "no" to the question defined in @confirmationPrompt@ , Amazon Lex responds with this statement to acknowledge that the intent was canceled.
girrsRejectionStatement :: Lens' GetIntentResponse (Maybe Statement)
girrsRejectionStatement = lens _girrsRejectionStatement (\s a -> s {_girrsRejectionStatement = a})

-- | The name of the intent.
girrsName :: Lens' GetIntentResponse (Maybe Text)
girrsName = lens _girrsName (\s a -> s {_girrsName = a})

-- | An array of intent slots configured for the intent.
girrsSlots :: Lens' GetIntentResponse [Slot]
girrsSlots = lens _girrsSlots (\s a -> s {_girrsSlots = a}) . _Default . _Coerce

-- | Describes how the intent is fulfilled. For more information, see 'PutIntent' .
girrsFulfillmentActivity :: Lens' GetIntentResponse (Maybe FulfillmentActivity)
girrsFulfillmentActivity = lens _girrsFulfillmentActivity (\s a -> s {_girrsFulfillmentActivity = a})

-- | An array of sample utterances configured for the intent.
girrsSampleUtterances :: Lens' GetIntentResponse [Text]
girrsSampleUtterances = lens _girrsSampleUtterances (\s a -> s {_girrsSampleUtterances = a}) . _Default . _Coerce

-- | A description of the intent.
girrsDescription :: Lens' GetIntentResponse (Maybe Text)
girrsDescription = lens _girrsDescription (\s a -> s {_girrsDescription = a})

-- | If defined in the bot, Amazon Lex uses prompt to confirm the intent before fulfilling the user's request. For more information, see 'PutIntent' .
girrsConfirmationPrompt :: Lens' GetIntentResponse (Maybe Prompt)
girrsConfirmationPrompt = lens _girrsConfirmationPrompt (\s a -> s {_girrsConfirmationPrompt = a})

-- | An array of @OutputContext@ objects that lists the contexts that the intent activates when the intent is fulfilled.
girrsOutputContexts :: Lens' GetIntentResponse [OutputContext]
girrsOutputContexts = lens _girrsOutputContexts (\s a -> s {_girrsOutputContexts = a}) . _Default . _Coerce

-- | If defined in the bot, Amazon Lex uses this prompt to solicit additional user activity after the intent is fulfilled. For more information, see 'PutIntent' .
girrsFollowUpPrompt :: Lens' GetIntentResponse (Maybe FollowUpPrompt)
girrsFollowUpPrompt = lens _girrsFollowUpPrompt (\s a -> s {_girrsFollowUpPrompt = a})

-- | Checksum of the intent.
girrsChecksum :: Lens' GetIntentResponse (Maybe Text)
girrsChecksum = lens _girrsChecksum (\s a -> s {_girrsChecksum = a})

-- | -- | The response status code.
girrsResponseStatus :: Lens' GetIntentResponse Int
girrsResponseStatus = lens _girrsResponseStatus (\s a -> s {_girrsResponseStatus = a})

instance NFData GetIntentResponse
