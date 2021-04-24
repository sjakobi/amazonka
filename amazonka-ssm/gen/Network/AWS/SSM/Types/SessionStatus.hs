{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.SessionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.SessionStatus
  ( SessionStatus
      ( ..,
        SSConnected,
        SSConnecting,
        SSDisconnected,
        SSFailed,
        SSTerminated,
        SSTerminating
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SessionStatus = SessionStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern SSConnected :: SessionStatus
pattern SSConnected = SessionStatus' "Connected"

pattern SSConnecting :: SessionStatus
pattern SSConnecting = SessionStatus' "Connecting"

pattern SSDisconnected :: SessionStatus
pattern SSDisconnected = SessionStatus' "Disconnected"

pattern SSFailed :: SessionStatus
pattern SSFailed = SessionStatus' "Failed"

pattern SSTerminated :: SessionStatus
pattern SSTerminated = SessionStatus' "Terminated"

pattern SSTerminating :: SessionStatus
pattern SSTerminating = SessionStatus' "Terminating"

{-# COMPLETE
  SSConnected,
  SSConnecting,
  SSDisconnected,
  SSFailed,
  SSTerminated,
  SSTerminating,
  SessionStatus'
  #-}

instance FromText SessionStatus where
  parser = (SessionStatus' . mk) <$> takeText

instance ToText SessionStatus where
  toText (SessionStatus' ci) = original ci

instance Hashable SessionStatus

instance NFData SessionStatus

instance ToByteString SessionStatus

instance ToQuery SessionStatus

instance ToHeader SessionStatus

instance FromJSON SessionStatus where
  parseJSON = parseJSONText "SessionStatus"
