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
-- Module      : Network.AWS.GameLift.Types.GameSessionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.GameSessionStatus
  ( GameSessionStatus
      ( ..,
        GameSessionStatusACTIVATING,
        GameSessionStatusACTIVE,
        GameSessionStatusERROR,
        GameSessionStatusTERMINATED,
        GameSessionStatusTERMINATING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype GameSessionStatus = GameSessionStatus'
  { fromGameSessionStatus ::
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

pattern GameSessionStatusACTIVATING :: GameSessionStatus
pattern GameSessionStatusACTIVATING = GameSessionStatus' "ACTIVATING"

pattern GameSessionStatusACTIVE :: GameSessionStatus
pattern GameSessionStatusACTIVE = GameSessionStatus' "ACTIVE"

pattern GameSessionStatusERROR :: GameSessionStatus
pattern GameSessionStatusERROR = GameSessionStatus' "ERROR"

pattern GameSessionStatusTERMINATED :: GameSessionStatus
pattern GameSessionStatusTERMINATED = GameSessionStatus' "TERMINATED"

pattern GameSessionStatusTERMINATING :: GameSessionStatus
pattern GameSessionStatusTERMINATING = GameSessionStatus' "TERMINATING"

{-# COMPLETE
  GameSessionStatusACTIVATING,
  GameSessionStatusACTIVE,
  GameSessionStatusERROR,
  GameSessionStatusTERMINATED,
  GameSessionStatusTERMINATING,
  GameSessionStatus'
  #-}

instance Prelude.FromText GameSessionStatus where
  parser = GameSessionStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText GameSessionStatus where
  toText (GameSessionStatus' x) = x

instance Prelude.Hashable GameSessionStatus

instance Prelude.NFData GameSessionStatus

instance Prelude.ToByteString GameSessionStatus

instance Prelude.ToQuery GameSessionStatus

instance Prelude.ToHeader GameSessionStatus

instance Prelude.FromJSON GameSessionStatus where
  parseJSON = Prelude.parseJSONText "GameSessionStatus"
