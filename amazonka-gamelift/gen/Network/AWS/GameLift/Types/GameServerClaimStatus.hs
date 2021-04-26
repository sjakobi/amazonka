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
-- Module      : Network.AWS.GameLift.Types.GameServerClaimStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.GameServerClaimStatus
  ( GameServerClaimStatus
      ( ..,
        GameServerClaimStatusCLAIMED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype GameServerClaimStatus = GameServerClaimStatus'
  { fromGameServerClaimStatus ::
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

pattern GameServerClaimStatusCLAIMED :: GameServerClaimStatus
pattern GameServerClaimStatusCLAIMED = GameServerClaimStatus' "CLAIMED"

{-# COMPLETE
  GameServerClaimStatusCLAIMED,
  GameServerClaimStatus'
  #-}

instance Prelude.FromText GameServerClaimStatus where
  parser = GameServerClaimStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText GameServerClaimStatus where
  toText (GameServerClaimStatus' x) = x

instance Prelude.Hashable GameServerClaimStatus

instance Prelude.NFData GameServerClaimStatus

instance Prelude.ToByteString GameServerClaimStatus

instance Prelude.ToQuery GameServerClaimStatus

instance Prelude.ToHeader GameServerClaimStatus

instance Prelude.FromJSON GameServerClaimStatus where
  parseJSON = Prelude.parseJSONText "GameServerClaimStatus"
