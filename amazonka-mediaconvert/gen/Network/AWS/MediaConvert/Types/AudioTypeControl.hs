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
-- Module      : Network.AWS.MediaConvert.Types.AudioTypeControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.AudioTypeControl
  ( AudioTypeControl
      ( ..,
        AudioTypeControlFOLLOWINPUT,
        AudioTypeControlUSECONFIGURED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | When set to FOLLOW_INPUT, if the input contains an ISO 639 audio_type,
-- then that value is passed through to the output. If the input contains
-- no ISO 639 audio_type, the value in Audio Type is included in the
-- output. Otherwise the value in Audio Type is included in the output.
-- Note that this field and audioType are both ignored if
-- audioDescriptionBroadcasterMix is set to BROADCASTER_MIXED_AD.
newtype AudioTypeControl = AudioTypeControl'
  { fromAudioTypeControl ::
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

pattern AudioTypeControlFOLLOWINPUT :: AudioTypeControl
pattern AudioTypeControlFOLLOWINPUT = AudioTypeControl' "FOLLOW_INPUT"

pattern AudioTypeControlUSECONFIGURED :: AudioTypeControl
pattern AudioTypeControlUSECONFIGURED = AudioTypeControl' "USE_CONFIGURED"

{-# COMPLETE
  AudioTypeControlFOLLOWINPUT,
  AudioTypeControlUSECONFIGURED,
  AudioTypeControl'
  #-}

instance Prelude.FromText AudioTypeControl where
  parser = AudioTypeControl' Prelude.<$> Prelude.takeText

instance Prelude.ToText AudioTypeControl where
  toText (AudioTypeControl' x) = x

instance Prelude.Hashable AudioTypeControl

instance Prelude.NFData AudioTypeControl

instance Prelude.ToByteString AudioTypeControl

instance Prelude.ToQuery AudioTypeControl

instance Prelude.ToHeader AudioTypeControl

instance Prelude.ToJSON AudioTypeControl where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AudioTypeControl where
  parseJSON = Prelude.parseJSONText "AudioTypeControl"
