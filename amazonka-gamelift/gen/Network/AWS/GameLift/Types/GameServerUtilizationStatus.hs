{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GameLift.Types.GameServerUtilizationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.GameServerUtilizationStatus
  ( GameServerUtilizationStatus
      ( ..,
        Available,
        Utilized
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data GameServerUtilizationStatus
  = GameServerUtilizationStatus'
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

pattern Available :: GameServerUtilizationStatus
pattern Available = GameServerUtilizationStatus' "AVAILABLE"

pattern Utilized :: GameServerUtilizationStatus
pattern Utilized = GameServerUtilizationStatus' "UTILIZED"

{-# COMPLETE
  Available,
  Utilized,
  GameServerUtilizationStatus'
  #-}

instance FromText GameServerUtilizationStatus where
  parser = (GameServerUtilizationStatus' . mk) <$> takeText

instance ToText GameServerUtilizationStatus where
  toText (GameServerUtilizationStatus' ci) = original ci

instance Hashable GameServerUtilizationStatus

instance NFData GameServerUtilizationStatus

instance ToByteString GameServerUtilizationStatus

instance ToQuery GameServerUtilizationStatus

instance ToHeader GameServerUtilizationStatus

instance ToJSON GameServerUtilizationStatus where
  toJSON = toJSONText

instance FromJSON GameServerUtilizationStatus where
  parseJSON = parseJSONText "GameServerUtilizationStatus"
