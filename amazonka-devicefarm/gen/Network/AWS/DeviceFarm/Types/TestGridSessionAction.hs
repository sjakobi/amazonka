{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.Types.TestGridSessionAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.TestGridSessionAction where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | An action taken by a 'TestGridSession' browser instance.
--
--
--
-- /See:/ 'testGridSessionAction' smart constructor.
data TestGridSessionAction = TestGridSessionAction'
  { _tgsaStarted ::
      !(Maybe POSIX),
    _tgsaDuration ::
      !(Maybe Integer),
    _tgsaStatusCode ::
      !(Maybe Text),
    _tgsaAction ::
      !(Maybe Text),
    _tgsaRequestMethod ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'TestGridSessionAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tgsaStarted' - The time that the session invoked the action.
--
-- * 'tgsaDuration' - The time, in milliseconds, that the action took to complete in the browser.
--
-- * 'tgsaStatusCode' - HTTP status code returned to the browser when the action was taken.
--
-- * 'tgsaAction' - The action taken by the session.
--
-- * 'tgsaRequestMethod' - HTTP method that the browser used to make the request.
testGridSessionAction ::
  TestGridSessionAction
testGridSessionAction =
  TestGridSessionAction'
    { _tgsaStarted = Nothing,
      _tgsaDuration = Nothing,
      _tgsaStatusCode = Nothing,
      _tgsaAction = Nothing,
      _tgsaRequestMethod = Nothing
    }

-- | The time that the session invoked the action.
tgsaStarted :: Lens' TestGridSessionAction (Maybe UTCTime)
tgsaStarted = lens _tgsaStarted (\s a -> s {_tgsaStarted = a}) . mapping _Time

-- | The time, in milliseconds, that the action took to complete in the browser.
tgsaDuration :: Lens' TestGridSessionAction (Maybe Integer)
tgsaDuration = lens _tgsaDuration (\s a -> s {_tgsaDuration = a})

-- | HTTP status code returned to the browser when the action was taken.
tgsaStatusCode :: Lens' TestGridSessionAction (Maybe Text)
tgsaStatusCode = lens _tgsaStatusCode (\s a -> s {_tgsaStatusCode = a})

-- | The action taken by the session.
tgsaAction :: Lens' TestGridSessionAction (Maybe Text)
tgsaAction = lens _tgsaAction (\s a -> s {_tgsaAction = a})

-- | HTTP method that the browser used to make the request.
tgsaRequestMethod :: Lens' TestGridSessionAction (Maybe Text)
tgsaRequestMethod = lens _tgsaRequestMethod (\s a -> s {_tgsaRequestMethod = a})

instance FromJSON TestGridSessionAction where
  parseJSON =
    withObject
      "TestGridSessionAction"
      ( \x ->
          TestGridSessionAction'
            <$> (x .:? "started")
            <*> (x .:? "duration")
            <*> (x .:? "statusCode")
            <*> (x .:? "action")
            <*> (x .:? "requestMethod")
      )

instance Hashable TestGridSessionAction

instance NFData TestGridSessionAction
