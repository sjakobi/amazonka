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
-- Module      : Network.AWS.GameLift.Types.GameServerGroupStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.GameServerGroupStatus
  ( GameServerGroupStatus
      ( ..,
        GameServerGroupStatusACTIVATING,
        GameServerGroupStatusACTIVE,
        GameServerGroupStatusDELETED,
        GameServerGroupStatusDELETESCHEDULED,
        GameServerGroupStatusDELETING,
        GameServerGroupStatusERROR,
        GameServerGroupStatusNEW
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype GameServerGroupStatus = GameServerGroupStatus'
  { fromGameServerGroupStatus ::
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

pattern GameServerGroupStatusACTIVATING :: GameServerGroupStatus
pattern GameServerGroupStatusACTIVATING = GameServerGroupStatus' "ACTIVATING"

pattern GameServerGroupStatusACTIVE :: GameServerGroupStatus
pattern GameServerGroupStatusACTIVE = GameServerGroupStatus' "ACTIVE"

pattern GameServerGroupStatusDELETED :: GameServerGroupStatus
pattern GameServerGroupStatusDELETED = GameServerGroupStatus' "DELETED"

pattern GameServerGroupStatusDELETESCHEDULED :: GameServerGroupStatus
pattern GameServerGroupStatusDELETESCHEDULED = GameServerGroupStatus' "DELETE_SCHEDULED"

pattern GameServerGroupStatusDELETING :: GameServerGroupStatus
pattern GameServerGroupStatusDELETING = GameServerGroupStatus' "DELETING"

pattern GameServerGroupStatusERROR :: GameServerGroupStatus
pattern GameServerGroupStatusERROR = GameServerGroupStatus' "ERROR"

pattern GameServerGroupStatusNEW :: GameServerGroupStatus
pattern GameServerGroupStatusNEW = GameServerGroupStatus' "NEW"

{-# COMPLETE
  GameServerGroupStatusACTIVATING,
  GameServerGroupStatusACTIVE,
  GameServerGroupStatusDELETED,
  GameServerGroupStatusDELETESCHEDULED,
  GameServerGroupStatusDELETING,
  GameServerGroupStatusERROR,
  GameServerGroupStatusNEW,
  GameServerGroupStatus'
  #-}

instance Prelude.FromText GameServerGroupStatus where
  parser = GameServerGroupStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText GameServerGroupStatus where
  toText (GameServerGroupStatus' x) = x

instance Prelude.Hashable GameServerGroupStatus

instance Prelude.NFData GameServerGroupStatus

instance Prelude.ToByteString GameServerGroupStatus

instance Prelude.ToQuery GameServerGroupStatus

instance Prelude.ToHeader GameServerGroupStatus

instance Prelude.FromJSON GameServerGroupStatus where
  parseJSON = Prelude.parseJSONText "GameServerGroupStatus"
