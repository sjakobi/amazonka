{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        AacAudioDescriptionBroadcasterMixBROADCASTERMIXEDAD,
        AacAudioDescriptionBroadcasterMixNORMAL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Choose BROADCASTER_MIXED_AD when the input contains pre-mixed main audio
-- + audio description (AD) as a stereo pair. The value for AudioType will
-- be set to 3, which signals to downstream systems that this stream
-- contains \"broadcaster mixed AD\". Note that the input received by the
-- encoder must contain pre-mixed audio; the encoder does not perform the
-- mixing. When you choose BROADCASTER_MIXED_AD, the encoder ignores any
-- values you provide in AudioType and FollowInputAudioType. Choose NORMAL
-- when the input does not contain pre-mixed audio + audio description
-- (AD). In this case, the encoder will use any values you provide for
-- AudioType and FollowInputAudioType.
newtype AacAudioDescriptionBroadcasterMix = AacAudioDescriptionBroadcasterMix'
  { fromAacAudioDescriptionBroadcasterMix ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern AacAudioDescriptionBroadcasterMixBROADCASTERMIXEDAD :: AacAudioDescriptionBroadcasterMix
pattern AacAudioDescriptionBroadcasterMixBROADCASTERMIXEDAD = AacAudioDescriptionBroadcasterMix' "BROADCASTER_MIXED_AD"

pattern AacAudioDescriptionBroadcasterMixNORMAL :: AacAudioDescriptionBroadcasterMix
pattern AacAudioDescriptionBroadcasterMixNORMAL = AacAudioDescriptionBroadcasterMix' "NORMAL"

{-# COMPLETE
  AacAudioDescriptionBroadcasterMixBROADCASTERMIXEDAD,
  AacAudioDescriptionBroadcasterMixNORMAL,
  AacAudioDescriptionBroadcasterMix'
  #-}

instance Prelude.FromText AacAudioDescriptionBroadcasterMix where
  parser = AacAudioDescriptionBroadcasterMix' Prelude.<$> Prelude.takeText

instance Prelude.ToText AacAudioDescriptionBroadcasterMix where
  toText (AacAudioDescriptionBroadcasterMix' x) = x

instance Prelude.Hashable AacAudioDescriptionBroadcasterMix

instance Prelude.NFData AacAudioDescriptionBroadcasterMix

instance Prelude.ToByteString AacAudioDescriptionBroadcasterMix

instance Prelude.ToQuery AacAudioDescriptionBroadcasterMix

instance Prelude.ToHeader AacAudioDescriptionBroadcasterMix

instance Prelude.ToJSON AacAudioDescriptionBroadcasterMix where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AacAudioDescriptionBroadcasterMix where
  parseJSON = Prelude.parseJSONText "AacAudioDescriptionBroadcasterMix"
