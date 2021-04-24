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
-- Module      : Network.AWS.LexModels.GetBot
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns metadata information for a specific bot. You must provide the bot name and the bot version or alias.
--
--
-- This operation requires permissions for the @lex:GetBot@ action.
module Network.AWS.LexModels.GetBot
  ( -- * Creating a Request
    getBot,
    GetBot,

    -- * Request Lenses
    gbName,
    gbVersionOrAlias,

    -- * Destructuring the Response
    getBotResponse,
    GetBotResponse,

    -- * Response Lenses
    getrsAbortStatement,
    getrsCreatedDate,
    getrsStatus,
    getrsVoiceId,
    getrsLastUpdatedDate,
    getrsNluIntentConfidenceThreshold,
    getrsLocale,
    getrsClarificationPrompt,
    getrsEnableModelImprovements,
    getrsVersion,
    getrsIdleSessionTTLInSeconds,
    getrsName,
    getrsIntents,
    getrsFailureReason,
    getrsChildDirected,
    getrsDescription,
    getrsDetectSentiment,
    getrsChecksum,
    getrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.LexModels.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getBot' smart constructor.
data GetBot = GetBot'
  { _gbName :: !Text,
    _gbVersionOrAlias :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetBot' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gbName' - The name of the bot. The name is case sensitive.
--
-- * 'gbVersionOrAlias' - The version or alias of the bot.
getBot ::
  -- | 'gbName'
  Text ->
  -- | 'gbVersionOrAlias'
  Text ->
  GetBot
getBot pName_ pVersionOrAlias_ =
  GetBot'
    { _gbName = pName_,
      _gbVersionOrAlias = pVersionOrAlias_
    }

-- | The name of the bot. The name is case sensitive.
gbName :: Lens' GetBot Text
gbName = lens _gbName (\s a -> s {_gbName = a})

-- | The version or alias of the bot.
gbVersionOrAlias :: Lens' GetBot Text
gbVersionOrAlias = lens _gbVersionOrAlias (\s a -> s {_gbVersionOrAlias = a})

instance AWSRequest GetBot where
  type Rs GetBot = GetBotResponse
  request = get lexModels
  response =
    receiveJSON
      ( \s h x ->
          GetBotResponse'
            <$> (x .?> "abortStatement")
            <*> (x .?> "createdDate")
            <*> (x .?> "status")
            <*> (x .?> "voiceId")
            <*> (x .?> "lastUpdatedDate")
            <*> (x .?> "nluIntentConfidenceThreshold")
            <*> (x .?> "locale")
            <*> (x .?> "clarificationPrompt")
            <*> (x .?> "enableModelImprovements")
            <*> (x .?> "version")
            <*> (x .?> "idleSessionTTLInSeconds")
            <*> (x .?> "name")
            <*> (x .?> "intents" .!@ mempty)
            <*> (x .?> "failureReason")
            <*> (x .?> "childDirected")
            <*> (x .?> "description")
            <*> (x .?> "detectSentiment")
            <*> (x .?> "checksum")
            <*> (pure (fromEnum s))
      )

instance Hashable GetBot

instance NFData GetBot

instance ToHeaders GetBot where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetBot where
  toPath GetBot' {..} =
    mconcat
      [ "/bots/",
        toBS _gbName,
        "/versions/",
        toBS _gbVersionOrAlias
      ]

instance ToQuery GetBot where
  toQuery = const mempty

-- | /See:/ 'getBotResponse' smart constructor.
data GetBotResponse = GetBotResponse'
  { _getrsAbortStatement ::
      !(Maybe Statement),
    _getrsCreatedDate :: !(Maybe POSIX),
    _getrsStatus :: !(Maybe LexStatus),
    _getrsVoiceId :: !(Maybe Text),
    _getrsLastUpdatedDate :: !(Maybe POSIX),
    _getrsNluIntentConfidenceThreshold ::
      !(Maybe Double),
    _getrsLocale :: !(Maybe Locale),
    _getrsClarificationPrompt ::
      !(Maybe Prompt),
    _getrsEnableModelImprovements ::
      !(Maybe Bool),
    _getrsVersion :: !(Maybe Text),
    _getrsIdleSessionTTLInSeconds ::
      !(Maybe Nat),
    _getrsName :: !(Maybe Text),
    _getrsIntents :: !(Maybe [Intent]),
    _getrsFailureReason :: !(Maybe Text),
    _getrsChildDirected :: !(Maybe Bool),
    _getrsDescription :: !(Maybe Text),
    _getrsDetectSentiment :: !(Maybe Bool),
    _getrsChecksum :: !(Maybe Text),
    _getrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetBotResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'getrsAbortStatement' - The message that Amazon Lex returns when the user elects to end the conversation without completing it. For more information, see 'PutBot' .
--
-- * 'getrsCreatedDate' - The date that the bot was created.
--
-- * 'getrsStatus' - The status of the bot.  When the status is @BUILDING@ Amazon Lex is building the bot for testing and use. If the status of the bot is @READY_BASIC_TESTING@ , you can test the bot using the exact utterances specified in the bot's intents. When the bot is ready for full testing or to run, the status is @READY@ . If there was a problem with building the bot, the status is @FAILED@ and the @failureReason@ field explains why the bot did not build. If the bot was saved but not built, the status is @NOT_BUILT@ .
--
-- * 'getrsVoiceId' - The Amazon Polly voice ID that Amazon Lex uses for voice interaction with the user. For more information, see 'PutBot' .
--
-- * 'getrsLastUpdatedDate' - The date that the bot was updated. When you create a resource, the creation date and last updated date are the same.
--
-- * 'getrsNluIntentConfidenceThreshold' - The score that determines where Amazon Lex inserts the @AMAZON.FallbackIntent@ , @AMAZON.KendraSearchIntent@ , or both when returning alternative intents in a <https://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostContent.html PostContent> or <https://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostText.html PostText> response. @AMAZON.FallbackIntent@ is inserted if the confidence score for all intents is below this value. @AMAZON.KendraSearchIntent@ is only inserted if it is configured for the bot.
--
-- * 'getrsLocale' - The target locale for the bot.
--
-- * 'getrsClarificationPrompt' - The message Amazon Lex uses when it doesn't understand the user's request. For more information, see 'PutBot' .
--
-- * 'getrsEnableModelImprovements' - Indicates whether the bot uses accuracy improvements. @true@ indicates that the bot is using the improvements, otherwise, @false@ .
--
-- * 'getrsVersion' - The version of the bot. For a new bot, the version is always @> LATEST@ .
--
-- * 'getrsIdleSessionTTLInSeconds' - The maximum time in seconds that Amazon Lex retains the data gathered in a conversation. For more information, see 'PutBot' .
--
-- * 'getrsName' - The name of the bot.
--
-- * 'getrsIntents' - An array of @intent@ objects. For more information, see 'PutBot' .
--
-- * 'getrsFailureReason' - If @status@ is @FAILED@ , Amazon Lex explains why it failed to build the bot.
--
-- * 'getrsChildDirected' - For each Amazon Lex bot created with the Amazon Lex Model Building Service, you must specify whether your use of Amazon Lex is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to the Children's Online Privacy Protection Act (COPPA) by specifying @true@ or @false@ in the @childDirected@ field. By specifying @true@ in the @childDirected@ field, you confirm that your use of Amazon Lex __is__ related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA. By specifying @false@ in the @childDirected@ field, you confirm that your use of Amazon Lex __is not__ related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA. You may not specify a default value for the @childDirected@ field that does not accurately reflect whether your use of Amazon Lex is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA. If your use of Amazon Lex relates to a website, program, or other application that is directed in whole or in part, to children under age 13, you must obtain any required verifiable parental consent under COPPA. For information regarding the use of Amazon Lex in connection with websites, programs, or other applications that are directed or targeted, in whole or in part, to children under age 13, see the <https://aws.amazon.com/lex/faqs#data-security Amazon Lex FAQ.>
--
-- * 'getrsDescription' - A description of the bot.
--
-- * 'getrsDetectSentiment' - Indicates whether user utterances should be sent to Amazon Comprehend for sentiment analysis.
--
-- * 'getrsChecksum' - Checksum of the bot used to identify a specific revision of the bot's @> LATEST@ version.
--
-- * 'getrsResponseStatus' - -- | The response status code.
getBotResponse ::
  -- | 'getrsResponseStatus'
  Int ->
  GetBotResponse
getBotResponse pResponseStatus_ =
  GetBotResponse'
    { _getrsAbortStatement = Nothing,
      _getrsCreatedDate = Nothing,
      _getrsStatus = Nothing,
      _getrsVoiceId = Nothing,
      _getrsLastUpdatedDate = Nothing,
      _getrsNluIntentConfidenceThreshold = Nothing,
      _getrsLocale = Nothing,
      _getrsClarificationPrompt = Nothing,
      _getrsEnableModelImprovements = Nothing,
      _getrsVersion = Nothing,
      _getrsIdleSessionTTLInSeconds = Nothing,
      _getrsName = Nothing,
      _getrsIntents = Nothing,
      _getrsFailureReason = Nothing,
      _getrsChildDirected = Nothing,
      _getrsDescription = Nothing,
      _getrsDetectSentiment = Nothing,
      _getrsChecksum = Nothing,
      _getrsResponseStatus = pResponseStatus_
    }

-- | The message that Amazon Lex returns when the user elects to end the conversation without completing it. For more information, see 'PutBot' .
getrsAbortStatement :: Lens' GetBotResponse (Maybe Statement)
getrsAbortStatement = lens _getrsAbortStatement (\s a -> s {_getrsAbortStatement = a})

-- | The date that the bot was created.
getrsCreatedDate :: Lens' GetBotResponse (Maybe UTCTime)
getrsCreatedDate = lens _getrsCreatedDate (\s a -> s {_getrsCreatedDate = a}) . mapping _Time

-- | The status of the bot.  When the status is @BUILDING@ Amazon Lex is building the bot for testing and use. If the status of the bot is @READY_BASIC_TESTING@ , you can test the bot using the exact utterances specified in the bot's intents. When the bot is ready for full testing or to run, the status is @READY@ . If there was a problem with building the bot, the status is @FAILED@ and the @failureReason@ field explains why the bot did not build. If the bot was saved but not built, the status is @NOT_BUILT@ .
getrsStatus :: Lens' GetBotResponse (Maybe LexStatus)
getrsStatus = lens _getrsStatus (\s a -> s {_getrsStatus = a})

-- | The Amazon Polly voice ID that Amazon Lex uses for voice interaction with the user. For more information, see 'PutBot' .
getrsVoiceId :: Lens' GetBotResponse (Maybe Text)
getrsVoiceId = lens _getrsVoiceId (\s a -> s {_getrsVoiceId = a})

-- | The date that the bot was updated. When you create a resource, the creation date and last updated date are the same.
getrsLastUpdatedDate :: Lens' GetBotResponse (Maybe UTCTime)
getrsLastUpdatedDate = lens _getrsLastUpdatedDate (\s a -> s {_getrsLastUpdatedDate = a}) . mapping _Time

-- | The score that determines where Amazon Lex inserts the @AMAZON.FallbackIntent@ , @AMAZON.KendraSearchIntent@ , or both when returning alternative intents in a <https://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostContent.html PostContent> or <https://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostText.html PostText> response. @AMAZON.FallbackIntent@ is inserted if the confidence score for all intents is below this value. @AMAZON.KendraSearchIntent@ is only inserted if it is configured for the bot.
getrsNluIntentConfidenceThreshold :: Lens' GetBotResponse (Maybe Double)
getrsNluIntentConfidenceThreshold = lens _getrsNluIntentConfidenceThreshold (\s a -> s {_getrsNluIntentConfidenceThreshold = a})

-- | The target locale for the bot.
getrsLocale :: Lens' GetBotResponse (Maybe Locale)
getrsLocale = lens _getrsLocale (\s a -> s {_getrsLocale = a})

-- | The message Amazon Lex uses when it doesn't understand the user's request. For more information, see 'PutBot' .
getrsClarificationPrompt :: Lens' GetBotResponse (Maybe Prompt)
getrsClarificationPrompt = lens _getrsClarificationPrompt (\s a -> s {_getrsClarificationPrompt = a})

-- | Indicates whether the bot uses accuracy improvements. @true@ indicates that the bot is using the improvements, otherwise, @false@ .
getrsEnableModelImprovements :: Lens' GetBotResponse (Maybe Bool)
getrsEnableModelImprovements = lens _getrsEnableModelImprovements (\s a -> s {_getrsEnableModelImprovements = a})

-- | The version of the bot. For a new bot, the version is always @> LATEST@ .
getrsVersion :: Lens' GetBotResponse (Maybe Text)
getrsVersion = lens _getrsVersion (\s a -> s {_getrsVersion = a})

-- | The maximum time in seconds that Amazon Lex retains the data gathered in a conversation. For more information, see 'PutBot' .
getrsIdleSessionTTLInSeconds :: Lens' GetBotResponse (Maybe Natural)
getrsIdleSessionTTLInSeconds = lens _getrsIdleSessionTTLInSeconds (\s a -> s {_getrsIdleSessionTTLInSeconds = a}) . mapping _Nat

-- | The name of the bot.
getrsName :: Lens' GetBotResponse (Maybe Text)
getrsName = lens _getrsName (\s a -> s {_getrsName = a})

-- | An array of @intent@ objects. For more information, see 'PutBot' .
getrsIntents :: Lens' GetBotResponse [Intent]
getrsIntents = lens _getrsIntents (\s a -> s {_getrsIntents = a}) . _Default . _Coerce

-- | If @status@ is @FAILED@ , Amazon Lex explains why it failed to build the bot.
getrsFailureReason :: Lens' GetBotResponse (Maybe Text)
getrsFailureReason = lens _getrsFailureReason (\s a -> s {_getrsFailureReason = a})

-- | For each Amazon Lex bot created with the Amazon Lex Model Building Service, you must specify whether your use of Amazon Lex is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to the Children's Online Privacy Protection Act (COPPA) by specifying @true@ or @false@ in the @childDirected@ field. By specifying @true@ in the @childDirected@ field, you confirm that your use of Amazon Lex __is__ related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA. By specifying @false@ in the @childDirected@ field, you confirm that your use of Amazon Lex __is not__ related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA. You may not specify a default value for the @childDirected@ field that does not accurately reflect whether your use of Amazon Lex is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA. If your use of Amazon Lex relates to a website, program, or other application that is directed in whole or in part, to children under age 13, you must obtain any required verifiable parental consent under COPPA. For information regarding the use of Amazon Lex in connection with websites, programs, or other applications that are directed or targeted, in whole or in part, to children under age 13, see the <https://aws.amazon.com/lex/faqs#data-security Amazon Lex FAQ.>
getrsChildDirected :: Lens' GetBotResponse (Maybe Bool)
getrsChildDirected = lens _getrsChildDirected (\s a -> s {_getrsChildDirected = a})

-- | A description of the bot.
getrsDescription :: Lens' GetBotResponse (Maybe Text)
getrsDescription = lens _getrsDescription (\s a -> s {_getrsDescription = a})

-- | Indicates whether user utterances should be sent to Amazon Comprehend for sentiment analysis.
getrsDetectSentiment :: Lens' GetBotResponse (Maybe Bool)
getrsDetectSentiment = lens _getrsDetectSentiment (\s a -> s {_getrsDetectSentiment = a})

-- | Checksum of the bot used to identify a specific revision of the bot's @> LATEST@ version.
getrsChecksum :: Lens' GetBotResponse (Maybe Text)
getrsChecksum = lens _getrsChecksum (\s a -> s {_getrsChecksum = a})

-- | -- | The response status code.
getrsResponseStatus :: Lens' GetBotResponse Int
getrsResponseStatus = lens _getrsResponseStatus (\s a -> s {_getrsResponseStatus = a})

instance NFData GetBotResponse
