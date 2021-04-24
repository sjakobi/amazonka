{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.H265Tier
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H265Tier
  ( H265Tier
      ( ..,
        HTHigh,
        HTMain
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | H265 Tier
data H265Tier = H265Tier' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern HTHigh :: H265Tier
pattern HTHigh = H265Tier' "HIGH"

pattern HTMain :: H265Tier
pattern HTMain = H265Tier' "MAIN"

{-# COMPLETE
  HTHigh,
  HTMain,
  H265Tier'
  #-}

instance FromText H265Tier where
  parser = (H265Tier' . mk) <$> takeText

instance ToText H265Tier where
  toText (H265Tier' ci) = original ci

instance Hashable H265Tier

instance NFData H265Tier

instance ToByteString H265Tier

instance ToQuery H265Tier

instance ToHeader H265Tier

instance ToJSON H265Tier where
  toJSON = toJSONText

instance FromJSON H265Tier where
  parseJSON = parseJSONText "H265Tier"
