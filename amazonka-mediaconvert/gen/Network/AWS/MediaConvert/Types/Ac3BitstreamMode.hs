{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Ac3BitstreamMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Ac3BitstreamMode
  ( Ac3BitstreamMode
      ( ..,
        Commentary,
        CompleteMain,
        Dialogue,
        Emergency,
        HearingImpaired,
        MusicAndEffects,
        VisuallyImpaired,
        VoiceOver
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Specify the bitstream mode for the AC-3 stream that the encoder emits. For more information about the AC3 bitstream mode, see ATSC A/52-2012 (Annex E).
data Ac3BitstreamMode = Ac3BitstreamMode' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Commentary :: Ac3BitstreamMode
pattern Commentary = Ac3BitstreamMode' "COMMENTARY"

pattern CompleteMain :: Ac3BitstreamMode
pattern CompleteMain = Ac3BitstreamMode' "COMPLETE_MAIN"

pattern Dialogue :: Ac3BitstreamMode
pattern Dialogue = Ac3BitstreamMode' "DIALOGUE"

pattern Emergency :: Ac3BitstreamMode
pattern Emergency = Ac3BitstreamMode' "EMERGENCY"

pattern HearingImpaired :: Ac3BitstreamMode
pattern HearingImpaired = Ac3BitstreamMode' "HEARING_IMPAIRED"

pattern MusicAndEffects :: Ac3BitstreamMode
pattern MusicAndEffects = Ac3BitstreamMode' "MUSIC_AND_EFFECTS"

pattern VisuallyImpaired :: Ac3BitstreamMode
pattern VisuallyImpaired = Ac3BitstreamMode' "VISUALLY_IMPAIRED"

pattern VoiceOver :: Ac3BitstreamMode
pattern VoiceOver = Ac3BitstreamMode' "VOICE_OVER"

{-# COMPLETE
  Commentary,
  CompleteMain,
  Dialogue,
  Emergency,
  HearingImpaired,
  MusicAndEffects,
  VisuallyImpaired,
  VoiceOver,
  Ac3BitstreamMode'
  #-}

instance FromText Ac3BitstreamMode where
  parser = (Ac3BitstreamMode' . mk) <$> takeText

instance ToText Ac3BitstreamMode where
  toText (Ac3BitstreamMode' ci) = original ci

instance Hashable Ac3BitstreamMode

instance NFData Ac3BitstreamMode

instance ToByteString Ac3BitstreamMode

instance ToQuery Ac3BitstreamMode

instance ToHeader Ac3BitstreamMode

instance ToJSON Ac3BitstreamMode where
  toJSON = toJSONText

instance FromJSON Ac3BitstreamMode where
  parseJSON = parseJSONText "Ac3BitstreamMode"
