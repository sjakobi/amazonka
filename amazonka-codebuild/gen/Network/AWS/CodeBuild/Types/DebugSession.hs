{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.Types.DebugSession
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.DebugSession where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about the debug session for a build. For more information, see <https://docs.aws.amazon.com/codebuild/latest/userguide/session-manager.html Viewing a running build in Session Manager> .
--
--
--
-- /See:/ 'debugSession' smart constructor.
data DebugSession = DebugSession'
  { _dsSessionTarget ::
      !(Maybe Text),
    _dsSessionEnabled :: !(Maybe Bool)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DebugSession' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsSessionTarget' - Contains the identifier of the Session Manager session used for the build. To work with the paused build, you open this session to examine, control, and resume the build.
--
-- * 'dsSessionEnabled' - Specifies if session debugging is enabled for this build.
debugSession ::
  DebugSession
debugSession =
  DebugSession'
    { _dsSessionTarget = Nothing,
      _dsSessionEnabled = Nothing
    }

-- | Contains the identifier of the Session Manager session used for the build. To work with the paused build, you open this session to examine, control, and resume the build.
dsSessionTarget :: Lens' DebugSession (Maybe Text)
dsSessionTarget = lens _dsSessionTarget (\s a -> s {_dsSessionTarget = a})

-- | Specifies if session debugging is enabled for this build.
dsSessionEnabled :: Lens' DebugSession (Maybe Bool)
dsSessionEnabled = lens _dsSessionEnabled (\s a -> s {_dsSessionEnabled = a})

instance FromJSON DebugSession where
  parseJSON =
    withObject
      "DebugSession"
      ( \x ->
          DebugSession'
            <$> (x .:? "sessionTarget") <*> (x .:? "sessionEnabled")
      )

instance Hashable DebugSession

instance NFData DebugSession
