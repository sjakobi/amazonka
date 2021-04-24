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
-- Module      : Network.AWS.LexModels.GetBuiltinIntent
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a built-in intent.
--
--
-- This operation requires permission for the @lex:GetBuiltinIntent@ action.
module Network.AWS.LexModels.GetBuiltinIntent
  ( -- * Creating a Request
    getBuiltinIntent,
    GetBuiltinIntent,

    -- * Request Lenses
    gbiSignature,

    -- * Destructuring the Response
    getBuiltinIntentResponse,
    GetBuiltinIntentResponse,

    -- * Response Lenses
    gbirrsSlots,
    gbirrsSignature,
    gbirrsSupportedLocales,
    gbirrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.LexModels.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getBuiltinIntent' smart constructor.
newtype GetBuiltinIntent = GetBuiltinIntent'
  { _gbiSignature ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetBuiltinIntent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gbiSignature' - The unique identifier for a built-in intent. To find the signature for an intent, see <https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents Standard Built-in Intents> in the /Alexa Skills Kit/ .
getBuiltinIntent ::
  -- | 'gbiSignature'
  Text ->
  GetBuiltinIntent
getBuiltinIntent pSignature_ =
  GetBuiltinIntent' {_gbiSignature = pSignature_}

-- | The unique identifier for a built-in intent. To find the signature for an intent, see <https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents Standard Built-in Intents> in the /Alexa Skills Kit/ .
gbiSignature :: Lens' GetBuiltinIntent Text
gbiSignature = lens _gbiSignature (\s a -> s {_gbiSignature = a})

instance AWSRequest GetBuiltinIntent where
  type Rs GetBuiltinIntent = GetBuiltinIntentResponse
  request = get lexModels
  response =
    receiveJSON
      ( \s h x ->
          GetBuiltinIntentResponse'
            <$> (x .?> "slots" .!@ mempty)
            <*> (x .?> "signature")
            <*> (x .?> "supportedLocales" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetBuiltinIntent

instance NFData GetBuiltinIntent

instance ToHeaders GetBuiltinIntent where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetBuiltinIntent where
  toPath GetBuiltinIntent' {..} =
    mconcat ["/builtins/intents/", toBS _gbiSignature]

instance ToQuery GetBuiltinIntent where
  toQuery = const mempty

-- | /See:/ 'getBuiltinIntentResponse' smart constructor.
data GetBuiltinIntentResponse = GetBuiltinIntentResponse'
  { _gbirrsSlots ::
      !( Maybe
           [BuiltinIntentSlot]
       ),
    _gbirrsSignature ::
      !(Maybe Text),
    _gbirrsSupportedLocales ::
      !(Maybe [Locale]),
    _gbirrsResponseStatus ::
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

-- | Creates a value of 'GetBuiltinIntentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gbirrsSlots' - An array of @BuiltinIntentSlot@ objects, one entry for each slot type in the intent.
--
-- * 'gbirrsSignature' - The unique identifier for a built-in intent.
--
-- * 'gbirrsSupportedLocales' - A list of locales that the intent supports.
--
-- * 'gbirrsResponseStatus' - -- | The response status code.
getBuiltinIntentResponse ::
  -- | 'gbirrsResponseStatus'
  Int ->
  GetBuiltinIntentResponse
getBuiltinIntentResponse pResponseStatus_ =
  GetBuiltinIntentResponse'
    { _gbirrsSlots = Nothing,
      _gbirrsSignature = Nothing,
      _gbirrsSupportedLocales = Nothing,
      _gbirrsResponseStatus = pResponseStatus_
    }

-- | An array of @BuiltinIntentSlot@ objects, one entry for each slot type in the intent.
gbirrsSlots :: Lens' GetBuiltinIntentResponse [BuiltinIntentSlot]
gbirrsSlots = lens _gbirrsSlots (\s a -> s {_gbirrsSlots = a}) . _Default . _Coerce

-- | The unique identifier for a built-in intent.
gbirrsSignature :: Lens' GetBuiltinIntentResponse (Maybe Text)
gbirrsSignature = lens _gbirrsSignature (\s a -> s {_gbirrsSignature = a})

-- | A list of locales that the intent supports.
gbirrsSupportedLocales :: Lens' GetBuiltinIntentResponse [Locale]
gbirrsSupportedLocales = lens _gbirrsSupportedLocales (\s a -> s {_gbirrsSupportedLocales = a}) . _Default . _Coerce

-- | -- | The response status code.
gbirrsResponseStatus :: Lens' GetBuiltinIntentResponse Int
gbirrsResponseStatus = lens _gbirrsResponseStatus (\s a -> s {_gbirrsResponseStatus = a})

instance NFData GetBuiltinIntentResponse
