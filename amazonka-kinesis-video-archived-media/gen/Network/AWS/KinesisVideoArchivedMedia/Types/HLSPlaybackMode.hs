{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KinesisVideoArchivedMedia.Types.HLSPlaybackMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisVideoArchivedMedia.Types.HLSPlaybackMode
  ( HLSPlaybackMode
      ( ..,
        Live,
        LiveReplay,
        OnDemand
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data HLSPlaybackMode = HLSPlaybackMode' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Live :: HLSPlaybackMode
pattern Live = HLSPlaybackMode' "LIVE"

pattern LiveReplay :: HLSPlaybackMode
pattern LiveReplay = HLSPlaybackMode' "LIVE_REPLAY"

pattern OnDemand :: HLSPlaybackMode
pattern OnDemand = HLSPlaybackMode' "ON_DEMAND"

{-# COMPLETE
  Live,
  LiveReplay,
  OnDemand,
  HLSPlaybackMode'
  #-}

instance FromText HLSPlaybackMode where
  parser = (HLSPlaybackMode' . mk) <$> takeText

instance ToText HLSPlaybackMode where
  toText (HLSPlaybackMode' ci) = original ci

instance Hashable HLSPlaybackMode

instance NFData HLSPlaybackMode

instance ToByteString HLSPlaybackMode

instance ToQuery HLSPlaybackMode

instance ToHeader HLSPlaybackMode

instance ToJSON HLSPlaybackMode where
  toJSON = toJSONText
