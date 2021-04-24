{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.H264TemporalAq
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H264TemporalAq
  ( H264TemporalAq
      ( ..,
        HTADisabled,
        HTAEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | H264 Temporal Aq
data H264TemporalAq = H264TemporalAq' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern HTADisabled :: H264TemporalAq
pattern HTADisabled = H264TemporalAq' "DISABLED"

pattern HTAEnabled :: H264TemporalAq
pattern HTAEnabled = H264TemporalAq' "ENABLED"

{-# COMPLETE
  HTADisabled,
  HTAEnabled,
  H264TemporalAq'
  #-}

instance FromText H264TemporalAq where
  parser = (H264TemporalAq' . mk) <$> takeText

instance ToText H264TemporalAq where
  toText (H264TemporalAq' ci) = original ci

instance Hashable H264TemporalAq

instance NFData H264TemporalAq

instance ToByteString H264TemporalAq

instance ToQuery H264TemporalAq

instance ToHeader H264TemporalAq

instance ToJSON H264TemporalAq where
  toJSON = toJSONText

instance FromJSON H264TemporalAq where
  parseJSON = parseJSONText "H264TemporalAq"
