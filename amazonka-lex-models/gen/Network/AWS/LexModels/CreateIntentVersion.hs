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
-- Module      : Network.AWS.LexModels.CreateIntentVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new version of an intent based on the @> LATEST@ version of the intent. If the @> LATEST@ version of this intent hasn't changed since you last updated it, Amazon Lex doesn't create a new version. It returns the last version you created.
--
--
-- When you create a version of an intent, Amazon Lex sets the version to 1. Subsequent versions increment by 1. For more information, see 'versioning-intro' .
--
-- This operation requires permissions to perform the @lex:CreateIntentVersion@ action.
module Network.AWS.LexModels.CreateIntentVersion
  ( -- * Creating a Request
    createIntentVersion,
    CreateIntentVersion,

    -- * Request Lenses
    civChecksum,
    civName,

    -- * Destructuring the Response
    createIntentVersionResponse,
    CreateIntentVersionResponse,

    -- * Response Lenses
    civrrsKendraConfiguration,
    civrrsCreatedDate,
    civrrsParentIntentSignature,
    civrrsDialogCodeHook,
    civrrsConclusionStatement,
    civrrsLastUpdatedDate,
    civrrsInputContexts,
    civrrsVersion,
    civrrsRejectionStatement,
    civrrsName,
    civrrsSlots,
    civrrsFulfillmentActivity,
    civrrsSampleUtterances,
    civrrsDescription,
    civrrsConfirmationPrompt,
    civrrsOutputContexts,
    civrrsFollowUpPrompt,
    civrrsChecksum,
    civrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.LexModels.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createIntentVersion' smart constructor.
data CreateIntentVersion = CreateIntentVersion'
  { _civChecksum ::
      !(Maybe Text),
    _civName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateIntentVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'civChecksum' - Checksum of the @> LATEST@ version of the intent that should be used to create the new version. If you specify a checksum and the @> LATEST@ version of the intent has a different checksum, Amazon Lex returns a @PreconditionFailedException@ exception and doesn't publish a new version. If you don't specify a checksum, Amazon Lex publishes the @> LATEST@ version.
--
-- * 'civName' - The name of the intent that you want to create a new version of. The name is case sensitive.
createIntentVersion ::
  -- | 'civName'
  Text ->
  CreateIntentVersion
createIntentVersion pName_ =
  CreateIntentVersion'
    { _civChecksum = Nothing,
      _civName = pName_
    }

-- | Checksum of the @> LATEST@ version of the intent that should be used to create the new version. If you specify a checksum and the @> LATEST@ version of the intent has a different checksum, Amazon Lex returns a @PreconditionFailedException@ exception and doesn't publish a new version. If you don't specify a checksum, Amazon Lex publishes the @> LATEST@ version.
civChecksum :: Lens' CreateIntentVersion (Maybe Text)
civChecksum = lens _civChecksum (\s a -> s {_civChecksum = a})

-- | The name of the intent that you want to create a new version of. The name is case sensitive.
civName :: Lens' CreateIntentVersion Text
civName = lens _civName (\s a -> s {_civName = a})

instance AWSRequest CreateIntentVersion where
  type
    Rs CreateIntentVersion =
      CreateIntentVersionResponse
  request = postJSON lexModels
  response =
    receiveJSON
      ( \s h x ->
          CreateIntentVersionResponse'
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

instance Hashable CreateIntentVersion

instance NFData CreateIntentVersion

instance ToHeaders CreateIntentVersion where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateIntentVersion where
  toJSON CreateIntentVersion' {..} =
    object
      (catMaybes [("checksum" .=) <$> _civChecksum])

instance ToPath CreateIntentVersion where
  toPath CreateIntentVersion' {..} =
    mconcat ["/intents/", toBS _civName, "/versions"]

instance ToQuery CreateIntentVersion where
  toQuery = const mempty

-- | /See:/ 'createIntentVersionResponse' smart constructor.
data CreateIntentVersionResponse = CreateIntentVersionResponse'
  { _civrrsKendraConfiguration ::
      !( Maybe
           KendraConfiguration
       ),
    _civrrsCreatedDate ::
      !(Maybe POSIX),
    _civrrsParentIntentSignature ::
      !(Maybe Text),
    _civrrsDialogCodeHook ::
      !( Maybe
           CodeHook
       ),
    _civrrsConclusionStatement ::
      !( Maybe
           Statement
       ),
    _civrrsLastUpdatedDate ::
      !(Maybe POSIX),
    _civrrsInputContexts ::
      !( Maybe
           [InputContext]
       ),
    _civrrsVersion ::
      !(Maybe Text),
    _civrrsRejectionStatement ::
      !( Maybe
           Statement
       ),
    _civrrsName ::
      !(Maybe Text),
    _civrrsSlots ::
      !(Maybe [Slot]),
    _civrrsFulfillmentActivity ::
      !( Maybe
           FulfillmentActivity
       ),
    _civrrsSampleUtterances ::
      !(Maybe [Text]),
    _civrrsDescription ::
      !(Maybe Text),
    _civrrsConfirmationPrompt ::
      !(Maybe Prompt),
    _civrrsOutputContexts ::
      !( Maybe
           [OutputContext]
       ),
    _civrrsFollowUpPrompt ::
      !( Maybe
           FollowUpPrompt
       ),
    _civrrsChecksum ::
      !(Maybe Text),
    _civrrsResponseStatus ::
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

-- | Creates a value of 'CreateIntentVersionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'civrrsKendraConfiguration' - Configuration information, if any, for connecting an Amazon Kendra index with the @AMAZON.KendraSearchIntent@ intent.
--
-- * 'civrrsCreatedDate' - The date that the intent was created.
--
-- * 'civrrsParentIntentSignature' - A unique identifier for a built-in intent.
--
-- * 'civrrsDialogCodeHook' - If defined, Amazon Lex invokes this Lambda function for each user input.
--
-- * 'civrrsConclusionStatement' - After the Lambda function specified in the @fulfillmentActivity@ field fulfills the intent, Amazon Lex conveys this statement to the user.
--
-- * 'civrrsLastUpdatedDate' - The date that the intent was updated.
--
-- * 'civrrsInputContexts' - An array of @InputContext@ objects that lists the contexts that must be active for Amazon Lex to choose the intent in a conversation with the user.
--
-- * 'civrrsVersion' - The version number assigned to the new version of the intent.
--
-- * 'civrrsRejectionStatement' - If the user answers "no" to the question defined in @confirmationPrompt@ , Amazon Lex responds with this statement to acknowledge that the intent was canceled.
--
-- * 'civrrsName' - The name of the intent.
--
-- * 'civrrsSlots' - An array of slot types that defines the information required to fulfill the intent.
--
-- * 'civrrsFulfillmentActivity' - Describes how the intent is fulfilled.
--
-- * 'civrrsSampleUtterances' - An array of sample utterances configured for the intent.
--
-- * 'civrrsDescription' - A description of the intent.
--
-- * 'civrrsConfirmationPrompt' - If defined, the prompt that Amazon Lex uses to confirm the user's intent before fulfilling it.
--
-- * 'civrrsOutputContexts' - An array of @OutputContext@ objects that lists the contexts that the intent activates when the intent is fulfilled.
--
-- * 'civrrsFollowUpPrompt' - If defined, Amazon Lex uses this prompt to solicit additional user activity after the intent is fulfilled.
--
-- * 'civrrsChecksum' - Checksum of the intent version created.
--
-- * 'civrrsResponseStatus' - -- | The response status code.
createIntentVersionResponse ::
  -- | 'civrrsResponseStatus'
  Int ->
  CreateIntentVersionResponse
createIntentVersionResponse pResponseStatus_ =
  CreateIntentVersionResponse'
    { _civrrsKendraConfiguration =
        Nothing,
      _civrrsCreatedDate = Nothing,
      _civrrsParentIntentSignature = Nothing,
      _civrrsDialogCodeHook = Nothing,
      _civrrsConclusionStatement = Nothing,
      _civrrsLastUpdatedDate = Nothing,
      _civrrsInputContexts = Nothing,
      _civrrsVersion = Nothing,
      _civrrsRejectionStatement = Nothing,
      _civrrsName = Nothing,
      _civrrsSlots = Nothing,
      _civrrsFulfillmentActivity = Nothing,
      _civrrsSampleUtterances = Nothing,
      _civrrsDescription = Nothing,
      _civrrsConfirmationPrompt = Nothing,
      _civrrsOutputContexts = Nothing,
      _civrrsFollowUpPrompt = Nothing,
      _civrrsChecksum = Nothing,
      _civrrsResponseStatus = pResponseStatus_
    }

-- | Configuration information, if any, for connecting an Amazon Kendra index with the @AMAZON.KendraSearchIntent@ intent.
civrrsKendraConfiguration :: Lens' CreateIntentVersionResponse (Maybe KendraConfiguration)
civrrsKendraConfiguration = lens _civrrsKendraConfiguration (\s a -> s {_civrrsKendraConfiguration = a})

-- | The date that the intent was created.
civrrsCreatedDate :: Lens' CreateIntentVersionResponse (Maybe UTCTime)
civrrsCreatedDate = lens _civrrsCreatedDate (\s a -> s {_civrrsCreatedDate = a}) . mapping _Time

-- | A unique identifier for a built-in intent.
civrrsParentIntentSignature :: Lens' CreateIntentVersionResponse (Maybe Text)
civrrsParentIntentSignature = lens _civrrsParentIntentSignature (\s a -> s {_civrrsParentIntentSignature = a})

-- | If defined, Amazon Lex invokes this Lambda function for each user input.
civrrsDialogCodeHook :: Lens' CreateIntentVersionResponse (Maybe CodeHook)
civrrsDialogCodeHook = lens _civrrsDialogCodeHook (\s a -> s {_civrrsDialogCodeHook = a})

-- | After the Lambda function specified in the @fulfillmentActivity@ field fulfills the intent, Amazon Lex conveys this statement to the user.
civrrsConclusionStatement :: Lens' CreateIntentVersionResponse (Maybe Statement)
civrrsConclusionStatement = lens _civrrsConclusionStatement (\s a -> s {_civrrsConclusionStatement = a})

-- | The date that the intent was updated.
civrrsLastUpdatedDate :: Lens' CreateIntentVersionResponse (Maybe UTCTime)
civrrsLastUpdatedDate = lens _civrrsLastUpdatedDate (\s a -> s {_civrrsLastUpdatedDate = a}) . mapping _Time

-- | An array of @InputContext@ objects that lists the contexts that must be active for Amazon Lex to choose the intent in a conversation with the user.
civrrsInputContexts :: Lens' CreateIntentVersionResponse [InputContext]
civrrsInputContexts = lens _civrrsInputContexts (\s a -> s {_civrrsInputContexts = a}) . _Default . _Coerce

-- | The version number assigned to the new version of the intent.
civrrsVersion :: Lens' CreateIntentVersionResponse (Maybe Text)
civrrsVersion = lens _civrrsVersion (\s a -> s {_civrrsVersion = a})

-- | If the user answers "no" to the question defined in @confirmationPrompt@ , Amazon Lex responds with this statement to acknowledge that the intent was canceled.
civrrsRejectionStatement :: Lens' CreateIntentVersionResponse (Maybe Statement)
civrrsRejectionStatement = lens _civrrsRejectionStatement (\s a -> s {_civrrsRejectionStatement = a})

-- | The name of the intent.
civrrsName :: Lens' CreateIntentVersionResponse (Maybe Text)
civrrsName = lens _civrrsName (\s a -> s {_civrrsName = a})

-- | An array of slot types that defines the information required to fulfill the intent.
civrrsSlots :: Lens' CreateIntentVersionResponse [Slot]
civrrsSlots = lens _civrrsSlots (\s a -> s {_civrrsSlots = a}) . _Default . _Coerce

-- | Describes how the intent is fulfilled.
civrrsFulfillmentActivity :: Lens' CreateIntentVersionResponse (Maybe FulfillmentActivity)
civrrsFulfillmentActivity = lens _civrrsFulfillmentActivity (\s a -> s {_civrrsFulfillmentActivity = a})

-- | An array of sample utterances configured for the intent.
civrrsSampleUtterances :: Lens' CreateIntentVersionResponse [Text]
civrrsSampleUtterances = lens _civrrsSampleUtterances (\s a -> s {_civrrsSampleUtterances = a}) . _Default . _Coerce

-- | A description of the intent.
civrrsDescription :: Lens' CreateIntentVersionResponse (Maybe Text)
civrrsDescription = lens _civrrsDescription (\s a -> s {_civrrsDescription = a})

-- | If defined, the prompt that Amazon Lex uses to confirm the user's intent before fulfilling it.
civrrsConfirmationPrompt :: Lens' CreateIntentVersionResponse (Maybe Prompt)
civrrsConfirmationPrompt = lens _civrrsConfirmationPrompt (\s a -> s {_civrrsConfirmationPrompt = a})

-- | An array of @OutputContext@ objects that lists the contexts that the intent activates when the intent is fulfilled.
civrrsOutputContexts :: Lens' CreateIntentVersionResponse [OutputContext]
civrrsOutputContexts = lens _civrrsOutputContexts (\s a -> s {_civrrsOutputContexts = a}) . _Default . _Coerce

-- | If defined, Amazon Lex uses this prompt to solicit additional user activity after the intent is fulfilled.
civrrsFollowUpPrompt :: Lens' CreateIntentVersionResponse (Maybe FollowUpPrompt)
civrrsFollowUpPrompt = lens _civrrsFollowUpPrompt (\s a -> s {_civrrsFollowUpPrompt = a})

-- | Checksum of the intent version created.
civrrsChecksum :: Lens' CreateIntentVersionResponse (Maybe Text)
civrrsChecksum = lens _civrrsChecksum (\s a -> s {_civrrsChecksum = a})

-- | -- | The response status code.
civrrsResponseStatus :: Lens' CreateIntentVersionResponse Int
civrrsResponseStatus = lens _civrrsResponseStatus (\s a -> s {_civrrsResponseStatus = a})

instance NFData CreateIntentVersionResponse
