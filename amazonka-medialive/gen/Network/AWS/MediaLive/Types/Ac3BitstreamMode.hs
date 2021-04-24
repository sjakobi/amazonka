{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.Ac3BitstreamMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Ac3BitstreamMode
  ( Ac3BitstreamMode
      ( ..,
        ABMCommentary,
        ABMCompleteMain,
        ABMDialogue,
        ABMEmergency,
        ABMHearingImpaired,
        ABMMusicAndEffects,
        ABMVisuallyImpaired,
        ABMVoiceOver
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Ac3 Bitstream Mode
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

pattern ABMCommentary :: Ac3BitstreamMode
pattern ABMCommentary = Ac3BitstreamMode' "COMMENTARY"

pattern ABMCompleteMain :: Ac3BitstreamMode
pattern ABMCompleteMain = Ac3BitstreamMode' "COMPLETE_MAIN"

pattern ABMDialogue :: Ac3BitstreamMode
pattern ABMDialogue = Ac3BitstreamMode' "DIALOGUE"

pattern ABMEmergency :: Ac3BitstreamMode
pattern ABMEmergency = Ac3BitstreamMode' "EMERGENCY"

pattern ABMHearingImpaired :: Ac3BitstreamMode
pattern ABMHearingImpaired = Ac3BitstreamMode' "HEARING_IMPAIRED"

pattern ABMMusicAndEffects :: Ac3BitstreamMode
pattern ABMMusicAndEffects = Ac3BitstreamMode' "MUSIC_AND_EFFECTS"

pattern ABMVisuallyImpaired :: Ac3BitstreamMode
pattern ABMVisuallyImpaired = Ac3BitstreamMode' "VISUALLY_IMPAIRED"

pattern ABMVoiceOver :: Ac3BitstreamMode
pattern ABMVoiceOver = Ac3BitstreamMode' "VOICE_OVER"

{-# COMPLETE
  ABMCommentary,
  ABMCompleteMain,
  ABMDialogue,
  ABMEmergency,
  ABMHearingImpaired,
  ABMMusicAndEffects,
  ABMVisuallyImpaired,
  ABMVoiceOver,
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
