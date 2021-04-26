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
-- Module      : Network.AWS.GameLift.Types.PlayerSessionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.PlayerSessionStatus
  ( PlayerSessionStatus
      ( ..,
        PlayerSessionStatusACTIVE,
        PlayerSessionStatusCOMPLETED,
        PlayerSessionStatusRESERVED,
        PlayerSessionStatusTIMEDOUT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PlayerSessionStatus = PlayerSessionStatus'
  { fromPlayerSessionStatus ::
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

pattern PlayerSessionStatusACTIVE :: PlayerSessionStatus
pattern PlayerSessionStatusACTIVE = PlayerSessionStatus' "ACTIVE"

pattern PlayerSessionStatusCOMPLETED :: PlayerSessionStatus
pattern PlayerSessionStatusCOMPLETED = PlayerSessionStatus' "COMPLETED"

pattern PlayerSessionStatusRESERVED :: PlayerSessionStatus
pattern PlayerSessionStatusRESERVED = PlayerSessionStatus' "RESERVED"

pattern PlayerSessionStatusTIMEDOUT :: PlayerSessionStatus
pattern PlayerSessionStatusTIMEDOUT = PlayerSessionStatus' "TIMEDOUT"

{-# COMPLETE
  PlayerSessionStatusACTIVE,
  PlayerSessionStatusCOMPLETED,
  PlayerSessionStatusRESERVED,
  PlayerSessionStatusTIMEDOUT,
  PlayerSessionStatus'
  #-}

instance Prelude.FromText PlayerSessionStatus where
  parser = PlayerSessionStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText PlayerSessionStatus where
  toText (PlayerSessionStatus' x) = x

instance Prelude.Hashable PlayerSessionStatus

instance Prelude.NFData PlayerSessionStatus

instance Prelude.ToByteString PlayerSessionStatus

instance Prelude.ToQuery PlayerSessionStatus

instance Prelude.ToHeader PlayerSessionStatus

instance Prelude.FromJSON PlayerSessionStatus where
  parseJSON = Prelude.parseJSONText "PlayerSessionStatus"
