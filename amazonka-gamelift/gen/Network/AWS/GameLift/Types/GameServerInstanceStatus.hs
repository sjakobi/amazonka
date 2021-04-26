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
-- Module      : Network.AWS.GameLift.Types.GameServerInstanceStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.GameServerInstanceStatus
  ( GameServerInstanceStatus
      ( ..,
        GameServerInstanceStatusACTIVE,
        GameServerInstanceStatusDRAINING,
        GameServerInstanceStatusSPOTTERMINATING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype GameServerInstanceStatus = GameServerInstanceStatus'
  { fromGameServerInstanceStatus ::
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

pattern GameServerInstanceStatusACTIVE :: GameServerInstanceStatus
pattern GameServerInstanceStatusACTIVE = GameServerInstanceStatus' "ACTIVE"

pattern GameServerInstanceStatusDRAINING :: GameServerInstanceStatus
pattern GameServerInstanceStatusDRAINING = GameServerInstanceStatus' "DRAINING"

pattern GameServerInstanceStatusSPOTTERMINATING :: GameServerInstanceStatus
pattern GameServerInstanceStatusSPOTTERMINATING = GameServerInstanceStatus' "SPOT_TERMINATING"

{-# COMPLETE
  GameServerInstanceStatusACTIVE,
  GameServerInstanceStatusDRAINING,
  GameServerInstanceStatusSPOTTERMINATING,
  GameServerInstanceStatus'
  #-}

instance Prelude.FromText GameServerInstanceStatus where
  parser = GameServerInstanceStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText GameServerInstanceStatus where
  toText (GameServerInstanceStatus' x) = x

instance Prelude.Hashable GameServerInstanceStatus

instance Prelude.NFData GameServerInstanceStatus

instance Prelude.ToByteString GameServerInstanceStatus

instance Prelude.ToQuery GameServerInstanceStatus

instance Prelude.ToHeader GameServerInstanceStatus

instance Prelude.FromJSON GameServerInstanceStatus where
  parseJSON = Prelude.parseJSONText "GameServerInstanceStatus"
