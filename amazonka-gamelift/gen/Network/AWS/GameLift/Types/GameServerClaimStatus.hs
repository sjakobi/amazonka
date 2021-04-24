{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        Claimed
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data GameServerClaimStatus
  = GameServerClaimStatus'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Claimed :: GameServerClaimStatus
pattern Claimed = GameServerClaimStatus' "CLAIMED"

{-# COMPLETE
  Claimed,
  GameServerClaimStatus'
  #-}

instance FromText GameServerClaimStatus where
  parser = (GameServerClaimStatus' . mk) <$> takeText

instance ToText GameServerClaimStatus where
  toText (GameServerClaimStatus' ci) = original ci

instance Hashable GameServerClaimStatus

instance NFData GameServerClaimStatus

instance ToByteString GameServerClaimStatus

instance ToQuery GameServerClaimStatus

instance ToHeader GameServerClaimStatus

instance FromJSON GameServerClaimStatus where
  parseJSON = parseJSONText "GameServerClaimStatus"
