{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeDeploy.Types.Diagnostics
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.Diagnostics where

import Network.AWS.CodeDeploy.Types.LifecycleErrorCode
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Diagnostic information about executable scripts that are part of a deployment.
--
--
--
-- /See:/ 'diagnostics' smart constructor.
data Diagnostics = Diagnostics'
  { _dLogTail ::
      !(Maybe Text),
    _dMessage :: !(Maybe Text),
    _dScriptName :: !(Maybe Text),
    _dErrorCode :: !(Maybe LifecycleErrorCode)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Diagnostics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dLogTail' - The last portion of the diagnostic log. If available, AWS CodeDeploy returns up to the last 4 KB of the diagnostic log.
--
-- * 'dMessage' - The message associated with the error.
--
-- * 'dScriptName' - The name of the script.
--
-- * 'dErrorCode' - The associated error code:     * Success: The specified script ran.     * ScriptMissing: The specified script was not found in the specified location.     * ScriptNotExecutable: The specified script is not a recognized executable file type.     * ScriptTimedOut: The specified script did not finish running in the specified time period.     * ScriptFailed: The specified script failed to run as expected.     * UnknownError: The specified script did not run for an unknown reason.
diagnostics ::
  Diagnostics
diagnostics =
  Diagnostics'
    { _dLogTail = Nothing,
      _dMessage = Nothing,
      _dScriptName = Nothing,
      _dErrorCode = Nothing
    }

-- | The last portion of the diagnostic log. If available, AWS CodeDeploy returns up to the last 4 KB of the diagnostic log.
dLogTail :: Lens' Diagnostics (Maybe Text)
dLogTail = lens _dLogTail (\s a -> s {_dLogTail = a})

-- | The message associated with the error.
dMessage :: Lens' Diagnostics (Maybe Text)
dMessage = lens _dMessage (\s a -> s {_dMessage = a})

-- | The name of the script.
dScriptName :: Lens' Diagnostics (Maybe Text)
dScriptName = lens _dScriptName (\s a -> s {_dScriptName = a})

-- | The associated error code:     * Success: The specified script ran.     * ScriptMissing: The specified script was not found in the specified location.     * ScriptNotExecutable: The specified script is not a recognized executable file type.     * ScriptTimedOut: The specified script did not finish running in the specified time period.     * ScriptFailed: The specified script failed to run as expected.     * UnknownError: The specified script did not run for an unknown reason.
dErrorCode :: Lens' Diagnostics (Maybe LifecycleErrorCode)
dErrorCode = lens _dErrorCode (\s a -> s {_dErrorCode = a})

instance FromJSON Diagnostics where
  parseJSON =
    withObject
      "Diagnostics"
      ( \x ->
          Diagnostics'
            <$> (x .:? "logTail")
            <*> (x .:? "message")
            <*> (x .:? "scriptName")
            <*> (x .:? "errorCode")
      )

instance Hashable Diagnostics

instance NFData Diagnostics
