{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.H264LookAheadRateControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H264LookAheadRateControl
  ( H264LookAheadRateControl
      ( ..,
        HLARCHigh,
        HLARCLow,
        HLARCMedium
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | H264 Look Ahead Rate Control
data H264LookAheadRateControl
  = H264LookAheadRateControl'
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

pattern HLARCHigh :: H264LookAheadRateControl
pattern HLARCHigh = H264LookAheadRateControl' "HIGH"

pattern HLARCLow :: H264LookAheadRateControl
pattern HLARCLow = H264LookAheadRateControl' "LOW"

pattern HLARCMedium :: H264LookAheadRateControl
pattern HLARCMedium = H264LookAheadRateControl' "MEDIUM"

{-# COMPLETE
  HLARCHigh,
  HLARCLow,
  HLARCMedium,
  H264LookAheadRateControl'
  #-}

instance FromText H264LookAheadRateControl where
  parser = (H264LookAheadRateControl' . mk) <$> takeText

instance ToText H264LookAheadRateControl where
  toText (H264LookAheadRateControl' ci) = original ci

instance Hashable H264LookAheadRateControl

instance NFData H264LookAheadRateControl

instance ToByteString H264LookAheadRateControl

instance ToQuery H264LookAheadRateControl

instance ToHeader H264LookAheadRateControl

instance ToJSON H264LookAheadRateControl where
  toJSON = toJSONText

instance FromJSON H264LookAheadRateControl where
  parseJSON = parseJSONText "H264LookAheadRateControl"
