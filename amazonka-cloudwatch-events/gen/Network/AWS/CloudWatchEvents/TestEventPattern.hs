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
-- Module      : Network.AWS.CloudWatchEvents.TestEventPattern
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Tests whether the specified event pattern matches the provided event.
--
--
-- Most services in AWS treat : or / as the same character in Amazon Resource Names (ARNs). However, EventBridge uses an exact match in event patterns and rules. Be sure to use the correct ARN characters when creating event patterns so that they match the ARN syntax in the event you want to match.
module Network.AWS.CloudWatchEvents.TestEventPattern
  ( -- * Creating a Request
    testEventPattern,
    TestEventPattern,

    -- * Request Lenses
    tepEventPattern,
    tepEvent,

    -- * Destructuring the Response
    testEventPatternResponse,
    TestEventPatternResponse,

    -- * Response Lenses
    teprrsResult,
    teprrsResponseStatus,
  )
where

import Network.AWS.CloudWatchEvents.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'testEventPattern' smart constructor.
data TestEventPattern = TestEventPattern'
  { _tepEventPattern ::
      !Text,
    _tepEvent :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TestEventPattern' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tepEventPattern' - The event pattern. For more information, see <https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html Events and Event Patterns> in the /Amazon EventBridge User Guide/ .
--
-- * 'tepEvent' - The event, in JSON format, to test against the event pattern. The JSON must follow the format specified in <https://docs.aws.amazon.com/eventbridge/latest/userguide/aws-events.html AWS Events> , and the following fields are mandatory:     * @id@      * @account@      * @source@      * @time@      * @region@      * @resources@      * @detail-type@
testEventPattern ::
  -- | 'tepEventPattern'
  Text ->
  -- | 'tepEvent'
  Text ->
  TestEventPattern
testEventPattern pEventPattern_ pEvent_ =
  TestEventPattern'
    { _tepEventPattern =
        pEventPattern_,
      _tepEvent = pEvent_
    }

-- | The event pattern. For more information, see <https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html Events and Event Patterns> in the /Amazon EventBridge User Guide/ .
tepEventPattern :: Lens' TestEventPattern Text
tepEventPattern = lens _tepEventPattern (\s a -> s {_tepEventPattern = a})

-- | The event, in JSON format, to test against the event pattern. The JSON must follow the format specified in <https://docs.aws.amazon.com/eventbridge/latest/userguide/aws-events.html AWS Events> , and the following fields are mandatory:     * @id@      * @account@      * @source@      * @time@      * @region@      * @resources@      * @detail-type@
tepEvent :: Lens' TestEventPattern Text
tepEvent = lens _tepEvent (\s a -> s {_tepEvent = a})

instance AWSRequest TestEventPattern where
  type Rs TestEventPattern = TestEventPatternResponse
  request = postJSON cloudWatchEvents
  response =
    receiveJSON
      ( \s h x ->
          TestEventPatternResponse'
            <$> (x .?> "Result") <*> (pure (fromEnum s))
      )

instance Hashable TestEventPattern

instance NFData TestEventPattern

instance ToHeaders TestEventPattern where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSEvents.TestEventPattern" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON TestEventPattern where
  toJSON TestEventPattern' {..} =
    object
      ( catMaybes
          [ Just ("EventPattern" .= _tepEventPattern),
            Just ("Event" .= _tepEvent)
          ]
      )

instance ToPath TestEventPattern where
  toPath = const "/"

instance ToQuery TestEventPattern where
  toQuery = const mempty

-- | /See:/ 'testEventPatternResponse' smart constructor.
data TestEventPatternResponse = TestEventPatternResponse'
  { _teprrsResult ::
      !(Maybe Bool),
    _teprrsResponseStatus ::
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

-- | Creates a value of 'TestEventPatternResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'teprrsResult' - Indicates whether the event matches the event pattern.
--
-- * 'teprrsResponseStatus' - -- | The response status code.
testEventPatternResponse ::
  -- | 'teprrsResponseStatus'
  Int ->
  TestEventPatternResponse
testEventPatternResponse pResponseStatus_ =
  TestEventPatternResponse'
    { _teprrsResult = Nothing,
      _teprrsResponseStatus = pResponseStatus_
    }

-- | Indicates whether the event matches the event pattern.
teprrsResult :: Lens' TestEventPatternResponse (Maybe Bool)
teprrsResult = lens _teprrsResult (\s a -> s {_teprrsResult = a})

-- | -- | The response status code.
teprrsResponseStatus :: Lens' TestEventPatternResponse Int
teprrsResponseStatus = lens _teprrsResponseStatus (\s a -> s {_teprrsResponseStatus = a})

instance NFData TestEventPatternResponse
