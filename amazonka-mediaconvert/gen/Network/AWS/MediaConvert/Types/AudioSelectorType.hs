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
-- Module      : Network.AWS.MediaConvert.Types.AudioSelectorType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.AudioSelectorType
  ( AudioSelectorType
      ( ..,
        AudioSelectorTypeLANGUAGECODE,
        AudioSelectorTypePID,
        AudioSelectorTypeTRACK
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specifies the type of the audio selector.
newtype AudioSelectorType = AudioSelectorType'
  { fromAudioSelectorType ::
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

pattern AudioSelectorTypeLANGUAGECODE :: AudioSelectorType
pattern AudioSelectorTypeLANGUAGECODE = AudioSelectorType' "LANGUAGE_CODE"

pattern AudioSelectorTypePID :: AudioSelectorType
pattern AudioSelectorTypePID = AudioSelectorType' "PID"

pattern AudioSelectorTypeTRACK :: AudioSelectorType
pattern AudioSelectorTypeTRACK = AudioSelectorType' "TRACK"

{-# COMPLETE
  AudioSelectorTypeLANGUAGECODE,
  AudioSelectorTypePID,
  AudioSelectorTypeTRACK,
  AudioSelectorType'
  #-}

instance Prelude.FromText AudioSelectorType where
  parser = AudioSelectorType' Prelude.<$> Prelude.takeText

instance Prelude.ToText AudioSelectorType where
  toText (AudioSelectorType' x) = x

instance Prelude.Hashable AudioSelectorType

instance Prelude.NFData AudioSelectorType

instance Prelude.ToByteString AudioSelectorType

instance Prelude.ToQuery AudioSelectorType

instance Prelude.ToHeader AudioSelectorType

instance Prelude.ToJSON AudioSelectorType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AudioSelectorType where
  parseJSON = Prelude.parseJSONText "AudioSelectorType"
