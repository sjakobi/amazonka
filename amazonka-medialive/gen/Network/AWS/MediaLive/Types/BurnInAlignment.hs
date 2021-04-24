{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.BurnInAlignment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.BurnInAlignment
  ( BurnInAlignment
      ( ..,
        BIACentered,
        BIALeft',
        BIASmart
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Burn In Alignment
data BurnInAlignment = BurnInAlignment' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern BIACentered :: BurnInAlignment
pattern BIACentered = BurnInAlignment' "CENTERED"

pattern BIALeft' :: BurnInAlignment
pattern BIALeft' = BurnInAlignment' "LEFT"

pattern BIASmart :: BurnInAlignment
pattern BIASmart = BurnInAlignment' "SMART"

{-# COMPLETE
  BIACentered,
  BIALeft',
  BIASmart,
  BurnInAlignment'
  #-}

instance FromText BurnInAlignment where
  parser = (BurnInAlignment' . mk) <$> takeText

instance ToText BurnInAlignment where
  toText (BurnInAlignment' ci) = original ci

instance Hashable BurnInAlignment

instance NFData BurnInAlignment

instance ToByteString BurnInAlignment

instance ToQuery BurnInAlignment

instance ToHeader BurnInAlignment

instance ToJSON BurnInAlignment where
  toJSON = toJSONText

instance FromJSON BurnInAlignment where
  parseJSON = parseJSONText "BurnInAlignment"
