{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.NielsenUniqueTicPerAudioTrackType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.NielsenUniqueTicPerAudioTrackType
  ( NielsenUniqueTicPerAudioTrackType
      ( ..,
        ReserveUniqueTicsPerTrack,
        SameTicsPerTrack
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | To create assets that have the same TIC values in each audio track, keep the default value Share TICs (SAME_TICS_PER_TRACK). To create assets that have unique TIC values for each audio track, choose Use unique TICs (RESERVE_UNIQUE_TICS_PER_TRACK).
data NielsenUniqueTicPerAudioTrackType
  = NielsenUniqueTicPerAudioTrackType'
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

pattern ReserveUniqueTicsPerTrack :: NielsenUniqueTicPerAudioTrackType
pattern ReserveUniqueTicsPerTrack = NielsenUniqueTicPerAudioTrackType' "RESERVE_UNIQUE_TICS_PER_TRACK"

pattern SameTicsPerTrack :: NielsenUniqueTicPerAudioTrackType
pattern SameTicsPerTrack = NielsenUniqueTicPerAudioTrackType' "SAME_TICS_PER_TRACK"

{-# COMPLETE
  ReserveUniqueTicsPerTrack,
  SameTicsPerTrack,
  NielsenUniqueTicPerAudioTrackType'
  #-}

instance FromText NielsenUniqueTicPerAudioTrackType where
  parser = (NielsenUniqueTicPerAudioTrackType' . mk) <$> takeText

instance ToText NielsenUniqueTicPerAudioTrackType where
  toText (NielsenUniqueTicPerAudioTrackType' ci) = original ci

instance Hashable NielsenUniqueTicPerAudioTrackType

instance NFData NielsenUniqueTicPerAudioTrackType

instance ToByteString NielsenUniqueTicPerAudioTrackType

instance ToQuery NielsenUniqueTicPerAudioTrackType

instance ToHeader NielsenUniqueTicPerAudioTrackType

instance ToJSON NielsenUniqueTicPerAudioTrackType where
  toJSON = toJSONText

instance FromJSON NielsenUniqueTicPerAudioTrackType where
  parseJSON = parseJSONText "NielsenUniqueTicPerAudioTrackType"
