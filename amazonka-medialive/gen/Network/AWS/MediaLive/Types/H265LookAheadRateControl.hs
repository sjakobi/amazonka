{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.H265LookAheadRateControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H265LookAheadRateControl
  ( H265LookAheadRateControl
      ( ..,
        H26High,
        H26Low,
        H26Medium
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | H265 Look Ahead Rate Control
data H265LookAheadRateControl
  = H265LookAheadRateControl'
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

pattern H26High :: H265LookAheadRateControl
pattern H26High = H265LookAheadRateControl' "HIGH"

pattern H26Low :: H265LookAheadRateControl
pattern H26Low = H265LookAheadRateControl' "LOW"

pattern H26Medium :: H265LookAheadRateControl
pattern H26Medium = H265LookAheadRateControl' "MEDIUM"

{-# COMPLETE
  H26High,
  H26Low,
  H26Medium,
  H265LookAheadRateControl'
  #-}

instance FromText H265LookAheadRateControl where
  parser = (H265LookAheadRateControl' . mk) <$> takeText

instance ToText H265LookAheadRateControl where
  toText (H265LookAheadRateControl' ci) = original ci

instance Hashable H265LookAheadRateControl

instance NFData H265LookAheadRateControl

instance ToByteString H265LookAheadRateControl

instance ToQuery H265LookAheadRateControl

instance ToHeader H265LookAheadRateControl

instance ToJSON H265LookAheadRateControl where
  toJSON = toJSONText

instance FromJSON H265LookAheadRateControl where
  parseJSON = parseJSONText "H265LookAheadRateControl"
