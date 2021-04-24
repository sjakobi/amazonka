{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        GSISActive,
        GSISDraining,
        GSISSpotTerminating
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data GameServerInstanceStatus
  = GameServerInstanceStatus'
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

pattern GSISActive :: GameServerInstanceStatus
pattern GSISActive = GameServerInstanceStatus' "ACTIVE"

pattern GSISDraining :: GameServerInstanceStatus
pattern GSISDraining = GameServerInstanceStatus' "DRAINING"

pattern GSISSpotTerminating :: GameServerInstanceStatus
pattern GSISSpotTerminating = GameServerInstanceStatus' "SPOT_TERMINATING"

{-# COMPLETE
  GSISActive,
  GSISDraining,
  GSISSpotTerminating,
  GameServerInstanceStatus'
  #-}

instance FromText GameServerInstanceStatus where
  parser = (GameServerInstanceStatus' . mk) <$> takeText

instance ToText GameServerInstanceStatus where
  toText (GameServerInstanceStatus' ci) = original ci

instance Hashable GameServerInstanceStatus

instance NFData GameServerInstanceStatus

instance ToByteString GameServerInstanceStatus

instance ToQuery GameServerInstanceStatus

instance ToHeader GameServerInstanceStatus

instance FromJSON GameServerInstanceStatus where
  parseJSON = parseJSONText "GameServerInstanceStatus"
