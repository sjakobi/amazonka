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
-- Module      : Network.AWS.LexModels.PutIntent
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an intent or replaces an existing intent.
--
--
-- To define the interaction between the user and your bot, you use one or more intents. For a pizza ordering bot, for example, you would create an @OrderPizza@ intent.
--
-- To create an intent or replace an existing intent, you must provide the following:
--
--     * Intent name. For example, @OrderPizza@ .
--
--     * Sample utterances. For example, "Can I order a pizza, please." and "I want to order a pizza."
--
--     * Information to be gathered. You specify slot types for the information that your bot will request from the user. You can specify standard slot types, such as a date or a time, or custom slot types such as the size and crust of a pizza.
--
--     * How the intent will be fulfilled. You can provide a Lambda function or configure the intent to return the intent information to the client application. If you use a Lambda function, when all of the intent information is available, Amazon Lex invokes your Lambda function. If you configure your intent to return the intent information to the client application.
--
--
--
-- You can specify other optional information in the request, such as:
--
--     * A confirmation prompt to ask the user to confirm an intent. For example, "Shall I order your pizza?"
--
--     * A conclusion statement to send to the user after the intent has been fulfilled. For example, "I placed your pizza order."
--
--     * A follow-up prompt that asks the user for additional activity. For example, asking "Do you want to order a drink with your pizza?"
--
--
--
-- If you specify an existing intent name to update the intent, Amazon Lex replaces the values in the @> LATEST@ version of the intent with the values in the request. Amazon Lex removes fields that you don't provide in the request. If you don't specify the required fields, Amazon Lex throws an exception. When you update the @> LATEST@ version of an intent, the @status@ field of any bot that uses the @> LATEST@ version of the intent is set to @NOT_BUILT@ .
--
-- For more information, see 'how-it-works' .
--
-- This operation requires permissions for the @lex:PutIntent@ action.
module Network.AWS.LexModels.PutIntent
  ( -- * Creating a Request
    putIntent,
    PutIntent,

    -- * Request Lenses
    piKendraConfiguration,
    piParentIntentSignature,
    piDialogCodeHook,
    piConclusionStatement,
    piInputContexts,
    piRejectionStatement,
    piSlots,
    piFulfillmentActivity,
    piCreateVersion,
    piSampleUtterances,
    piDescription,
    piConfirmationPrompt,
    piOutputContexts,
    piFollowUpPrompt,
    piChecksum,
    piName,

    -- * Destructuring the Response
    putIntentResponse,
    PutIntentResponse,

    -- * Response Lenses
    pirrsKendraConfiguration,
    pirrsCreatedDate,
    pirrsParentIntentSignature,
    pirrsDialogCodeHook,
    pirrsConclusionStatement,
    pirrsLastUpdatedDate,
    pirrsInputContexts,
    pirrsVersion,
    pirrsRejectionStatement,
    pirrsName,
    pirrsSlots,
    pirrsFulfillmentActivity,
    pirrsCreateVersion,
    pirrsSampleUtterances,
    pirrsDescription,
    pirrsConfirmationPrompt,
    pirrsOutputContexts,
    pirrsFollowUpPrompt,
    pirrsChecksum,
    pirrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.LexModels.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'putIntent' smart constructor.
data PutIntent = PutIntent'
  { _piKendraConfiguration ::
      !(Maybe KendraConfiguration),
    _piParentIntentSignature :: !(Maybe Text),
    _piDialogCodeHook :: !(Maybe CodeHook),
    _piConclusionStatement :: !(Maybe Statement),
    _piInputContexts :: !(Maybe [InputContext]),
    _piRejectionStatement :: !(Maybe Statement),
    _piSlots :: !(Maybe [Slot]),
    _piFulfillmentActivity ::
      !(Maybe FulfillmentActivity),
    _piCreateVersion :: !(Maybe Bool),
    _piSampleUtterances :: !(Maybe [Text]),
    _piDescription :: !(Maybe Text),
    _piConfirmationPrompt :: !(Maybe Prompt),
    _piOutputContexts :: !(Maybe [OutputContext]),
    _piFollowUpPrompt :: !(Maybe FollowUpPrompt),
    _piChecksum :: !(Maybe Text),
    _piName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PutIntent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piKendraConfiguration' - Configuration information required to use the @AMAZON.KendraSearchIntent@ intent to connect to an Amazon Kendra index. For more information, see <http://docs.aws.amazon.com/lex/latest/dg/built-in-intent-kendra-search.html AMAZON.KendraSearchIntent> .
--
-- * 'piParentIntentSignature' - A unique identifier for the built-in intent to base this intent on. To find the signature for an intent, see <https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents Standard Built-in Intents> in the /Alexa Skills Kit/ .
--
-- * 'piDialogCodeHook' - Specifies a Lambda function to invoke for each user input. You can invoke this Lambda function to personalize user interaction.  For example, suppose your bot determines that the user is John. Your Lambda function might retrieve John's information from a backend database and prepopulate some of the values. For example, if you find that John is gluten intolerant, you might set the corresponding intent slot, @GlutenIntolerant@ , to true. You might find John's phone number and set the corresponding session attribute.
--
-- * 'piConclusionStatement' - The statement that you want Amazon Lex to convey to the user after the intent is successfully fulfilled by the Lambda function.  This element is relevant only if you provide a Lambda function in the @fulfillmentActivity@ . If you return the intent to the client application, you can't specify this element.
--
-- * 'piInputContexts' - An array of @InputContext@ objects that lists the contexts that must be active for Amazon Lex to choose the intent in a conversation with the user.
--
-- * 'piRejectionStatement' - When the user answers "no" to the question defined in @confirmationPrompt@ , Amazon Lex responds with this statement to acknowledge that the intent was canceled.
--
-- * 'piSlots' - An array of intent slots. At runtime, Amazon Lex elicits required slot values from the user using prompts defined in the slots. For more information, see 'how-it-works' .
--
-- * 'piFulfillmentActivity' - Required. Describes how the intent is fulfilled. For example, after a user provides all of the information for a pizza order, @fulfillmentActivity@ defines how the bot places an order with a local pizza store.  You might configure Amazon Lex to return all of the intent information to the client application, or direct it to invoke a Lambda function that can process the intent (for example, place an order with a pizzeria).
--
-- * 'piCreateVersion' - When set to @true@ a new numbered version of the intent is created. This is the same as calling the @CreateIntentVersion@ operation. If you do not specify @createVersion@ , the default is @false@ .
--
-- * 'piSampleUtterances' - An array of utterances (strings) that a user might say to signal the intent. For example, "I want {PizzaSize} pizza", "Order {Quantity} {PizzaSize} pizzas".  In each utterance, a slot name is enclosed in curly braces.
--
-- * 'piDescription' - A description of the intent.
--
-- * 'piConfirmationPrompt' - Prompts the user to confirm the intent. This question should have a yes or no answer. Amazon Lex uses this prompt to ensure that the user acknowledges that the intent is ready for fulfillment. For example, with the @OrderPizza@ intent, you might want to confirm that the order is correct before placing it. For other intents, such as intents that simply respond to user questions, you might not need to ask the user for confirmation before providing the information.
--
-- * 'piOutputContexts' - An array of @OutputContext@ objects that lists the contexts that the intent activates when the intent is fulfilled.
--
-- * 'piFollowUpPrompt' - Amazon Lex uses this prompt to solicit additional activity after fulfilling an intent. For example, after the @OrderPizza@ intent is fulfilled, you might prompt the user to order a drink. The action that Amazon Lex takes depends on the user's response, as follows:     * If the user says "Yes" it responds with the clarification prompt that is configured for the bot.     * if the user says "Yes" and continues with an utterance that triggers an intent it starts a conversation for the intent.     * If the user says "No" it responds with the rejection statement configured for the the follow-up prompt.     * If it doesn't recognize the utterance it repeats the follow-up prompt again. The @followUpPrompt@ field and the @conclusionStatement@ field are mutually exclusive. You can specify only one.
--
-- * 'piChecksum' - Identifies a specific revision of the @> LATEST@ version. When you create a new intent, leave the @checksum@ field blank. If you specify a checksum you get a @BadRequestException@ exception. When you want to update a intent, set the @checksum@ field to the checksum of the most recent revision of the @> LATEST@ version. If you don't specify the @checksum@ field, or if the checksum does not match the @> LATEST@ version, you get a @PreconditionFailedException@ exception.
--
-- * 'piName' - The name of the intent. The name is /not/ case sensitive.  The name can't match a built-in intent name, or a built-in intent name with "AMAZON." removed. For example, because there is a built-in intent called @AMAZON.HelpIntent@ , you can't create a custom intent called @HelpIntent@ . For a list of built-in intents, see <https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents Standard Built-in Intents> in the /Alexa Skills Kit/ .
putIntent ::
  -- | 'piName'
  Text ->
  PutIntent
putIntent pName_ =
  PutIntent'
    { _piKendraConfiguration = Nothing,
      _piParentIntentSignature = Nothing,
      _piDialogCodeHook = Nothing,
      _piConclusionStatement = Nothing,
      _piInputContexts = Nothing,
      _piRejectionStatement = Nothing,
      _piSlots = Nothing,
      _piFulfillmentActivity = Nothing,
      _piCreateVersion = Nothing,
      _piSampleUtterances = Nothing,
      _piDescription = Nothing,
      _piConfirmationPrompt = Nothing,
      _piOutputContexts = Nothing,
      _piFollowUpPrompt = Nothing,
      _piChecksum = Nothing,
      _piName = pName_
    }

-- | Configuration information required to use the @AMAZON.KendraSearchIntent@ intent to connect to an Amazon Kendra index. For more information, see <http://docs.aws.amazon.com/lex/latest/dg/built-in-intent-kendra-search.html AMAZON.KendraSearchIntent> .
piKendraConfiguration :: Lens' PutIntent (Maybe KendraConfiguration)
piKendraConfiguration = lens _piKendraConfiguration (\s a -> s {_piKendraConfiguration = a})

-- | A unique identifier for the built-in intent to base this intent on. To find the signature for an intent, see <https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents Standard Built-in Intents> in the /Alexa Skills Kit/ .
piParentIntentSignature :: Lens' PutIntent (Maybe Text)
piParentIntentSignature = lens _piParentIntentSignature (\s a -> s {_piParentIntentSignature = a})

-- | Specifies a Lambda function to invoke for each user input. You can invoke this Lambda function to personalize user interaction.  For example, suppose your bot determines that the user is John. Your Lambda function might retrieve John's information from a backend database and prepopulate some of the values. For example, if you find that John is gluten intolerant, you might set the corresponding intent slot, @GlutenIntolerant@ , to true. You might find John's phone number and set the corresponding session attribute.
piDialogCodeHook :: Lens' PutIntent (Maybe CodeHook)
piDialogCodeHook = lens _piDialogCodeHook (\s a -> s {_piDialogCodeHook = a})

-- | The statement that you want Amazon Lex to convey to the user after the intent is successfully fulfilled by the Lambda function.  This element is relevant only if you provide a Lambda function in the @fulfillmentActivity@ . If you return the intent to the client application, you can't specify this element.
piConclusionStatement :: Lens' PutIntent (Maybe Statement)
piConclusionStatement = lens _piConclusionStatement (\s a -> s {_piConclusionStatement = a})

-- | An array of @InputContext@ objects that lists the contexts that must be active for Amazon Lex to choose the intent in a conversation with the user.
piInputContexts :: Lens' PutIntent [InputContext]
piInputContexts = lens _piInputContexts (\s a -> s {_piInputContexts = a}) . _Default . _Coerce

-- | When the user answers "no" to the question defined in @confirmationPrompt@ , Amazon Lex responds with this statement to acknowledge that the intent was canceled.
piRejectionStatement :: Lens' PutIntent (Maybe Statement)
piRejectionStatement = lens _piRejectionStatement (\s a -> s {_piRejectionStatement = a})

-- | An array of intent slots. At runtime, Amazon Lex elicits required slot values from the user using prompts defined in the slots. For more information, see 'how-it-works' .
piSlots :: Lens' PutIntent [Slot]
piSlots = lens _piSlots (\s a -> s {_piSlots = a}) . _Default . _Coerce

-- | Required. Describes how the intent is fulfilled. For example, after a user provides all of the information for a pizza order, @fulfillmentActivity@ defines how the bot places an order with a local pizza store.  You might configure Amazon Lex to return all of the intent information to the client application, or direct it to invoke a Lambda function that can process the intent (for example, place an order with a pizzeria).
piFulfillmentActivity :: Lens' PutIntent (Maybe FulfillmentActivity)
piFulfillmentActivity = lens _piFulfillmentActivity (\s a -> s {_piFulfillmentActivity = a})

-- | When set to @true@ a new numbered version of the intent is created. This is the same as calling the @CreateIntentVersion@ operation. If you do not specify @createVersion@ , the default is @false@ .
piCreateVersion :: Lens' PutIntent (Maybe Bool)
piCreateVersion = lens _piCreateVersion (\s a -> s {_piCreateVersion = a})

-- | An array of utterances (strings) that a user might say to signal the intent. For example, "I want {PizzaSize} pizza", "Order {Quantity} {PizzaSize} pizzas".  In each utterance, a slot name is enclosed in curly braces.
piSampleUtterances :: Lens' PutIntent [Text]
piSampleUtterances = lens _piSampleUtterances (\s a -> s {_piSampleUtterances = a}) . _Default . _Coerce

-- | A description of the intent.
piDescription :: Lens' PutIntent (Maybe Text)
piDescription = lens _piDescription (\s a -> s {_piDescription = a})

-- | Prompts the user to confirm the intent. This question should have a yes or no answer. Amazon Lex uses this prompt to ensure that the user acknowledges that the intent is ready for fulfillment. For example, with the @OrderPizza@ intent, you might want to confirm that the order is correct before placing it. For other intents, such as intents that simply respond to user questions, you might not need to ask the user for confirmation before providing the information.
piConfirmationPrompt :: Lens' PutIntent (Maybe Prompt)
piConfirmationPrompt = lens _piConfirmationPrompt (\s a -> s {_piConfirmationPrompt = a})

-- | An array of @OutputContext@ objects that lists the contexts that the intent activates when the intent is fulfilled.
piOutputContexts :: Lens' PutIntent [OutputContext]
piOutputContexts = lens _piOutputContexts (\s a -> s {_piOutputContexts = a}) . _Default . _Coerce

-- | Amazon Lex uses this prompt to solicit additional activity after fulfilling an intent. For example, after the @OrderPizza@ intent is fulfilled, you might prompt the user to order a drink. The action that Amazon Lex takes depends on the user's response, as follows:     * If the user says "Yes" it responds with the clarification prompt that is configured for the bot.     * if the user says "Yes" and continues with an utterance that triggers an intent it starts a conversation for the intent.     * If the user says "No" it responds with the rejection statement configured for the the follow-up prompt.     * If it doesn't recognize the utterance it repeats the follow-up prompt again. The @followUpPrompt@ field and the @conclusionStatement@ field are mutually exclusive. You can specify only one.
piFollowUpPrompt :: Lens' PutIntent (Maybe FollowUpPrompt)
piFollowUpPrompt = lens _piFollowUpPrompt (\s a -> s {_piFollowUpPrompt = a})

-- | Identifies a specific revision of the @> LATEST@ version. When you create a new intent, leave the @checksum@ field blank. If you specify a checksum you get a @BadRequestException@ exception. When you want to update a intent, set the @checksum@ field to the checksum of the most recent revision of the @> LATEST@ version. If you don't specify the @checksum@ field, or if the checksum does not match the @> LATEST@ version, you get a @PreconditionFailedException@ exception.
piChecksum :: Lens' PutIntent (Maybe Text)
piChecksum = lens _piChecksum (\s a -> s {_piChecksum = a})

-- | The name of the intent. The name is /not/ case sensitive.  The name can't match a built-in intent name, or a built-in intent name with "AMAZON." removed. For example, because there is a built-in intent called @AMAZON.HelpIntent@ , you can't create a custom intent called @HelpIntent@ . For a list of built-in intents, see <https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents Standard Built-in Intents> in the /Alexa Skills Kit/ .
piName :: Lens' PutIntent Text
piName = lens _piName (\s a -> s {_piName = a})

instance AWSRequest PutIntent where
  type Rs PutIntent = PutIntentResponse
  request = putJSON lexModels
  response =
    receiveJSON
      ( \s h x ->
          PutIntentResponse'
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
            <*> (x .?> "createVersion")
            <*> (x .?> "sampleUtterances" .!@ mempty)
            <*> (x .?> "description")
            <*> (x .?> "confirmationPrompt")
            <*> (x .?> "outputContexts" .!@ mempty)
            <*> (x .?> "followUpPrompt")
            <*> (x .?> "checksum")
            <*> (pure (fromEnum s))
      )

instance Hashable PutIntent

instance NFData PutIntent

instance ToHeaders PutIntent where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON PutIntent where
  toJSON PutIntent' {..} =
    object
      ( catMaybes
          [ ("kendraConfiguration" .=)
              <$> _piKendraConfiguration,
            ("parentIntentSignature" .=)
              <$> _piParentIntentSignature,
            ("dialogCodeHook" .=) <$> _piDialogCodeHook,
            ("conclusionStatement" .=)
              <$> _piConclusionStatement,
            ("inputContexts" .=) <$> _piInputContexts,
            ("rejectionStatement" .=) <$> _piRejectionStatement,
            ("slots" .=) <$> _piSlots,
            ("fulfillmentActivity" .=)
              <$> _piFulfillmentActivity,
            ("createVersion" .=) <$> _piCreateVersion,
            ("sampleUtterances" .=) <$> _piSampleUtterances,
            ("description" .=) <$> _piDescription,
            ("confirmationPrompt" .=) <$> _piConfirmationPrompt,
            ("outputContexts" .=) <$> _piOutputContexts,
            ("followUpPrompt" .=) <$> _piFollowUpPrompt,
            ("checksum" .=) <$> _piChecksum
          ]
      )

instance ToPath PutIntent where
  toPath PutIntent' {..} =
    mconcat
      ["/intents/", toBS _piName, "/versions/$LATEST"]

instance ToQuery PutIntent where
  toQuery = const mempty

-- | /See:/ 'putIntentResponse' smart constructor.
data PutIntentResponse = PutIntentResponse'
  { _pirrsKendraConfiguration ::
      !(Maybe KendraConfiguration),
    _pirrsCreatedDate :: !(Maybe POSIX),
    _pirrsParentIntentSignature ::
      !(Maybe Text),
    _pirrsDialogCodeHook ::
      !(Maybe CodeHook),
    _pirrsConclusionStatement ::
      !(Maybe Statement),
    _pirrsLastUpdatedDate ::
      !(Maybe POSIX),
    _pirrsInputContexts ::
      !(Maybe [InputContext]),
    _pirrsVersion :: !(Maybe Text),
    _pirrsRejectionStatement ::
      !(Maybe Statement),
    _pirrsName :: !(Maybe Text),
    _pirrsSlots :: !(Maybe [Slot]),
    _pirrsFulfillmentActivity ::
      !(Maybe FulfillmentActivity),
    _pirrsCreateVersion ::
      !(Maybe Bool),
    _pirrsSampleUtterances ::
      !(Maybe [Text]),
    _pirrsDescription :: !(Maybe Text),
    _pirrsConfirmationPrompt ::
      !(Maybe Prompt),
    _pirrsOutputContexts ::
      !(Maybe [OutputContext]),
    _pirrsFollowUpPrompt ::
      !(Maybe FollowUpPrompt),
    _pirrsChecksum :: !(Maybe Text),
    _pirrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PutIntentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pirrsKendraConfiguration' - Configuration information, if any, required to connect to an Amazon Kendra index and use the @AMAZON.KendraSearchIntent@ intent.
--
-- * 'pirrsCreatedDate' - The date that the intent was created.
--
-- * 'pirrsParentIntentSignature' - A unique identifier for the built-in intent that this intent is based on.
--
-- * 'pirrsDialogCodeHook' - If defined in the intent, Amazon Lex invokes this Lambda function for each user input.
--
-- * 'pirrsConclusionStatement' - After the Lambda function specified in the@fulfillmentActivity@ intent fulfills the intent, Amazon Lex conveys this statement to the user.
--
-- * 'pirrsLastUpdatedDate' - The date that the intent was updated. When you create a resource, the creation date and last update dates are the same.
--
-- * 'pirrsInputContexts' - An array of @InputContext@ objects that lists the contexts that must be active for Amazon Lex to choose the intent in a conversation with the user.
--
-- * 'pirrsVersion' - The version of the intent. For a new intent, the version is always @> LATEST@ .
--
-- * 'pirrsRejectionStatement' - If the user answers "no" to the question defined in @confirmationPrompt@ Amazon Lex responds with this statement to acknowledge that the intent was canceled.
--
-- * 'pirrsName' - The name of the intent.
--
-- * 'pirrsSlots' - An array of intent slots that are configured for the intent.
--
-- * 'pirrsFulfillmentActivity' - If defined in the intent, Amazon Lex invokes this Lambda function to fulfill the intent after the user provides all of the information required by the intent.
--
-- * 'pirrsCreateVersion' - @True@ if a new version of the intent was created. If the @createVersion@ field was not specified in the request, the @createVersion@ field is set to false in the response.
--
-- * 'pirrsSampleUtterances' - An array of sample utterances that are configured for the intent.
--
-- * 'pirrsDescription' - A description of the intent.
--
-- * 'pirrsConfirmationPrompt' - If defined in the intent, Amazon Lex prompts the user to confirm the intent before fulfilling it.
--
-- * 'pirrsOutputContexts' - An array of @OutputContext@ objects that lists the contexts that the intent activates when the intent is fulfilled.
--
-- * 'pirrsFollowUpPrompt' - If defined in the intent, Amazon Lex uses this prompt to solicit additional user activity after the intent is fulfilled.
--
-- * 'pirrsChecksum' - Checksum of the @> LATEST@ version of the intent created or updated.
--
-- * 'pirrsResponseStatus' - -- | The response status code.
putIntentResponse ::
  -- | 'pirrsResponseStatus'
  Int ->
  PutIntentResponse
putIntentResponse pResponseStatus_ =
  PutIntentResponse'
    { _pirrsKendraConfiguration =
        Nothing,
      _pirrsCreatedDate = Nothing,
      _pirrsParentIntentSignature = Nothing,
      _pirrsDialogCodeHook = Nothing,
      _pirrsConclusionStatement = Nothing,
      _pirrsLastUpdatedDate = Nothing,
      _pirrsInputContexts = Nothing,
      _pirrsVersion = Nothing,
      _pirrsRejectionStatement = Nothing,
      _pirrsName = Nothing,
      _pirrsSlots = Nothing,
      _pirrsFulfillmentActivity = Nothing,
      _pirrsCreateVersion = Nothing,
      _pirrsSampleUtterances = Nothing,
      _pirrsDescription = Nothing,
      _pirrsConfirmationPrompt = Nothing,
      _pirrsOutputContexts = Nothing,
      _pirrsFollowUpPrompt = Nothing,
      _pirrsChecksum = Nothing,
      _pirrsResponseStatus = pResponseStatus_
    }

-- | Configuration information, if any, required to connect to an Amazon Kendra index and use the @AMAZON.KendraSearchIntent@ intent.
pirrsKendraConfiguration :: Lens' PutIntentResponse (Maybe KendraConfiguration)
pirrsKendraConfiguration = lens _pirrsKendraConfiguration (\s a -> s {_pirrsKendraConfiguration = a})

-- | The date that the intent was created.
pirrsCreatedDate :: Lens' PutIntentResponse (Maybe UTCTime)
pirrsCreatedDate = lens _pirrsCreatedDate (\s a -> s {_pirrsCreatedDate = a}) . mapping _Time

-- | A unique identifier for the built-in intent that this intent is based on.
pirrsParentIntentSignature :: Lens' PutIntentResponse (Maybe Text)
pirrsParentIntentSignature = lens _pirrsParentIntentSignature (\s a -> s {_pirrsParentIntentSignature = a})

-- | If defined in the intent, Amazon Lex invokes this Lambda function for each user input.
pirrsDialogCodeHook :: Lens' PutIntentResponse (Maybe CodeHook)
pirrsDialogCodeHook = lens _pirrsDialogCodeHook (\s a -> s {_pirrsDialogCodeHook = a})

-- | After the Lambda function specified in the@fulfillmentActivity@ intent fulfills the intent, Amazon Lex conveys this statement to the user.
pirrsConclusionStatement :: Lens' PutIntentResponse (Maybe Statement)
pirrsConclusionStatement = lens _pirrsConclusionStatement (\s a -> s {_pirrsConclusionStatement = a})

-- | The date that the intent was updated. When you create a resource, the creation date and last update dates are the same.
pirrsLastUpdatedDate :: Lens' PutIntentResponse (Maybe UTCTime)
pirrsLastUpdatedDate = lens _pirrsLastUpdatedDate (\s a -> s {_pirrsLastUpdatedDate = a}) . mapping _Time

-- | An array of @InputContext@ objects that lists the contexts that must be active for Amazon Lex to choose the intent in a conversation with the user.
pirrsInputContexts :: Lens' PutIntentResponse [InputContext]
pirrsInputContexts = lens _pirrsInputContexts (\s a -> s {_pirrsInputContexts = a}) . _Default . _Coerce

-- | The version of the intent. For a new intent, the version is always @> LATEST@ .
pirrsVersion :: Lens' PutIntentResponse (Maybe Text)
pirrsVersion = lens _pirrsVersion (\s a -> s {_pirrsVersion = a})

-- | If the user answers "no" to the question defined in @confirmationPrompt@ Amazon Lex responds with this statement to acknowledge that the intent was canceled.
pirrsRejectionStatement :: Lens' PutIntentResponse (Maybe Statement)
pirrsRejectionStatement = lens _pirrsRejectionStatement (\s a -> s {_pirrsRejectionStatement = a})

-- | The name of the intent.
pirrsName :: Lens' PutIntentResponse (Maybe Text)
pirrsName = lens _pirrsName (\s a -> s {_pirrsName = a})

-- | An array of intent slots that are configured for the intent.
pirrsSlots :: Lens' PutIntentResponse [Slot]
pirrsSlots = lens _pirrsSlots (\s a -> s {_pirrsSlots = a}) . _Default . _Coerce

-- | If defined in the intent, Amazon Lex invokes this Lambda function to fulfill the intent after the user provides all of the information required by the intent.
pirrsFulfillmentActivity :: Lens' PutIntentResponse (Maybe FulfillmentActivity)
pirrsFulfillmentActivity = lens _pirrsFulfillmentActivity (\s a -> s {_pirrsFulfillmentActivity = a})

-- | @True@ if a new version of the intent was created. If the @createVersion@ field was not specified in the request, the @createVersion@ field is set to false in the response.
pirrsCreateVersion :: Lens' PutIntentResponse (Maybe Bool)
pirrsCreateVersion = lens _pirrsCreateVersion (\s a -> s {_pirrsCreateVersion = a})

-- | An array of sample utterances that are configured for the intent.
pirrsSampleUtterances :: Lens' PutIntentResponse [Text]
pirrsSampleUtterances = lens _pirrsSampleUtterances (\s a -> s {_pirrsSampleUtterances = a}) . _Default . _Coerce

-- | A description of the intent.
pirrsDescription :: Lens' PutIntentResponse (Maybe Text)
pirrsDescription = lens _pirrsDescription (\s a -> s {_pirrsDescription = a})

-- | If defined in the intent, Amazon Lex prompts the user to confirm the intent before fulfilling it.
pirrsConfirmationPrompt :: Lens' PutIntentResponse (Maybe Prompt)
pirrsConfirmationPrompt = lens _pirrsConfirmationPrompt (\s a -> s {_pirrsConfirmationPrompt = a})

-- | An array of @OutputContext@ objects that lists the contexts that the intent activates when the intent is fulfilled.
pirrsOutputContexts :: Lens' PutIntentResponse [OutputContext]
pirrsOutputContexts = lens _pirrsOutputContexts (\s a -> s {_pirrsOutputContexts = a}) . _Default . _Coerce

-- | If defined in the intent, Amazon Lex uses this prompt to solicit additional user activity after the intent is fulfilled.
pirrsFollowUpPrompt :: Lens' PutIntentResponse (Maybe FollowUpPrompt)
pirrsFollowUpPrompt = lens _pirrsFollowUpPrompt (\s a -> s {_pirrsFollowUpPrompt = a})

-- | Checksum of the @> LATEST@ version of the intent created or updated.
pirrsChecksum :: Lens' PutIntentResponse (Maybe Text)
pirrsChecksum = lens _pirrsChecksum (\s a -> s {_pirrsChecksum = a})

-- | -- | The response status code.
pirrsResponseStatus :: Lens' PutIntentResponse Int
pirrsResponseStatus = lens _pirrsResponseStatus (\s a -> s {_pirrsResponseStatus = a})

instance NFData PutIntentResponse
