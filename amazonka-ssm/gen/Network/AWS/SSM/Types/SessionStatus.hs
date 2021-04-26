{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        SessionStatusConnected,
        SessionStatusConnecting,
        SessionStatusDisconnected,
        SessionStatusFailed,
        SessionStatusTerminated,
        SessionStatusTerminating
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SessionStatus = SessionStatus'
  { fromSessionStatus ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern SessionStatusConnected :: SessionStatus
pattern SessionStatusConnected = SessionStatus' "Connected"

pattern SessionStatusConnecting :: SessionStatus
pattern SessionStatusConnecting = SessionStatus' "Connecting"

pattern SessionStatusDisconnected :: SessionStatus
pattern SessionStatusDisconnected = SessionStatus' "Disconnected"

pattern SessionStatusFailed :: SessionStatus
pattern SessionStatusFailed = SessionStatus' "Failed"

pattern SessionStatusTerminated :: SessionStatus
pattern SessionStatusTerminated = SessionStatus' "Terminated"

pattern SessionStatusTerminating :: SessionStatus
pattern SessionStatusTerminating = SessionStatus' "Terminating"

{-# COMPLETE
  SessionStatusConnected,
  SessionStatusConnecting,
  SessionStatusDisconnected,
  SessionStatusFailed,
  SessionStatusTerminated,
  SessionStatusTerminating,
  SessionStatus'
  #-}

instance Prelude.FromText SessionStatus where
  parser = SessionStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText SessionStatus where
  toText (SessionStatus' x) = x

instance Prelude.Hashable SessionStatus

instance Prelude.NFData SessionStatus

instance Prelude.ToByteString SessionStatus

instance Prelude.ToQuery SessionStatus

instance Prelude.ToHeader SessionStatus

instance Prelude.FromJSON SessionStatus where
  parseJSON = Prelude.parseJSONText "SessionStatus"
