{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.Types.AuthEventType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.AuthEventType where

import Network.AWS.CognitoIdentityProvider.Types.ChallengeResponseType
import Network.AWS.CognitoIdentityProvider.Types.EventContextDataType
import Network.AWS.CognitoIdentityProvider.Types.EventFeedbackType
import Network.AWS.CognitoIdentityProvider.Types.EventResponseType
import Network.AWS.CognitoIdentityProvider.Types.EventRiskType
import Network.AWS.CognitoIdentityProvider.Types.EventType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The authentication event type.
--
--
--
-- /See:/ 'authEventType' smart constructor.
data AuthEventType = AuthEventType'
  { _aetEventType ::
      !(Maybe EventType),
    _aetEventId :: !(Maybe Text),
    _aetChallengeResponses ::
      !(Maybe [ChallengeResponseType]),
    _aetEventContextData ::
      !(Maybe EventContextDataType),
    _aetCreationDate :: !(Maybe POSIX),
    _aetEventRisk :: !(Maybe EventRiskType),
    _aetEventResponse ::
      !(Maybe EventResponseType),
    _aetEventFeedback ::
      !(Maybe EventFeedbackType)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AuthEventType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aetEventType' - The event type.
--
-- * 'aetEventId' - The event ID.
--
-- * 'aetChallengeResponses' - The challenge responses.
--
-- * 'aetEventContextData' - The user context data captured at the time of an event request. It provides additional information about the client from which event the request is received.
--
-- * 'aetCreationDate' - The creation date
--
-- * 'aetEventRisk' - The event risk.
--
-- * 'aetEventResponse' - The event response.
--
-- * 'aetEventFeedback' - A flag specifying the user feedback captured at the time of an event request is good or bad.
authEventType ::
  AuthEventType
authEventType =
  AuthEventType'
    { _aetEventType = Nothing,
      _aetEventId = Nothing,
      _aetChallengeResponses = Nothing,
      _aetEventContextData = Nothing,
      _aetCreationDate = Nothing,
      _aetEventRisk = Nothing,
      _aetEventResponse = Nothing,
      _aetEventFeedback = Nothing
    }

-- | The event type.
aetEventType :: Lens' AuthEventType (Maybe EventType)
aetEventType = lens _aetEventType (\s a -> s {_aetEventType = a})

-- | The event ID.
aetEventId :: Lens' AuthEventType (Maybe Text)
aetEventId = lens _aetEventId (\s a -> s {_aetEventId = a})

-- | The challenge responses.
aetChallengeResponses :: Lens' AuthEventType [ChallengeResponseType]
aetChallengeResponses = lens _aetChallengeResponses (\s a -> s {_aetChallengeResponses = a}) . _Default . _Coerce

-- | The user context data captured at the time of an event request. It provides additional information about the client from which event the request is received.
aetEventContextData :: Lens' AuthEventType (Maybe EventContextDataType)
aetEventContextData = lens _aetEventContextData (\s a -> s {_aetEventContextData = a})

-- | The creation date
aetCreationDate :: Lens' AuthEventType (Maybe UTCTime)
aetCreationDate = lens _aetCreationDate (\s a -> s {_aetCreationDate = a}) . mapping _Time

-- | The event risk.
aetEventRisk :: Lens' AuthEventType (Maybe EventRiskType)
aetEventRisk = lens _aetEventRisk (\s a -> s {_aetEventRisk = a})

-- | The event response.
aetEventResponse :: Lens' AuthEventType (Maybe EventResponseType)
aetEventResponse = lens _aetEventResponse (\s a -> s {_aetEventResponse = a})

-- | A flag specifying the user feedback captured at the time of an event request is good or bad.
aetEventFeedback :: Lens' AuthEventType (Maybe EventFeedbackType)
aetEventFeedback = lens _aetEventFeedback (\s a -> s {_aetEventFeedback = a})

instance FromJSON AuthEventType where
  parseJSON =
    withObject
      "AuthEventType"
      ( \x ->
          AuthEventType'
            <$> (x .:? "EventType")
            <*> (x .:? "EventId")
            <*> (x .:? "ChallengeResponses" .!= mempty)
            <*> (x .:? "EventContextData")
            <*> (x .:? "CreationDate")
            <*> (x .:? "EventRisk")
            <*> (x .:? "EventResponse")
            <*> (x .:? "EventFeedback")
      )

instance Hashable AuthEventType

instance NFData AuthEventType
