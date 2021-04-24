{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GameLift.Types.GameServerProtectionPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.GameServerProtectionPolicy
  ( GameServerProtectionPolicy
      ( ..,
        FullProtection,
        NoProtection
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data GameServerProtectionPolicy
  = GameServerProtectionPolicy'
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

pattern FullProtection :: GameServerProtectionPolicy
pattern FullProtection = GameServerProtectionPolicy' "FULL_PROTECTION"

pattern NoProtection :: GameServerProtectionPolicy
pattern NoProtection = GameServerProtectionPolicy' "NO_PROTECTION"

{-# COMPLETE
  FullProtection,
  NoProtection,
  GameServerProtectionPolicy'
  #-}

instance FromText GameServerProtectionPolicy where
  parser = (GameServerProtectionPolicy' . mk) <$> takeText

instance ToText GameServerProtectionPolicy where
  toText (GameServerProtectionPolicy' ci) = original ci

instance Hashable GameServerProtectionPolicy

instance NFData GameServerProtectionPolicy

instance ToByteString GameServerProtectionPolicy

instance ToQuery GameServerProtectionPolicy

instance ToHeader GameServerProtectionPolicy

instance ToJSON GameServerProtectionPolicy where
  toJSON = toJSONText

instance FromJSON GameServerProtectionPolicy where
  parseJSON = parseJSONText "GameServerProtectionPolicy"
