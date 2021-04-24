{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.ReservationSpecialFeature
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.ReservationSpecialFeature
  ( ReservationSpecialFeature
      ( ..,
        AdvancedAudio,
        AudioNormalization
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Special features, 'ADVANCED_AUDIO' or 'AUDIO_NORMALIZATION'
data ReservationSpecialFeature
  = ReservationSpecialFeature'
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

pattern AdvancedAudio :: ReservationSpecialFeature
pattern AdvancedAudio = ReservationSpecialFeature' "ADVANCED_AUDIO"

pattern AudioNormalization :: ReservationSpecialFeature
pattern AudioNormalization = ReservationSpecialFeature' "AUDIO_NORMALIZATION"

{-# COMPLETE
  AdvancedAudio,
  AudioNormalization,
  ReservationSpecialFeature'
  #-}

instance FromText ReservationSpecialFeature where
  parser = (ReservationSpecialFeature' . mk) <$> takeText

instance ToText ReservationSpecialFeature where
  toText (ReservationSpecialFeature' ci) = original ci

instance Hashable ReservationSpecialFeature

instance NFData ReservationSpecialFeature

instance ToByteString ReservationSpecialFeature

instance ToQuery ReservationSpecialFeature

instance ToHeader ReservationSpecialFeature

instance FromJSON ReservationSpecialFeature where
  parseJSON = parseJSONText "ReservationSpecialFeature"
