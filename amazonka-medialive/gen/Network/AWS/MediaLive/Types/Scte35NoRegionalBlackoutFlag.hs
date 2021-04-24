{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.Scte35NoRegionalBlackoutFlag
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Scte35NoRegionalBlackoutFlag
  ( Scte35NoRegionalBlackoutFlag
      ( ..,
        NoRegionalBlackout,
        RegionalBlackout
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Corresponds to the no_regional_blackout_flag parameter. A value of REGIONAL_BLACKOUT corresponds to 0 (false) in the SCTE-35 specification. If you include one of the "restriction" flags then you must include all four of them.
data Scte35NoRegionalBlackoutFlag
  = Scte35NoRegionalBlackoutFlag'
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

pattern NoRegionalBlackout :: Scte35NoRegionalBlackoutFlag
pattern NoRegionalBlackout = Scte35NoRegionalBlackoutFlag' "NO_REGIONAL_BLACKOUT"

pattern RegionalBlackout :: Scte35NoRegionalBlackoutFlag
pattern RegionalBlackout = Scte35NoRegionalBlackoutFlag' "REGIONAL_BLACKOUT"

{-# COMPLETE
  NoRegionalBlackout,
  RegionalBlackout,
  Scte35NoRegionalBlackoutFlag'
  #-}

instance FromText Scte35NoRegionalBlackoutFlag where
  parser = (Scte35NoRegionalBlackoutFlag' . mk) <$> takeText

instance ToText Scte35NoRegionalBlackoutFlag where
  toText (Scte35NoRegionalBlackoutFlag' ci) = original ci

instance Hashable Scte35NoRegionalBlackoutFlag

instance NFData Scte35NoRegionalBlackoutFlag

instance ToByteString Scte35NoRegionalBlackoutFlag

instance ToQuery Scte35NoRegionalBlackoutFlag

instance ToHeader Scte35NoRegionalBlackoutFlag

instance ToJSON Scte35NoRegionalBlackoutFlag where
  toJSON = toJSONText

instance FromJSON Scte35NoRegionalBlackoutFlag where
  parseJSON = parseJSONText "Scte35NoRegionalBlackoutFlag"
