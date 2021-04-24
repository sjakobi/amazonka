{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.AacInputType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.AacInputType
  ( AacInputType
      ( ..,
        BroadcasterMixedAd,
        Normal
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Aac Input Type
data AacInputType = AacInputType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern BroadcasterMixedAd :: AacInputType
pattern BroadcasterMixedAd = AacInputType' "BROADCASTER_MIXED_AD"

pattern Normal :: AacInputType
pattern Normal = AacInputType' "NORMAL"

{-# COMPLETE
  BroadcasterMixedAd,
  Normal,
  AacInputType'
  #-}

instance FromText AacInputType where
  parser = (AacInputType' . mk) <$> takeText

instance ToText AacInputType where
  toText (AacInputType' ci) = original ci

instance Hashable AacInputType

instance NFData AacInputType

instance ToByteString AacInputType

instance ToQuery AacInputType

instance ToHeader AacInputType

instance ToJSON AacInputType where
  toJSON = toJSONText

instance FromJSON AacInputType where
  parseJSON = parseJSONText "AacInputType"
