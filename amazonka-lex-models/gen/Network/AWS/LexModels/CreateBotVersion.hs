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
-- Module      : Network.AWS.LexModels.CreateBotVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new version of the bot based on the @> LATEST@ version. If the @> LATEST@ version of this resource hasn't changed since you created the last version, Amazon Lex doesn't create a new version. It returns the last created version.
--
--
-- When you create the first version of a bot, Amazon Lex sets the version to 1. Subsequent versions increment by 1. For more information, see 'versioning-intro' .
--
-- This operation requires permission for the @lex:CreateBotVersion@ action.
module Network.AWS.LexModels.CreateBotVersion
  ( -- * Creating a Request
    createBotVersion,
    CreateBotVersion,

    -- * Request Lenses
    cbvChecksum,
    cbvName,

    -- * Destructuring the Response
    createBotVersionResponse,
    CreateBotVersionResponse,

    -- * Response Lenses
    cbvrrsAbortStatement,
    cbvrrsCreatedDate,
    cbvrrsStatus,
    cbvrrsVoiceId,
    cbvrrsLastUpdatedDate,
    cbvrrsLocale,
    cbvrrsClarificationPrompt,
    cbvrrsEnableModelImprovements,
    cbvrrsVersion,
    cbvrrsIdleSessionTTLInSeconds,
    cbvrrsName,
    cbvrrsIntents,
    cbvrrsFailureReason,
    cbvrrsChildDirected,
    cbvrrsDescription,
    cbvrrsDetectSentiment,
    cbvrrsChecksum,
    cbvrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.LexModels.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createBotVersion' smart constructor.
data CreateBotVersion = CreateBotVersion'
  { _cbvChecksum ::
      !(Maybe Text),
    _cbvName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateBotVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cbvChecksum' - Identifies a specific revision of the @> LATEST@ version of the bot. If you specify a checksum and the @> LATEST@ version of the bot has a different checksum, a @PreconditionFailedException@ exception is returned and Amazon Lex doesn't publish a new version. If you don't specify a checksum, Amazon Lex publishes the @> LATEST@ version.
--
-- * 'cbvName' - The name of the bot that you want to create a new version of. The name is case sensitive.
createBotVersion ::
  -- | 'cbvName'
  Text ->
  CreateBotVersion
createBotVersion pName_ =
  CreateBotVersion'
    { _cbvChecksum = Nothing,
      _cbvName = pName_
    }

-- | Identifies a specific revision of the @> LATEST@ version of the bot. If you specify a checksum and the @> LATEST@ version of the bot has a different checksum, a @PreconditionFailedException@ exception is returned and Amazon Lex doesn't publish a new version. If you don't specify a checksum, Amazon Lex publishes the @> LATEST@ version.
cbvChecksum :: Lens' CreateBotVersion (Maybe Text)
cbvChecksum = lens _cbvChecksum (\s a -> s {_cbvChecksum = a})

-- | The name of the bot that you want to create a new version of. The name is case sensitive.
cbvName :: Lens' CreateBotVersion Text
cbvName = lens _cbvName (\s a -> s {_cbvName = a})

instance AWSRequest CreateBotVersion where
  type Rs CreateBotVersion = CreateBotVersionResponse
  request = postJSON lexModels
  response =
    receiveJSON
      ( \s h x ->
          CreateBotVersionResponse'
            <$> (x .?> "abortStatement")
            <*> (x .?> "createdDate")
            <*> (x .?> "status")
            <*> (x .?> "voiceId")
            <*> (x .?> "lastUpdatedDate")
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

instance Hashable CreateBotVersion

instance NFData CreateBotVersion

instance ToHeaders CreateBotVersion where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateBotVersion where
  toJSON CreateBotVersion' {..} =
    object
      (catMaybes [("checksum" .=) <$> _cbvChecksum])

instance ToPath CreateBotVersion where
  toPath CreateBotVersion' {..} =
    mconcat ["/bots/", toBS _cbvName, "/versions"]

instance ToQuery CreateBotVersion where
  toQuery = const mempty

-- | /See:/ 'createBotVersionResponse' smart constructor.
data CreateBotVersionResponse = CreateBotVersionResponse'
  { _cbvrrsAbortStatement ::
      !(Maybe Statement),
    _cbvrrsCreatedDate ::
      !(Maybe POSIX),
    _cbvrrsStatus ::
      !(Maybe LexStatus),
    _cbvrrsVoiceId ::
      !(Maybe Text),
    _cbvrrsLastUpdatedDate ::
      !(Maybe POSIX),
    _cbvrrsLocale ::
      !(Maybe Locale),
    _cbvrrsClarificationPrompt ::
      !(Maybe Prompt),
    _cbvrrsEnableModelImprovements ::
      !(Maybe Bool),
    _cbvrrsVersion ::
      !(Maybe Text),
    _cbvrrsIdleSessionTTLInSeconds ::
      !(Maybe Nat),
    _cbvrrsName ::
      !(Maybe Text),
    _cbvrrsIntents ::
      !(Maybe [Intent]),
    _cbvrrsFailureReason ::
      !(Maybe Text),
    _cbvrrsChildDirected ::
      !(Maybe Bool),
    _cbvrrsDescription ::
      !(Maybe Text),
    _cbvrrsDetectSentiment ::
      !(Maybe Bool),
    _cbvrrsChecksum ::
      !(Maybe Text),
    _cbvrrsResponseStatus ::
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

-- | Creates a value of 'CreateBotVersionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cbvrrsAbortStatement' - The message that Amazon Lex uses to cancel a conversation. For more information, see 'PutBot' .
--
-- * 'cbvrrsCreatedDate' - The date when the bot version was created.
--
-- * 'cbvrrsStatus' - When you send a request to create or update a bot, Amazon Lex sets the @status@ response element to @BUILDING@ . After Amazon Lex builds the bot, it sets @status@ to @READY@ . If Amazon Lex can't build the bot, it sets @status@ to @FAILED@ . Amazon Lex returns the reason for the failure in the @failureReason@ response element.
--
-- * 'cbvrrsVoiceId' - The Amazon Polly voice ID that Amazon Lex uses for voice interactions with the user.
--
-- * 'cbvrrsLastUpdatedDate' - The date when the @> LATEST@ version of this bot was updated.
--
-- * 'cbvrrsLocale' - Specifies the target locale for the bot.
--
-- * 'cbvrrsClarificationPrompt' - The message that Amazon Lex uses when it doesn't understand the user's request. For more information, see 'PutBot' .
--
-- * 'cbvrrsEnableModelImprovements' - Indicates whether the bot uses accuracy improvements. @true@ indicates that the bot is using the improvements, otherwise, @false@ .
--
-- * 'cbvrrsVersion' - The version of the bot.
--
-- * 'cbvrrsIdleSessionTTLInSeconds' - The maximum time in seconds that Amazon Lex retains the data gathered in a conversation. For more information, see 'PutBot' .
--
-- * 'cbvrrsName' - The name of the bot.
--
-- * 'cbvrrsIntents' - An array of @Intent@ objects. For more information, see 'PutBot' .
--
-- * 'cbvrrsFailureReason' - If @status@ is @FAILED@ , Amazon Lex provides the reason that it failed to build the bot.
--
-- * 'cbvrrsChildDirected' - For each Amazon Lex bot created with the Amazon Lex Model Building Service, you must specify whether your use of Amazon Lex is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to the Children's Online Privacy Protection Act (COPPA) by specifying @true@ or @false@ in the @childDirected@ field. By specifying @true@ in the @childDirected@ field, you confirm that your use of Amazon Lex __is__ related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA. By specifying @false@ in the @childDirected@ field, you confirm that your use of Amazon Lex __is not__ related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA. You may not specify a default value for the @childDirected@ field that does not accurately reflect whether your use of Amazon Lex is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA. If your use of Amazon Lex relates to a website, program, or other application that is directed in whole or in part, to children under age 13, you must obtain any required verifiable parental consent under COPPA. For information regarding the use of Amazon Lex in connection with websites, programs, or other applications that are directed or targeted, in whole or in part, to children under age 13, see the <https://aws.amazon.com/lex/faqs#data-security Amazon Lex FAQ.>
--
-- * 'cbvrrsDescription' - A description of the bot.
--
-- * 'cbvrrsDetectSentiment' - Indicates whether utterances entered by the user should be sent to Amazon Comprehend for sentiment analysis.
--
-- * 'cbvrrsChecksum' - Checksum identifying the version of the bot that was created.
--
-- * 'cbvrrsResponseStatus' - -- | The response status code.
createBotVersionResponse ::
  -- | 'cbvrrsResponseStatus'
  Int ->
  CreateBotVersionResponse
createBotVersionResponse pResponseStatus_ =
  CreateBotVersionResponse'
    { _cbvrrsAbortStatement =
        Nothing,
      _cbvrrsCreatedDate = Nothing,
      _cbvrrsStatus = Nothing,
      _cbvrrsVoiceId = Nothing,
      _cbvrrsLastUpdatedDate = Nothing,
      _cbvrrsLocale = Nothing,
      _cbvrrsClarificationPrompt = Nothing,
      _cbvrrsEnableModelImprovements = Nothing,
      _cbvrrsVersion = Nothing,
      _cbvrrsIdleSessionTTLInSeconds = Nothing,
      _cbvrrsName = Nothing,
      _cbvrrsIntents = Nothing,
      _cbvrrsFailureReason = Nothing,
      _cbvrrsChildDirected = Nothing,
      _cbvrrsDescription = Nothing,
      _cbvrrsDetectSentiment = Nothing,
      _cbvrrsChecksum = Nothing,
      _cbvrrsResponseStatus = pResponseStatus_
    }

-- | The message that Amazon Lex uses to cancel a conversation. For more information, see 'PutBot' .
cbvrrsAbortStatement :: Lens' CreateBotVersionResponse (Maybe Statement)
cbvrrsAbortStatement = lens _cbvrrsAbortStatement (\s a -> s {_cbvrrsAbortStatement = a})

-- | The date when the bot version was created.
cbvrrsCreatedDate :: Lens' CreateBotVersionResponse (Maybe UTCTime)
cbvrrsCreatedDate = lens _cbvrrsCreatedDate (\s a -> s {_cbvrrsCreatedDate = a}) . mapping _Time

-- | When you send a request to create or update a bot, Amazon Lex sets the @status@ response element to @BUILDING@ . After Amazon Lex builds the bot, it sets @status@ to @READY@ . If Amazon Lex can't build the bot, it sets @status@ to @FAILED@ . Amazon Lex returns the reason for the failure in the @failureReason@ response element.
cbvrrsStatus :: Lens' CreateBotVersionResponse (Maybe LexStatus)
cbvrrsStatus = lens _cbvrrsStatus (\s a -> s {_cbvrrsStatus = a})

-- | The Amazon Polly voice ID that Amazon Lex uses for voice interactions with the user.
cbvrrsVoiceId :: Lens' CreateBotVersionResponse (Maybe Text)
cbvrrsVoiceId = lens _cbvrrsVoiceId (\s a -> s {_cbvrrsVoiceId = a})

-- | The date when the @> LATEST@ version of this bot was updated.
cbvrrsLastUpdatedDate :: Lens' CreateBotVersionResponse (Maybe UTCTime)
cbvrrsLastUpdatedDate = lens _cbvrrsLastUpdatedDate (\s a -> s {_cbvrrsLastUpdatedDate = a}) . mapping _Time

-- | Specifies the target locale for the bot.
cbvrrsLocale :: Lens' CreateBotVersionResponse (Maybe Locale)
cbvrrsLocale = lens _cbvrrsLocale (\s a -> s {_cbvrrsLocale = a})

-- | The message that Amazon Lex uses when it doesn't understand the user's request. For more information, see 'PutBot' .
cbvrrsClarificationPrompt :: Lens' CreateBotVersionResponse (Maybe Prompt)
cbvrrsClarificationPrompt = lens _cbvrrsClarificationPrompt (\s a -> s {_cbvrrsClarificationPrompt = a})

-- | Indicates whether the bot uses accuracy improvements. @true@ indicates that the bot is using the improvements, otherwise, @false@ .
cbvrrsEnableModelImprovements :: Lens' CreateBotVersionResponse (Maybe Bool)
cbvrrsEnableModelImprovements = lens _cbvrrsEnableModelImprovements (\s a -> s {_cbvrrsEnableModelImprovements = a})

-- | The version of the bot.
cbvrrsVersion :: Lens' CreateBotVersionResponse (Maybe Text)
cbvrrsVersion = lens _cbvrrsVersion (\s a -> s {_cbvrrsVersion = a})

-- | The maximum time in seconds that Amazon Lex retains the data gathered in a conversation. For more information, see 'PutBot' .
cbvrrsIdleSessionTTLInSeconds :: Lens' CreateBotVersionResponse (Maybe Natural)
cbvrrsIdleSessionTTLInSeconds = lens _cbvrrsIdleSessionTTLInSeconds (\s a -> s {_cbvrrsIdleSessionTTLInSeconds = a}) . mapping _Nat

-- | The name of the bot.
cbvrrsName :: Lens' CreateBotVersionResponse (Maybe Text)
cbvrrsName = lens _cbvrrsName (\s a -> s {_cbvrrsName = a})

-- | An array of @Intent@ objects. For more information, see 'PutBot' .
cbvrrsIntents :: Lens' CreateBotVersionResponse [Intent]
cbvrrsIntents = lens _cbvrrsIntents (\s a -> s {_cbvrrsIntents = a}) . _Default . _Coerce

-- | If @status@ is @FAILED@ , Amazon Lex provides the reason that it failed to build the bot.
cbvrrsFailureReason :: Lens' CreateBotVersionResponse (Maybe Text)
cbvrrsFailureReason = lens _cbvrrsFailureReason (\s a -> s {_cbvrrsFailureReason = a})

-- | For each Amazon Lex bot created with the Amazon Lex Model Building Service, you must specify whether your use of Amazon Lex is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to the Children's Online Privacy Protection Act (COPPA) by specifying @true@ or @false@ in the @childDirected@ field. By specifying @true@ in the @childDirected@ field, you confirm that your use of Amazon Lex __is__ related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA. By specifying @false@ in the @childDirected@ field, you confirm that your use of Amazon Lex __is not__ related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA. You may not specify a default value for the @childDirected@ field that does not accurately reflect whether your use of Amazon Lex is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA. If your use of Amazon Lex relates to a website, program, or other application that is directed in whole or in part, to children under age 13, you must obtain any required verifiable parental consent under COPPA. For information regarding the use of Amazon Lex in connection with websites, programs, or other applications that are directed or targeted, in whole or in part, to children under age 13, see the <https://aws.amazon.com/lex/faqs#data-security Amazon Lex FAQ.>
cbvrrsChildDirected :: Lens' CreateBotVersionResponse (Maybe Bool)
cbvrrsChildDirected = lens _cbvrrsChildDirected (\s a -> s {_cbvrrsChildDirected = a})

-- | A description of the bot.
cbvrrsDescription :: Lens' CreateBotVersionResponse (Maybe Text)
cbvrrsDescription = lens _cbvrrsDescription (\s a -> s {_cbvrrsDescription = a})

-- | Indicates whether utterances entered by the user should be sent to Amazon Comprehend for sentiment analysis.
cbvrrsDetectSentiment :: Lens' CreateBotVersionResponse (Maybe Bool)
cbvrrsDetectSentiment = lens _cbvrrsDetectSentiment (\s a -> s {_cbvrrsDetectSentiment = a})

-- | Checksum identifying the version of the bot that was created.
cbvrrsChecksum :: Lens' CreateBotVersionResponse (Maybe Text)
cbvrrsChecksum = lens _cbvrrsChecksum (\s a -> s {_cbvrrsChecksum = a})

-- | -- | The response status code.
cbvrrsResponseStatus :: Lens' CreateBotVersionResponse Int
cbvrrsResponseStatus = lens _cbvrrsResponseStatus (\s a -> s {_cbvrrsResponseStatus = a})

instance NFData CreateBotVersionResponse
