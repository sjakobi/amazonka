{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types.StartLambdaFunctionFailedEventAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.StartLambdaFunctionFailedEventAttributes where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SWF.Types.StartLambdaFunctionFailedCause

-- | Provides the details of the @StartLambdaFunctionFailed@ event. It isn't set for other event types.
--
--
--
-- /See:/ 'startLambdaFunctionFailedEventAttributes' smart constructor.
data StartLambdaFunctionFailedEventAttributes = StartLambdaFunctionFailedEventAttributes'
  { _slffeaMessage ::
      !( Maybe
           Text
       ),
    _slffeaScheduledEventId ::
      !( Maybe
           Integer
       ),
    _slffeaCause ::
      !( Maybe
           StartLambdaFunctionFailedCause
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'StartLambdaFunctionFailedEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slffeaMessage' - A description that can help diagnose the cause of the fault.
--
-- * 'slffeaScheduledEventId' - The ID of the @ActivityTaskScheduled@ event that was recorded when this activity task was scheduled. To help diagnose issues, use this information to trace back the chain of events leading up to this event.
--
-- * 'slffeaCause' - The cause of the failure. To help diagnose issues, use this information to trace back the chain of events leading up to this event.
startLambdaFunctionFailedEventAttributes ::
  StartLambdaFunctionFailedEventAttributes
startLambdaFunctionFailedEventAttributes =
  StartLambdaFunctionFailedEventAttributes'
    { _slffeaMessage =
        Nothing,
      _slffeaScheduledEventId = Nothing,
      _slffeaCause = Nothing
    }

-- | A description that can help diagnose the cause of the fault.
slffeaMessage :: Lens' StartLambdaFunctionFailedEventAttributes (Maybe Text)
slffeaMessage = lens _slffeaMessage (\s a -> s {_slffeaMessage = a})

-- | The ID of the @ActivityTaskScheduled@ event that was recorded when this activity task was scheduled. To help diagnose issues, use this information to trace back the chain of events leading up to this event.
slffeaScheduledEventId :: Lens' StartLambdaFunctionFailedEventAttributes (Maybe Integer)
slffeaScheduledEventId = lens _slffeaScheduledEventId (\s a -> s {_slffeaScheduledEventId = a})

-- | The cause of the failure. To help diagnose issues, use this information to trace back the chain of events leading up to this event.
slffeaCause :: Lens' StartLambdaFunctionFailedEventAttributes (Maybe StartLambdaFunctionFailedCause)
slffeaCause = lens _slffeaCause (\s a -> s {_slffeaCause = a})

instance
  FromJSON
    StartLambdaFunctionFailedEventAttributes
  where
  parseJSON =
    withObject
      "StartLambdaFunctionFailedEventAttributes"
      ( \x ->
          StartLambdaFunctionFailedEventAttributes'
            <$> (x .:? "message")
            <*> (x .:? "scheduledEventId")
            <*> (x .:? "cause")
      )

instance
  Hashable
    StartLambdaFunctionFailedEventAttributes

instance
  NFData
    StartLambdaFunctionFailedEventAttributes
