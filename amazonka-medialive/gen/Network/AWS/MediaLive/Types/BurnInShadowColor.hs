{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.BurnInShadowColor
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.BurnInShadowColor
  ( BurnInShadowColor
      ( ..,
        BISCBlack,
        BISCNone,
        BISCWhite
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Burn In Shadow Color
data BurnInShadowColor = BurnInShadowColor' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern BISCBlack :: BurnInShadowColor
pattern BISCBlack = BurnInShadowColor' "BLACK"

pattern BISCNone :: BurnInShadowColor
pattern BISCNone = BurnInShadowColor' "NONE"

pattern BISCWhite :: BurnInShadowColor
pattern BISCWhite = BurnInShadowColor' "WHITE"

{-# COMPLETE
  BISCBlack,
  BISCNone,
  BISCWhite,
  BurnInShadowColor'
  #-}

instance FromText BurnInShadowColor where
  parser = (BurnInShadowColor' . mk) <$> takeText

instance ToText BurnInShadowColor where
  toText (BurnInShadowColor' ci) = original ci

instance Hashable BurnInShadowColor

instance NFData BurnInShadowColor

instance ToByteString BurnInShadowColor

instance ToQuery BurnInShadowColor

instance ToHeader BurnInShadowColor

instance ToJSON BurnInShadowColor where
  toJSON = toJSONText

instance FromJSON BurnInShadowColor where
  parseJSON = parseJSONText "BurnInShadowColor"
