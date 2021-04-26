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
-- Module      : Network.AWS.MediaLive.Types.AudioDescriptionAudioTypeControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.AudioDescriptionAudioTypeControl
  ( AudioDescriptionAudioTypeControl
      ( ..,
        AudioDescriptionAudioTypeControlFOLLOWINPUT,
        AudioDescriptionAudioTypeControlUSECONFIGURED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Audio Description Audio Type Control
newtype AudioDescriptionAudioTypeControl = AudioDescriptionAudioTypeControl'
  { fromAudioDescriptionAudioTypeControl ::
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

pattern AudioDescriptionAudioTypeControlFOLLOWINPUT :: AudioDescriptionAudioTypeControl
pattern AudioDescriptionAudioTypeControlFOLLOWINPUT = AudioDescriptionAudioTypeControl' "FOLLOW_INPUT"

pattern AudioDescriptionAudioTypeControlUSECONFIGURED :: AudioDescriptionAudioTypeControl
pattern AudioDescriptionAudioTypeControlUSECONFIGURED = AudioDescriptionAudioTypeControl' "USE_CONFIGURED"

{-# COMPLETE
  AudioDescriptionAudioTypeControlFOLLOWINPUT,
  AudioDescriptionAudioTypeControlUSECONFIGURED,
  AudioDescriptionAudioTypeControl'
  #-}

instance Prelude.FromText AudioDescriptionAudioTypeControl where
  parser = AudioDescriptionAudioTypeControl' Prelude.<$> Prelude.takeText

instance Prelude.ToText AudioDescriptionAudioTypeControl where
  toText (AudioDescriptionAudioTypeControl' x) = x

instance Prelude.Hashable AudioDescriptionAudioTypeControl

instance Prelude.NFData AudioDescriptionAudioTypeControl

instance Prelude.ToByteString AudioDescriptionAudioTypeControl

instance Prelude.ToQuery AudioDescriptionAudioTypeControl

instance Prelude.ToHeader AudioDescriptionAudioTypeControl

instance Prelude.ToJSON AudioDescriptionAudioTypeControl where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AudioDescriptionAudioTypeControl where
  parseJSON = Prelude.parseJSONText "AudioDescriptionAudioTypeControl"
