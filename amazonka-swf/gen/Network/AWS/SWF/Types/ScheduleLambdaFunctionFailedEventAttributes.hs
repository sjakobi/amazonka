{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types.ScheduleLambdaFunctionFailedEventAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.ScheduleLambdaFunctionFailedEventAttributes where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SWF.Types.ScheduleLambdaFunctionFailedCause

-- | Provides the details of the @ScheduleLambdaFunctionFailed@ event. It isn't set for other event types.
--
--
--
-- /See:/ 'scheduleLambdaFunctionFailedEventAttributes' smart constructor.
data ScheduleLambdaFunctionFailedEventAttributes = ScheduleLambdaFunctionFailedEventAttributes'
  { _sId ::
      !Text,
    _sName ::
      !Text,
    _sCause ::
      !ScheduleLambdaFunctionFailedCause,
    _sDecisionTaskCompletedEventId ::
      !Integer
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ScheduleLambdaFunctionFailedEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sId' - The ID provided in the @ScheduleLambdaFunction@ decision that failed.
--
-- * 'sName' - The name of the Lambda function.
--
-- * 'sCause' - The cause of the failure. To help diagnose issues, use this information to trace back the chain of events leading up to this event.
--
-- * 'sDecisionTaskCompletedEventId' - The ID of the @LambdaFunctionCompleted@ event corresponding to the decision that resulted in scheduling this Lambda task. To help diagnose issues, use this information to trace back the chain of events leading up to this event.
scheduleLambdaFunctionFailedEventAttributes ::
  -- | 'sId'
  Text ->
  -- | 'sName'
  Text ->
  -- | 'sCause'
  ScheduleLambdaFunctionFailedCause ->
  -- | 'sDecisionTaskCompletedEventId'
  Integer ->
  ScheduleLambdaFunctionFailedEventAttributes
scheduleLambdaFunctionFailedEventAttributes
  pId_
  pName_
  pCause_
  pDecisionTaskCompletedEventId_ =
    ScheduleLambdaFunctionFailedEventAttributes'
      { _sId =
          pId_,
        _sName = pName_,
        _sCause = pCause_,
        _sDecisionTaskCompletedEventId =
          pDecisionTaskCompletedEventId_
      }

-- | The ID provided in the @ScheduleLambdaFunction@ decision that failed.
sId :: Lens' ScheduleLambdaFunctionFailedEventAttributes Text
sId = lens _sId (\s a -> s {_sId = a})

-- | The name of the Lambda function.
sName :: Lens' ScheduleLambdaFunctionFailedEventAttributes Text
sName = lens _sName (\s a -> s {_sName = a})

-- | The cause of the failure. To help diagnose issues, use this information to trace back the chain of events leading up to this event.
sCause :: Lens' ScheduleLambdaFunctionFailedEventAttributes ScheduleLambdaFunctionFailedCause
sCause = lens _sCause (\s a -> s {_sCause = a})

-- | The ID of the @LambdaFunctionCompleted@ event corresponding to the decision that resulted in scheduling this Lambda task. To help diagnose issues, use this information to trace back the chain of events leading up to this event.
sDecisionTaskCompletedEventId :: Lens' ScheduleLambdaFunctionFailedEventAttributes Integer
sDecisionTaskCompletedEventId = lens _sDecisionTaskCompletedEventId (\s a -> s {_sDecisionTaskCompletedEventId = a})

instance
  FromJSON
    ScheduleLambdaFunctionFailedEventAttributes
  where
  parseJSON =
    withObject
      "ScheduleLambdaFunctionFailedEventAttributes"
      ( \x ->
          ScheduleLambdaFunctionFailedEventAttributes'
            <$> (x .: "id")
            <*> (x .: "name")
            <*> (x .: "cause")
            <*> (x .: "decisionTaskCompletedEventId")
      )

instance
  Hashable
    ScheduleLambdaFunctionFailedEventAttributes

instance
  NFData
    ScheduleLambdaFunctionFailedEventAttributes
