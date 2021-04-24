{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.AacAudioDescriptionBroadcasterMix
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.AacAudioDescriptionBroadcasterMix
  ( AacAudioDescriptionBroadcasterMix
      ( ..,
        BroadcasterMixedAd,
        Normal
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Choose BROADCASTER_MIXED_AD when the input contains pre-mixed main audio + audio description (AD) as a stereo pair. The value for AudioType will be set to 3, which signals to downstream systems that this stream contains "broadcaster mixed AD". Note that the input received by the encoder must contain pre-mixed audio; the encoder does not perform the mixing. When you choose BROADCASTER_MIXED_AD, the encoder ignores any values you provide in AudioType and  FollowInputAudioType. Choose NORMAL when the input does not contain pre-mixed audio + audio description (AD). In this case, the encoder will use any values you provide for AudioType and FollowInputAudioType.
data AacAudioDescriptionBroadcasterMix
  = AacAudioDescriptionBroadcasterMix'
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

pattern BroadcasterMixedAd :: AacAudioDescriptionBroadcasterMix
pattern BroadcasterMixedAd = AacAudioDescriptionBroadcasterMix' "BROADCASTER_MIXED_AD"

pattern Normal :: AacAudioDescriptionBroadcasterMix
pattern Normal = AacAudioDescriptionBroadcasterMix' "NORMAL"

{-# COMPLETE
  BroadcasterMixedAd,
  Normal,
  AacAudioDescriptionBroadcasterMix'
  #-}

instance FromText AacAudioDescriptionBroadcasterMix where
  parser = (AacAudioDescriptionBroadcasterMix' . mk) <$> takeText

instance ToText AacAudioDescriptionBroadcasterMix where
  toText (AacAudioDescriptionBroadcasterMix' ci) = original ci

instance Hashable AacAudioDescriptionBroadcasterMix

instance NFData AacAudioDescriptionBroadcasterMix

instance ToByteString AacAudioDescriptionBroadcasterMix

instance ToQuery AacAudioDescriptionBroadcasterMix

instance ToHeader AacAudioDescriptionBroadcasterMix

instance ToJSON AacAudioDescriptionBroadcasterMix where
  toJSON = toJSONText

instance FromJSON AacAudioDescriptionBroadcasterMix where
  parseJSON = parseJSONText "AacAudioDescriptionBroadcasterMix"
